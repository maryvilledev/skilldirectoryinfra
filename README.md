# Devstack
This repo is used to build and run docker images for the [skilldirectory](https://github.com/maryvilledev/skilldirectory) and [skilldirectoryui](https://github.com/maryvilledev/skilldirectoryui) projects in a [dev environment](http://ec2-54-147-37-162.compute-1.amazonaws.com:8000/home). A Cassandra database image is also run to support the REST API layer, and the schema for that is located in this repo. Below is a visual of the database schema:

![SkillDirectory Database Schema](https://raw.githubusercontent.com/maryvilledev/skilldirectoryinfra/master/resources/skilldirectoryschema.png)

### To Run Locally
`./devstack.sh`

### Pull newest images
`./devstack.sh pull`

### Only start Cassandra
`./devstack.sh data`

### Pull and restart containers with new images
`./devstack.sh restart`

### Stop and remove skilldirectory and skilldirectoryui containers
`./devstack.sh stop`

### Stop and remove all containers
`./devstack.sh kill`

### Run UI with dev API
`./devstack.sh --dev`

### Drop Cassandra data locally
`./devstack.sh --dropdata`
