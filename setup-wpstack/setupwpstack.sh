#!/bin/sh
## WP-DOCKER
set -e;
docker run --name wordpresscontainer -p 8081:80 -d wordpress:latest;