FROM weaveworksdemos/user:0.4.4

USER root

RUN apk update \
     && apk add openjdk8-jre

WORKDIR /usr/src/app
COPY user.sh run.sh
COPY myzkclient.jar myzkclient.jar
USER root
ENV HOSTNAME=user
RUN chmod +x run.sh

ENTRYPOINT ["./run.sh", "-port=80"]
