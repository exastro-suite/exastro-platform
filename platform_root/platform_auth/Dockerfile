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

ENV PYTHONPATH              $APP_PATH/
ENV LISTEN_PORT             8000
ENV LISTEN_PORT_PF_MNG      8001
ENV PYTHONIOENCODING        utf-8
ENV APACHE_PID_DIR          /var/run_$USERNAME/httpd/pid
ENV APACHE_SOCKET_DIR       /var/run_$USERNAME/httpd/socket
ENV APACHE_TIMEOUT          420
ENV APACHE_USERNAME         $USERNAME
ENV APACHE_GROUPNAME        $GROUPNAME
ENV LOG_LEVEL               INFO
ENV AUDIT_LOG_ENABLED       True
ENV AUDIT_LOG_PATH          exastro-audit.log
ENV AUDIT_LOG_FILE_MAX_BYTE 100000000
ENV AUDIT_LOG_BACKUP_COUNT  30
ENV EXASTRO_HTTPS           false

RUN --mount=type=secret,id=host_certificate_file,dst=/etc/pki/ca-trust/extracted/pem/tls-ca-bundle.pem \
    dnf install -y \
    langpacks-en \
    wget \
    unzip \
    httpd \
    gcc \
    httpd-devel \
    python39 \
    python39-devel \
    python39-mod_wsgi \
    mod_ssl \
# does not use mod_ssl's default ssl configuration file.
&&  mv /etc/httpd/conf.d/ssl.conf /etc/httpd/conf.d/ssl.conf_bk \
&&  pip3.9 install poetry==1.6.0 \
&&  poetry config virtualenvs.create false \
&&  groupadd $GROUPNAME \
&&  useradd -m -s /bin/bash -g $GROUPNAME $USERNAME \
&&  setcap 'cap_net_bind_service=+ep' /usr/sbin/httpd \
&&  chown $USERNAME:$GROUPNAME /var/log/httpd \
&&  mkdir -p $APACHE_PID_DIR \
&&  chown $USERNAME:$GROUPNAME $APACHE_PID_DIR \
&&  mkdir -p $APACHE_SOCKET_DIR \
&&  chown $USERNAME:$GROUPNAME $APACHE_SOCKET_DIR

WORKDIR $APP_PATH

COPY ./platform_root/platform_auth/pyproject.toml ./platform_root/platform_auth/poetry.lock $APP_PATH/

RUN --mount=type=secret,id=host_certificate_file,dst=/etc/pki/ca-trust/extracted/pem/tls-ca-bundle.pem \
    poetry install --only first_install

RUN --mount=type=secret,id=host_certificate_file,dst=/etc/pki/ca-trust/extracted/pem/tls-ca-bundle.pem \
    poetry install --without develop_build

#
# Build for development
#   Specify options when creating this image: --target develop_build
#
FROM    common_build as develop_build

ARG USERNAME
ARG GROUPNAME
ARG APP_PATH

RUN --mount=type=secret,id=host_certificate_file,dst=/etc/pki/ca-trust/extracted/pem/tls-ca-bundle.pem \
    dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo \
&&  dnf install -y \
    sudo \
    git \
    vim \
    diffutils \
    bind-utils \
    iputils \
    docker-ce-cli \
    jq \
&&  usermod -G wheel $USERNAME \
&&  echo '%wheel ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers \
&&  echo "%${GROUPNAME} ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

RUN --mount=type=secret,id=host_certificate_file,dst=/etc/pki/ca-trust/extracted/pem/tls-ca-bundle.pem \
    poetry install --with develop_build

USER $USERNAME

RUN mkdir ~/.config \
&& mkdir ~/.vscode-server \
&& mkdir ~/.vscode-server-insiders

WORKDIR $APP_PATH

COPY ./platform_root/platform_auth/config/httpd.conf/httpd.conf /etc/httpd/conf/httpd.conf
COPY ./platform_root/platform_auth/config/httpd.conf/reverse-proxy.conf /etc/httpd/conf.d/reverse-proxy.conf
COPY ./platform_root/platform_auth/config/httpd.conf/wsgi.conf /etc/httpd/conf.d/wsgi.conf
COPY ./platform_root/platform_auth/config/httpd.conf/exastro-ssl.conf /etc/httpd/conf.d/exastro-ssl.conf

COPY ./platform_root/version $APP_PATH/
COPY ./platform_root/platform_auth/ $APP_PATH/
COPY ./platform_root/common_library/ $APP_PATH/common_library/
COPY ./platform_root/common_resources/ $APP_PATH/common_resources/

CMD ["/app/start_httpd.sh"]

#
# Build for production
#
FROM    common_build

ARG USERNAME
ARG GROUPNAME
ARG APP_PATH

WORKDIR $APP_PATH

COPY ./platform_root/platform_auth/config/httpd.conf/httpd.conf /etc/httpd/conf/httpd.conf
COPY ./platform_root/platform_auth/config/httpd.conf/reverse-proxy.conf /etc/httpd/conf.d/reverse-proxy.conf
COPY ./platform_root/platform_auth/config/httpd.conf/wsgi.conf /etc/httpd/conf.d/wsgi.conf
COPY ./platform_root/platform_auth/config/httpd.conf/exastro-ssl.conf /etc/httpd/conf.d/exastro-ssl.conf

COPY ./platform_root/version $APP_PATH/
COPY ./platform_root/platform_auth/ $APP_PATH/
COPY ./platform_root/common_library/ $APP_PATH/common_library/
COPY ./platform_root/common_resources/ $APP_PATH/common_resources/

USER $USERNAME

CMD ["/app/start_httpd.sh"]
