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
ENV PYTHONIOENCODING        utf-8

RUN dnf install -y \
    langpacks-en \
    wget \
    unzip \
    httpd \
    python39 \
&&  pip3.9 install poetry==1.6.0 \
&&  poetry config virtualenvs.create false \
&&  groupadd $GROUPNAME \
&&  useradd -m -s /bin/bash -g $GROUPNAME $USERNAME

WORKDIR $APP_PATH

COPY ./platform_root/platform_job/pyproject.toml ./platform_root/platform_job/poetry.lock $APP_PATH/
RUN poetry install --only first_install
RUN poetry install --without develop_build

#
# config default
#

# SUB PROCESSを再起動するインターバル / Interval for restarting SUB PROCESS
ENV SUB_PROCESS_TERMINATE_REQUEST_SECONDS=1800

# queueを受付けるSUB PROCESSの総数 / Total number of SUB PROCESS that accept queues
ENV SUB_PROCESS_ACCEPTABLE=2

# SUB PROCESS毎の最大同時実行job数 / Maximum number of concurrently executing jobs for each SUB PROCESS
ENV SUB_PROCESS_MAX_JOBS=10

# SUB PROCESSの状態確認インターバル / SUB PROCESS status check interval
ENV SUB_PROCESS_WATCH_INTERVAL_SECONDS=1.0

# SUB PROCESSでDBの再接続を行うインターバル / Interval for reconnecting the DB with SUB PROCESS
ENV SUB_PROCESS_DB_RECONNECT_INTERVAL_SECONDS=60

# SUB PROCESSのDB接続の正常性確認を行うインターバル / Interval for checking the normality of SUB PROCESS DB connection
ENV SUB_PROCESS_DB_HEALTH_CHECK_INTERVAL_SECONDS=5

# SUB PROCESSの再起動を行うcancel timeout回数の閾値 / Threshold for cancel timeout times to restart SUB PROCESS
ENV SUB_PROCESS_MAX_CANCEL_TIMEOUT=10

# JOBの状態確認するインターバル / Interval to check JOB status
ENV JOB_STATUS_WATCH_INTERVAL_SECONDS=1.0

# ステータスを強制的にエラーにするJOBの起動インターバル / JOB startup interval that forces the status to error
ENV FORCE_UPDATE_STATUS_INTERVAL_SECONDS=180

# ステータスを強制的にエラーにする最終更新日時からの経過時間 / Elapsed time since last update to force status to error
ENV FORCE_UPDATE_STATUS_PROGRASS_SECONDS=600

# タスクのキャンセルtimeout時間 / Job cancellation timeout seconds
ENV JOB_CANCEL_TIMEOUT_SECONDS=5.0

# 通知Jobの設定 / Notification job settings
#   Jobタイムアウト / Job timeout
ENV JOB_NOTIFICATION_TIMEOUT_SECONDS=20
#   プロセス毎に同時実行可能なJob数(未指定時はSUB_PROCESS_MAX_JOBSと同値) / Number of jobs that can be executed simultaneously per process (If not specified, the same value as SUB_PROCESS_MAX_JOBS)
# ENV JOB_NOTIFICATION_MAX_JOB_PER_PROCESS=
#   teams webhook connection timeout
ENV JOB_NOTIFICATION_TEAMS_CONNECTION_TIMEOUT=3.0
#   teams webhook read timeout
ENV JOB_NOTIFICATION_TEAMS_READ_TIMEOUT=10.0
#   smtp timeout
ENV JOB_NOTIFICATION_SMTP_TIMEOUT=10.0
#   smtps ssl verify TRUE/FALSE
ENV JOB_NOTIFICATION_SMTPS_SSL_VERIFY_ENABLED=TRUE

# 強制ステータス更新Jobの設定 / Force status update job settings
#   Jobタイムアウト / Job timeout
ENV JOB_FORCE_UPDATE_STATUS_TIMEOUT_SECONDS=60


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
    jq \
    nodejs \
&&  npm config set registry http://registry.npmjs.org/ \
&&  npm -g config set strict-ssl false \
&&  npm install -g @apidevtools/swagger-cli \
&&  usermod -G wheel $USERNAME \
&&  echo '%wheel ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers \
&&  echo "%${GROUPNAME} ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

RUN curl -kL -O https://dev.mysql.com/get/mysql80-community-release-el8-8.noarch.rpm \
&&  rpm -ivh mysql80-community-release-el8-8.noarch.rpm \
&&  dnf install -y mysql-community-client

RUN poetry install --with develop_build

USER $USERNAME

RUN mkdir ~/.config \
&& mkdir ~/.vscode-server \
&& mkdir ~/.vscode-server-insiders

WORKDIR $APP_PATH

COPY ./platform_root/version $APP_PATH/
COPY ./platform_root/platform_job/ $APP_PATH/
COPY ./platform_root/common_library/ $APP_PATH/common_library/
COPY ./platform_root/common_resources/ $APP_PATH/common_resources/

CMD ["python3","./job_manager.py"]

#
# Build for production
#
FROM    common_build

ARG USERNAME
ARG GROUPNAME
ARG APP_PATH

WORKDIR $APP_PATH

COPY ./platform_root/version $APP_PATH/
COPY ./platform_root/platform_job/ $APP_PATH/
COPY ./platform_root/common_library/ $APP_PATH/common_library/
COPY ./platform_root/common_resources/ $APP_PATH/common_resources/

USER $USERNAME

CMD ["python3","./job_manager.py"]
