FROM weaveworksdemos/catalogue:0.3.5

USER root

RUN apk update \
     && apk add openjdk8-jre

WORKDIR /usr/src/app
COPY catalogue.sh run.sh
COPY myzkclient.jar myzkclient.jar
USER root
ENV HOSTNAME=catalogue
RUN chmod +x run.sh

ENTRYPOINT ["./run.sh", "-port=80"]
EXPOSE 80
