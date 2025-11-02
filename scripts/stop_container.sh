#!/bin/bash
set -e

echo "Stopping and removing existing container (if running)..."

# Stop the running container (ignore errors if it's not running)
docker stop simple-python-flask-app || true

# Remove the container (ignore errors if it doesn't exist)
docker rm simple-python-flask-app || true

echo "Old container stopped and removed successfully."
