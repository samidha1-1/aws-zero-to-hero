#!/bin/bash

# Stop all running containers (if any)
if [ "$(docker ps -q)" ]; then
    docker stop $(docker ps -q)
fi

# Remove all stopped containers (if any)
if [ "$(docker ps -a -q)" ]; then
    docker rm $(docker ps -a -q)
fi
"





