FROM nginx


RUN yum install -y wget

RUN yum -y install php5-curl php5-gd php5-intl php-pear php5-imagick php5-imap php5-mcrypt php5-memcache php5-ming php5-ps php5-pspell

RUN wget https://es.wordpress.org/latest-es_ES.tar.gz



RUN  tar xf latest-es_ES.tar.gz -C /usr/share/nginx/html/

ADD index.php /usr/share/nginx/html/


EXPOSE 80
