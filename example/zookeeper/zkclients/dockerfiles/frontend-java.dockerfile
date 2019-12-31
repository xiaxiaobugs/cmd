FROM dplsming/sockshop-frontend:0.1

USER root

RUN apk update \
     && apk add openjdk8-jre

WORKDIR /usr/src/app
COPY myzkclient.jar myzkclient.jar
COPY frontend.sh run.sh
USER root
ENV HOSTNAME=frontend
RUN chmod +x run.sh

ENV HOSTNAME=frontend

ENTRYPOINT ["./run.sh", "start"]
