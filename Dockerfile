# install nginx alpine version
# https://hub.docker.com/r/unblibraries/nginx-php/
FROM unblibraries/nginx-php:alpine

LABEL version="0.1"
LABEL description="NGINX + PHP56 + Zend Framework"
LABEL maintainer="rogercastanedag@gmail.com"

RUN \
  apk add --no-cache --update openssh openssl git php5-apache2 php5-pdo_mysql php5-zip php5-xmlreader php5-apcu php5-xmlrpc php5-dom php5-ctype && \
  export PATH="$PATH:$HOME/.composer/vendor/bin" && \
  mkdir -p /cache && chmod 777 -R /cache && \
  git clone https://github.com/zendframework/zf1.git /zf1

COPY conf/php/app-php.ini /etc/php5/conf.d/zz_app.ini
COPY nginx-app.conf /etc/nginx/conf.d/app.conf

EXPOSE 80
