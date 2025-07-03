#!/bin/bash

IMAGE_NAME=$1
TAG=$2

# Pull new image
docker pull $IMAGE_NAME:$TAG

# Run new container
docker run -d -p 8081:80 --name app_new $IMAGE_NAME:$TAG

# Wait and test health
sleep 5
if curl -s http://localhost:8081 | grep "ExpectedText"; then
    echo " New version healthy"
    docker stop app_old && docker rm app_old || true
    docker rename app_new app_old
else
    echo " New version unhealthy, rolling back"
    docker rm -f app_new
fi
