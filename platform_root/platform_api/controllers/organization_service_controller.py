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

from flask import render_template
# from math import fabs
import os
import connexion
from contextlib import closing
import json
import inspect
import pymysql
import pymysql.cursors
# import base64

from common_library.common import common, api_keycloak_tokens, api_keycloak_realms, api_keycloak_clients, api_keycloak_users, validation
from common_library.common.db import DBconnector
from libs import queries_organizations
import const
from common_library.common import multi_lang

import globals

MSG_FUNCTION_ID = "23"


@common.platform_exception_handler
def organization_create(body, retry=None):  # noqa: E501
    """Create creates an organization

    :param body:
    :type body: dict | bytes
    :param retry:
    :type retry: str

    :rtype: ResponseOk
    """

    r = connexion.request

    user_id = r.headers.get("User-id")
    # encode_roles = r.headers.get("Roles")
    # if encode_roles:
    #     roles = base64.b64decode(encode_roles).decode()
    # language = r.headers.get("Language")

    body = r.get_json()
    organization_id = body.get("id")
    organization_name = body.get("name")
    options = body.get("options")
    org_mng_users = body.get("organization_managers")

    # validation check
    validate = validation.validate_organization_id(organization_id)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, validate.args)
    validate = validation.validate_organization_name(organization_name)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, validate.args)

    db = DBconnector()
    with closing(db.connect_platformdb()) as conn:
        with conn.cursor(pymysql.cursors.DictCursor) as cursor:

            # DB取得
            # select organization
            parameter = {
                "organization_id": organization_id,
            }

            str_where = " WHERE organization_id = %(organization_id)s"
            cursor.execute(queries_organizations.SQL_QUERY_ORGANIZATIONS + str_where, parameter)

            result = cursor.fetchall()

    # ステータス判断で実施する項目を判断、初期は全実行
    # Determine the items to be implemented by status judgment, initially all execution
    is_CREATE_START = True
    is_REALM_CREATE = True
    is_CLIENT_CREATE = True
    is_SA_SETTING = True
    is_USER_CREATE = True
    is_USER_ROLE = True
    is_DB_CREATE = True
    is_DB_UPDATE = True
    is_ITA_CREATE = True
    is_REALM_ENABLED = True
    is_CREATE_COMPLETE = True

    # 取得したデータがあるかチェック
    # Check if there is acquired data
    if len(result) > 0:

        globals.logger.debug(f"result:{result}")
        # status = result[0]["infomations"]["status"]
        infomations = json.loads(result[0].get("INFORMATIONS"))
        status = infomations.get("status")

        # すでに情報がある場合はretryのパラメータが無いと実施しない
        # If there is already information, it will not be executed unless there is a retry parameter
        if retry != "1":
            if status == const.ORG_STATUS_CREATE_COMPLETE:
                message_id = f"400-{MSG_FUNCTION_ID}001"
                message = multi_lang.get_text(message_id,
                                              "指定されたorganization({0})は作成済みのため、作成できません。",
                                              organization_id)
                raise common.BadRequestException(message_id=message_id, message=message)
            else:
                message_id = f"400-{MSG_FUNCTION_ID}002"
                message = multi_lang.get_text(message_id,
                                              "指定されたoganization({0})の作成を再開する場合は、パラメータ(retry)を指定する必要があります。",
                                              organization_id)
                raise common.BadRequestException(message_id=message_id, message=message)

        if status == const.ORG_STATUS_CREATE_START:
            is_CREATE_START = False
        elif status == const.ORG_STATUS_REALM_CREATE:
            is_CREATE_START = False
            is_REALM_CREATE = False
        elif status == const.ORG_STATUS_CLIENT_CREATE:
            is_CREATE_START = False
            is_REALM_CREATE = False
            is_CLIENT_CREATE = False
        elif status == const.ORG_STATUS_SA_SETTING:
            is_CREATE_START = False
            is_REALM_CREATE = False
            is_CLIENT_CREATE = False
            is_SA_SETTING = False
        elif status == const.ORG_STATUS_USER_CREATE:
            is_CREATE_START = False
            is_REALM_CREATE = False
            is_CLIENT_CREATE = False
            is_SA_SETTING = False
            is_USER_CREATE = False
        elif status == const.ORG_STATUS_USER_ROLE:
            is_CREATE_START = False
            is_REALM_CREATE = False
            is_CLIENT_CREATE = False
            is_SA_SETTING = False
            is_USER_CREATE = False
            is_USER_ROLE = False
        elif status == const.ORG_STATUS_DB_CREATE:
            is_CREATE_START = False
            is_REALM_CREATE = False
            is_CLIENT_CREATE = False
            is_SA_SETTING = False
            is_USER_CREATE = False
            is_USER_ROLE = False
            is_DB_CREATE = False
        elif status == const.ORG_STATUS_DB_UPDATE:
            is_CREATE_START = False
            is_REALM_CREATE = False
            is_CLIENT_CREATE = False
            is_SA_SETTING = False
            is_USER_CREATE = False
            is_USER_ROLE = False
            is_DB_CREATE = False
            is_DB_UPDATE = False
        elif status == const.ORG_STATUS_ITA_CREATE:
            is_CREATE_START = False
            is_REALM_CREATE = False
            is_CLIENT_CREATE = False
            is_SA_SETTING = False
            is_USER_CREATE = False
            is_USER_ROLE = False
            is_DB_CREATE = False
            is_DB_UPDATE = False
            is_ITA_CREATE = False
        elif status == const.ORG_STATUS_REALM_ENABLED:
            is_CREATE_START = False
            is_REALM_CREATE = False
            is_CLIENT_CREATE = False
            is_SA_SETTING = False
            is_USER_CREATE = False
            is_USER_ROLE = False
            is_DB_CREATE = False
            is_DB_UPDATE = False
            is_ITA_CREATE = False
            is_REALM_ENABLED = False
        elif status == const.ORG_STATUS_CREATE_COMPLETE:
            message_id = f"400-{MSG_FUNCTION_ID}001"
            message = multi_lang.get_text(message_id,
                                          "指定されたorganization({0})は作成済みのため、作成できません。",
                                          organization_id)
            raise common.BadRequestException(message_id=message_id, message=message)

    if is_CREATE_START:
        # DB登録
        # insert organization
        __create_start(organization_id, organization_name, options, user_id)

    if is_REALM_CREATE:
        # Realm作成
        # realm creation
        __realm_create(organization_id, organization_name, options, user_id)

    if is_CLIENT_CREATE:
        # Client作成
        # client creation
        __client_create(organization_id, user_id)

    if is_SA_SETTING:
        # Service Account 設定
        # Service Account Setting
        __service_account_setting(organization_id, user_id)

    if is_USER_CREATE:
        # user Organization-manager 作成
        # user Organization-manager creation
        __user_create(organization_id, user_id, org_mng_users)

    if is_USER_ROLE:
        # user Organization-manager role 作成
        # user Organization-manager role creation
        __user_role_create(organization_id, user_id, org_mng_users)

    if is_DB_CREATE:
        # Organization Database 作成
        # Organization Database creation
        __organization_database_create(organization_id, user_id)

    if is_DB_UPDATE:
        # Organization Database 作成
        # Organization Database creation
        __organization_database_update(organization_id, user_id)

    if is_ITA_CREATE:
        # Organization Database 作成
        # Organization Database creation
        __ita_create(organization_id, user_id)

    if is_REALM_ENABLED:
        # realm 有効化
        # realm to enabled
        __realm_enabled(organization_id, user_id)

    if is_CREATE_COMPLETE:
        # organization create complete の後処理
        # organization create complete finish function
        __organization_complete(organization_id, user_id)

    return common.response_200_ok(None)


