#!/bin/bash

IMAGE_NAME="zudu-service-client-image"

# build the Docker image and give it a tag
echo "Building image: $IMAGE_NAME"
docker build -t $IMAGE_NAME . > /dev/null 2>&1
echo "Building image complete!"
