#!/bin/bash
SUBDOMAIN=$1

cd ~/code
cookiecutter --no-input cookiecutter-subdomain-bert-org "subdomain=${SUBDOMAIN}"
cd "${SUBDOMAIN}.bert.org"
./provision.sh $SUBDOMAIN