#!/bin/bash
set -e

echo "Stopping running container (if any)..."

# Find running container based on image name
container_id=$(sudo docker ps -q --filter "ancestor=samidha7/simple-python-flask-app")

if [ -n "$container_id" ]; then
    echo "Stopping container: $container_id"
    sudo docker stop $container_id
    sudo docker rm $container_id
else
    echo "No running container found."
fi




