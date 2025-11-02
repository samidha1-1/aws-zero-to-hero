#!/bin/bash
set -e

echo "Stopping and removing existing container (if running)..."

# Stop any running container using the same image
container_id=$(sudo docker ps -q --filter ancestor=samidha7/simple-python-flask-app)

if [ -n "$container_id" ]; then
    echo "Stopping container ID: $container_id"
    sudo docker stop $container_id
    echo "Removing container ID: $container_id"
    sudo docker rm $container_id
else
    echo "No running container found for image samidha7/simple-python-flask-app"
fi



