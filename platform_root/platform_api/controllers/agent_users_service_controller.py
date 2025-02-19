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

from common_library.common import common, multi_lang, validation
from common_library.common import api_keycloak_tokens, api_keycloak_users, api_keycloak_roles, api_keycloak_realms
from common_library.common.db import DBconnector
from libs import queries_token
from common_library.common import check_authority

from common_library.common import bl_agent_user


@common.platform_exception_handler
def agent_user_create(body, organization_id, workspace_id):  # noqa: E501
    """Create an agent user

    Args:
        body (dict): Request body(json)
        organization_id (str): organization id
        workspace_id (str): workspace id

    Returns:
        Response: HTTP Response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # request parameter
    req_username = body.get("username")
    req_agent_user_type = body.get("agent_user_type")
    req_description = body.get("description")

    # validation check
    validate = validation.validate_user_name(req_username)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, *validate.args)

    validate = validation.validate_agent_user_type(req_agent_user_type)
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
    user_json = bl_agent_user.agent_user_create_parameter(req_username, req_agent_user_type, req_description)

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
        role_name = bl_agent_user.agent_user_role_name(workspace_id, req_agent_user_type)

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
def agent_user_delete(organization_id, workspace_id, user_id):  # noqa: E501
    """Delete an agent user

    Args:
        organization_id (str): organization id
        workspace_id (str): workspace id
        user_id (str): user id

    Returns:
        Response: HTTP Response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    return common.response_200_ok(None)


@common.platform_exception_handler
def agent_user_list(organization_id, workspace_id):  # noqa: E501
    """List returns list of agent users

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

    # 該当Clientのagent用ロールを取得
    # Process for the number of organization administrators
    agent_roles = []
    for role_name in bl_agent_user.agent_user_roles(workspace_id):
        client_role = __check_autho_role(connexion.request.headers, private, token, organization_id, role_name, False)
        agent_roles.append(client_role)

    # ロールに紐づくユーザーの取得
    # Get role users
    first = 0
    max = 1000
    agent_type_users = []
    for role in agent_roles:
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

        agent_type_users.append(json.loads(response.text))

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
    for users in agent_type_users:
        for user in users:
            user_id = user.get("id")

            # get token_latest_expire_date
            token_latest_expire_date = __get_token_latest_expire_date(private, token, organization_id, realm_info, user_id)

            ret_role_users.append(
                {
                    "id": user_id,
                    "username": user.get("username"),
                    "agent_user_type": user.get("attributes", {}).get("agent_user_type", [None])[0],
                    "description": user.get("attributes", {}).get("description", [None])[0],
                    "token_latest_expire_date": common.datetime_to_str(token_latest_expire_date),
                }
            )

    return common.response_200_ok(data=ret_role_users)


@common.platform_exception_handler
def agent_user_token_create(body, organization_id, workspace_id, user_id):  # noqa: E501
    """Create an agent user token

    Args:
        body (dict): Request body(json)
        organization_id (str): organization id
        workspace_id (str): workspace id
        user_id (str): user id

    Returns:
        Response: HTTP Response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")
    return common.response_200_ok(None)


@common.platform_exception_handler
def agent_user_token_delete(organization_id, workspace_id, user_id):  # noqa: E501
    """Delete agent user tokens

    Args:
        organization_id (str): organization id
        workspace_id (str): workspace id
        user_id (str): user id

    Returns:
        Response: HTTP Response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")
    return common.response_200_ok(None)


@common.platform_exception_handler
def agent_user_token_list(organization_id, workspace_id, user_id):  # noqa: E501
    """List returns list of agent user tokens

    Args:
        organization_id (str): organization id
        workspace_id (str): workspace id
        user_id (str): user id

    Returns:
        Response: HTTP Response
    """
    globals.logger.debug(f"### func:{inspect.currentframe().f_code.co_name}")
    return common.response_200_ok(None)


@common.platform_exception_handler
def agent_user_update(body, organization_id, workspace_id, user_id):  # noqa: E501
    """Update an agent user

    Args:
        body (dict): Request body(json)
        organization_id (str): organization id
        workspace_id (str): workspace id
        user_id (str): user id

    Returns:
        Response: HTTP Response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")
    return common.response_200_ok(None)


@common.platform_exception_handler
def get_agent_user(organization_id, workspace_id, user_id):  # noqa: E501
    """returns an agent user

    Args:
        organization_id (_type_): _description_
        workspace_id (_type_): _description_
        user_id (_type_): _description_

    Returns:
        Response: HTTP Response
    """
    globals.logger.debug(f"### func:{inspect.currentframe().f_code.co_name}")
    return common.response_200_ok(None)


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
