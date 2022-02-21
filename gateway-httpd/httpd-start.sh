#!/bin/bash

if [ ! -d "/etc/pki/tls/certs/" ]; then
    mkdir -p "/etc/pki/tls/certs/"
fi
if [ ! -d "/etc/pki/tls/private/" ]; then
    mkdir -p "/etc/pki/tls/private/"
fi
if [ ! -f "/etc/pki/tls/private/exastro-platform-authentication-infra.key" ]; then
    openssl req \
    -new \
    -x509 \
    -sha256 \
    -newkey rsa:2048 \
    -days 3650 \
    -nodes \
    -out /etc/pki/tls/certs/exastro-platform-authentication-infra.pem \
    -keyout /etc/pki/tls/private/exastro-platform-authentication-infra.key \
    -subj "/C=JP/ST=Tokyo/CN=gateway-httpd.exastro-platform-authentication-infra.svc"
fi

httpd -D FOREGROUND
