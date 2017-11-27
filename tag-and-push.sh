#!/bin/bash

# use the time as a tag
UNIXTIME=$(date +%s)

# docker tag SOURCE_IMAGE[:TAG] TARGET_IMAGE[:TAG]
docker tag dockercomposeshowcaseapp_showcase:latest kurron/docker-compose-showcase-app:latest
docker tag dockercomposeshowcaseapp_showcase:latest kurron/docker-compose-showcase-app:${UNIXTIME}
docker images

# Usage:  docker push [OPTIONS] NAME[:TAG]
docker push kurron/docker-compose-showcase-app:latest
docker push kurron/docker-compose-showcase-app:${UNIXTIME}
