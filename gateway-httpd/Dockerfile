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
FROM    centos:7

ARG     PROXY=""
RUN     if [ ! -z "${PROXY}" ]; then \
          sed -i -e "$ a PROXY=${PROXY}" /etc/yum.conf; \
        fi

RUN      curl -L -o /tmp/cjose-0.6.1.5-2.el7.x86_64.rpm https://github.com/zmartzone/mod_auth_openidc/releases/download/v2.4.0/cjose-0.6.1.5-2.el7.x86_64.rpm \
&&       curl -L -o /tmp/mod_auth_openidc-2.4.10-1.el7.x86_64.rpm https://github.com/zmartzone/mod_auth_openidc/releases/download/v2.4.10/mod_auth_openidc-2.4.10-1.el7.x86_64.rpm \
&&       yum install -y httpd mod_ssl \
&&       yum install -y epel-release \
&&       yum install -y redis hiredis \
&&       yum install -y /tmp/cjose-0.6.1.5-2.el7.x86_64.rpm /tmp/mod_auth_openidc-2.4.10-1.el7.x86_64.rpm

WORKDIR /app

COPY    httpd-start.sh /app/
COPY    exastroSettingsBridge.conf /app/
COPY    gateway-httpd.conf /app/

RUN     chmod +x /app/httpd-start.sh \
&&      cp /app/exastroSettingsBridge.conf /etc/httpd/conf.d/. \
&&      mkdir /etc/httpd/conf.d/exastroSettings \
&&      cp /app/gateway-httpd.conf /etc/httpd/conf.d/exastroSettings/.


CMD ["/bin/sh","/app/httpd-start.sh"]
