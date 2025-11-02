
#!/bin/bash
set -e

echo "Starting new container..."
cd /home/ubuntu/simple-python-flask-app

sudo docker build -t simple-python-flask-app .
sudo docker run -d -p 5000:5000 simple-python-flask-app

echo "Flask container started successfully!"


