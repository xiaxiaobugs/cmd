# Linux shell 命令
*  查看ip地址
```
$ sudo apt-get install net-tools
$ ifconfig
```

* 权限
```
$ chmod +x ./test.sh  //让test.sh文件有可执行权限
```

* 安装程序
```
sudo apt-get update
sudo apt-get install docker
```

* ssh
```
//连接远端
$ ssh -i "console12192029.pem" ubuntu@ec2-3-94-20-17.compute-1.amazonaws.com

//传输文件
$　scp -i console12192029.pem -r /home/xiaxiao/Desktop/handson3/frontend ubuntu@ec2-3-94-20-17.compute-1.amazonaws.com:~/handson3/frontend

//下载文件
$ scp -i console12192029.pem ubuntu@ec2-3-94-20-17.compute-1.amazonaws.com:~/handson3/out.csv /home/xiaxiao/Desktop/handson3/firstout.csv
```

* 删除
```
rm [filename]
rmdir [directory]
rm -rf [directory] 
```
