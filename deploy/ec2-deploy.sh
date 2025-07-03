#!/bin/bash

IMAGE_NAME=$1
TAG=$2

docker pull $IMAGE_NAME:$TAG

docker run -d -p 8081:80 --name app_new $IMAGE_NAME:$TAG

sleep 5
if curl -s http://localhost:8081/health | grep "OK"; then
    echo "Healthy — Deploying"
    docker stop app_old && docker rm app_old || true
    docker rename app_new app_old
else
    echo "Unhealthy — Rolling Back"
    docker rm -f app_new
fi
