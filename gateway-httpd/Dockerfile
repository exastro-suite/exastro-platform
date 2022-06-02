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
FROM    registry.access.redhat.com/ubi8/ubi-init as common_build

ARG     PROXY=""
RUN     if [ ! -z "${PROXY}" ]; then \
          sed -i -e "$ a PROXY=${PROXY}" /etc/yum.conf; \
        fi

#RUN      curl -L -o /tmp/cjose-0.6.1.5-2.el8.x86_64.rpm https://mod-auth-openidc.org/download/cjose-0.6.1.5-2.el8.x86_64.rpm \
#&&       curl -L -o /tmp/mod_auth_openidc-2.4.10-1.el8.x86_64.rpm https://mod-auth-openidc.org/download/mod_auth_openidc-2.4.10-1.el8.x86_64.rpm \
#&&       curl -L -o /tmp/epel-release-latest-8.noarch.rpm https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm \
#&&       curl -L -o /tmp/redis-5.0.3-5.module_el8.4.0+955+7126e393.x86_64.rpm https://vault.centos.org/centos/8/AppStream/x86_64/os/Packages/redis-5.0.3-5.module_el8.4.0+955+7126e393.x86_64.rpm \
#&&       curl -L -o /tmp/hiredis-0.13.3-13.el8.x86_64.rpm https://dl.fedoraproject.org/pub/epel/8/Everything/x86_64/Packages/h/hiredis-0.13.3-13.el8.x86_64.rpm \

RUN      dnf install -y httpd \
&&       dnf install -y mod_ssl \
#&&       dnf install -y /tmp/epel-release-latest-8.noarch.rpm \
#&&       dnf install -y /tmp/redis-5.0.3-5.module_el8.4.0+955+7126e393.x86_64.rpm /tmp/hiredis-0.13.3-13.el8.x86_64.rpm \
#&&       dnf install -y /tmp/cjose-0.6.1.5-2.el8.x86_64.rpm /tmp/mod_auth_openidc-2.4.10-1.el8.x86_64.rpm \
&&       dnf install -y gcc \
&&       dnf install -y httpd-devel \
&&       dnf install -y python39 \
&&       dnf install -y python39-devel \
&&       dnf install -y python39-mod_wsgi \
&&       dnf install -y langpacks-en \
&&       pip3.9 install requests \
&&       pip3.9 install PyJWT \
&&       mv /etc/httpd/conf.d/ssl.conf /etc/httpd/conf.d/ssl.conf.org \
&&       cp -p /etc/httpd/conf/httpd.conf /etc/httpd/conf/httpd.conf.org \
&&       sed -i -e '/^\s*ErrorLog\s/s|ErrorLog\s\+\S\+|ErrorLog "/dev/stderr"|' \
                -e '/^\s*CustomLog\s/s|CustomLog\s\+\S\+|CustomLog "/dev/stdout"|' \
                -e '/^\s*TransferLog\s/s|TransferLog\s\+\S\+|TransferLog "/dev/stdout"|' \
            /etc/httpd/conf/httpd.conf
# &&      cp -p /etc/httpd/conf.d/ssl.conf /etc/httpd/conf.d/ssl.conf.org \
# &&      sed -i  -e '/^\s*ErrorLog\s/s|ErrorLog\s\+\S\+|ErrorLog "/dev/stderr"|' \
#                 -e '/^\s*CustomLog\s/s|CustomLog\s\+\S\+|CustomLog "/dev/stdout"|' \
#                 -e '/^\s*TransferLog\s/s|TransferLog\s\+\S\+|TransferLog "/dev/stdout"|' \
#             /etc/httpd/conf.d/ssl.conf \

#
# Build for development
#   Specify options when creating this image: --target develop_build
#
FROM    common_build  as develop_build

ARG USERNAME=app_user
ARG GROUPNAME=app_user

RUN     pip3.9 install debugpy \
&&      groupadd $GROUPNAME \
&&      useradd -m -s /bin/bash -g $GROUPNAME $USERNAME \
&&      dnf -y install sudo \
&&      usermod -G wheel $USERNAME \
&&      echo '%wheel ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

RUN     dnf install -y git vim diffutils bind-utils iputils \
&&      pip3.9 install flake8 \
&&      pip3.9 install autopep8

USER    $USERNAME

RUN mkdir ~/.config

COPY    ./httpd_conf.d   /etc/httpd/conf.d/

WORKDIR /app
COPY    ./app   /app/

CMD ["sudo","-E","/bin/sh","/app/httpd-start.sh"]

#
# Build for production
#
FROM    common_build

COPY    ./httpd_conf.d   /etc/httpd/conf.d/

WORKDIR /app
COPY    ./app   /app/

CMD ["/bin/sh","/app/httpd-start.sh"]
