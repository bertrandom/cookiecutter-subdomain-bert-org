#!/bin/bash
SUBDOMAIN=$1

echo "Provisioning $SUBDOMAIN.bert.org"

SOURCE="/Users/bertrand/code/${SUBDOMAIN}.bert.org/"
TARGET="bertrand@server2.bertrandom.com:/home/bertrand/www/${SUBDOMAIN}.bert.org"
rsync -av "$SOURCE" "$TARGET"

COMMAND="/home/bertrand/www/${SUBDOMAIN}.bert.org/provision-server.sh ${SUBDOMAIN}"

ssh bertrand@server2.bertrandom.com $COMMAND

rm -rf "/Users/bertrand/code/${SUBDOMAIN}.bert.org/conf/"
rm -f "/Users/bertrand/code/${SUBDOMAIN}.bert.org/provision-server.sh"
rm -f "/Users/bertrand/code/${SUBDOMAIN}.bert.org/provision.sh"