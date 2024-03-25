FROM alpine:edge

LABEL maintainer=adilson@adilson.net.br

#RUN apt-get update -y && apt-get dist-upgrade -y && apt-get install apache2 libapache2-mod-php -y && apt-get clean -y

#Based on https://github.com/eriksoderblom/alpine-apache-php
# Setup apache and php
RUN apk --no-cache --update \
    add apache2 \
    apache2-ssl \
    curl \
    php83-apache2 \
    php83-bcmath \
    php83-bz2 \
    php83-calendar \
    php83-common \
    php83-ctype \
    php83-curl \
    php83-dom \
    php83-gd \
    php83-iconv \
    php83-mbstring \
    php83-mysqli \
    php83-mysqlnd \
    php83-openssl \
    php83-pdo_mysql \
    php83-pdo_pgsql \
    php83-pdo_sqlite \
    php83-phar \
    php83-session \
    php83-xml \
    && mkdir /htdocs


COPY index.php favicon.ico /htdocs
COPY run.sh /bin


EXPOSE 80

CMD /bin/sh /bin/run.sh
#ENTRYPOINT ["/bin/run.sh"]
