FROM alpine:3.11
LABEL author="Serge NOEL <serge.noel@easylinux.fr>" \
      description="Apache avec Php" 

# Installer les paquets Apache2, php et Imap
RUN apk add apache2 \
            php7-apache2 \
            php7-imap \
    && mkdir -p /var/www/html \
    && sed -i "s|/var/www/localhost/htdocs|/var/www/html|g" /etc/apache2/httpd.conf \
    && echo "<?php   phpinfo();" > /var/www/html/index.php \
    && ln -s /dev/stdout /var/log/apache2/access.log \
    && ln -s /dev/stderr /var/log/apache2/error.log
# Renvoi des logs sur la console

# Endroit où placer mon programme
VOLUME /var/www/html
# Répertoire par défaut
WORKDIR /var/www/html
# Port à l'écoute
EXPOSE 80

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

