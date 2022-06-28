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

RUN dnf install -y \
    langpacks-en \
    wget \
    unzip \
    httpd \
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
    python-dotenv \
&&  groupadd $GROUPNAME \
&&  useradd -m -s /bin/bash -g $GROUPNAME $USERNAME

#
# Build for development
#   Specify options when creating this image: --target develop_build
#
FROM    common_build as develop_build

RUN dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo \
&&  dnf install -y \
    sudo \
    git \
    vim \
    diffutils \
    bind-utils \
    iputils \
    docker-ce-cli \
&&  pip3.9 install \
    debugpy \
    flake8 \
    autopep8 \
&&  usermod -G wheel $USERNAME \
&&  echo '%wheel ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

USER $USERNAME

RUN mkdir ~/.config

WORKDIR $APP_PATH

COPY ./platform_root/platform_api/ $APP_PATH/
COPY ./platform_root/common_library/ $APP_PATH/common_library/
COPY ./platform_root/common_resources/ $APP_PATH/common_resources/

CMD ["python3", "/app/platform_api.py"]

#
# Build for production
#
FROM    common_build

USER $USERNAME

WORKDIR $APP_PATH

COPY ./platform_root/platform_api/ $APP_PATH/
COPY ./platform_root/common_library/ $APP_PATH/common_library/
COPY ./platform_root/common_resources/ $APP_PATH/common_resources/

CMD ["python3", "/app/platform_api.py"]