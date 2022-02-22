#!/bin/bash
#   Copyright 2021 NEC Corporation
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

if [ ! -d "/etc/pki/tls/certs/" ]; then
    mkdir -p "/etc/pki/tls/certs/"
fi
if [ ! -d "/etc/pki/tls/private/" ]; then
    mkdir -p "/etc/pki/tls/private/"
fi
if [ ! -f "/etc/pki/tls/private/localhost.key" ]; then
    openssl req \
    -new \
    -x509 \
    -sha256 \
    -newkey rsa:2048 \
    -days 3650 \
    -nodes \
    -out /etc/pki/tls/certs/localhost.crt \
    -keyout /etc/pki/tls/private/localhost.key \
    -subj "/C=JP/ST=Tokyo/CN=gateway-httpd.localhost.svc"
fi
if [ ! -f "/etc/pki/tls/private/exastro-common-auth.key" ]; then
    openssl req \
    -new \
    -x509 \
    -sha256 \
    -newkey rsa:2048 \
    -days 3650 \
    -nodes \
    -out /etc/pki/tls/certs/exastro-common-auth.pem \
    -keyout /etc/pki/tls/private/exastro-common-auth.key \
    -subj "/C=JP/ST=Tokyo/CN=gateway-httpd.exastro-common-auth.svc"
fi

httpd -D FOREGROUND
