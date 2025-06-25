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
import connexion
import inspect
import globals
import json
from contextlib import closing
from flask import request
import jwt

from common_library.common import common, multi_lang, validation
from common_library.common import api_keycloak_tokens, api_keycloak_users, api_keycloak_roles, api_keycloak_realms
from common_library.common.db import DBconnector
from libs import queries_token
from common_library.common import check_authority

from common_library.common import bl_service_account_user, bl_token_service, bl_plan_service
import common_library.common.const as common_const
from common_library.common import resources


@common.platform_exception_handler
def service_account_user_create(body, organization_id, workspace_id):  # noqa: E501
    """Create an service account user

    Args:
        body (dict): Request body(json)
        organization_id (str): organization id
        workspace_id (str): workspace id

    Returns:
        Response: HTTP Response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # 上限チェック
    # uper limit check
    # users limit get
    limits = bl_plan_service.organization_limits_get(organization_id, common_const.RESOURCE_COUNT_USERS)
    if common_const.RESOURCE_COUNT_USERS in limits:
        # 上限値がある場合にチェックする
        # Check if there is an upper limit
        rc = resources.counter(organization_id)
        globals.logger.info("### users count :{}".format(rc(common_const.RESOURCE_COUNT_USERS)))

        if rc(common_const.RESOURCE_COUNT_USERS) >= limits[common_const.RESOURCE_COUNT_USERS]:
            message_id = "400-93001"
            message = multi_lang.get_text(
                message_id,
                "ユーザーの上限数({0})を超えるため、新しいサービスアカウントユーザーは作成できません。",
                limits[common_const.RESOURCE_COUNT_USERS]
            )
            raise common.BadRequestException(message_id=message_id, message=message)

    # request parameter
    req_username = body.get("username")
    req_service_account_user_type = body.get("service_account_user_type")
    req_description = body.get("description")

    # validation check
    validate = validation.validate_user_name(req_username)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, *validate.args)

    validate = validation.validate_service_account_user_type(req_service_account_user_type)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, *validate.args)

    validate = validation.validate_user_description(req_description)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, *validate.args)

    db = DBconnector()
    private = db.get_organization_private(organization_id)

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token_response = api_keycloak_tokens.service_account_get_token(
        organization_id, private.internal_api_client_clientid, private.internal_api_client_secret,
    )
    if token_response.status_code != 200:
        raise common.AuthException(
            "client_user_get_token error status:{}, response:{}".format(token_response.status_code, token_response.text)
        )

    token = json.loads(token_response.text)["access_token"]

    # create user
    user_json = bl_service_account_user.service_account_user_create_parameter(req_username, req_service_account_user_type, req_description)

    resp_user_create = api_keycloak_users.user_create(
        realm_name=organization_id, user_json=user_json, token=token
    )
    if resp_user_create.status_code == 409:
        globals.logger.debug(f"response:{resp_user_create.text}")
        message_id = "409-25001"
        message = multi_lang.get_text(
            message_id,
            "指定されたユーザーはすでに存在しているため作成できません。[{0}]",
            json.loads(resp_user_create.text)["errorMessage"])

        raise common.BadRequestException(message_id=message_id, message=message)

    elif resp_user_create.status_code == 400:
        globals.logger.debug(f"response:{resp_user_create.text}")
        message_id = "400-25001"
        message = multi_lang.get_text(
            message_id,
            "ユーザー作成に失敗しました({0})",
            common.get_response_error_message(resp_user_create.text))
        raise common.BadRequestException(message_id=message_id, message=message)

    elif resp_user_create.status_code != 201:
        globals.logger.debug(f"response:{resp_user_create.text}")
        message_id = "500-25002"
        message = multi_lang.get_text(
            message_id,
            "ユーザー作成に失敗しました(対象ユーザー:{0})",
            req_username)

        raise common.InternalErrorException(message_id=message_id, message=message)

    # get created user
    resp_get_user = api_keycloak_users.user_get(
        realm_name=organization_id, user_name=req_username, token=token
    )
    if resp_get_user.status_code != 200:
        globals.logger.error(f"response.status_code:{resp_get_user.status_code}")
        globals.logger.error(f"response.text:{resp_get_user.text}")
        message_id = "500-25001"
        message = multi_lang.get_text(
            message_id,
            "ユーザーの取得に失敗しました(対象ID:{0})",
            req_username
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    user_info = json.loads(resp_get_user.text)
    if len(user_info) == 0:
        message_id = "500-25001"
        message = multi_lang.get_text(
            message_id,
            "ユーザーの取得に失敗しました(対象ID:{0})",
            req_username
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    try:
        # get role
        role_name = bl_service_account_user.service_account_user_role_name(workspace_id, req_service_account_user_type)

        resp_get_role = api_keycloak_roles.clients_role_get(
            realm_name=organization_id, client_id=private.user_token_client_id, role_name=role_name, token=token,
        )
        if resp_get_role.status_code != 200:
            globals.logger.debug(f"response:{resp_get_role.text}")
            message_id = "500-24001"
            raise common.InternalErrorException(
                None, message_id, multi_lang.get_text(message_id, "ワークスペースロールの取得に失敗しました(対象ID:{0})", role_name)
            )

        client_role = json.loads(resp_get_role.text)

        # create role mapping
        resp_get_user = api_keycloak_roles.user_client_role_mapping_create(
            realm_name=organization_id, user_id=user_info[0].get("id"), client_id=private.user_token_client_id,
            client_roles=[client_role], token=token
        )
        if resp_get_user.status_code not in [200, 204]:
            globals.logger.error(f"response.status_code:{resp_get_user.status_code}")
            globals.logger.error(f"response.text:{resp_get_user.text}")
            message_id = "500-26002"
            message = multi_lang.get_text(
                message_id,
                "ロール設定に失敗しました(対象ID:{0} client:{1} username:{2})",
                organization_id,
                private.user_token_client_clientid,
                req_username
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

    except Exception:
        # 途中でエラーになった場合、ユーザーは削除する
        # If an error occurs during the process, the user will delete the
        try:
            api_keycloak_users.user_delete(realm_name=organization_id, user_id=user_info[0].get("id"), token=token)
        except Exception:
            pass
        raise

    return common.response_200_ok(None)


@common.platform_exception_handler
def service_account_user_delete(organization_id, workspace_id, user_id):  # noqa: E501
    """Delete an service account user

    Args:
        organization_id (str): organization id
        workspace_id (str): workspace id
        user_id (str): user id

    Returns:
        Response: HTTP Response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # private = DBconnector().get_organization_private(organization_id)
    
    # サービスアカウントのTOKEN取得
    # Get a service account token
    token = __get_token(organization_id)
    
    # 削除前のユーザー情報の取得
    # Get user information before update
    response = api_keycloak_users.user_get_by_id(realm_name=organization_id, user_id=user_id, token=token)
    if response.status_code == 404:
        globals.logger.debug(f"response:{response.text}")
        message_id = "404-25001"
        message = multi_lang.get_text(
            message_id,
            "指定されたユーザーは存在していません。")

        raise common.NotFoundException(message_id=message_id, message=message)
    
    elif response.status_code != 200:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = "500-25001"
        message = multi_lang.get_text(
            message_id,
            "ユーザーの取得に失敗しました(対象ID:{0})",
            organization_id,
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    # サービスアカウントユーザーチェック
    # Check updatable service account user
    user = json.loads(response.text)
    __check_updatable_service_account_user(organization_id, workspace_id, user, token)
    globals.logger.debug(f"response user:{user}")

    # ユーザー削除
    # Delete service account user
    response = api_keycloak_users.user_delete(
        realm_name=organization_id, user_id=user_id, token=token
    )
    
    if response.status_code == 404:
        globals.logger.debug(f"response:{response.text}")
        message_id = "404-25001"
        message = multi_lang.get_text(
            message_id,
            "指定されたユーザーが存在しません")

        raise common.NotFoundException(message_id=message_id, message=message)
    elif response.status_code == 400:
        globals.logger.debug(f"response:{response.text}")
        message_id = "400-25003"
        message = multi_lang.get_text(
            message_id,
            "ユーザー削除に失敗しました(対象ユーザーID:{0})",
            user_id)
        raise common.BadRequestException(message_id=message_id, message=message)

    elif response.status_code != 204:
        globals.logger.debug(f"response:{response.text}")
        message_id = "500-25003"
        message = multi_lang.get_text(
            message_id,
            "ユーザー削除に失敗しました(対象ユーザーID:{0})[{1}]",
            user_id,
            json.loads(response.text)["errorMessage"])

        raise common.InternalErrorException(message_id=message_id, message=message)

    return common.response_200_ok(None)


@common.platform_exception_handler
def service_account_user_list(organization_id, workspace_id):  # noqa: E501
    """List returns list of service account users

    Args:
        organization_id (str): organization id
        workspace_id (str): workspace id

    Returns:
        Response: HTTP Response
    """

    globals.logger.debug(f"### func:{inspect.currentframe().f_code.co_name}")

    private = DBconnector().get_organization_private(organization_id)

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token = __get_token(organization_id)

    # 該当Clientのservice account用ロールを取得
    # Process for the number of organization administrators
    service_account_roles = []
    for role_name in bl_service_account_user.service_account_user_roles(workspace_id):
        client_role = __check_autho_role(connexion.request.headers, private, token, organization_id, role_name, False)
        service_account_roles.append(client_role)

    # ロールに紐づくユーザーの取得
    # Get role users
    first = 0
    max = 1000
    service_account_type_users = []
    for role in service_account_roles:
        response = api_keycloak_roles.role_uesrs_get(
            realm_name=organization_id, client_id=private.user_token_client_id,
            role_name=role.get("name"), token=token, first=first, max=max
        )

        if response.status_code == 404:
            globals.logger.error(f"response:{response.text}")
            message_id = "404-41001"
            message = multi_lang.get_text(
                message_id,
                "情報が存在しません(Role:{0}, message{1})",
                role_name,
                response.text,
            )
            raise common.NotFoundException(message_id=message_id, message=message)

        elif response.status_code != 200:
            globals.logger.error(f"response:{response.text}")
            message_id = "500-41002"
            message = multi_lang.get_text(
                message_id,
                "ロールに紐づいたユーザーの取得に失敗しました(role:{0})",
                role_name,
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        service_account_type_users.append(json.loads(response.text))

    ret_role_users = []

    # realm info の取得
    # get realm info
    response = api_keycloak_realms.realm_get(organization_id, token)
    if response.status_code != 200:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = "400-41004"
        message = multi_lang.get_text(
            message_id,
            "realm情報の取得に失敗しました(対象ID:{0}",
            organization_id,
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    realm_info = json.loads(response.text)

    # 件数分処理する
    # process the number of cases
    for users in service_account_type_users:
        for user in users:
            user_id = user.get("id")

            # get token_latest_expire_date
            token_latest_expire_date = __get_token_latest_expire_date(private, token, organization_id, realm_info, user_id)

            ret_role_users.append(
                {
                    "id": user_id,
                    "username": user.get("username"),
                    "service_account_user_type": user.get("attributes", {}).get("service_account_user_type", [None])[0],
                    "description": user.get("attributes", {}).get("description", [None])[0],
                    "token_latest_expire_date": common.datetime_to_str(token_latest_expire_date),
                }
            )

    return common.response_200_ok(data=ret_role_users)


@common.platform_exception_handler
def service_account_user_token_create(body, organization_id, workspace_id, user_id):  # noqa: E501
    """Create an service account user token

    Args:
        body (dict): Request body(json)
        organization_id (str): organization id
        workspace_id (str): workspace id
        user_id (str): user id

    Returns:
        Response: HTTP Response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    private = DBconnector().get_organization_private(organization_id)

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token = __get_token(organization_id)

    #
    # user情報取得
    #
    resp_user = api_keycloak_users.user_get_by_id(organization_id, user_id, token)
    if resp_user.status_code == 404:
        globals.logger.info(f'service account user not found: {user_id=}')
        message_id = "400-41007"
        message = multi_lang.get_text(
            message_id,
            "該当のユーザーは存在しません(対象:{0})",
            user_id
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    if resp_user.status_code != 200:
        globals.logger.error(f'service account user get faild: {user_id=} {resp_user.status_code=} {resp_user.text=}')
        message_id = "400-41008"
        message = multi_lang.get_text(
            message_id,
            "ユーザー情報の取得に失敗しました(対象:{0})",
            user_id
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    #
    # 更新可能なservice account userかのチェック / Check updatable  service account user
    #
    user = json.loads(resp_user.text)
    __check_updatable_service_account_user(organization_id, workspace_id, user, token)

    #
    # userをtokenが発行できる状態に更新
    #   ※email, firstName, lastNameが必要となる
    #
    upd_user = bl_service_account_user.service_account_user_temporary_parameter(user)
    resp_upd_user = api_keycloak_users.user_update(organization_id, user_id, upd_user, token)

    if resp_upd_user.status_code == 404:
        globals.logger.debug(f"response:{resp_upd_user.text}")
        message_id = "404-25001"
        message = multi_lang.get_text(
            message_id,
            "指定されたユーザーは存在していません。")

        raise common.NotFoundException(message_id=message_id, message=message)

    elif resp_upd_user.status_code == 400:
        globals.logger.debug(f"response:{resp_upd_user.text}")
        message_id = "400-25004"
        message = multi_lang.get_text(
            message_id,
            "ユーザー更新に失敗しました({0})",
            common.get_response_error_message(resp_upd_user.text))
        raise common.BadRequestException(message_id=message_id, message=message)

    elif resp_upd_user.status_code not in [200, 204]:
        globals.logger.debug(f"response:{resp_upd_user.text}")
        message_id = "500-25004"
        message = multi_lang.get_text(
            message_id,
            "ユーザー更新に失敗しました(対象ユーザーID:{0})[{1}]",
            user_id,
            json.loads(resp_upd_user.text)["errorMessage"])

        raise common.InternalErrorException(message_id=message_id, message=message)

    #
    # realm情報取得
    #
    resp_realm = api_keycloak_realms.realm_get(organization_id, token)
    if resp_realm.status_code != 200:
        globals.logger.error(f"response.status_code:{resp_realm.status_code}")
        globals.logger.error(f"response.text:{resp_realm.text}")
        message_id = "400-41004"
        message = multi_lang.get_text(
            message_id,
            "realm情報の取得に失敗しました(対象ID:{0}",
            organization_id,
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    #
    # 一時パスワード設定
    #
    password_set_treis = 10  # パスワード設定を最大試す回数(たまたま、パスワード変更履歴のポリシー有で衝突した場合のため)
    password_policy = api_keycloak_realms.pickup_password_policy(json.loads(resp_realm.text))
    password = None

    for try_count in range(password_set_treis):
        # パスワードポリシーに従ってパスワードを発行する
        try_password = bl_service_account_user.temporary_password(password_policy)
        resp_passwd = api_keycloak_users.user_reset_password(organization_id, user_id, try_password, token)
        if resp_passwd.status_code in [200, 204]:
            globals.logger.debug('password reset succeed')
            password = try_password
            break
        else:
            globals.logger.debug(f'password reset failed : {try_count=} {try_password=} response.text={resp_passwd.text}')

    if password is None:
        globals.logger.info(f'service account user password reset failed : {user_id=} {resp_passwd.text}')
        message_id = "400-41005"
        message = multi_lang.get_text(
            message_id,
            "一時パスワードの設定に失敗しました。パスワードポリシーを確認してください"
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    #
    # token発行
    #
    request_token_body = {
        "client_id": private.api_token_client_clientid,
        "grant_type": "password",
        "scope": "openid offline_access",
        "username": user["username"],
        "password": password
    }
    resp_token = bl_token_service.token_create(organization_id, request_token_body, execute_user_id=request.headers.get("User-Id"))
    if resp_token.status_code != 200:
        globals.logger.error(f'service account user generate token failed : {user_id=} {resp_token}')
        message_id = "400-41006"
        message = multi_lang.get_text(
            message_id,
            "tokenの生成に失敗しました。"
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    refresh_token = json.loads(resp_token.data).get("refresh_token")

    #
    # refresh tokenの有効期限取得
    #
    refresh_token_decode = jwt.decode(refresh_token, options={"verify_signature": False})
    try:
        refresh_token_expire = common.keycloak_timestamp_to_datetime(refresh_token_decode['exp'] * 1000)
    except Exception:
        refresh_token_expire = None

    #
    # userを元に戻す(失敗は無視)
    #
    upd_user = bl_service_account_user.service_account_user_rollback_parameter(user)
    resp_upd_user = api_keycloak_users.user_update(organization_id, user_id, upd_user, token)

    #
    # passwordの消去(失敗は無視)
    #
    resp_creds = api_keycloak_users.user_credentials_get(organization_id, user_id, token)
    if resp_token.status_code == 200:
        for cred in json.loads(resp_creds.text):
            api_keycloak_users.user_credentials_delete(organization_id, user_id, cred.get("id"), token)

    return common.response_200_ok({
        "refresh_token": refresh_token,
        "refresh_token_expire": refresh_token_expire
    })


@common.platform_exception_handler
def service_account_user_token_delete(organization_id, workspace_id, user_id):  # noqa: E501
    """Delete service account user tokens

    Args:
        organization_id (str): organization id
        workspace_id (str): workspace id
        user_id (str): user id

    Returns:
        Response: HTTP Response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")
    
    # サービスアカウントのTOKEN取得
    # Get a service account token
    token = __get_token(organization_id)

    private = DBconnector().get_organization_private(organization_id)

    #
    # user情報取得
    #
    resp_user = api_keycloak_users.user_get_by_id(organization_id, user_id, token)
    if resp_user.status_code == 404:
        globals.logger.info(f'service account user not found: {user_id=}')
        message_id = "400-41007"
        message = multi_lang.get_text(
            message_id,
            "該当のユーザーは存在しません(対象:{0})",
            user_id
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    if resp_user.status_code != 200:
        globals.logger.error(f'service account user get faild: {user_id=} {resp_user.status_code=} {resp_user.text=}')
        message_id = "400-41008"
        message = multi_lang.get_text(
            message_id,
            "ユーザー情報の取得に失敗しました(対象:{0})",
            user_id
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    #
    # 更新可能なservice account userかのチェック / Check updatable  service account user
    #
    user = json.loads(resp_user.text)
    __check_updatable_service_account_user(organization_id, workspace_id, user, token)

    # call keycloak token api
    response = api_keycloak_tokens.offline_sessions_delete(organization_id, user_id, private.api_token_client_clientid, token)

    if response.status_code not in [200, 204, 404]:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = "500-30001"
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
    with closing(DBconnector().connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:
            parameter = {
                "user_id": user_id
            }
            where = "WHERE USER_ID = %(user_id)s"
            cursor.execute(queries_token.SQL_DELETE_REFRESH_TOKEN + where, parameter)

            conn.commit()

    return common.response_200_ok(None)


@common.platform_exception_handler
def service_account_user_token_list(organization_id, workspace_id, user_id):  # noqa: E501
    """List returns list of service account user tokens

    Args:
        organization_id (str): organization id
        workspace_id (str): workspace id
        user_id (str): user id

    Returns:
        Response: HTTP Response
    """
    globals.logger.debug(f"### func:{inspect.currentframe().f_code.co_name}")
    
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
        message_id = "400-30001"
        message = multi_lang.get_text(
            message_id,
            "offline sessionの取得に失敗しました(対象ID:{0} user:{1} client:{2})",
            organization_id,
            user_id,
            private.api_token_client_clientid,
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    offline_sessions = json.loads(response.text)
    
    # realmの取得
    # get realm
    response = api_keycloak_realms.realm_get(organization_id, token)
    if response.status_code != 200:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = "400-30002"
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
            
    # 発行ユーザーIDから発行ユーザー名を取得する
    # index = 0
    # for result_token_list in result_token_lists:
    #     responce = api_keycloak_users.user_get_by_id(organization_id, result_token_list.get("CREATE_USER"), token)
    #     user = json.loads(responce.text)
    #     result_token_lists[index]["CREATE_USERNAME"] = user["username"]
    #     index = index + 1
    
    # make response data
    data = []
    user_data = []
    for row in result_token_lists:
        create_user_id = row["CREATE_USER"]
        name = None
        
        userid_exists = [u["name"] for u in user_data if u["user_id"] == create_user_id]
        if len(userid_exists) > 0:
            name = userid_exists[0]
        else:
            # get user from keycloak, None if 404
            response = api_keycloak_users.user_get_by_id(organization_id, create_user_id, token)
            if response.status_code == 200:
                user = json.loads(response.text)
                globals.logger.debug(f"response user:{user}")

                name = common.get_username(user.get("firstName"), user.get("lastName"), user.get("username"))
            elif response.status_code == 404:
                globals.logger.debug("response user:not found")

                name = None
            else:
                globals.logger.error(f"response.status_code:{response.status_code}")
                globals.logger.error(f"response.text:{response.text}")
                message = multi_lang.get_text(
                    "500-40004",
                    "ユーザーの取得に失敗しました(対象ID:{0})",
                    organization_id,
                )
                raise common.InternalErrorException(message_id="500-40004", message=message)

            # Save user data and reduce get data from Keycloak
            user_data.append({"user_id": create_user_id, "name": name, })
            
        row = {
            "SESSION_ID": row["SESSION_ID"],
            "EXPIRE_TIMESTAMP": row["EXPIRE_TIMESTAMP"],
            "CREATE_USER_ID": create_user_id,
            "CREATE_USERNAME": name,
        }
        data.append(row)
    
    # 取得したrefresh tokenの一覧を返却する
    # Return the list of acquired refresh tokens
    token_list = __make_refresh_tokens_list(offline_sessions, data, realm_info, user_id)

    globals.logger.info(f"### Succeed func:{inspect.currentframe().f_code.co_name}")
    
    return common.response_200_ok(token_list)


@common.platform_exception_handler
def service_account_user_update(body, organization_id, workspace_id, user_id):  # noqa: E501
    """Update an service account user

    Args:
        body (dict): Request body(json)
        organization_id (str): organization id
        workspace_id (str): workspace id
        user_id (str): user id

    Returns:
        Response: HTTP Response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")
    
    # request body
    body = connexion.request.get_json()
    if not body:
        raise common.BadRequestException(
            message_id='400-00002', message='リクエストボディのパラメータ({})が不正です。'.format('Json')
        )
    
    user_description = body.get("description")
    
    # validation check
    validate = validation.validate_user_description(user_description)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, *validate.args)

    # private = DBconnector().get_organization_private(organization_id)

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token = __get_token(organization_id)

    # 更新前のユーザー情報の取得
    # Get user information before update
    response = api_keycloak_users.user_get_by_id(realm_name=organization_id, user_id=user_id, token=token)
    if response.status_code == 404:
        globals.logger.debug(f"response:{response.text}")
        message_id = "404-25001"
        message = multi_lang.get_text(
            message_id,
            "指定されたユーザーは存在していません。")

        raise common.NotFoundException(message_id=message_id, message=message)
    
    elif response.status_code != 200:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = "500-25001"
        message = multi_lang.get_text(
            message_id,
            "ユーザーの取得に失敗しました(対象ID:{0})",
            organization_id,
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    user = json.loads(response.text)
    __check_updatable_service_account_user(organization_id, workspace_id, user, token)
    globals.logger.debug(f"response user:{user}")
    
    # ユーザー更新
    # update user
    user["attributes"]["description"] = user_description

    u_update = api_keycloak_users.user_update(
        realm_name=organization_id, user_id=user_id, user_json=user, token=token
    )
    if u_update.status_code == 404:
        globals.logger.debug(f"response:{u_update.text}")
        message_id = "404-25001"
        message = multi_lang.get_text(
            message_id,
            "指定されたユーザーは存在していません。")
        raise common.NotFoundException(message_id=message_id, message=message)

    elif u_update.status_code == 400:
        globals.logger.debug(f"response:{u_update.text}")
        message_id = "400-25004"
        message = multi_lang.get_text(
            message_id,
            "ユーザー更新に失敗しました({0})",
            common.get_response_error_message(u_update.text))
        raise common.BadRequestException(message_id=message_id, message=message)

    elif u_update.status_code not in [200, 204]:
        globals.logger.debug(f"response:{u_update.text}")
        message_id = "500-25004"
        message = multi_lang.get_text(
            message_id,
            "ユーザー更新に失敗しました(対象ユーザーID:{0})[{1}]",
            user_id,
            json.loads(u_update.text)["errorMessage"])
        raise common.InternalErrorException(message_id=message_id, message=message)

    return common.response_200_ok(None)


@common.platform_exception_handler
def get_service_account_user(organization_id, workspace_id, user_id):  # noqa: E501
    """returns an service account user

    Args:
        organization_id (_type_): _description_
        workspace_id (_type_): _description_
        user_id (_type_): _description_

    Returns:
        Response: HTTP Response
    """
    globals.logger.debug(f"### func:{inspect.currentframe().f_code.co_name}")
        
    private = DBconnector().get_organization_private(organization_id)
    
    # サービスアカウントのTOKEN取得
    # Get a service account token
    token = __get_token(organization_id)

    # user 情報取得
    # user get to keycloak
    response = api_keycloak_users.user_get_by_id(realm_name=organization_id, user_id=user_id, token=token)
    if response.status_code == 404:
        globals.logger.debug(f"response:{response.text}")
        message_id = "404-25001"
        message = multi_lang.get_text(
            message_id,
            "指定されたユーザーは存在していません。")

        raise common.NotFoundException(message_id=message_id, message=message)
    
    elif response.status_code != 200:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = "500-25001"
        message = multi_lang.get_text(
            message_id,
            "ユーザーの取得に失敗しました(対象ID:{0})",
            organization_id,
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    user = json.loads(response.text)
    __check_updatable_service_account_user(organization_id, workspace_id, user, token)
    globals.logger.debug(f"response user:{user}")

    # realm info の取得
    # get realm info
    response = api_keycloak_realms.realm_get(organization_id, token)
    if response.status_code != 200:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = "400-41004"
        message = multi_lang.get_text(
            message_id,
            "realm情報の取得に失敗しました(対象ID:{0}",
            organization_id,
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    realm_info = json.loads(response.text)
    
    # get token_latest_expire_date
    token_latest_expire_date = __get_token_latest_expire_date(private, token, organization_id, realm_info, user_id)

    ret_user = {
        "id": user["id"],
        "username": user.get("username", ""),
        "service_account_user_type": user.get("attributes", {}).get("service_account_user_type", [None])[0],
        "description": user.get("attributes", {}).get("description", [""])[0],
        "token_latest_expire_date": common.datetime_to_str(token_latest_expire_date)
    }

    globals.logger.debug(f"ret_user:{ret_user}")

    globals.logger.info(f"### Succeed func:{inspect.currentframe().f_code.co_name}")

    return common.response_200_ok(ret_user)


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
        message = multi_lang.get_text(
            message_id,
            "tokenの取得に失敗しました。 realm:[{0}] client:[{1}]",
            organization_id,
            private.internal_api_client_clientid)
        raise common.AuthException(message_id=message_id, message=message)

    token = json.loads(token_response.text)["access_token"]

    return token


def __check_autho_role(headers, private, token, organization_id, role_name, is_maintenance=True):
    """Check if role can be updated

    Args:
        headers (_type_): _description_
        private (_type_): _description_
        token (_type_): _description_
        organization_id (_type_): _description_
        role_name (_type_): _description_

    Returns:
        dict: client_role
    """
    response = api_keycloak_roles.clients_role_get(organization_id, private.user_token_client_id, role_name, token, True)
    if response.status_code != 200:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = "400-41001"
        message = multi_lang.get_text(
            message_id,
            "client roleの取得に失敗しました(対象ID:{0} client:{1} role:{2})",
            organization_id,
            private.user_token_client_clientid,
            role_name
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    client_role = json.loads(response.text)
    globals.logger.debug(f"client_role:{client_role}")
    globals.logger.debug("attributes-kind:{0}".format(client_role.get("attributes").get("kind")))

    # Get composite role
    # composite roleを取得する
    r_comp_role = api_keycloak_roles.clients_role_composites_get(
        realm_name=organization_id, client_uid=private.user_token_client_id, role_name=client_role.get("name"), token=token
    )
    if r_comp_role.status_code == 200:
        comp_roles = json.loads(r_comp_role.text)
    elif r_comp_role.status_code == 404:
        comp_roles = []
    else:
        globals.logger.error(f"response.status_code:{r_comp_role.status_code}")
        globals.logger.error(f"response.text:{r_comp_role.text}")
        message_id = "500-41001"
        message = multi_lang.get_text(
            message_id,
            "composite roleの取得に失敗しました(対象ID:{0} client:{1})",
            organization_id,
            private.token_check_client_clientid
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    # Check if role can be updated
    # ロールが更新できるかチェックする

    cauth = check_authority.CheckAuthority(organization_id, headers)

    workspace_ids = [w.get("name") for w in comp_roles]
    is_auth = cauth.is_workspaces_authority(workspace_ids, is_maintenance=is_maintenance)
    if not is_auth and len(comp_roles) > 0:
        message_id = "400-41002"
        message = multi_lang.get_text(
            message_id,
            "指定されたロールを操作する権限がありません。",
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    return client_role


def __get_token_latest_expire_date(private, token, organization_id, realm_info, user_id):

    # offline refresh tokenの取得
    # get a offline refresh token
    response = api_keycloak_tokens.offline_sessions_get(organization_id, user_id, private.api_token_client_id, token)
    if response.status_code == 404:
        # 404の場合は、dataなし
        # In case of 404, return normal end no data
        return None
    elif response.status_code != 200:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = "400-41003"
        message = multi_lang.get_text(
            message_id,
            "offline sessionの取得に失敗しました(対象ID:{0} user:{1} client:{2})",
            organization_id,
            user_id,
            private.api_token_client_clientid,
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    offline_sessions = json.loads(response.text)

    # DataBaseに格納した有効期限を取得する
    # Get expiration date stored in DataBase
    with closing(DBconnector().connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:
            parameter = {
                "user_id": user_id,
            }
            where = " WHERE USER_ID = %(user_id)s" \
                    " ORDER BY CREATE_TIMESTAMP ASC"
            cursor.execute(queries_token.SQL_QUERY_REFRESH_TOKEN + where, parameter)
            result_token_lists = cursor.fetchall()

    token_latest_expire_date = None
    for offline_session in offline_sessions:
        if user_id == offline_session.get("userId"):

            row_refresh_token = common.get_item(result_token_lists, "SESSION_ID", offline_session.get("id"))

            realm_expire_timestamp = common.keycloak_timestamp_to_datetime(offline_session.get("start") +
                                                                           (realm_info.get("offlineSessionMaxLifespan", 0) * 1000))

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

            if token_latest_expire_date is None:
                token_latest_expire_date = expire_timestamp
            elif token_latest_expire_date < expire_timestamp:
                token_latest_expire_date = expire_timestamp

    return token_latest_expire_date


def __check_updatable_service_account_user(organization_id, workspace_id, user, token):
    """service account user更新チェック

    Args:
        organization_id (str): organization_id
        workspace_id (str): workspace_id
        user (dict): keycloak user response json
        token (str): token

    Raises:
        common.BadRequestException: parameter error
        common.InternalErrorException: system error
    """
    user_id = user["id"]
    #
    # 対象のチェック(service-account-userかどうか)
    #
    if user.get("attributes", {}).get("service_account_user_type", [""])[0] not in bl_service_account_user.service_account_user_types():
        globals.logger.info(f'service account user not found: {user_id=}')
        message_id = "400-41009"
        message = multi_lang.get_text(
            message_id,
            "サービスアカウントユーザーではありません(対象:{0})",
            user_id
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    #
    # 対象のワークスペースのservice account userかチェック
    #
    resp_role_map = api_keycloak_roles.get_user_role_mapping(organization_id, user_id, token)
    if resp_role_map.status_code != 200:
        globals.logger.error(f'service account user role mapping get faild: {user_id=} {resp_role_map.status_code=} {resp_role_map.text=}')
        message_id = "400-41010"
        message = multi_lang.get_text(
            message_id,
            "ユーザーのロールの取得に失敗しました(対象:{0})",
            user_id
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    roles = json.loads(resp_role_map.text).get("clientMappings", {}).get(organization_id, {}).get("mappings", [])
    if len([role["name"] for role in roles if role["name"] in bl_service_account_user.service_account_user_roles(workspace_id)]) == 0:
        # 対象のworkspaceのservice account userでない場合
        globals.logger.info(f'service account user not found workspace: {user_id=} {workspace_id=}')
        message_id = "400-41007"
        message = multi_lang.get_text(
            message_id,
            "該当のユーザーは存在しません(対象:{0})",
            f"{workspace_id}/{user_id}"
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    return


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
                "create_user_id": row_refresh_token.get("CREATE_USER"),
                "create_user_name": row_refresh_token.get("CREATE_USERNAME"),
            }

            data.append(row)

    return data