def __create_start(organization_id, organization_name, options, user_id):
    """Create Start to data insert

    Args:
        organization_id (str): organization id
        organization_name (str): organization name
        options (dict): create options
        user_id (str): user id

    Raises:
        common.BadRequestException: _description_
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # DB登録
    # insert organization
    db = DBconnector()
    with closing(db.connect_platformdb()) as conn:
        with conn.cursor() as cursor:

            informations = {"status": const.ORG_STATUS_CREATE_START, "options": options, }
            parameter = {
                "organization_id": organization_id,
                "organization_name": organization_name,
                "informations": json.dumps(informations, ensure_ascii=False),
                "create_user": user_id,
                "last_update_user": user_id,
            }
            try:
                cursor.execute(queries_organizations.SQL_INSERT_ORGANIZATION, parameter)

                conn.commit()

            except pymysql.err.IntegrityError:
                # Duplicate PRIMARY KEY
                message_id = f"400-{MSG_FUNCTION_ID}001"
                message = multi_lang.get_text(message_id,
                                              "指定されたorganization({0})は作成済みのため、作成できません。",
                                              organization_id)
                raise common.BadRequestException(message_id=message_id, message=message)


def __realm_create(organization_id, organization_name, options, user_id):
    """realm create

    Args:
        organization_id (str): organization id
        organization_name (str): organization name
        options (dic): create options
        user_id (str): user id
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    template_path = "template_realm.json"
    # template_path = "common_resources/templates/template_realm.json"
    # templatesの取得
    # get a templates
    realm_json = render_template(template_path,
                                 organization_id=organization_id,
                                 organization_name=organization_name)
    realm_json = json.loads(realm_json)

    # その他のオプション値はすべてそのまま受け渡す
    # Pass all other option values ​​as is
    if options is not None:
        for key in options.keys():
            realm_json[key] = options[key]

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token = __get_token()

    # globals.logger.debug(f"realm_json:{realm_json}")

    # realm登録
    # realm registration to keycloak
    response = api_keycloak_realms.realm_create(realm_json, token)
    if response.status_code != 200 and \
       response.status_code != 201 and \
       response.status_code != 409:    # 409 exists realm
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = f"500-{MSG_FUNCTION_ID}001"
        message = multi_lang.get_text(message_id,
                                      "realmの作成に失敗しました(対象ID:{0})",
                                      organization_id)
        raise common.InternalErrorException(message_id=message_id, message=message)

    # ステータス更新
    # update status
    __update_status(const.ORG_STATUS_REALM_CREATE, organization_id, user_id)


