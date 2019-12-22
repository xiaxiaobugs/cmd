#!/bin/bash
sudo docker network create --subnet 172.168.0.0/16 sockshop
sudo docker run -d --network sockshop --ip 172.168.0.10 --name user-db mongo:3.4
sudo docker run -d --network sockshop --ip 172.168.0.11 --name carts-db mongo:3.4
sudo docker run -d --network sockshop --ip 172.168.0.12 --name orders-db mongo:3.4
sudo docker run -d --network sockshop --ip 172.168.0.13 --name catalogue-db dplsming/sockshop-cataloguedb:0.1
sudo docker run -d --network sockshop --ip 172.168.0.245 --name session-db redis
sudo docker run -d --network sockshop --ip 172.168.0.14 --name catalogue weaveworksdemos/catalogue:0.3.5
sudo docker run -d --network sockshop --ip 172.168.0.15 --name payment weaveworksdemos/payment:0.4.3
sudo docker run -d --network sockshop --ip 172.168.0.16 --name carts weaveworksdemos/carts:0.4.8
sudo docker run -d --network sockshop --ip 172.168.0.17 --name orders weaveworksdemos/orders:0.4.7
sudo docker run -d --network sockshop --ip 172.168.0.18 -e MONGO_HOST=user-db:27017 --name user weaveworksdemos/user:0.4.4
sudo docker run -d --network sockshop --ip 172.168.0.19 --name shipping weaveworksdemos/shipping:0.4.8
sudo docker run -d --network sockshop --ip 172.168.0.20 --cpus 0.5 -e SESSION_REDIS=1 -p 8079:8079 dplsming/sockshop-frontend:0.1
sudo docker run -d --network sockshop --ip 172.168.0.21 --cpus 0.5 -e SESSION_REDIS=1 -p 8078:8079 dplsming/sockshop-frontend:0.1
sudo docker run -d --network sockshop --ip 172.168.0.22 --cpus 0.5 -e SESSION_REDIS=1 -p 8077:8079 dplsming/sockshop-frontend:0.1
sudo docker run -d --network sockshop --ip 172.168.0.255 -p 8888:80 xiaxiao/mynginx3:handson3-0.0