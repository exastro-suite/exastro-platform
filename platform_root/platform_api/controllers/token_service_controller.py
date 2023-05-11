# Copyright 2022 NEC Corporation
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

from flask import request, make_response
import os
from contextlib import closing
import json
import inspect
import requests
import jwt

from common_library.common import common
from common_library.common import api_keycloak_tokens, api_keycloak_realms
from common_library.common.db import DBconnector
# from common_library.common.db_init import DBinit
# from common_library.common import bl_plan_service
# import common_library.common.const as common_const
from libs import queries_token
from common_library.common import multi_lang

import globals

MSG_FUNCTION_ID = "30"


def token_create(organization_id):  # noqa: E501
    """create token

    Args:
        organization_id (str): organization id

    Returns:
        _type_: _description_
    """
    try:
        globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

        # call keycloak token api
        redirect_response = requests.post(
            f"{os.environ['API_KEYCLOAK_PROTOCOL']}://{os.environ['API_KEYCLOAK_HOST']}:{os.environ['API_KEYCLOAK_PORT']}/auth/realms/{organization_id}/protocol/openid-connect/token",
            data=request.form,
            headers={"Content-Type": request.content_type},
        )

        if redirect_response.status_code == 200:
            # When the token is successfully issued - tokenの発行に成功した時
            # Write refresh_token information - refresh_tokenの情報を書き込む

            # Decode refresh_token - refresh_tokenをデコードする
            refresh_token = json.loads(redirect_response.text)["refresh_token"]
            refresh_token_decode = jwt.decode(refresh_token, options={"verify_signature": False})

            # Extract expiration date of refresh_token - refresh_tokenの有効期限を取り出す
            try:
                refresh_token_expire = common.keycloak_timestamp_to_datetime(refresh_token_decode['exp'] * 1000)
            except Exception:
                refresh_token_expire = None

            globals.logger.info(f"create refresh token user_id={refresh_token_decode['sub']} session_id={refresh_token_decode['sid']} expire_timestamp={common.datetime_to_str(refresh_token_expire)}")

            # write to T_REFRESH_TOKEN - T_REFRESH_TOKENに書き込む
            db = DBconnector()
            if organization_id == "master":
                with closing(db.connect_platformdb()) as conn:
                    with conn.cursor() as cursor:
                        parameter = {
                            "user_id": refresh_token_decode['sub'],
                            "session_id": refresh_token_decode['sid'],
                            "expire_timestamp": refresh_token_expire,
                            "create_user": refresh_token_decode['sub'],
                            "last_update_user": refresh_token_decode['sub']
                        }
                        cursor.execute(queries_token.SQL_INSERT_REFRESH_TOKEN, parameter)

                        conn.commit()

            else:
                with closing(db.connect_orgdb(organization_id)) as conn:
                    with conn.cursor() as cursor:
                        parameter = {
                            "user_id": refresh_token_decode['sub'],
                            "session_id": refresh_token_decode['sid'],
                            "expire_timestamp": refresh_token_expire,
                            "create_user": refresh_token_decode['sub'],
                            "last_update_user": refresh_token_decode['sub']
                        }
                        cursor.execute(queries_token.SQL_INSERT_REFRESH_TOKEN, parameter)

                        conn.commit()

        # remake response header
        excluded_headers = ['content-encoding', 'content-length', 'connection', 'keep-alive', 'proxy-authenticate',
                            'proxy-authorization', 'te', 'trailers', 'transfer-encoding', 'Upgrade']
        headers = {
            k: v for k, v in redirect_response.raw.headers.items()
            if k.lower() not in excluded_headers
        }

        # 戻り値をそのまま返却
        # Return the return value as it is
        response = make_response()
        response.status_code = redirect_response.status_code
        response.data = redirect_response.content
        response.headers = headers

        return response

    except Exception as e:
        # When an error occurs, respond in the same format as keycloak (openid-connect format)
        # エラー発生時はkeycloakと同じ形式(openid-connect format)で応答する
        import traceback
        info = e.__class__.__name__
        globals.logger.error(f'last call:[{info}] Exception:{e.args}')
        globals.logger.error(''.join(list(traceback.TracebackException.from_exception(e).format())))
        status_code = 500
        return {"error": "server error", "error_description": "server error"}, status_code


