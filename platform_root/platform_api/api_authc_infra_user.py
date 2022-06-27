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

from flask import request, jsonify
import os
import json

# User Imports
import globals
import common
import api_keycloak_call


def curret_user_get(realm_name, user_id):
    """カレントユーザ情報取得 get current user info

    Args:
        realm_name (str): realm_name
        user_id (str): user id

    Returns:
        Response: HTTP Respose
    """
    try:
        globals.logger.info('Get current user. realm_name={}, user_id={}'.format(realm_name, user_id))

        token_user = os.environ["EXASTRO_KEYCLOAK_USER"]
        token_password = os.environ["EXASTRO_KEYCLOAK_PASSWORD"]
        token_realm_name = os.environ["EXASTRO_KEYCLOAK_MASTER_REALM"]

        # user_idをもとにKeyCloakのuser情報を取得する Get KeyCloak user info based on user_id
        user_info = api_keycloak_call.keycloak_user_get_by_id(realm_name, user_id, token_user, token_password, token_realm_name)

        ret_json = {
            "id": user_id,
            "username": user_info["username"],
            "enabled": user_info["enabled"],
            "firstName": user_info["firstName"],
            "lastName": user_info["lastName"],
            "email": user_info["email"],
            # "role": role_row
        }

        ret_status = 200

        globals.logger.info('SUCCESS: Get current user. ret_status={}'.format(ret_status))

        return jsonify({"result": ret_status, "info": ret_json}), ret_status

    except Exception as e:
        return common.serverError(e)


# def curret_user_password_change():
#     """カレントユーザパスワード変更

#     Returns:
#         Response: HTTP Respose
#     """
#     try:
#         globals.logger.debug('#' * 50)
#         globals.logger.debug('CALL curret_user_password_change')
#         globals.logger.debug('#' * 50)

#         token_user = os.environ["EXASTRO_KEYCLOAK_USER"]
#         token_password = os.environ["EXASTRO_KEYCLOAK_PASSWORD"]
#         token_realm_name = os.environ["EXASTRO_KEYCLOAK_MASTER_REALM"]

#         # パラメータ情報(JSON形式)
#         payload = request.json.copy()

#         cuurent_password = payload["current_password"]
#         new_password = payload["password"]

#         # globals.logger.debug('in_data:{}'.format(payload))

#         # realm nameの取得
#         realm_name = api_authc_common.get_current_realm(request.headers)

#         # user_idの取得
#         user_id = api_authc_common.get_current_user(request.headers)

#         # client_nameの取得
#         client_name = api_authc_common.get_current_client_name(request.headers)

#         # user_idをもとにKeyCloakのuser情報を取得する
#         user_info = api_keycloak_call.keycloak_user_get_by_id(realm_name, user_id, token_user, token_password, token_realm_name)

#         # 1件目使用 first data only use
#         if 0 in user_info:
#             user_info = user_info[0]

#         # client_secretの取得
#         client_secret = api_keycloak_call.keycloak_client_secret_get(realm_name, client_name, token_user, token_password, token_realm_name)

#         try:
#             # 現行パスワードが一致しているかチェック
#             token = api_keycloak_call.keycloak_client_user_get_token(realm_name, client_name, client_secret, user_info["username"],
#              cuurent_password)
#         except api_keycloak_call.AuthErrorException as e:
#             # 認証があった場合は401で戻る
#             return jsonify({"result": "401"}), 401

#         # パスワード変更
#         api_keycloak_call.keycloak_user_reset_password(realm_name, user_id, new_password, token_user, token_password, token_realm_name)

#         return jsonify({"result": "200"}), 200

#     except Exception as e:
#         return common.serverError(e)

def users_get(realm):
    """ユーザー取得 users get

    Args:
        realm (str): realm

    Returns:
        Response: HTTP Respose
    """
    try:
        globals.logger.info('Get users. realm_name={}'.format(realm))

        token_user = os.environ["EXASTRO_KEYCLOAK_USER"]
        token_password = os.environ["EXASTRO_KEYCLOAK_PASSWORD"]
        token_realm_name = os.environ["EXASTRO_KEYCLOAK_MASTER_REALM"]

        # user 取得 user get
        users = api_keycloak_call.keycloak_user_get(realm, None, token_user, token_password, token_realm_name)

        ret_status = 200

        globals.logger.info('SUCCESS: Get users. ret_status={}'.format(ret_status))
        return jsonify({"result": ret_status, "rows": users}), ret_status

    except Exception as e:
        return common.serverError(e)


