#!/bin/bash
set -e

echo "Starting Docker container..."

# Stop any existing container running on port 5000
container_id=$(sudo docker ps -q --filter "publish=5000")
if [ -n "$container_id" ]; then
    echo "Stopping running container..."
    sudo docker stop $container_id
    sudo docker rm $container_id
fi

# Pull the latest image
sudo docker pull samidha7/simple-python-flask-app

# Run the container
sudo docker run -d -p 5000:5000 --name simple-flask-app samidha7/simple-python-flask-app

echo "Container started successfully."


