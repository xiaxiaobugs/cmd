#!/bin/sh

java -jar ./client.jar > client.log 2>&1 &

docker-entrypoint.sh mysqld