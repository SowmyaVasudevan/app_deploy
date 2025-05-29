#!/bin/bash
set -e  # Exit on any error

IMAGE_NAME="sowmya056/react-app:dev"
TAG="dev"

echo "🔨 Building Docker image..."
docker build -t $IMAGE_NAME:$TAG .

echo "📤 Pushing to Docker Hub..."
docker push $IMAGE_NAME:$TAG

echo "✅ Build and push completed successfully."
#!/bin/bash

IMAGE_NAME="sowmya056/react-app:dev"
TAG="dev"

echo "Building Docker image..."
docker build -t $IMAGE_NAME:$TAG .

echo "Pushing to Docker Hub..."
docker push $IMAGE_NAME:$TAG
