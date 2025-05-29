#!/bin/bash

# Exit if any command fails
set -e

IMAGE_NAME="sowmya056/react-app-dev:latest"
CONTAINER_NAME="react-app"

echo "🔁 Stopping existing container (if running)..."
docker stop $CONTAINER_NAME || true
docker rm $CONTAINER_NAME || true

echo "📥 Pulling latest image..."
docker pull $IMAGE_NAME

echo "🚀 Starting new container..."
docker run -d --name $CONTAINER_NAME -p 80:80 $IMAGE_NAME

echo "✅ Deployment complete."
