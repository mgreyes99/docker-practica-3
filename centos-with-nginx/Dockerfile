FROM centos

MAINTAINER Maykin Reyes\ mgreyes@ilg.cat

RUN yum update -y

RUN yum -y install yum-utils

RUN yum -y install epel-release

RUN yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm



RUN yum-config-manager --enable remi-php72

RUN yum install -y php-cli php-fpm php-mysql php-json php-opcache php-mbstring php-xml php-gd php-cur


RUN yum -y install nginx


EXPOSE 80

RUN yum clean all && rm -rf /tmp/yum*

RUN systemctl enable nginx

RUN systemctl enable php-fpm
