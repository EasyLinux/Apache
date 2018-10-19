FROM alpine
LABEL author="Serge NOEL <serge.noel@net6a.com.fr>"

RUN apk update \
    && apk add apache2 apache2-ctl php7-apache2 php7-ldap php7-gd php7-curl php7-simplexml php7-session \
       php7-mysqli php7-imap \
    && mkdir /run/apache2 \
    && sed -i "s|/var/www/localhost/htdocs|/var/www/html|g" /etc/apache2/httpd.conf

VOLUME  /var/www/html

EXPOSE 80

CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]

