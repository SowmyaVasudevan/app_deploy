#!/bin/bash
set -e

IMAGE_NAME="sowmya056/react-app-dev"
TAG="latest"

echo "🔐 Logging into Docker Hub..."
echo "$DOCKERHUB_CREDENTIALS_PSW" | docker login -u "$DOCKERHUB_CREDENTIALS_USR" --password-stdin

echo "🔨 Building Docker image..."
docker build -t $IMAGE_NAME:$TAG .

echo "📤 Pushing to Docker Hub..."
docker push $IMAGE_NAME:$TAG