def __get_token():
    """get a token

    Raises:
        common.AuthException: _description_

    Returns:
        str: token
    """

    # private = DBconnector().get_platform_private(organization_id)
    token_check_realm_id = os.environ["REALM_NAME"]
    token_check_client_id = os.environ["TOKEN_CHECK_CLIENT_ID"]
    token_check_client_secret = os.environ["TOKEN_CHECK_CLIENT_SECRET"]
    # client_id = private.internal_api_client_clientid
    # client_secret = private.internal_api_client_secret

    # サービスアカウントのTOKEN取得
    # Get a service account token
    response = api_keycloak_tokens.service_account_get_token(token_check_realm_id, token_check_client_id, token_check_client_secret)
    if response.status_code != 200:
        message_id = "401-00001"
        message = multi_lang.get_text(message_id,
                                      "tokenの取得に失敗しました。 realm:[{0}] client:[{1}]",
                                      token_check_realm_id,
                                      token_check_client_id)
        raise common.AuthException(message_id=message_id, message=message)

    token = json.loads(response.text).get("access_token")

    return token


def __update_status(status, organization_id, user_id):
    """ステータス更新

    Args:
        status (str): status

    Raises:
        common.InternalErrorException: _description_
    """

    # ステータス更新
    # update status
    db = DBconnector()
    with closing(db.connect_platformdb()) as conn:
        with conn.cursor() as cursor:

            parameter = {
                "INFORMATIONS_status": status,
                "organization_id": organization_id,
                "last_update_user": user_id,
            }
            try:
                cursor.execute(queries_organizations.SQL_STATUS_UPDATE_ORGANIZATIONS, parameter)

                conn.commit()

            except Exception as e:
                globals.logger.error(f"exception:{e.args}")
                # Duplicate PRIMARY KEY
                message_id = f"500-{MSG_FUNCTION_ID}002"
                message = multi_lang.get_text(message_id,
                                              "ステータスの更新に失敗しました。")
                raise common.InternalErrorException(message_id=message_id, message=message)


