#!/bin/sh
set -e;
# generate certs
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt \
    -subj "/C=ID/ST=Jakarta/L=Jakarta/O=Personal/O=Personal/CN=li850-194.members.linode.com";

# general dfhelman
openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048

cp ./nginx/defaultsites /etc/nginx/sites-available/default;
cp ./nginx/self-signed.conf /etc/nginx/snippets/self-signed.conf
systemctl restart nginx;