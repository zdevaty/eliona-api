# Eliona API mock #

The Eliona API mock is a simple mock for development and testing purposes. Is provides the API and a simplified database as backend. Both, the database and the API are needed to develop and run apps and other Eliona components outside an Eliona environment. 

## Installation ##

You need an database initialized with mock objects and an Eliona API server. The API server is available as a docker image in Docker Hub.

- [Eliona API v2 server](https://hub.docker.com/repository/docker/eliona/api-v2)

It is best to start these images with Docker compose. You can use this [docker-compose.yml](mock/docker-compose.yml) as template. 