@common.platform_exception_handler
def refresh_token_delete(organization_id):  # noqa: E501
    """delete refresh token

    Args:
        organization_id (str): organization id

    Returns:
        response: HTTP Response
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # ログインユーザーの情報を取得
    # Get login user information
    user_id = request.headers.get("User-Id")

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token = __get_token(organization_id)

    private = DBconnector().get_organization_private(organization_id)

    # call keycloak token api
    response = api_keycloak_tokens.offline_sessions_delete(organization_id, user_id, private.api_token_client_clientid, token)

    if response.status_code not in [200, 204, 404]:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = f"500-{MSG_FUNCTION_ID}001"
        message = multi_lang.get_text(
            message_id,
            "offline sessionの削除に失敗しました(対象ID:{0} user:{1} client:{2})",
            organization_id,
            user_id,
            private.api_token_client_clientid,
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    # When the token is successfully deleted - tokenの削除に成功した時
    # Delete refresh_token information - refresh_tokenの情報を削除する

    # delete T_REFRESH_TOKEN - T_REFRESH_TOKENを削除
    db = DBconnector()
    with closing(db.connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:
            parameter = {
                "user_id": user_id
            }
            where = "WHERE USER_ID = %(user_id)s"
            cursor.execute(queries_token.SQL_DELETE_REFRESH_TOKEN + where, parameter)

            conn.commit()

    return common.response_200_ok(None)


@common.platform_exception_handler
def refresh_token_delete_for_mng():  # noqa: E501
    """delete refresh token

    Returns:
        response: HTTP Response
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # ログインユーザーの情報を取得
    # Get login user information
    user_id = request.headers.get("User-Id")

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token = __get_token_pf()

    private = DBconnector().get_platform_private()

    # call keycloak token api
    response = api_keycloak_tokens.offline_sessions_delete(private.token_check_realm_id, user_id, private.api_token_client_clientid, token)

    if response.status_code not in [200, 204, 404]:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = f"500-{MSG_FUNCTION_ID}001"
        message = multi_lang.get_text(
            message_id,
            "offline sessionの削除に失敗しました(対象ID:{0} user:{1} client:{2})",
            private.token_check_realm_id,
            user_id,
            private.api_token_client_clientid,
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    # When the token is successfully deleted - tokenの削除に成功した時
    # Delete refresh_token information - refresh_tokenの情報を削除する

    # delete T_REFRESH_TOKEN - T_REFRESH_TOKENを削除
    db = DBconnector()
    with closing(db.connect_platformdb()) as conn:
        with conn.cursor() as cursor:
            parameter = {
                "user_id": user_id
            }
            where = "WHERE USER_ID = %(user_id)s"
            cursor.execute(queries_token.SQL_DELETE_REFRESH_TOKEN + where, parameter)

            conn.commit()

    return common.response_200_ok(None)


@common.platform_exception_handler
def refresh_token_list(organization_id):
    """refresh token list

    Args:
        organization_id (str): organization id

    Returns:
        response: HTTP Response
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # ログインユーザーの情報を取得
    # Get login user information
    user_id = request.headers.get("User-Id")

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token = __get_token(organization_id)

    private = DBconnector().get_organization_private(organization_id)

    # offline refresh tokenの取得
    # get a offline refresh token
    response = api_keycloak_tokens.offline_sessions_get(organization_id, user_id, private.api_token_client_id, token)
    if response.status_code == 404:
        # 404の場合は、正常終了 dataなしを返却
        # In case of 404, return normal end no data
        return common.response_200_ok([])
    elif response.status_code != 200:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = f"400-{MSG_FUNCTION_ID}001"
        message = multi_lang.get_text(
            message_id,
            "offline sessionの取得に失敗しました(対象ID:{0} user:{1} client:{2})",
            organization_id,
            user_id,
            private.api_token_client_clientid,
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    offline_sessions = json.loads(response.text)

    # offline refresh tokenの取得
    # get a offline refresh token
    response = api_keycloak_realms.realm_get(organization_id, token)
    if response.status_code != 200:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = f"400-{MSG_FUNCTION_ID}002"
        message = multi_lang.get_text(
            message_id,
            "realm情報の取得に失敗しました(対象ID:{0}",
            organization_id,
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    realm_info = json.loads(response.text)

    # DataBaseに格納した有効期限を取得する
    # Get expiration date stored in DataBase
    # plan and plan_limit list get
    with closing(DBconnector().connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:

            parameter = {
                "user_id": user_id,
            }
            where = " WHERE USER_ID = %(user_id)s" \
                    " ORDER BY CREATE_TIMESTAMP ASC"
            cursor.execute(queries_token.SQL_QUERY_REFRESH_TOKEN + where, parameter)
            result_token_lists = cursor.fetchall()

    # 取得したrefresh tokenの一覧を返却する
    # Return the list of acquired refresh tokens
    data = __make_refresh_tokens_list(offline_sessions, result_token_lists, realm_info, user_id)

    globals.logger.info(f"### Succeed func:{inspect.currentframe().f_code.co_name}")

    return common.response_200_ok(data)


@common.platform_exception_handler
def refresh_token_list_for_mng():  # noqa: E501
    """refresh token list

    Args:
        organization_id (str): organization id

    Returns:
        response: HTTP Response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # ログインユーザーの情報を取得
    # Get login user information
    user_id = request.headers.get("User-Id")

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token = __get_token_pf()

    private = DBconnector().get_platform_private()

    # offline refresh tokenの取得
    # get a offline refresh token
    response = api_keycloak_tokens.offline_sessions_get(private.token_check_realm_id, user_id, private.api_token_client_id, token)
    if response.status_code == 404:
        # 404の場合は、正常終了 dataなしを返却
        # In case of 404, return normal end no data
        return common.response_200_ok([])
    elif response.status_code != 200:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = f"400-{MSG_FUNCTION_ID}001"
        message = multi_lang.get_text(
            message_id,
            "offline sessionの取得に失敗しました(対象ID:{0} user:{1} client:{2})",
            private.token_check_realm_id,
            user_id,
            private.api_token_client_clientid,
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    offline_sessions = json.loads(response.text)

    # offline refresh tokenの取得
    # get a offline refresh token
    response = api_keycloak_realms.realm_get(private.token_check_realm_id, token)
    if response.status_code != 200:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = f"400-{MSG_FUNCTION_ID}002"
        message = multi_lang.get_text(
            message_id,
            "realm情報の取得に失敗しました(対象ID:{0}",
            private.token_check_realm_id,
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    realm_info = json.loads(response.text)

    # DataBaseに格納した有効期限を取得する
    # Get expiration date stored in DataBase
    # plan and plan_limit list get
    with closing(DBconnector().connect_platformdb()) as conn:
        with conn.cursor() as cursor:
            parameter = {
                "user_id": user_id,
            }
            where = " WHERE USER_ID = %(user_id)s" \
                    " ORDER BY CREATE_TIMESTAMP ASC"
            cursor.execute(queries_token.SQL_QUERY_REFRESH_TOKEN + where, parameter)
            result_token_lists = cursor.fetchall()

    # 取得したrefresh tokenの一覧を返却する
    # Return the list of acquired refresh tokens
    data = __make_refresh_tokens_list(offline_sessions, result_token_lists, realm_info, user_id)

    globals.logger.info(f"### Succeed func:{inspect.currentframe().f_code.co_name}")

    return common.response_200_ok(data)


def __make_refresh_tokens_list(offline_sessions, result_token_lists, realm_info, user_id):
    """make the list of refresh tokens

    Args:
        offline_sessions (array): offline sessions
        result_token_lists (array): token lists
        realm_info (dict): realm info
        user_id (str): user id

    Returns:
        array: the list of refresh tokens
    """
    # 取得したrefresh tokenの一覧を返却する
    # Return the list of acquired refresh tokens
    data = []
    for offline_session in offline_sessions:
        # user_idが一致する情報のみ取得
        # Get only information with matching user_id
        if user_id == offline_session.get("userId"):

            # dbの情報に該当するセッション情報があるか確認する
            # Check if there is session information corresponding to db information
            row_refresh_token = common.get_item(result_token_lists, "SESSION_ID", offline_session.get("id"))

            # keycloak timestamp に 合わせるため有効期限のtimestampを1000倍してから日付変換する
            # Multiply the expiration timestamp by 1000 to match the keycloak timestamp before converting the date
            realm_expire_timestamp = common.keycloak_timestamp_to_datetime(offline_session.get("start") +
                                                                           (realm_info.get("offlineSessionMaxLifespan", 0) * 1000))

            globals.logger.debug("offlineSessionMaxLifespan:{}".format(realm_info.get("offlineSessionMaxLifespan")))

            globals.logger.debug("EXPIRE_TIMESTAMP:{}:realm_expire_timestamp:{}:{}".format(row_refresh_token.get("EXPIRE_TIMESTAMP"),
                                                                                           realm_expire_timestamp,
                                                                                           realm_info.get("offlineSessionMaxLifespanEnabled", False)))

            # realm情報のrefresh tokenの有効期限＋開始日とDBに格納された有効期限を比較して小さい方を有効期限とする
            # realm情報が無期限設定の場合は、DB値を正とする
            # Compare the expiration date + start date of the refresh token in the realm information and
            # the expiration date stored in the DB, and set the smaller one as the expiration date
            if not realm_info.get("offlineSessionMaxLifespanEnabled", False):
                expire_timestamp = row_refresh_token.get("EXPIRE_TIMESTAMP")
            elif row_refresh_token.get("EXPIRE_TIMESTAMP") is None:
                # 設定ありでDBが無期限(None)の場合は、開始日時＋realmの有効期限とする
                # If there is a setting and the DB is indefinite, the start date and time + the expiration date of realm
                expire_timestamp = realm_expire_timestamp
            elif realm_expire_timestamp < row_refresh_token.get("EXPIRE_TIMESTAMP"):
                expire_timestamp = realm_expire_timestamp
            else:
                expire_timestamp = row_refresh_token.get("EXPIRE_TIMESTAMP")

            row = {
                "id": offline_session.get("id"),
                "start_timestamp": common.datetime_to_str(common.keycloak_timestamp_to_datetime(offline_session.get("start"))),
                "lastaccess_timestamp": common.datetime_to_str(common.keycloak_timestamp_to_datetime(offline_session.get("lastAccess"))),
                "expire_timestamp": common.datetime_to_str(expire_timestamp),
            }

            data.append(row)

    return data


def __get_token(organization_id):
    """get a token

    Args:
        organization_id (str): organization id

    Raises:
        common.AuthException: _description_

    Returns:
        str: token
    """

    private = DBconnector().get_organization_private(organization_id)

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token_response = api_keycloak_tokens.service_account_get_token(
        organization_id, private.internal_api_client_clientid, private.internal_api_client_secret,
    )
    if token_response.status_code != 200:
        message_id = "401-00001"
        message = multi_lang.get_text(message_id,
                                      "tokenの取得に失敗しました。 realm:[{0}] client:[{1}]",
                                      organization_id,
                                      private.internal_api_client_clientid)
        raise common.AuthException(message_id=message_id, message=message)

    token = json.loads(token_response.text)["access_token"]

    return token


def __get_token_pf():
    """get a token

    Raises:
        common.AuthException: _description_

    Returns:
        str: token
    """

    private = DBconnector().get_platform_private()

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token_response = api_keycloak_tokens.service_account_get_token(
        private.token_check_realm_id, private.token_check_client_clientid, private.token_check_client_secret,
    )
    if token_response.status_code != 200:
        message_id = "401-00001"
        message = multi_lang.get_text(message_id,
                                      "tokenの取得に失敗しました。 realm:[{0}] client:[{1}]",
                                      private.token_check_realm_id,
                                      private.token_check_client_clientid)
        raise common.AuthException(message_id=message_id, message=message)

    token = json.loads(token_response.text)["access_token"]

    return token
