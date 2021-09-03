FROM debian:bullseye-slim

LABEL maintainer=adilson@adilson.net.br

RUN apt-get update -y && apt-get dist-upgrade -y && apt-get install apache2 libapache2-mod-php7.3 -y && apt-get clean -y

COPY index.php /var/www/html
COPY run.sh /bin


EXPOSE 80

CMD /bin/bash /bin/run.sh
