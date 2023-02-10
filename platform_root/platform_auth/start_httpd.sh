#!/bin/bash
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

HTTPD_ARGS=("-D" "FOREGROUND")

# Put shell startup parameters into Apache startup parameters as they are
# shellの起動パラメータをApacheの起動パラメータにそのまま入れる
HTTPD_ARGS+=($@)

#
# Generate environment variables to be referenced in Apache configuration files
# Apacheの設定ファイルで参照する環境変数を生成する
#
if [ -n "${EXTERNAL_URL}" ]; then
    # URL for organization user connection
    # オーガナイゼーションユーザー接続用のURL

    # Added that Apache startup parameters have URL specification for organization connection
    # Apacheの起動パラメータにオーガナイゼーション接続用のURL指定があることを追加
    HTTPD_ARGS+=("-D" "EXTERNAL_URL")

    # Split URL - URLを分割する
    export EXTERNAL_URL_HOST=$(python3 -c "import urllib.parse; print(urllib.parse.urlparse('${EXTERNAL_URL}').hostname or '')")
    export EXTERNAL_URL_PROTOCOL=$(python3 -c "import urllib.parse; print(urllib.parse.urlparse('${EXTERNAL_URL}').scheme or '')")
    export EXTERNAL_URL_PORT=$(python3 -c "import urllib.parse; print(urllib.parse.urlparse('${EXTERNAL_URL}').port or '')")
    if [ -n "${EXTERNAL_URL_PORT}" ]; then
        export EXTERNAL_URL_ORIGIN=${EXTERNAL_URL_PROTOCOL}://${EXTERNAL_URL_HOST}:${EXTERNAL_URL_PORT}
    else
        export EXTERNAL_URL_ORIGIN=${EXTERNAL_URL_PROTOCOL}://${EXTERNAL_URL_HOST}
    fi
fi

if [ -n "${EXTERNAL_URL_MNG}" ]; then
    # URL for system administrator connection
    # システム管理者接続用のURL

    # Added that there is a URL specification for system administrator connection in the Apache startup parameters.
    # Apacheの起動パラメータにシステム管理者接続用のURL指定があることを追加
    HTTPD_ARGS+=("-D" "EXTERNAL_URL_MNG")

    # Split URL - URLを分割する
    export EXTERNAL_URL_HOST_MNG=$(python3 -c "import urllib.parse; print(urllib.parse.urlparse('${EXTERNAL_URL_MNG}').hostname or '')")
    export EXTERNAL_URL_PROTOCOL_MNG=$(python3 -c "import urllib.parse; print(urllib.parse.urlparse('${EXTERNAL_URL_MNG}').scheme or '')")
    export EXTERNAL_URL_PORT_MNG=$(python3 -c "import urllib.parse; print(urllib.parse.urlparse('${EXTERNAL_URL_MNG}').port or '')")
    if [ -n "${EXTERNAL_URL_PORT_MNG}" ]; then
        export EXTERNAL_URL_ORIGIN_MNG=${EXTERNAL_URL_PROTOCOL_MNG}://${EXTERNAL_URL_HOST_MNG}:${EXTERNAL_URL_PORT_MNG}
    else
        export EXTERNAL_URL_ORIGIN_MNG=${EXTERNAL_URL_PROTOCOL_MNG}://${EXTERNAL_URL_HOST_MNG}
    fi
fi

echo "* EXTERNAL_URL_PARAMETER"
env | grep "^EXTERNAL_URL"

echo "* START HTTPD / OPTIONS: ${HTTPD_ARGS[@]}"
httpd ${HTTPD_ARGS[@]}
