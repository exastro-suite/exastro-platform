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
# import inspect
import pymysql
# import base64

from common_library.common import common, api_keycloak_tokens, api_keycloak_realms, api_keycloak_clients, api_keycloak_users, validation
from common_library.common.db import DBconnector
from libs import queries_organizations
import const
from common_library.common import multi_lang

# import globals

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

    # validation check
    validate = validation.validate_organization_id(organization_id)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, validate.args)
    validate = validation.validate_organization_name(organization_name)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, validate.args)

    db = DBconnector()
    with closing(db.connect_platformdb()) as conn:
        with conn.cursor() as cursor:

            # DB取得
            # select organization
            parameter = {
                "organaization_id": organization_id,
            }

            str_where = " WHERE organaization_id = %(organaization_id)s"
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

        status = result.get("infomations").get("status")

        # すでに情報がある場合はretryのパラメータが無いと実施しない
        # If there is already information, it will not be executed unless there is a retry parameter
        if retry != "1":
            if status == const.ORG_STATUS_CREATE_COMPLETE:
                message_id = "400-23001"
                message = multi_lang.get_text(message_id,
                                              "指定されたorganization({0})は作成済みのため、作成できません。",
                                              organization_id)
                raise common.BadRequestException(message_id=message_id, message=message)
            else:
                message_id = "400-23002"
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
            message_id = "400-23001"
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

    return common.response_200_ok(None)


def __create_start(organization_id, organization_name, options, user_id):
    """Create Start to data insert

    Args:
        organization_id (string): organization id
        organization_name (string): organization name
        options (dic): create options
        user_id (string): user id

    Raises:
        common.BadRequestException: _description_
    """

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
            except pymysql.err.IntegrityError:
                # Duplicate PRIMARY KEY
                message_id = "400-23001"
                message = multi_lang.get_text(message_id,
                                              "指定されたorganization({0})は作成済みのため、作成できません。",
                                              organization_id)
                raise common.BadRequestException(message_id=message_id, message=message)


def __realm_create(organization_id, organization_name, options, user_id):
    """realm create

    Args:
        organization_id (string): organization id
        organization_name (string): organization name
        options (dic): create options
        user_id (string): user id
    """

    template_path = "common_resources/templates/template_realm.json"
    # templatesの取得
    # get a templates
    realm_json = render_template(template_path,
                                 organization_id=organization_id,
                                 organization_name=organization_name)

    # その他のオプション値はすべてそのまま受け渡す
    # Pass all other option values ​​as is
    if options is not None:
        for key in options.keys():
            realm_json[key] = options[key]

    # private = DBconnector().get_platform_private(organization_id)
    organization_id = os.environ["REALM_NAME"]
    client_id = os.environ["TOKEN_CHECK_CLIENT_ID"]
    client_secret = os.environ["TOKEN_CHECK_CLIENT_SECRET"]
    # client_id = private.internal_api_client_clientid
    # client_secret = private.internal_api_client_secret

    # サービスアカウントのTOKEN取得
    # Get a service account token
    response = api_keycloak_tokens.service_account_get_token(organization_id, client_id, client_secret)
    if response.status_code != 200:
        message_id = "401-00001"
        message = multi_lang.get_text(message_id,
                                      "tokenの取得に失敗しました。 realm:[{0}] client:[{1}]",
                                      organization_id,
                                      client_id)
        raise common.AuthException(message_id=message_id, message=message)

    token = json.loads(response.text).get("access_token")

    # realm登録
    # realm registration to keycloak
    response = api_keycloak_realms.realm_create(realm_json, token)
    if response.status_code != 200 and response.status_code != 201:
        message_id = "401-00001"
        message = multi_lang.get_text(message_id,
                                      "realmの作成に失敗しました(対象ID:{0})",
                                      realm_json.get("id"))
        raise common.AuthException(message_id=message_id, message=message)
