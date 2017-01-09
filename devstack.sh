#!/bin/bash

### Default flags and env vars
export CASSANDRA_USERNAME=cassandra
export CASSANDRA_PASSWORD=cassandra
drop_data_flag=false
export DEBUG_FLAG=true

### Parse all command line flags
for arg in "$@"
do
  if [[ $arg = "--dropdata" ]]; then
    drop_data_flag=true
  elif [[ $arg = "--nodebug" ]]; then
    export DEBUG_FLAG=false
  else
    echo Unrecognized option: \"$arg\"
    echo Valid options are: \"--dropdata\" and \"--nodebug\"
    exit 127 # exit code for option not found
  fi
done

### See if containers for Cassandra and/or Skilldirectory are cassandra_running
cassandra_running=$(docker inspect -f {{.State.Running}} cassandra_container)
skilldirectory_running=$(docker inspect -f {{.State.Running}} skilldirectory_container)

### Restart/start the skilldirectory_container
if $skilldirectory_running; then
  echo 'Stopping skilldirectory_container...'
  docker stop skilldirectory_container >/dev/null
  echo 'skilldirectory_container stopped.'
  skilldirectory_running=false
else
  echo 'skilldirectory_container already stopped.'
fi

### If cassandra container is running and "--dropdata" flag was used, stop the container
if $cassandra_running && $drop_data_flag; then
    echo 'Stopping cassandra_container...'
    docker stop cassandra_container >/dev/null
    echo 'cassandra_container stopped.'
    cassandra_running=false
fi

docker-compose up -d

sleep 25

### If "--dropdata" flag was used, drop the project's Cassandra keyspace within container
if $drop_data_flag; then
    echo 'Dropping and rebuilding "skill_directory_keyspace" keyspace'
    docker exec -it cassandra_container bash usr/bin/cqlsh -u $CASSANDRA_USERNAME -p $CASSANDRA_PASSWORD -e "DROP KEYSPACE skill_directory_keyspace"
fi

### Execute CQL commands in the container from schema file to set up database
echo "Running skilldirectoryschema..."
docker exec -it cassandra_container bash usr/bin/cqlsh -u $CASSANDRA_USERNAME -p $CASSANDRA_PASSWORD -f /data/skilldirectoryschema.cql
echo "Schema update complete."
