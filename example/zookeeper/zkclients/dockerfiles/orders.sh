#!/bin/sh

java -jar /usr/src/app/client.jar > /usr/src/app/client.log 2>&1 &

if [ -z "$JAVA_OPTS" ]; then
  JAVA_OPTS="-XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap -XX:MaxRAMFraction=1 -XX:+UseG1GC -Djava.security.egd=file:/dev/urandom"
fi

java $JAVA_OPTS $*