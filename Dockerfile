# install nginx alpine version
# https://hub.docker.com/r/unblibraries/nginx-php/
FROM unblibraries/nginx-php:alpine-php7

LABEL version="0.1"
LABEL description="NGINX + PHP7 + Zend Framework"
LABEL maintainer="rogercastanedag@gmail.com"

RUN \
  apk add --no-cache --update openssh openssl git php7-ctype php7-pdo php7-pdo_mysql php7-zip php7-xml php7-simplexml php7-xmlreader php7-mbstring php7-apcu php7-xmlrpc php7-memcached php7-dom php7-common php7-tokenizer php7-xmlwriter && \
  export PATH="$PATH:$HOME/.composer/vendor/bin" && \
  mkdir -p /cache && chmod 777 -R /cache && \
  git clone https://github.com/zendframework/zf1.git /zf1

COPY conf/php/app-php.ini /etc/php7/conf.d/zz_app.ini
COPY nginx-app-7.conf /etc/nginx/conf.d/app.conf

EXPOSE 80
