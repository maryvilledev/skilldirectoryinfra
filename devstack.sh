#!/bin/bash

## CRON JOB ##
## 0,5,10,15,20,25,30,35,40,45,50,55 * * * * cd /home/ec2-user/sd/skilldirectoryinfra && /home/ec2-user/sd/skilldirectoryinfra/devstack.sh --dev restart ##
function help {
  echo "Usage: $0 [stop|data|kill|pull|restart] [--dropdata] [--nodebug] [--dev]"
  echo "  with no argument: Starts the devstack."
  echo "              stop: Stops the devstack."
  echo "              data: Only starts the database layer."
  echo "              kill: Stops the devstack and removes the containers."
  echo "              pull: Pulls the newest images."
  echo "              test: Runs Postman API tests"
  echo "           restart: Stops and restarts all containers."
  echo "        --dropdata: Drops the data stored in the database."
  echo "         --nodebug: Does not print debugging strings to stdin."
  echo "             --dev: Use when running on development server. Double-checks images and notifies Slack channel."
}

### Default flags and env vars
export CASSANDRA_USERNAME=cassandra
export CASSANDRA_PASSWORD=cassandra
drop_data_flag=false
export DEBUG_FLAG=true
export FILE_SYSTEM=""
only_data=false
run_tests=false

### Parse all command line flags
for arg in "$@"
do
  if [[ $arg = "--help" ]]; then
    help
    exit 0
  elif [[ $arg = "--dropdata" ]]; then
    drop_data_flag=true
  elif [[ $arg = "--nodebug" ]]; then
    export DEBUG_FLAG=false
  elif [[ $arg == "--dev"  ]]; then
    if [[ $DATA_USER == "" ]]; then
      echo "No Data Username"
      exit 1
    elif [[ $DATA_PW = "" ]]; then
      echo "No Data Password"
      exit 1
    fi
    export CASSANDRA_USERNAME=$DATA_USER
    export CASSANDRA_PASSWORD=$DATA_PW
    export FILE_SYSTEM="S3"
    docker exec -it cassandra_container bash usr/bin/cqlsh -u cassandra -p cassandra -e "CREATE USER $DATA_USER WITH PASSWORD '$DATA_PW' SUPERUSER"
    docker exec -it cassandra_container bash usr/bin/cqlsh -u $CASSANDRA_USERNAME -p $CASSANDRA_PASSWORD -e "ALTER USER cassandra WITH PASSWORD '10203948596098322048';"
    export API="http://$HOST_NAME:8080"
    echo "Comparing images"
    echo "Slack Hook $SLACK_HOOK"
    ui=$(docker images -q maryville/skilldirectoryui:master)
    sd=$(docker images -q maryville/skilldirectory:master)
    docker-compose pull
    ui_new=$(docker images -q maryville/skilldirectoryui:master)
    sd_new=$(docker images -q maryville/skilldirectory:master)
    if [[ "$ui" != "$ui_new" ]] || [[ "$sd" != "$sd_new" ]]; then
      echo "Image(s) have changed"
      curl -X POST --data-urlencode 'payload={"channel": "#skilldirectory-bots", "username": "SkillDirectory Bot", "text": "Skill Directory Environment has been rebuilt."}' $SLACK_HOOK
      run_tests=true
    fi
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
    echo "Running Schema"
    docker exec -it cassandra_container bash usr/bin/cqlsh -u $CASSANDRA_USERNAME -p $CASSANDRA_PASSWORD -f /data/skilldirectoryschema.cql
    echo "Schema Complete"
    docker-compose up -d --no-deps
    exit 0
  elif [[ $arg == "test" ]]; then
    docker-compose up -d backend-tester
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
echo "$CASSANDRA_USERNAME $CASSANDRA_PASSWORD"

docker-compose up -d --no-recreate backend web
echo "Run Tests: $run_tests"
if [[ $run_tests == true ]]; then
  docker-compose up -d backend-tester
fi
docker rmi $(docker images -q --filter "dangling=true")
