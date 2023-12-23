FROM debian:bookworm-slim

LABEL maintainer=adilson@adilson.net.br

RUN apt-get update -y && apt-get dist-upgrade -y && apt-get install apache2 libapache2-mod-php bind9-dnsutils traceroute psmisc iputils-ping tree nano wget curl lynx -y && apt-get clean -y 

COPY index.php favicon.ico /var/www/html
COPY run.sh /bin


EXPOSE 80

CMD /bin/bash /bin/run.sh
