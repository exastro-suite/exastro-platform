# Copyright 2022 NEC Corporation#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

"""
WSGI main module
"""
# from crypt import methods
from flask import Flask, request, jsonify, make_response
import os
from datetime import datetime
from dotenv import load_dotenv  # python-dotenv
import logging
from logging.config import dictConfig as dictLogConf
from flask_log_request_id import RequestID

# User Imports
import globals
import common_library.common.common as common
from common_library.common.exastro_logging import ExastroLogRecordFactory, LOGGING
from common_library.common.db import DBconnector
from common_library.common import multi_lang
import auth_proxy

# load environ variables
load_dotenv(override=True)

# 設定ファイル読み込み・globals初期化
# Read configuration file and initialize globals
app = Flask(__name__)
app.config.from_envvar('CONFIG_API_PATH')
globals.init(app)


org_factory = logging.getLogRecordFactory()
logging.setLogRecordFactory(ExastroLogRecordFactory(org_factory, request))
globals.logger = logging.getLogger('root')
dictLogConf(LOGGING)

RequestID(app)


@app.route('/alive', methods=["GET"])
@common.platform_exception_handler
def alive():
    """死活監視 If the string is empty, return None

    Returns:
        Response: HTTP Response
    """
    return jsonify({"result": "200", "time": str(datetime.utcnow())}), 200


@app.route('/api/platform/<path:subpath>', methods=["GET", "POST", "PUT", "PATCH", "DELETE", "OPTION"])
@common.platform_exception_handler
def platform_organization_api_call(subpath):
    """Call the platform organization API after authorization - 認可後にplatform APIを呼び出します

    Args:
        subpath (str): subpath

    Returns:
        Response: HTTP Response
    """
    try:
        globals.logger.info('call platform api. method={} subpath={}'.format(request.method, subpath))

        # Destination URL settings - 宛先URLの設定
        dest_url = "{}://{}:{}/api/platform/{}".format(
            os.environ['PLATFORM_API_PROTOCOL'], os.environ['PLATFORM_API_HOST'], os.environ['PLATFORM_API_PORT'], subpath)

        # return jsonify({"result": "200", "time": str(datetime.utcnow())}), 200

        # Common authorization proxy processing call - 共通の認可proxy処理呼び出し

        realm_name = os.environ["REALM_NAME"]
        token_check_client_clientid = os.environ["TOKEN_CHECK_CLIENT_ID"]
        token_check_client_secret = os.environ["TOKEN_CHECK_CLIENT_SECRET"]
        user_token_client_id = os.environ["TOKEN_CHECK_CLIENT_ID"]
        user_token_client_secret = os.environ["TOKEN_CHECK_CLIENT_SECRET"]
        # realm名設定
        # Set realm name
        proxy = auth_proxy.auth_proxy(realm_name,
                                      token_check_client_clientid,
                                      token_check_client_secret,
                                      user_token_client_id,
                                      user_token_client_secret)

        # 各種チェック check
        response_json = proxy.check_authorization()
        # 0以外は、終了
        # Non-zero, end
        if response_json.get("result") != 0:
            return jsonify({"result": response_json.get("result"),
                            "info": response_json.get("info"),
                            "time": str(datetime.utcnow())}), response_json.get("result")

        # api呼び出し call api
        response_json = proxy.call_api(dest_url, response_json.get("info"))

        # 戻り値をそのまま返却
        # Return the return value as it is
        response = make_response()
        response.data = proxy.response_original.content
        for key, value in proxy.response_original.headers.items():
            if key.lower().startswith('content-'):
                response.headers[key] = value
        return response

    except common.AuthException as e:
        globals.logger.error(f'authentication error:{e.args}')
        message_id = "401-00002"
        message = multi_lang.get_text(message_id, "認証に失敗しました。")
        raise common.AuthException(message_id=message_id, message=message)

    except Exception as e:
        return common.response_server_error(e)


