FROM alpine:edge

LABEL maintainer=adilson@adilson.net.br

#RUN apt-get update -y && apt-get dist-upgrade -y && apt-get install apache2 libapache2-mod-php -y && apt-get clean -y

#Based on https://github.com/eriksoderblom/alpine-apache-php
# Setup apache and php
RUN apk --no-cache --update \
    add apache2 \
    apache2-ssl \
    curl \
    php86-apache2 \
    php86-bcmath \
    php86-bz2 \
    php86-calendar \
    php86-common \
    php86-ctype \
    php86-curl \
    php86-dom \
    php86-gd \
    php86-iconv \
    php86-mbstring \
    php86-mysqli \
    php86-mysqlnd \
    php86-openssl \
    php86-pdo_mysql \
    php86-pdo_pgsql \
    php86-pdo_sqlite \
    php86-phar \
    php86-session \
    php86-xml \
    && mkdir /htdocs


COPY index.php favicon.ico /htdocs
COPY run.sh /bin


EXPOSE 80

CMD /bin/sh /bin/run.sh
#ENTRYPOINT ["/bin/run.sh"]
