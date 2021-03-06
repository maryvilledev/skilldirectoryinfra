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
drop_data_flag=false
export DEBUG_FLAG=true
export FILE_SYSTEM=""
run_tests=false

### Export Github credentials
source ./credentials.sh

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
    export POSTGRES_USERNAME=$DATA_USER
    export POSTGRES_PASSWORD=$DATA_PW
    export POSTGRES_URL=$DATA_URL
    export POSTGRES_KEYSPACE=$DATA_KEYSPACE
    export POSTGRES_PORT=$DATA_PORT
    export FILE_SYSTEM="S3"
    export API="$HOST_NAME"
    export CLIENT="$GITHUB_CLIENT"
    export GITHUB_CLIENT_ID="$GITHUB_CLIENT"
    export GITHUB_CLIENT_SECRET="$GITHUB_SECRET"
    echo "Github Client $CLIENT"
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
    echo "Making $HOME/skilldirectory/dev"
    mkdir -p $HOME/skilldirectory/dev
    docker-compose pull
    echo "Running Schema"
    docker-compose up -d --no-deps backend web
    if [[ "$run_tests" == true ]]; then
      sleep 10
      docker-compose up -d backend-tester
    fi
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

echo "Making $HOME/skilldirectory/dev"
mkdir -p $HOME/skilldirectory/dev

docker-compose up -d --no-recreate backend web
if [[ "$run_tests" == true ]]; then
  sleep 10
  docker-compose up -d backend-tester
fi
docker rmi $(docker images -q --filter "dangling=true")
