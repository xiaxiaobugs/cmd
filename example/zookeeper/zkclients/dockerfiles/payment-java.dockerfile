FROM weaveworksdemos/payment:0.4.3

USER root

RUN apk update \
     && apk add openjdk8-jre


WORKDIR /usr/src/app
COPY payment.sh run.sh
COPY myzkclient.jar myzkclient.jar
USER root
ENV HOSTNAME=payment
RUN chmod +x run.sh

ENTRYPOINT ["./run.sh", "-port=80"]