def __client_create(organization_id, user_id):
    """client create

    Args:
        organization_id (str): organization id
        user_id (str): user id
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token = __get_token()

    templates = ["template_client_internal_api.json", "template_client_token_check.json", "template_client_user_token.json"]

    for template_path in templates:
        # templatesの取得
        # get a templates
        client_json = render_template(template_path,
                                      organization_id=organization_id)
        client_json = json.loads(client_json)

        # globals.logger.debug(f"client_json:{client_json}")

        # client登録
        # client registration to keycloak
        response = api_keycloak_clients.client_create(organization_id, client_json, token)
        if response.status_code != 200 and \
           response.status_code != 201 and \
           response.status_code != 409:    # 409 exists client
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}003"
            message = multi_lang.get_text(
                message_id,
                "clientの作成に失敗しました(対象ID:{0} client:{1})",
                organization_id,
                client_json.get("clientId")
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        # secretありの場合は、secret値を生成
        # If there is a secret, generate a secret value
        if client_json.get("clientAuthenticatorType") == "client-secret":
            # client取得
            # client get to keycloak
            response = api_keycloak_clients.clients_get(organization_id, client_json.get("clientId"), token)
            if response.status_code != 200:
                globals.logger.error(f"response.status_code:{response.status_code}")
                globals.logger.error(f"response.text:{response.text}")
                message_id = f"500-{MSG_FUNCTION_ID}004"
                message = multi_lang.get_text(
                    message_id,
                    "clientの取得に失敗しました(対象ID:{0} client:{1})",
                    organization_id,
                    client_json.get("clientId")
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

            client_info = json.loads(response.text)
            client_id = client_info[0].get("id")

            # client secret登録
            # client secret registration to keycloak
            response = api_keycloak_clients.client_secret_create(organization_id, client_id, token)
            if response.status_code != 200:
                globals.logger.error(f"response.status_code:{response.status_code}")
                globals.logger.error(f"response.text:{response.text}")
                message_id = f"500-{MSG_FUNCTION_ID}005"
                message = multi_lang.get_text(
                    message_id,
                    "client secretの作成に失敗しました(対象ID:{0} client:{1} client_id{2})",
                    organization_id,
                    client_json.get("clientId"),
                    client_id
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

        # platform clientの場合は、organization管理者用のロールを作成
        # For platform client, create a role for organization admin
        if client_json.get("clientId") == common.get_platform_client_id(organization_id):

            # client取得
            # client get to keycloak
            response = api_keycloak_clients.clients_get(organization_id, client_json.get("clientId"), token)
            if response.status_code != 200:
                globals.logger.error(f"response.status_code:{response.status_code}")
                globals.logger.error(f"response.text:{response.text}")
                message_id = f"500-{MSG_FUNCTION_ID}004"
                message = multi_lang.get_text(
                    message_id,
                    "clientの取得に失敗しました(対象ID:{0} client:{1})",
                    organization_id,
                    client_json.get("clientId")
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

            client_info = json.loads(response.text)
            client_id = client_info[0].get("id")

            # client role追加
            # client role added
            response = api_keycloak_clients.client_role_create(organization_id, client_id, const.ORG_MNG_ROLE, token)
            if response.status_code != 200 and \
               response.status_code != 201 and \
               response.status_code != 409:    # 409 exists role
                globals.logger.error(f"response.status_code:{response.status_code}")
                globals.logger.error(f"response.text:{response.text}")
                message_id = f"500-{MSG_FUNCTION_ID}008"
                message = multi_lang.get_text(
                    message_id,
                    "client roleの設定に失敗しました(対象ID:{0} client:{1})",
                    organization_id,
                    client_json.get("clientId")
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

    # ステータス更新
    # update status
    __update_status(const.ORG_STATUS_CLIENT_CREATE, organization_id, user_id)


def __service_account_setting(organization_id, user_id):
    """service account setting

    Args:
        organization_id (str): organization id
        user_id (str): user id
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token = __get_token()

    platform_client_id = common.get_platform_client_id(organization_id)

    # client 情報取得
    response = api_keycloak_clients.clients_get(organization_id, platform_client_id, token)
    if response.status_code != 200:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = f"500-{MSG_FUNCTION_ID}004"
        message = multi_lang.get_text(
            message_id,
            "clientの取得に失敗しました(対象ID:{0} client:{1})",
            organization_id,
            platform_client_id
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    client_info = json.loads(response.text)
    client_id = client_info[0].get("id")

    # service account user id 取得
    response = api_keycloak_users.service_account_user_get(organization_id, client_id, token)
    if response.status_code != 200:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = f"500-{MSG_FUNCTION_ID}006"
        message = multi_lang.get_text(
            message_id,
            "clientの取得に失敗しました(対象ID:{0} client:{1})",
            organization_id,
            platform_client_id
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    globals.logger.debug(f"response.text:{response.text}")
    user_info = json.loads(response.text)
    sa_user_id = user_info.get("id")
    # sa_user_id = "service-account-{}".format(common.get_platform_client_id(organization_id))

    realm_management_clientid = "realm-management"
    realm_management_role = "realm-admin"

    # client 情報取得
    response = api_keycloak_clients.clients_get(organization_id, realm_management_clientid, token)
    if response.status_code != 200:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = f"500-{MSG_FUNCTION_ID}004"
        message = multi_lang.get_text(
            message_id,
            "clientの取得に失敗しました(対象ID:{0} client:{1})",
            organization_id,
            realm_management_clientid
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    client_info = json.loads(response.text)
    realm_management_client_id = client_info[0].get("id")

    # 該当Clientのorganization管理者ロールを取得
    # Process for the number of organization administrators
    response = api_keycloak_clients.client_role_get(organization_id, realm_management_client_id, realm_management_role, token)
    if response.status_code != 200:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = f"500-{MSG_FUNCTION_ID}010"
        message = multi_lang.get_text(
            message_id,
            "client roleの取得に失敗しました(対象ID:{0} client:{1})",
            organization_id,
            realm_management_client_id
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    client_roles = [json.loads(response.text), ]

    # realm-adminのrole付与
    # role grant for realm-admin
    response = api_keycloak_users.user_client_role_mapping_create(organization_id, sa_user_id, realm_management_client_id, client_roles, token)
    if response.status_code != 200 and \
       response.status_code != 204:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = f"500-{MSG_FUNCTION_ID}007"
        message = multi_lang.get_text(
            message_id,
            "servise accountのrole設定に失敗しました(対象ID:{0} client:{1})",
            organization_id,
            platform_client_id
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    # ステータス更新
    # update status
    __update_status(const.ORG_STATUS_SA_SETTING, organization_id, user_id)


def __user_create(organization_id, user_id, org_mng_users):
    """user create

    Args:
        organization_id (str): organization id
        user_id (str): user id
        org_mng_users (dict): organization user info
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token = __get_token()

    # オーガナイゼーション管理者数分処理する
    # Process for the number of organization administrators
    for user_json in org_mng_users:
        # user登録
        # user registration to keycloak
        response = api_keycloak_users.user_create(organization_id, user_json, token)
        if response.status_code != 200 and \
           response.status_code != 201 and \
           response.status_code != 409:    # 409 exists user
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}008"
            message = multi_lang.get_text(
                message_id,
                "オーガナイゼーション管理者の作成に失敗しました(対象ID:{0} username:{1})",
                organization_id,
                user_json.get("username")
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

    # ステータス更新
    # update status
    __update_status(const.ORG_STATUS_USER_CREATE, organization_id, user_id)


def __user_role_create(organization_id, user_id, org_mng_users):
    """user role create

    Args:
        organization_id (str): organization id
        user_id (str): user id
        org_mng_users (dict): organization user info
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token = __get_token()

    client_client_id = common.get_platform_client_id(organization_id)

    # オーガナイゼーション管理者数分処理する
    # Process for the number of organization administrators
    for user_json in org_mng_users:
        # user 情報取得
        # user get to keycloak
        response = api_keycloak_users.user_get(organization_id, user_json["username"], token)
        if response.status_code != 200:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}009"
            message = multi_lang.get_text(
                message_id,
                "オーガナイゼーション管理者の取得に失敗しました(対象ID:{0} username:{1})",
                organization_id,
                user_json.get("username")
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        user_info = json.loads(response.text)
        user_id = user_info[0].get("id")

        # client 情報取得
        response = api_keycloak_clients.clients_get(organization_id, client_client_id, token)
        if response.status_code != 200:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}004"
            message = multi_lang.get_text(
                message_id,
                "clientの取得に失敗しました(対象ID:{0} client:{1})",
                organization_id,
                client_client_id
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        client_info = json.loads(response.text)
        client_id = client_info[0].get("id")

        # 該当Clientのorganization管理者ロールを取得
        # Process for the number of organization administrators
        response = api_keycloak_clients.client_role_get(organization_id, client_id, const.ORG_MNG_ROLE, token)
        if response.status_code != 200:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}010"
            message = multi_lang.get_text(
                message_id,
                "client roleの取得に失敗しました(対象ID:{0} client:{1})",
                organization_id,
                client_client_id
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        client_roles = [json.loads(response.text), ]

        # user role付与
        # granting user roles to keycloak
        response = api_keycloak_users.user_client_role_mapping_create(organization_id, user_id, client_id, client_roles, token)
        if response.status_code != 200 and \
           response.status_code != 204:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}011"
            message = multi_lang.get_text(
                message_id,
                "オーガナイゼーション管理者のロール設定に失敗しました(対象ID:{0} username:{1})",
                organization_id,
                user_json.get("username")
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

    # ステータス更新
    # update status
    __update_status(const.ORG_STATUS_USER_ROLE, organization_id, user_id)


def __organization_database_create(organization_id, user_id):
    """organization database create

    Args:
        organization_id (str): organization id
        user_id (str): user id
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")


def __organization_database_update(organization_id, user_id):
    """organization database update

    Args:
        organization_id (str): organization id
        user_id (str): user id
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")


def __ita_create(organization_id, user_id):
    """IT-Automation initialize call

    Args:
        organization_id (str): organization id
        user_id (str): user id
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")


def __realm_enabled(organization_id, user_id):
    """realm to enabled

    Args:
        organization_id (str): organization id
        user_id (str): user id
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")


def __organization_complete(organization_id, user_id):
    """organization complete function

    Args:
        organization_id (str): organization id
        user_id (str): user id
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")
