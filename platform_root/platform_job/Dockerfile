#   Copyright 2025 NEC Corporation
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

FROM    exastro/exastro-platform-job:1.9.0 as common_build

ARG USERNAME
ARG GROUPNAME
ARG APP_PATH

# Patched Env
ENV DB_CONNECT_TIMEOUT      10
ENV DB_CONNECT_RETRY_SLEEP_TIME    0.5
ENV DB_CONNECT_RETRY_LIMIT  3

# Patched File
COPY ./platform_root/common_library/common/db.py $APP_PATH/common_library/common/db.py

#
# Build for development
#   Specify options when creating this image: --target develop_build
#
FROM    common_build as develop_build

ARG USERNAME
ARG GROUPNAME
ARG APP_PATH

USER root

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
    rpm -ivh https://dev.mysql.com/get/mysql80-community-release-el8-8.noarch.rpm \
&&  dnf install -y mysql-community-client

RUN --mount=type=secret,id=host_certificate_file,dst=/etc/pki/ca-trust/extracted/pem/tls-ca-bundle.pem \
    poetry install --with develop_build

USER $USERNAME

RUN mkdir ~/.config \
&& mkdir ~/.vscode-server \
&& mkdir ~/.vscode-server-insiders

# WORKDIR $APP_PATH

# COPY ./platform_root/version $APP_PATH/
# COPY ./platform_root/platform_job/ $APP_PATH/
# COPY ./platform_root/common_library/ $APP_PATH/common_library/
# COPY ./platform_root/common_resources/ $APP_PATH/common_resources/

# CMD ["python3","./job_manager.py"]

#
# Build for production
#
FROM    common_build

ARG USERNAME
ARG GROUPNAME
ARG APP_PATH

# WORKDIR $APP_PATH

# COPY ./platform_root/version $APP_PATH/
# COPY ./platform_root/platform_job/ $APP_PATH/
# COPY ./platform_root/common_library/ $APP_PATH/common_library/
# COPY ./platform_root/common_resources/ $APP_PATH/common_resources/

# USER $USERNAME

# CMD ["python3","./job_manager.py"]
