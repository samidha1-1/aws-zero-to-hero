#!/bin/bash
set -e

echo "Stopping and removing old containers if any..."

# Stop running containers safely
if [ "$(docker ps -q)" ]; then
  echo "Stopping running containers..."
  docker stop $(docker ps -q) || true
else
  echo "No running containers found."
fi

# Remove stopped containers safely
if [ "$(docker ps -aq)" ]; then
  echo "Removing stopped containers..."
  docker rm $(docker ps -aq) || true
else
  echo "No containers to remove."
fi

echo "Cleanup complete!"
exit 0

fi
"





