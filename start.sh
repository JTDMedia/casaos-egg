#!/bin/bash

docker stop casa 2>/dev/null
docker rm casa 2>/dev/null

docker run -d \
  --name casa \
  -p ${SERVER_PORT}:80 \
  -v casa_data:/mnt/server/casa/data \
  --entrypoint /bin/bash \
  dockur/casa

echo "Container is running"
docker logs -f casa
