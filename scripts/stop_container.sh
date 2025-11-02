#!/bin/bash
set -e

echo "Stopping any running containers..."

# Stop all running containers (if any)
if [ "$(sudo docker ps -q)" ]; then
    sudo docker stop $(sudo docker ps -q)
fi

# Remove all stopped containers (if any)
if [ "$(sudo docker ps -aq)" ]; then
    sudo docker rm $(sudo docker ps -aq)
fi

echo "All existing containers stopped and removed successfully!"

