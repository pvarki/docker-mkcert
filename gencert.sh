#!/bin/bash -l
if [ "$#" -eq 1 ]
then
  SERVER_DOMAIN=$1
fi
if [ -z "$SERVER_DOMAIN" ]
then
  echo "SERVER_DOMAIN not set"
  exit 1
fi
set -e
CAROOT=`mkcert -CAROOT`
mkdir -p /certs/$SERVER_DOMAIN
cd /certs/$SERVER_DOMAIN
mkcert -cert-file cert.pem -key-file privkey.pem "$SERVER_DOMAIN" "mtls.$SERVER_DOMAIN" "*.$SERVER_DOMAIN"
cat cert.pem $CAROOT/rootCA.pem >fullchain.pem
