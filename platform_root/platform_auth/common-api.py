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

from requests.models import Response
from flask import Flask, request, abort, jsonify, render_template, redirect, make_response
from datetime import datetime
import inspect
import os
import json
import tempfile
import subprocess
import time
import re
from urllib.parse import urlparse
import base64
import requests
from requests.auth import HTTPBasicAuth
import traceback
from datetime import timedelta, timezone

import yaml
from jinja2 import Template

# User Imports
import globals
import common
import api_authc_infra_client
import api_authc_infra_user
import api_keycloak_call

# 設定ファイル読み込み・globals初期化
app = Flask(__name__)
app.config.from_envvar('CONFIG_API_AUTHC_INFRA_PATH')
globals.init(app)

@app.route('/alive', methods=["GET"])
def alive():
    """死活監視

    Returns:
        Response: HTTP Respose
    """
    return jsonify({"result": "200", "time": str(datetime.now(globals.TZ))}), 200


@app.route('/<string:realm>/user/<string:user_id>', methods=['GET'])
def call_curret_user(realm, user_id):
    """カレントユーザー処理呼び出し call current_user

    Args:
        realm (str): realm
        user_id (str): user id

    Returns:
        Response: HTTP Respose
    """
    try:
        globals.logger.debug('#' * 50)
        globals.logger.debug('CALL {}:from[{}] realm[{}] user_id[{}]'.format(inspect.currentframe().f_code.co_name, request.method, realm, user_id))
        globals.logger.debug('#' * 50)

        if request.method == 'GET':
            # クライアントロール設定
            return api_authc_infra_user.curret_user_get(realm, user_id)
        else:
            # Error
            raise Exception("method not support!")

    except Exception as e:
        return common.server_error(e)


# @app.route('/user/current/password', methods=['PUT'])
# def call_curret_user_password():
#     """カレントユーザーパスワード処理呼び出し call current_user pasword
    
#     Returns:
#         Response: HTTP Respose
#     """
#     try:
#         globals.logger.debug('#' * 50)
#         globals.logger.debug('CALL {}:from[{}]'.format(inspect.currentframe().f_code.co_name, request.method))
#         globals.logger.debug('#' * 50)

#         if request.method == 'PUT':
#             # クライアントロール設定
#             return api_authc_infra_user.curret_user_password_change()
#         else:
#             # Error
#             raise Exception("method not support!")

#     except Exception as e:
#         return common.server_error(e)


@app.route('/<string:realm>/user', methods=['GET'])
def call_users(realm):
    """ユーザー呼び出し call users

    Args:
        realm (str): realm

    Returns:
        Response: HTTP Respose
    """
    try:
        globals.logger.debug('#' * 50)
        globals.logger.debug('CALL {}:from[{}] realm[{}]'.format(inspect.currentframe().f_code.co_name, request.method, realm))
        globals.logger.debug('#' * 50)

        if request.method == 'GET':
            # ユーザー一覧取得 Get users
            return api_authc_infra_user.users_get(realm)
        else:
            # Error
            raise Exception("method not support!")

    except Exception as e:
        return common.server_error(e)


@app.route('/<string:realm>/user/<string:user_id>/roles/<string:client_id>', methods=['GET','POST','DELETE'])
def call_user_role_setting(realm, user_id, client_id):
    """ユーザークライアントロール設定呼び出し call user client role

    Args:
        realm (str): realm
        user_id (str): user id
        client_id (str): client id

    Returns:
        Response: HTTP Respose
    """
    try:
        globals.logger.debug('#' * 50)
        globals.logger.debug('CALL {}:from[{}] realm[{}] user_id[{}] client_id[{}]'.format(inspect.currentframe().f_code.co_name, request.method, realm, user_id, client_id))
        globals.logger.debug('#' * 50)

        if request.method == 'GET':
            # クライアントロール情報取得 Get client role info.
            return api_authc_infra_user.user_client_role_get(realm, user_id, client_id)
        elif request.method == 'POST':
            # クライアントロール設定 Client role settings
            return api_authc_infra_user.user_client_role_setting(realm, user_id, client_id)
        elif request.method == 'DELETE':
            # クライアントロール削除 Delete client role
            return api_authc_infra_user.user_client_role_delete(realm, user_id, client_id)
        else:
            # Error
            raise Exception("method not support!")

    except Exception as e:
        return common.server_error(e)


@app.route('/<string:realm>/client/<string:client_id>/roles/<string:role_name>/users', methods=['GET'])
def call_role_users_get(realm, client_id, role_name):
    """クライアントロール毎のユーザ情報取得 呼び出し call user info for each role get

    Args:
        realm (str): realm
        client_id (str): client id
        role_name (str): role name

    Returns:
        Response: HTTP Respose
    """
    try:
        globals.logger.debug('#' * 50)
        globals.logger.debug('CALL {}:from[{}] realm[{}] client_id[{}] role_name[{}]'.format(inspect.currentframe().f_code.co_name, request.method, realm, client_id, role_name))
        globals.logger.debug('#' * 50)

        if request.method == 'GET':
            # ユーザークライアントロール情報取得 user client role info get
            return api_authc_infra_client.client_role_users_get(realm, client_id, role_name)
        else:
            # Error
            raise Exception("method not support!")

    except Exception as e:
        return common.server_error(e)


@app.route('/<string:realm>/user/token', methods=['POST'])
def access_token_get(realm):
    """アクセストークン取得

    Args:
        realm (str): realm

    Request: json
        {
            "user_name" : [user name],
            "password"  : [password]
        }

    Returns:
        Response: HTTP Respose
    """
    try:
        globals.logger.debug('#' * 50)
        globals.logger.debug('CALL {}:from[{}] realm[{}]'.format(inspect.currentframe().f_code.co_name, request.method, realm))
        globals.logger.debug('#' * 50)

        # パラメータ情報(JSON形式)
        payload = request.json.copy()
        user_name = payload.get("user_name")
        password = payload.get("password")

        # アクセストークン取得 get access token
        access_token = api_keycloak_call.get_user_token(user_name, password, realm)

        return jsonify({"result": "200", "access_token":access_token}), 200

    except Exception as e:
        return common.serverError(e)


@app.route('/<string:realm>/user/token/introspect', methods=['POST'])
def access_token_introspect(realm):
    """アクセストークンの有効確認

    Args:
        realm (str): realm

    Request: json
        {
            "client_id"      : [client id],
            "client_secret"  : [client secret],
            "access_token"   : [access token],
            "keycloak_proto" : [keycloak server protocol],
            "keycloak_host"  : [keycloak server host] 
        }

    Returns:
        Response: HTTP Respose
    """
    try:
        globals.logger.debug('#' * 50)
        globals.logger.debug('CALL {}:from[{}] realm[{}]'.format(inspect.currentframe().f_code.co_name, request.method, realm))
        globals.logger.debug('#' * 50)

        # パラメータ情報(JSON形式)
        payload = request.json.copy()
        client_id = payload.get("client_id")
        client_secret = payload.get("client_secret")
        access_token = payload.get("access_token")
        keycloak_proto = payload.get("keycloak_proto")
        keycloak_host = payload.get("keycloak_host")

        # トークンイントロスペクション token introspection
        active = api_keycloak_call.keycloak_user_token_introspect(client_id, client_secret, realm, access_token, keycloak_proto, keycloak_host)

        return jsonify({"result": "200", "active":active}), 200

    except Exception as e:
        return common.serverError(e)


if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0', port=int(os.environ.get('API_AUTHC_INFRA_PORT', '8000')), threaded=True)
