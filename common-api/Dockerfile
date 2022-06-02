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

RUN dnf install -y \
    langpacks-en \
    wget \
    unzip \
    python39 \
&&  pip3.9 install requests \
&&  pip3.9 install pyyaml \
&&  pip3.9 install Flask \
&&  pip3.9 install pytz \
&&  pip3.9 install markdown \
&&  groupadd $GROUPNAME \
&&  useradd -m -s /bin/bash -g $GROUPNAME $USERNAME

#
# Build for development
#   Specify options when creating this image: --target develop_build
#
FROM    common_build as develop_build

RUN pip3.9 install debugpy \
&&  dnf -y install sudo \
&&  usermod -G wheel $USERNAME \
&&  echo '%wheel ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

RUN dnf install -y git vim diffutils bind-utils iputils \
&&  pip3.9 install flake8 \
&&  pip3.9 install autopep8

USER $USERNAME

RUN mkdir ~/.config

WORKDIR /app
COPY ./ /app/
CMD ["python3", "/app/common-api.py"]

#
# Build for production
#
FROM    common_build

USER $USERNAME
WORKDIR /app
COPY ./ /app/
CMD ["python3", "/app/common-api.py"]
