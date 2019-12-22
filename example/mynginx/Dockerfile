FROM centos:centos7

ADD default.conf /etc/nginx/conf.d/default.conf
ADD nginx.repo  /etc/yum.repos.d/
ADD public   /usr/share/nginx/public
#RUN 执行以下命令
RUN yum install -y nginx

#EXPOSE 映射端口
EXPOSE 80

#CMD 运行以下命令，daemon off后台运行，否则启动完就自动关闭
CMD ["/usr/sbin/nginx", "-g","daemon off;"]                            
