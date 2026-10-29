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
ENV LISTEN_PORT             8000
ENV PYTHONIOENCODING        utf-8
ENV APACHE_PID_DIR          /var/run_$USERNAME/httpd/pid
ENV APACHE_SOCKET_DIR       /var/run_$USERNAME/httpd/socket
ENV APACHE_TIMEOUT          360
ENV APACHE_USERNAME         $USERNAME
ENV APACHE_GROUPNAME        $GROUPNAME
ENV DB_CONNECT_TIMEOUT      10
ENV DB_CONNECT_RETRY_SLEEP_TIME    0.5
ENV DB_CONNECT_RETRY_LIMIT  3

# mod_wsgiのプロセス・スレッド数(config/httpd.conf/wsgi.conf参照) / mod_wsgi processes and threads (see config/httpd.conf/wsgi.conf)
#   通常系(platform-api) / Default group (platform-api)
ENV PLATFORM_API_WSGI_PROCESSES             1
ENV PLATFORM_API_WSGI_THREADS               15
#   AIアシスタント系(platform-api-ai-assistant) / AI assistant group (platform-api-ai-assistant)
ENV AI_ASSISTANT_WSGI_PROCESSES             1
ENV AI_ASSISTANT_WSGI_THREADS               15
#   AIアシスタント系のrequest-timeout(秒)。AI_ASSISTANT_READ_TIMEOUTより大きく、APACHE_TIMEOUTより小さくすること
#   request-timeout (seconds) for the AI assistant group. Must be greater than AI_ASSISTANT_READ_TIMEOUT and less than APACHE_TIMEOUT
ENV AI_ASSISTANT_WSGI_REQUEST_TIMEOUT       330

# AIアシスタント機能の設定 / AI assistant feature settings
#   BedrockへのHTTPリクエストの読み込みタイムアウト(秒) / Read timeout (seconds) for HTTP requests to Bedrock
ENV AI_ASSISTANT_READ_TIMEOUT               300
#   Bedrockへの接続タイムアウト(秒) / Connect timeout (seconds) for Bedrock
ENV AI_ASSISTANT_CONNECT_TIMEOUT            30
#   Bedrock呼び出しのリトライ最大回数(boto3の標準リトライ) / Maximum retry attempts for Bedrock calls (boto3 standard retry mode)
ENV AI_ASSISTANT_MAX_ATTEMPTS               1
#   Bedrock応答生成時のデフォルト最大トークン数 / Default max_tokens for Bedrock response generation
ENV AI_ASSISTANT_MAX_TOKENS_DEFAULT         20480
#   max_tokensがモデルの上限を超えた場合の自動リトライ回数 / Number of automatic retries when max_tokens exceeds the model's limit
ENV AI_ASSISTANT_MAX_TOKENS_RETRY_COUNT     3
#   学習事項をシステムプロンプトへ注入する際の最大件数 / Maximum number of lessons to inject into the system prompt
ENV AI_ASSISTANT_LESSONS_MAX_ITEMS          20
#   学習事項セクション全体の最大文字数 / Max character length of the lessons section as a whole
ENV AI_ASSISTANT_LESSONS_MAX_CHARS          6000
#   ユーザー1人・Workspace1つあたりに登録できる学習事項の最大件数 / Maximum number of lessons a single user may register within a single workspace
ENV AI_ASSISTANT_LESSONS_MAX_COUNT          200

RUN --mount=type=secret,id=host_certificate_file,dst=/etc/pki/ca-trust/extracted/pem/tls-ca-bundle.pem \
    dnf install -y \
    langpacks-en \
    wget \
    unzip \
    httpd \
    gcc \
    httpd-devel \
    python3.11 \
    python3.11-devel \
    python3.11-mod_wsgi \
    python3.11-pip \
    --exclude=python3.11-setuptools \
&&  alternatives --install /usr/bin/python3 python3 /usr/bin/python3.9 1000000 \
&&  alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11 100 \
&&  alternatives --set python3 /usr/bin/python3.11 \
&&  pip3.11 install poetry==1.8.4 \
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

COPY ./platform_root/platform_api/pyproject.toml ./platform_root/platform_api/poetry.lock $APP_PATH/

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
    rpm -ivh https://dev.mysql.com/get/mysql80-community-release-el8-8.noarch.rpm \
&&  dnf install -y mysql-community-client

RUN poetry install --with develop_build

USER $USERNAME

RUN mkdir ~/.config \
&& mkdir ~/.vscode-server \
&& mkdir ~/.vscode-server-insiders

WORKDIR $APP_PATH

COPY ./platform_root/platform_api/config/httpd.conf/httpd.conf /etc/httpd/conf/httpd.conf
COPY ./platform_root/platform_api/config/httpd.conf/wsgi.conf /etc/httpd/conf.d/wsgi.conf

COPY ./platform_root/version $APP_PATH/
COPY ./platform_root/platform_api/ $APP_PATH/
COPY ./platform_root/common_library/ $APP_PATH/common_library/
COPY ./platform_root/common_resources/ $APP_PATH/common_resources/

CMD ["httpd","-D","FOREGROUND"]

#
# Build for production
#
FROM    common_build

ARG USERNAME
ARG GROUPNAME
ARG APP_PATH

WORKDIR $APP_PATH

COPY ./platform_root/platform_api/config/httpd.conf/httpd.conf /etc/httpd/conf/httpd.conf
COPY ./platform_root/platform_api/config/httpd.conf/wsgi.conf /etc/httpd/conf.d/wsgi.conf

COPY ./platform_root/version $APP_PATH/
COPY ./platform_root/platform_api/ $APP_PATH/
COPY ./platform_root/common_library/ $APP_PATH/common_library/
COPY ./platform_root/common_resources/ $APP_PATH/common_resources/

USER $USERNAME

CMD ["httpd","-D","FOREGROUND"]
