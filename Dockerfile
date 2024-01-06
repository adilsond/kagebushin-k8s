FROM debian:bookworm-slim

LABEL maintainer=adilson@adilson.net.br

RUN apt-get update -y && apt-get dist-upgrade -y && apt-get install apt-transport-https curl lsb-release -y && curl -sSLo /usr/share/keyrings/deb.sury.org-php.gpg https://packages.sury.org/php/apt.gpg && sh -c 'echo "deb [signed-by=/usr/share/keyrings/deb.sury.org-php.gpg] https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php8.3.list' && apt-get update && apt-get install apache2 libapache2-mod-php8.3 php8.3 php8.3-cli php8.3-bz2 php8.3-curl php8.3-mbstring php8.3-intl -y && apt-get clean -y

COPY index.php /var/www/html
COPY run.sh /bin


EXPOSE 80

CMD /bin/bash /bin/run.sh
