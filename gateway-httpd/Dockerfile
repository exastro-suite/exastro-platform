#   Copyright 2022 NEC Corporation
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
FROM    almalinux:8.5

ARG     PROXY=""
RUN     if [ ! -z "${PROXY}" ]; then \
          sed -i -e "$ a PROXY=${PROXY}" /etc/yum.conf; \
        fi

RUN      curl -L -o /tmp/cjose-0.6.1.5-2.el8.x86_64.rpm https://mod-auth-openidc.org/download/cjose-0.6.1.5-2.el8.x86_64.rpm \
&&       curl -L -o /tmp/mod_auth_openidc-2.4.10-1.el8.x86_64.rpm https://mod-auth-openidc.org/download/mod_auth_openidc-2.4.10-1.el8.x86_64.rpm \
&&       dnf install -y httpd \
&&       dnf install -y mod_ssl \
&&       dnf install -y epel-release \
&&       dnf install -y redis hiredis \
&&       dnf install -y /tmp/cjose-0.6.1.5-2.el8.x86_64.rpm /tmp/mod_auth_openidc-2.4.10-1.el8.x86_64.rpm \
&&       dnf install -y gcc \
&&       dnf install -y httpd-devel \
&&       dnf install -y python39 \
&&       dnf install -y python39-devel \
&&       dnf install -y python39-mod_wsgi \
&&       pip3.9 install requests \
&&       pip3.9 install PyJWT

WORKDIR /app

COPY    httpd-start.sh /app/
COPY    exastroSettingsBridge.conf /app/
COPY    gateway-httpd.conf /app/

RUN     chmod +x /app/httpd-start.sh \
&&      cp /app/exastroSettingsBridge.conf /etc/httpd/conf.d/. \
&&      mkdir /etc/httpd/conf.d/exastroSettings \
&&      cp /app/gateway-httpd.conf /etc/httpd/conf.d/exastroSettings/.


CMD ["/bin/sh","/app/httpd-start.sh"]
