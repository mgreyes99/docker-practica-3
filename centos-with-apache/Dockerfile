FROM mgreyes/centos-with-httpd-php

MAINTAINER mgreyes@ilg.cat

RUN yum -y install wget

RUN wget https://es.wordpress.org/latest-es_ES.tar.gz


RUN  tar xf latest-es_ES.tar.gz -C /var/www/html/

ADD index.php /var/www/html/
