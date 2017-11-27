#!/bin/bash

echo To determine the IP address use docker inspect --format \'{{ .NetworkSettings.IPAddress }}\' showcase 

CMD="docker run --cpus 1 \
                --interactive \
                --name showcase \
                --network bridge \
                --publish-all \
                --name showcase \
                --rm \
                --tty \
                --memory 268435546 \
                --memory-swap 0 \
                --volume /var/run/docker.sock:/var/run/docker.sock \
                dockercomposeshowcaseapp_showcase:latest"
echo $CMD
$CMD

