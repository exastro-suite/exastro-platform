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
ARG USERNAME=app_user
ARG GROUPNAME=app_user
ARG APP_PATH=/app

FROM    registry.access.redhat.com/ubi8/ubi-init as common_build

ARG USERNAME
ARG GROUPNAME
ARG APP_PATH

ENV LISTEN_PORT 80

RUN dnf install -y httpd

#
# Build for development
#   Specify options when creating this image: --target develop_build
#
FROM    common_build as develop_build

ARG USERNAME
ARG GROUPNAME
ARG APP_PATH

RUN dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo \
&&  dnf install -y \
    sudo \
    git \
    vim \
    diffutils \
    bind-utils \
    iputils \
    docker-ce-cli \
&&  groupadd $GROUPNAME \
&&  useradd -m -s /bin/bash -g $GROUPNAME $USERNAME \
&&  usermod -G wheel $USERNAME \
&&  echo '%wheel ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

USER $USERNAME

RUN mkdir ~/.config

COPY ./platform_root/platform_web/contents/ /var/www/html/
COPY ./platform_root/platform_web/config/httpd.conf/httpd.conf /etc/httpd/conf/httpd.conf
COPY ./platform_root/platform_web/config/httpd.conf/rewrite.conf /etc/httpd/conf.d/rewrite.conf

CMD ["sudo","-E","httpd","-D","FOREGROUND"]

#
# Build for production
#
FROM    common_build

ARG USERNAME
ARG GROUPNAME
ARG APP_PATH

COPY ./platform_root/platform_web/contents/ /var/www/html/
COPY ./platform_root/platform_web/config/httpd.conf/httpd.conf /etc/httpd/conf/httpd.conf
COPY ./platform_root/platform_web/config/httpd.conf/rewrite.conf /etc/httpd/conf.d/rewrite.conf

CMD ["httpd","-D","FOREGROUND"]