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

# FROM    registry.access.redhat.com/ubi8/ubi-init as common_build
FROM    registry.access.redhat.com/ubi9/ubi-init:9.4 as common_build

ARG USERNAME
ARG GROUPNAME
ARG APP_PATH

ENV PYTHONPATH              $APP_PATH/
ENV PYTHONIOENCODING        utf-8
ENV KEYCLOAK_VERSION        "24.0"
ENV DB_CONNECT_TIMEOUT      10
ENV DB_CONNECT_RETRY_SLEEP_TIME    0.5
ENV DB_CONNECT_RETRY_LIMIT  3

RUN --mount=type=secret,id=host_certificate_file,dst=/etc/pki/ca-trust/extracted/pem/tls-ca-bundle.pem \
    dnf install -y \
    langpacks-en \
    wget \
    unzip \
    gcc \
    python3.11 \
    python3.11-devel \
    python3.11-mod_wsgi \
    python3.11-pip \
&&  alternatives --install /usr/bin/python3 python3 /usr/bin/python3.9 1000000 \
&&  alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11 100 \
&&  alternatives --set python3 /usr/bin/python3.11 \
&&  pip3.11 install poetry==1.8.4 \
&&  poetry config virtualenvs.create false \
&&  groupadd $GROUPNAME \
&&  useradd -m -s /bin/bash -g $GROUPNAME $USERNAME

WORKDIR $APP_PATH

COPY ./platform_root/platform_migration/pyproject.toml ./platform_root/platform_migration/poetry.lock $APP_PATH/

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
    nodejs \
&&  npm config set registry http://registry.npmjs.org/ \
&&  npm install -g @apidevtools/swagger-cli \
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

COPY ./platform_root/platform_migration/ $APP_PATH/
COPY ./platform_root/common_library/ $APP_PATH/common_library/
COPY ./platform_root/common_resources/ $APP_PATH/common_resources/
COPY ./platform_root/version $APP_PATH/

#
# Build for production
#
FROM    common_build

ARG USERNAME
ARG GROUPNAME
ARG APP_PATH

WORKDIR $APP_PATH

COPY ./platform_root/platform_migration/ $APP_PATH/
COPY ./platform_root/common_library/ $APP_PATH/common_library/
COPY ./platform_root/common_resources/ $APP_PATH/common_resources/
COPY ./platform_root/version $APP_PATH/

USER $USERNAME
