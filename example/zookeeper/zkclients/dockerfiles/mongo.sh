#!/bin/sh

docker-entrypoint.sh &

java -jar /usr/src/app/client.jar > /usr/src/app/client.log 2>&1 &

mongod 