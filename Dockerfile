FROM alpine:edge

LABEL maintainer=adilson@adilson.net.br

#RUN apt-get update -y && apt-get dist-upgrade -y && apt-get install apache2 libapache2-mod-php -y && apt-get clean -y

#Based on https://github.com/eriksoderblom/alpine-apache-php
# Setup apache and php
RUN apk --no-cache --update \
    add apache2 \
    apache2-ssl \
    curl \
    php85-apache2 \
    php85-bcmath \
    php85-bz2 \
    php85-calendar \
    php85-common \
    php85-ctype \
    php85-curl \
    php85-dom \
    php85-gd \
    php85-iconv \
    php85-mbstring \
    php85-mysqli \
    php85-mysqlnd \
    php85-openssl \
    php85-pdo_mysql \
    php85-pdo_pgsql \
    php85-pdo_sqlite \
    php85-phar \
    php85-session \
    php85-xml \
    && mkdir /htdocs


COPY index.php favicon.ico /htdocs
COPY run.sh /bin


EXPOSE 80

CMD /bin/sh /bin/run.sh
#ENTRYPOINT ["/bin/run.sh"]
