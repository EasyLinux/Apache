# Apache

## Description
Démonstration d'un Dockerfile pour réaliser un conteneur  Apache/php. Ce conteneur contient un grand nombre de modules php.

## Utilisation 
Lancer le conteneur avec la commande : 
> docker run -d -p 8080:80 -v SiteWeb:/var/www/html easylinux/apache 
