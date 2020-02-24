#!/bin/bash

docker ps -aqf status=exited | xargs docker rm
docker images -qf dangling=true | xargs docker rmi

# Remove Unused Containers
docker container prune -f

# cleanup images
docker image prune -f

# cleanup unused volume
docker volume prune -f