@app.route('/api/<string:organization_id>/platform/<path:subpath>', methods=["GET", "POST", "PUT", "PATCH", "DELETE", "OPTION"])
@common.platform_exception_handler
def platform_api_call(organization_id, subpath):
    """Call the platform API after authorization - 認可後にplatform APIを呼び出します

    Args:
        subpath (str): subpath

    Returns:
        Response: HTTP Response
    """
    try:
        globals.logger.info('call platform api. method={} organization_id={} subpath={}'.format(request.method, organization_id, subpath))

        # Destination URL settings - 宛先URLの設定
        dest_url = "{}://{}:{}/api/{}/platform/{}".format(
            os.environ['PLATFORM_API_PROTOCOL'], os.environ['PLATFORM_API_HOST'], os.environ['PLATFORM_API_PORT'], organization_id, subpath)

        # return jsonify({"result": "200", "time": str(datetime.utcnow())}), 200

        # Common authorization proxy processing call - 共通の認可proxy処理呼び出し

        # サービスアカウントを使うためにClientのSercretを取得
        # Get Client Sercret to use service account
        db = DBconnector()
        private = db.get_organization_private(organization_id)

        # 取得できない場合は、エラー
        # If you cannot get it, an error
        if not private:
            message_id = "500-11001"
            message = multi_lang.get_text(message_id,
                                          "organization private情報の取得に失敗しました")
            raise common.InternalErrorException(essage_id=message_id, message=message)

        # organization idをrealm名として設定
        # Set organization id as realm name
        proxy = auth_proxy.auth_proxy(organization_id,
                                      private.token_check_client_clientid,
                                      private.token_check_client_secret,
                                      private.user_token_client_clientid,
                                      None)

        # 各種チェック check
        response_json = proxy.check_authorization()
        # 0以外は、終了
        # Non-zero, end
        if response_json.get("result") != 0:
            return jsonify({"result": response_json.get("result"),
                            "info": response_json.get("info"),
                            "time": str(datetime.utcnow())}), response_json.get("result")

        # api呼び出し call api
        response_json = proxy.call_api(dest_url, response_json.get("info"))

        # 戻り値をそのまま返却
        # Return the return value as it is
        response = make_response()
        response.data = proxy.response_original.content
        for key, value in proxy.response_original.headers.items():
            if key.lower().startswith('content-'):
                response.headers[key] = value
        return response

    except common.AuthException as e:
        globals.logger.error(f'authentication error:{e.args}')
        message_id = "401-00002"
        message = multi_lang.get_text(message_id, "認証に失敗しました。")
        raise common.AuthException(message_id=message_id, message=message)

    except common.NotAllowedException as e:
        globals.logger.info(f'authorization error:{e.args}')
        status_code = 403
        info = "authorization error"
        return jsonify({"result": status_code, "info": info, "time": str(datetime.utcnow())}), status_code

    except Exception as e:
        return common.response_server_error(e)


@app.route('/api/<string:organization_id>/workspaces/<string:workspace_id>/ita/<path:subpath>', methods=["GET", "POST", "PUT", "PATCH", "DELETE", "OPTION"])  # noqa: E501
@common.platform_exception_handler
def ita_workspace_api_call(organization_id, workspace_id, subpath):
    """Call the IT-automation API after authorization - 認可後にIT-automation APIを呼び出します

    Args:
        organization_id (str): organization id
        workspace_id (str): workspace id
        subpath (str): subpath

    Returns:
        Response: HTTP Response
    """
    try:
        globals.logger.info('call ita workspace api. method={} organization_id={} workspace_id={} subpath={}'.format(request.method, organization_id, workspace_id, subpath))  # noqa: E501

        # Destination URL settings - 宛先URLの設定
        dest_url = "{}://{}:{}/api/{}/workspaces/{}/ita/{}".format(
            os.environ['ITA_API_PROTOCOL'], os.environ['ITA_API_HOST'], os.environ['ITA_API_PORT'], organization_id, workspace_id, subpath)

        # サービスアカウントを使うためにClientのSercretを取得
        # Get Client Sercret to use service account
        db = DBconnector()
        private = db.get_organization_private(organization_id)

        # 取得できない場合は、エラー
        # If you cannot get it, an error
        if not private:
            message_id = "500-11001"
            message = multi_lang.get_text(message_id,
                                          "organization private情報の取得に失敗しました")
            raise common.InternalErrorException(essage_id=message_id, message=message)

        # organization idをrealm名として設定
        # Set organization id as realm name
        proxy = auth_proxy.auth_proxy(organization_id,
                                      private.token_check_client_clientid,
                                      private.token_check_client_secret,
                                      private.user_token_client_clientid,
                                      None)

        # 各種チェック check
        response_json = proxy.check_authorization()

        globals.logger.info(f'called check_authorization responce={response_json}')

        # 0以外は、終了
        # Non-zero, end
        if response_json.get("result") != 0:
            return jsonify({"result": response_json.get("result"),
                            "info": response_json.get("info"),
                            "time": str(datetime.utcnow())}), response_json.get("result")

        # api呼び出し call api
        response_json = proxy.call_api(dest_url, response_json.get("info"))
        globals.logger.info('responce headers={}'.format(list(proxy.response_original.headers)))

        # 戻り値をそのまま返却
        # Return the return value as it is
        response = make_response()
        response.data = proxy.response_original.content
        for key, value in proxy.response_original.headers.items():
            if key.lower().startswith('content-'):
                response.headers[key] = value
        return response

    except common.AuthException as e:
        globals.logger.error(f'authentication error:{e.args}')
        message_id = "401-00002"
        message = multi_lang.get_text(message_id, "認証に失敗しました。")
        raise common.AuthException(message_id=message_id, message=message)

    except common.NotAllowedException as e:
        globals.logger.info(f'permission error:{e.args}')
        status_code = 403
        info = "permission error"
        return jsonify({"result": status_code, "info": info, "time": str(datetime.utcnow())}), status_code

    except Exception as e:
        return common.response_server_error(e)


if __name__ == '__main__':
    app.run(
        debug=(True if os.environ.get('FLASK_ENV', 'produciton') == 'development' else False),
        host='0.0.0.0',
        port=int(os.environ.get('FLASK_SERVER_PORT', '8801')),
        threaded=True)
