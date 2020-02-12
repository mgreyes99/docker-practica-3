FROM nginx

RUN apt-get update

RUN apt-get -y install php php-mysql

RUN apt-get install -y wget


RUN wget https://es.wordpress.org/latest-es_ES.tar.gz



RUN  tar xf latest-es_ES.tar.gz -C /usr/share/nginx/html/

ADD index.php /usr/share/nginx/html/


EXPOSE 80
