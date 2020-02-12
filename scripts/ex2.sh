#!/bin/bash

docker rm -f httpd
docker rm -f nginx
docker rm -f datacontainer
docker rm -f db
docker rm -f wordpress

docker create --name=db  -e MYSQL_ROOT_PASSWORD=mariadb -e MYSQL_DATABASE1=moodle -e MYSQL_USER1=moodle -e MYSQL_PASSWORD1=moodle -v datos:/var/lib/mysql orboan/dcsss-mariadb


#Se crea el contenedor de wordpress 
docker create --link db:db --name wordpress -p 8080:80 -v datos:/workspace/  mgreyes/httpd-wordpress

docker create  --volumes-from httpd --volumes-from db --volumes-from wordpress --name datacontainer centos:7

docker start db
docker start wordpress
