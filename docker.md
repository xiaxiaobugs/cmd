# docker 命令

* 安装(ubuntu)
```
//安装依赖包
$ sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

//添加 Docker 的官方 GPG 密钥：
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add

//9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88 通过搜索指纹的后8个字符，验证您现在是否拥有带有指纹的密钥。
$ sudo apt-key fingerprint 0EBFCD88

//使用以下指令设置稳定版仓库
$ sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable"

//安装最新版本的 Docker Engine-Community 和 containerd
$ sudo apt-get install docker-ce docker-ce-cli containerd.io

//要安装特定版本的 Docker Engine-Community，请在仓库中列出可用版本，然后选择一种安装。
$ apt-cache madison docker-ce

//安装特定版本
$ sudo apt-get install docker-ce=<VERSION_STRING> docker-ce-cli=<VERSION_STRING> containerd.io

//验证安装成功
$ sudo docker run hello-world
```

* docker ps [OPTIONS]
  * :列出正在运行的容器
  * -a :显示所有的容器，包括未运行的。
  * -f :根据条件过滤显示的内容。
  * --format :指定返回值的模板文件。
  * -l :显示最近创建的容器。
  * -n :列出最近创建的n个容器。
  * --no-trunc :不截断输出。
  * -q :静默模式，只显示容器编号。
  * -s :显示总的文件大小。

> 结果：<br />
> CONTAINER ID: 容器 ID。
>
> IMAGE: 使用的镜像。
>
> COMMAND: 启动容器时运行的命令。
> 
> CREATED: 容器的创建时间。
>STATUS: 容器状态。
>
>  状态有7种：
>  * created（已创建）
>  * restarting（重启中）
>  * running（运行中）
>  * removing（迁移中）
>  * paused（暂停）
>  * exited（停止）
>  * dead（死亡）
>
> PORTS: 容器的端口信息和使用的连接类型（tcp\udp）。
>
> NAMES: 自动分配的容器名称。

```
$ docker ps -aq  //列出所有容器(包括未运行的)，只显示容器编号
```


* docker stop CONTAINER
   停止CONTAINER容器

```
$ docker stop $(docker ps -aq)  //停止所有容器
```


* docker rm CONTAINER
   删除CONTAINER容器

```
docker rm $(docker ps -aq)  //删除所有的容器
```


* docker rmi IMAGE
   删除IMAGE镜像

```
$ docker rmi $(docker images -q)  //删除所有的镜像
```


* docker network create [OPTION] [NETWORKNAME]
   创建docker network

```
$ docker network create --subnet 172.168.0.0/16 sockshop  //创建一个docker network，子网是172.168.0.0/16，名字是sockshop
```


* docker network rm [NETWORKNAME]
   删除NETWORKNAME network

```
$ docker network rm sockshop
```


* docker network ls
   列出docker network

* docker network inspect [NETWORKNAME|ID]
   查看网络详情


* docker run

```
$ docker run -d --network sockshop --ip 172.168.0.10 --name user-db mongo:3.4
  //在sockshop的docker network下运行mongo:3.4镜像，容器的名字为user-db，容器的ip为172.168.0.10，后台运行[-d]

$ docker run -d -v /home/xiaxiao/Desktop/handson3/mynginx/conf:/etc/nginx/conf.d -v /home/xiaxiao/Desktop/handson3/mynginx/public:/usr/share/nginx/public -p 8888:80 --network sockshop --ip 172.168.0.21 --name nginx nginx
```
 
* docker restart [CONTAINER]
```
$ docker restart $(docker ps -aq) 
```

* docker exec
```
$ docker exec -it 775c7c9ee1e1 /bin/bash 
```

* docker build
```
$ docker build --tag mynginx -f Dockerfile .
```

* docker hub 的使用
```
//１. 给镜像打上标签
// docker tag [image]:[tag] [username]/[respository]:[repo-tag]
//[image]:[tag]是本地刚生成的镜像
//[username]是docker hub用户名，[respository]是仓库，[repo-tag]是传上去之后给镜像打的标签
$ docker tag mynginx:latest xiaxiao/mynginx:handson3-0.0

//2. 登录docker hub
$ docker login

//3. 上传镜像
$ docker push xiaxiao/mynginx:handson3-0.0
```

*　查看docker内存状态
```
$ docker system df
```

* 清理docker内存
```
$ docker system prune   //清理磁盘，删除关闭的容器、无用的数据卷和网络，以及dangling镜像(即无tag的镜像)
$ docker system prune -a //清理得更加彻底，可以将没有容器使用Docker镜像都删掉
```

* 卸载
```
$ sudo apt-get purge docker-ce
$ sudo apt-get autoremove --purge docker-ce
$ rm -rf /var/lib/docker
```




```
test for hahaha
```





