#!/bin/bash
./buildZK.sh
docker run -d -e ZOOKEEPER_SERVER=172.17.0.1:2181,172.17.0.1:2182,172.17.0.1:2183 -e HOSTNAME=user-db xiaxiao/mymongo:handson4-0.0
docker run -d -e ZOOKEEPER_SERVER=172.17.0.1:2181,172.17.0.1:2182,172.17.0.1:2183 -e HOSTNAME=carts-db xiaxiao/mymongo:handson4-0.0
docker run -d -e ZOOKEEPER_SERVER=172.17.0.1:2181,172.17.0.1:2182,172.17.0.1:2183 -e HOSTNAME=orders-db xiaxiao/mymongo:handson4-0.0
docker run -d -e ZOOKEEPER_SERVER=172.17.0.1:2181,172.17.0.1:2182,172.17.0.1:2183  xiaxiao/mycatalogue-db:handson4-0.0
docker run -d -e ZOOKEEPER_SERVER=172.17.0.1:2181,172.17.0.1:2182,172.17.0.1:2183 xiaxiao/mycart:handson4-0.0
docker run -d -e ZOOKEEPER_SERVER=172.17.0.1:2181,172.17.0.1:2182,172.17.0.1:2183 xiaxiao/mycatalogue:handson4-0.0
docker run -d -p 8079:8079 -e ZOOKEEPER_SERVER=172.17.0.1:2181,172.17.0.1:2182,172.17.0.1:2183  xiaxiao/myfrontend:handson4-0.0
docker run -d -e ZOOKEEPER_SERVER=172.17.0.1:2181,172.17.0.1:2182,172.17.0.1:2183 xiaxiao/myorders:handson4-0.0
docker run -d -e ZOOKEEPER_SERVER=172.17.0.1:2181,172.17.0.1:2182,172.17.0.1:2183  xiaxiao/mypayment:handson4-0.0
docker run -d -e ZOOKEEPER_SERVER=172.17.0.1:2181,172.17.0.1:2182,172.17.0.1:2183  xiaxiao/myshipping:handson4-0.0
docker run -d -e ZOOKEEPER_SERVER=172.17.0.1:2181,172.17.0.1:2182,172.17.0.1:2183 xiaxiao/myuser:handson4-0.0