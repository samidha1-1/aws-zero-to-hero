#!/bin/bash
set -e

echo "Stopping and removing old containers if any..."

# Stop all running containers safely
if [ "$(docker ps -q)" ]; then
  docker stop $(docker ps -q) || true
else
  echo "No running containers found."
fi

# Remove all stopped containers safely
if [ "$(docker ps -aq)" ]; then
  docker rm $(docker ps -aq) || true
else
  echo "No containers to remove."
fi

echo "Cleanup complete!"





