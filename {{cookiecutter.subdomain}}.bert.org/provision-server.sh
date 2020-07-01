#!/bin/bash
SUBDOMAIN=$1

echo "Linking $SUBDOMAIN.bert.org"
[[ -e "/var/www/${SUBDOMAIN}.bert.org" ]] || ln -s "/home/bertrand/www/${SUBDOMAIN}.bert.org/" "/var/www/${SUBDOMAIN}.bert.org"

sudo cp "/home/bertrand/www/${SUBDOMAIN}.bert.org/conf/${SUBDOMAIN}.bert.org.conf" /etc/apache2/sites-available/
sudo cp "/home/bertrand/www/${SUBDOMAIN}.bert.org/conf/${SUBDOMAIN}.bert.org-le-ssl.conf" /etc/apache2/sites-available/
sudo a2ensite "${SUBDOMAIN}.bert.org"
sudo a2ensite "${SUBDOMAIN}.bert.org-le-ssl"
sudo service apache2 reload

rm -rf "/home/bertrand/www/${SUBDOMAIN}.bert.org/conf/"
rm -f "/home/bertrand/www/${SUBDOMAIN}.bert.org/provision.sh"
rm -f "/home/bertrand/www/${SUBDOMAIN}.bert.org/provision-server.sh"