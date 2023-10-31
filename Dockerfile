FROM debian:bookworm-slim

LABEL maintainer=adilson@adilson.net.br

RUN apt-get update -y && apt-get dist-upgrade -y && apt-get install apache2 libapache2-mod-php -y && apt-get clean -y

COPY index.php favicon.ico /var/www/html
COPY run.sh /bin


EXPOSE 80

CMD /bin/bash /bin/run.sh
