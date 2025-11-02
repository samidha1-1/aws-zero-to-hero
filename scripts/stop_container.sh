#!/bin/bash
set -e

# Stop and remove the running container if it exists
CONTAINER_ID=$(sudo docker ps -q --filter ancestor=samidha7/simple-python-flask-app)

if [ -n "$CONTAINER_ID" ]; then
    echo "Stopping container $CONTAINER_ID..."
    sudo docker stop $CONTAINER_ID
    echo "Removing container $CONTAINER_ID..."
    sudo docker rm $CONTAINER_ID
else
    echo "No running container found for samidha7/simple-python-flask-app."
fi


