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

ARG USERNAME=app_user
ARG GROUPNAME=app_user

ARG APP_PATH=/app

ARG PROXY=""
RUN if [ ! -z "${PROXY}" ]; then \
        sed -i -e "$ a PROXY=${PROXY}" /etc/yum.conf; \
    fi

RUN dnf install -y \
    langpacks-en \
    wget \
    unzip \
    httpd \
    mod_ssl \
    gcc \
    httpd-devel \
    python39 \
    python39-devel \
    python39-mod_wsgi \
&&  pip3.9 install \
    requests \
    pyyaml \
    Flask \
    pytz \
    markdown \
    requests \
    PyJWT \
&&  groupadd $GROUPNAME \
&&  useradd -m -s /bin/bash -g $GROUPNAME $USERNAME \
&&  mv /etc/httpd/conf.d/ssl.conf /etc/httpd/conf.d/ssl.conf.org \
&&  cp -p /etc/httpd/conf/httpd.conf /etc/httpd/conf/httpd.conf.org \
&&  sed -i -e '/^\s*ErrorLog\s/s|ErrorLog\s\+\S\+|ErrorLog "/dev/stderr"|' \
           -e '/^\s*CustomLog\s/s|CustomLog\s\+\S\+|CustomLog "/dev/stdout"|' \
           -e '/^\s*TransferLog\s/s|TransferLog\s\+\S\+|TransferLog "/dev/stdout"|' \
       /etc/httpd/conf/httpd.conf

#
# Build for development
#   Specify options when creating this image: --target develop_build
#
FROM    common_build as develop_build

RUN dnf install -y \
    sudo \
    git \
    vim \
    diffutils \
    bind-utils \
    iputils \
&&  pip3.9 install \
    debugpy \
    flake8 \
    autopep8 \
&&  usermod -G wheel $USERNAME \
&&  echo '%wheel ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

USER $USERNAME

RUN mkdir ~/.config

WORKDIR $APP_PATH

COPY ./platform_root/platform_auth/config/httpd_conf.d  /etc/httpd/conf.d/

COPY ./platform_root/platform_auth/ $APP_PATH/
COPY ./platform_root/common_library/ $APP_PATH/common_library/
COPY ./platform_root/common_resources/ $APP_PATH/common_resources/

CMD ["sudo","-E","/bin/sh","/app/httpd-start.sh"]

#
# Build for production
#
FROM    common_build

USER $USERNAME

WORKDIR $APP_PATH

COPY ./platform_root/platform_auth/config/httpd_conf.d  /etc/httpd/conf.d/

COPY ./platform_root/platform_auth/ $APP_PATH/
COPY ./platform_root/common_library/ $APP_PATH/common_library/
COPY ./platform_root/common_resources/ $APP_PATH/common_resources/

CMD ["/bin/sh","/app/httpd-start.sh"]
