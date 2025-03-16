#!/bin/bash

IMAGE_NAME="zudu-service-client-image"
CONTAINER_NAME="zudu-service-client-container"
PORT="3000"

# run the container
echo "Running container: $CONTAINER_NAME"
docker run -it --rm --name $CONTAINER_NAME \
  -p ${PORT}:${PORT} \
  -v "$(pwd)":/service \
  -v /service/node_modules \
  $IMAGE_NAME npm run dev

