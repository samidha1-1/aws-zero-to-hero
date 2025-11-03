#!/bin/bash
# Stop and remove any existing container
container_id=$(sudo docker ps -q --filter "ancestor=samidha7/simple-python-flask-app")
if [ ! -z "$container_id" ]; then
    echo "Stopping old container..."
    sudo docker stop $container_id
    echo "Removing old container..."
    sudo docker rm $container_id
else
    echo "No existing container found."
fi

