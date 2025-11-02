#!/bin/bash
set -e

echo "Stopping Docker container..."

container_id=$(sudo docker ps -q --filter "publish=5000")
if [ -n "$container_id" ]; then
    sudo docker stop $container_id
    sudo docker rm $container_id
    echo "Container stopped and removed."
else
    echo "No container is running on port 5000."
fi

