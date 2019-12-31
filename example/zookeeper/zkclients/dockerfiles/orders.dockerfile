FROM weaveworksdemos/orders:0.4.7

USER root
WORKDIR /usr/src/app
COPY orders.sh run.sh
COPY myzkclient.jar myzkclient.jar
ENV HOSTNAME=orders
RUN chmod +x run.sh

ENTRYPOINT ["./run.sh","-jar","./app.jar", "--port=80"]

