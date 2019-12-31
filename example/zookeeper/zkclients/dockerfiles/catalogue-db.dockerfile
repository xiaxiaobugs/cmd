FROM dplsming/sockshop-cataloguedb:0.1

USER root
RUN mkdir -p /usr/share/man/man1 && \
     apt-get update && \
     apt-get install -y openjdk-8-jre

ENV MYSQL_ALLOW_EMPTY_PASSWORD true
WORKDIR /usr/src/app
COPY catalogue-db.sh run.sh
COPY myzkclient.jar myzkclient.jar
RUN chmod +x ./run.sh
ENV HOSTNAME=catalogue-db \
     MYSQL_ALLOW_EMPTY_PASSWORD=yes \
     MYSQL_ROOT_PASSWORD=DEFAULT_PASS 

EXPOSE 3306 33060
ENTRYPOINT ["./run.sh"]