def user_client_role_get(realm, user_id, client_id):
    """ユーザークライアントロール取得 user client role get

    Args:
        realm (str): realm
        user_id (str): user id
        client_id (str): client id

    Returns:
        Response: HTTP Respose
    """
    try:
        globals.logger.info('Get user client role. realm_name={} user_id={} client_id={}'.format(realm, user_id, client_id))

        token_user = os.environ["EXASTRO_KEYCLOAK_USER"]
        token_password = os.environ["EXASTRO_KEYCLOAK_PASSWORD"]
        token_realm_name = os.environ["EXASTRO_KEYCLOAK_MASTER_REALM"]

        # user role取得 user role get
        role_info = api_keycloak_call.keycloak_user_role_get(realm, user_id, client_id, token_user, token_password, token_realm_name)

        ret_status = 200

        globals.logger.info('SUCCESS: Get users. ret_status={}'.format(ret_status))

        return jsonify({"result": ret_status, "rows": role_info}), ret_status

    except Exception as e:
        return common.serverError(e)


def user_client_role_setting(realm, user_id, client_id):
    """ユーザークライアントロール設定 user client role setting

    Args:
        realm (str): realm
        user_id (str): user id
        client_id (str): client id

    Returns:
        Response: HTTP Respose
    """
    try:
        globals.logger.info('Update user client role. realm_name={} user_id={} client_id={}'.format(realm, user_id, client_id))

        token_user = os.environ["EXASTRO_KEYCLOAK_USER"]
        token_password = os.environ["EXASTRO_KEYCLOAK_PASSWORD"]
        token_realm_name = os.environ["EXASTRO_KEYCLOAK_MASTER_REALM"]

        # 引数を展開 Expand arguments
        payload = request.json.copy()

        globals.logger.debug(payload)

        token_user = os.environ["EXASTRO_KEYCLOAK_USER"]
        token_password = os.environ["EXASTRO_KEYCLOAK_PASSWORD"]
        token_realm_name = os.environ["EXASTRO_KEYCLOAK_MASTER_REALM"]

        # tokenの取得 get toekn
        token = api_keycloak_call.get_user_token(token_user, token_password, token_realm_name)

        roles = []
        # ユーザーに追加するロールを繰り返し処理する Iterate over the roles you add to the user
        for role in payload["roles"]:
            role_name = role["name"]
            # role情報取得 get role info.
            # role idが登録する際に必要なので取得する Get the role id as it is needed when registering
            role_info = api_keycloak_call.keycloak_client_role_get(realm, client_id, role_name, token)
            role_info = json.loads(role_info)
            # 追加するロールを設定 Set the role to add
            add_role = {
                "id": role_info["id"],
                "name": role_name,
            }
            roles.append(add_role)

        # user client role set
        api_keycloak_call.keycloak_user_client_role_mapping_create(realm, user_id, client_id, roles, token)

        ret_status = 200

        globals.logger.info('SUCCESS: Update user client role. ret_status={}'.format(ret_status))

        return jsonify({"result": ret_status}), ret_status

    except Exception as e:
        return common.serverError(e)


def user_client_role_delete(realm, user_id, client_id):
    """ユーザークライアントロール削除 user client role delete

    Args:
        realm (str): realm
        user_id (str): user id
        client_id (str): client id

    Request: json
        {
            "roles" : [
                "name": [role name],
            ]
        }

    Returns:
        Response: HTTP Respose
    """
    try:
        globals.logger.info('Delete user client role. realm_name={} user_id={} client_id={}'.format(realm, user_id, client_id))

        token_user = os.environ["EXASTRO_KEYCLOAK_USER"]
        token_password = os.environ["EXASTRO_KEYCLOAK_PASSWORD"]
        token_realm_name = os.environ["EXASTRO_KEYCLOAK_MASTER_REALM"]

        # 引数を展開 Expand arguments
        payload = request.json.copy()

        globals.logger.debug(payload)

        token_user = os.environ["EXASTRO_KEYCLOAK_USER"]
        token_password = os.environ["EXASTRO_KEYCLOAK_PASSWORD"]
        token_realm_name = os.environ["EXASTRO_KEYCLOAK_MASTER_REALM"]

        # tokenの取得 get toekn
        token = api_keycloak_call.get_user_token(token_user, token_password, token_realm_name)

        roles = []
        # ユーザーから削除するロールを繰り返し処理する Iterate over the role you want to delete from the user
        for role in payload["roles"]:
            role_name = role["name"]
            # role情報取得 get role info.
            # role idが登録する際に必要なので取得する Get the role id as it is needed when registering
            role_info = api_keycloak_call.keycloak_client_role_get(realm, client_id, role_name, token)
            role_info = json.loads(role_info)
            # 削除するロールを設定 Set the role to delete
            add_role = {
                "id": role_info["id"],
                "name": role_name,
            }
            roles.append(add_role)

        # user client role delete
        api_keycloak_call.keycloak_user_client_role_mapping_delete(realm, user_id, client_id, roles, token)

        ret_status = 200

        globals.logger.info('SUCCESS: Delete user client role. ret_status={}'.format(ret_status))

        return jsonify({"result": ret_status}), ret_status

    except Exception as e:
        return common.serverError(e)
