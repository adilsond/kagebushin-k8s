FROM alpine:edge

LABEL maintainer=adilson@adilson.net.br

#RUN apt-get update -y && apt-get dist-upgrade -y && apt-get install apache2 libapache2-mod-php -y && apt-get clean -y

#Based on https://github.com/eriksoderblom/alpine-apache-php
# Setup apache and php
RUN apk --no-cache --update \
    add apache2 \
    apache2-ssl \
    curl \
    php84-apache2 \
    php84-bcmath \
    php84-bz2 \
    php84-calendar \
    php84-common \
    php84-ctype \
    php84-curl \
    php84-dom \
    php84-gd \
    php84-iconv \
    php84-mbstring \
    php84-mysqli \
    php84-mysqlnd \
    php84-openssl \
    php84-pdo_mysql \
    php84-pdo_pgsql \
    php84-pdo_sqlite \
    php84-phar \
    php84-session \
    php84-xml \
    && mkdir /htdocs


COPY index.php favicon.ico /htdocs
COPY run.sh /bin


EXPOSE 80

CMD /bin/sh /bin/run.sh
#ENTRYPOINT ["/bin/run.sh"]
