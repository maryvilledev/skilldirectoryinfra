#!/bin/bash

## CRON JOB ##
## 0,5,10,15,20,25,30,35,40,45,50,55 * * * * cd /home/ec2-user/sd/skilldirectoryinfra && /home/ec2-user/sd/skilldirectoryinfra/devstack.sh --dev restart ##

### Default flags and env vars
export CASSANDRA_USERNAME=cassandra
export CASSANDRA_PASSWORD=cassandra
drop_data_flag=false
export DEBUG_FLAG=true
only_data=false

### Parse all command line flags
for arg in "$@"
do
  if [[ $arg = "--dropdata" ]]; then
    drop_data_flag=true
  elif [[ $arg = "--nodebug" ]]; then
    export DEBUG_FLAG=false
  elif [[ $arg == "--dev"  ]]; then
    export API="http://ec2-54-91-149-17.compute-1.amazonaws.com:8080"
  elif [[ $arg == "stop"  ]]; then
    docker-compose stop web backend
    docker-compose rm -f web backend
    exit 0
  elif [[ $arg == "data"  ]]; then
    echo "Only data"
    only_data=true
  elif [[ $arg == "kill"  ]]; then
    docker-compose stop
    docker-compose rm -f
    exit 0
  elif [[ $arg == "pull" ]]; then
    docker-compose pull
    exit 0
  elif [[ $arg == "restart" ]]; then
    docker-compose pull
    docker-compose up -d --no-deps backend web
    exit 0
  else
    echo Unrecognized option: \"$arg\"
    echo Valid options are: \"--dropdata\" and \"--nodebug\"
    exit 127 # exit code for option not found
  fi
done

### See if containers for Cassandra is running
docker inspect -f {{.State.Running}} cassandra_container &&  cassandra_running="true"  || cassandra_running="false"

### If cassandra container is running and "--dropdata" flag was used, stop the container
if $drop_data_flag; then
    echo 'Stopping cassandra_container...'
    docker stop cassandra_container >/dev/null
    echo 'cassandra_container stopped.'
    cassandra_running="false"
fi

if ! $cassandra_running; then
  docker-compose up -d cassandra
  sleep 40
fi

### If "--dropdata" flag was used, drop the project's Cassandra keyspace within container
if $drop_data_flag; then
    echo "Dropping and rebuilding [skill_directory_keyspace] keyspace"
    docker exec -it cassandra_container bash usr/bin/cqlsh -u $CASSANDRA_USERNAME -p $CASSANDRA_PASSWORD -e "DROP KEYSPACE skill_directory_keyspace"
fi

### Execute CQL commands in the container from schema file to set up database
echo "Running skilldirectoryschema..."
docker exec -it cassandra_container bash usr/bin/cqlsh -u $CASSANDRA_USERNAME -p $CASSANDRA_PASSWORD -f /data/skilldirectoryschema.cql
echo "Schema update complete."

if $only_data; then
  echo "Exiting after starting cassandra"
  exit 0
fi

docker-compose up -d --no-recreate
