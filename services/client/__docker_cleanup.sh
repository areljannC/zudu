#!/bin/bash

IMAGE_NAME="zudu-service-client-image"
CONTAINER_NAME="zudu-service-client-container"

# stop the container if it's running
echo "Stopping container: $CONTAINER_NAME"
docker stop $CONTAINER_NAME > /dev/null 2>&1

# remove the container if it exists
echo "Removing container: $CONTAINER_NAME"
docker rm $CONTAINER_NAME > /dev/null 2>&1

# remove the image
echo "Removing image: $IMAGE_NAME"
docker rmi $IMAGE_NAME > /dev/null 2>&1

echo "Cleanup completed!"

