FROM mongo:3.4

USER root
RUN apt-get update && apt-get install -y openjdk-8-jre 

WORKDIR /usr/src/app
COPY myzkclient.jar myzkclient.jar
COPY mongo.sh run.sh
RUN chmod +x ./run.sh
ENV HOSTNAME=orders-db,user-db,carts-db

EXPOSE 27017
ENTRYPOINT ["./run.sh"]
