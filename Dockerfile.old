FROM alpine:3.8
LABEL author="Serge NOEL <serge.noel@net6a.com.fr>"

RUN apk update \
<<<<<<< HEAD
    && apk add apache2 apache2-ctl php7-apache2 php7-ldap php7-gd php7-curl php7-simplexml php7-session \
       php7-mysqli php7-imap \
=======
    && apk add --no-cache php7-apache2 php7-ldap php7-gd php7-curl php7-simplexml \
>>>>>>> 62ebb794ad0981b109ae44702ca55ac910f349d2
    && mkdir /run/apache2 \
    && sed -i "s|/var/www/localhost/htdocs|/var/www/html|g" /etc/apache2/httpd.conf

VOLUME  /var/www/html

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

