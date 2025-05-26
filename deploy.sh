#!/bin/bash

CONTAINER_NAME="react-app-container"
IMAGE_NAME="sowmya056/react-app:dev"

echo "Stopping existing container (if any)..."
docker stop $CONTAINER_NAME 2>/dev/null
docker rm $CONTAINER_NAME 2>/dev/null

echo "Running new container on port 80..."
docker run -d --name $CONTAINER_NAME -p 80:80 $IMAGE_NAME
