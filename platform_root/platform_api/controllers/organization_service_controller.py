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

from flask import render_template, request
# from math import fabs
import os
import connexion
from contextlib import closing
import json
import inspect
import pymysql
import pymysql.cursors
import requests
import datetime
# import base64

from common_library.common import common, validation
from common_library.common import api_keycloak_tokens, api_keycloak_realms, api_keycloak_clients, api_keycloak_users, api_keycloak_roles
from common_library.common.db import DBconnector
from common_library.common.db_init import DBinit
from common_library.common import bl_plan_service
import common_library.common.const as common_const
from libs import queries_organizations
import const
from common_library.common import multi_lang

import globals

MSG_FUNCTION_ID = "23"


@common.platform_exception_handler
def organization_create(body, retry=None):
    """Create creates an organization

    Args:
        body (dict): create organization info.
        retry (str, optional): 1 to retry. Defaults to None.

    Returns:
        response: HTTP Response
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
        return common.response_validation_error(validate)
    validate = validation.validate_organization_name(organization_name)
    if not validate.ok:
        return common.response_validation_error(validate)

    plan_id = body.get("plan", {}).get("id")
    if "id" in body.get("plan", {}):
        validate = validation.validate_plan_id(plan_id)
        if not validate.ok:
            return common.response_validation_error(validate)

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

            if plan_id is not None and not bl_plan_service.exists_plan(cursor, plan_id):
                message_id = f"404-{MSG_FUNCTION_ID}001"
                message = multi_lang.get_text(
                    message_id,
                    "プランが存在しません(id:{0})",
                    plan_id
                )
                raise common.NotFoundException(message_id=message_id, message=message)

    # ステータス判断で実施する項目を判断、初期は全実行
    # Determine the items to be implemented by status judgment, initially all execution
    is_CREATE_START = True
    is_REALM_CREATE = True
    is_CLIENT_CREATE = True
    is_ROLE_SETTING = True
    is_SA_SETTING = True
    is_USER_CREATE = True
    is_USER_ROLE = True
    is_DB_CREATE = True
    is_DB_UPDATE = True
    is_ITA_CREATE = True
    is_PLAN_CREATE = True
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
                                              "指定されたorganization({0})の作成を再開する場合は、パラメータ(retry)を指定する必要があります。",
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
        elif status == const.ORG_STATUS_ROLE_SETTING:
            is_CREATE_START = False
            is_REALM_CREATE = False
            is_CLIENT_CREATE = False
            is_ROLE_SETTING = False
        elif status == const.ORG_STATUS_SA_SETTING:
            is_CREATE_START = False
            is_REALM_CREATE = False
            is_CLIENT_CREATE = False
            is_ROLE_SETTING = False
            is_SA_SETTING = False
        elif status == const.ORG_STATUS_USER_CREATE:
            is_CREATE_START = False
            is_REALM_CREATE = False
            is_CLIENT_CREATE = False
            is_ROLE_SETTING = False
            is_SA_SETTING = False
            is_USER_CREATE = False
        elif status == const.ORG_STATUS_USER_ROLE:
            is_CREATE_START = False
            is_REALM_CREATE = False
            is_CLIENT_CREATE = False
            is_ROLE_SETTING = False
            is_SA_SETTING = False
            is_USER_CREATE = False
            is_USER_ROLE = False
        elif status == const.ORG_STATUS_DB_CREATE:
            is_CREATE_START = False
            is_REALM_CREATE = False
            is_CLIENT_CREATE = False
            is_ROLE_SETTING = False
            is_SA_SETTING = False
            is_USER_CREATE = False
            is_USER_ROLE = False
            is_DB_CREATE = False
        elif status == const.ORG_STATUS_DB_UPDATE:
            is_CREATE_START = False
            is_REALM_CREATE = False
            is_CLIENT_CREATE = False
            is_ROLE_SETTING = False
            is_SA_SETTING = False
            is_USER_CREATE = False
            is_USER_ROLE = False
            is_DB_CREATE = False
            is_DB_UPDATE = False
        elif status == const.ORG_STATUS_ITA_CREATE:
            is_CREATE_START = False
            is_REALM_CREATE = False
            is_CLIENT_CREATE = False
            is_ROLE_SETTING = False
            is_SA_SETTING = False
            is_USER_CREATE = False
            is_USER_ROLE = False
            is_DB_CREATE = False
            is_DB_UPDATE = False
            is_ITA_CREATE = False
        elif status == const.ORG_STATUS_PLAN_CREATE:
            is_CREATE_START = False
            is_REALM_CREATE = False
            is_CLIENT_CREATE = False
            is_ROLE_SETTING = False
            is_SA_SETTING = False
            is_USER_CREATE = False
            is_USER_ROLE = False
            is_DB_CREATE = False
            is_DB_UPDATE = False
            is_ITA_CREATE = False
            is_PLAN_CREATE = False
        elif status == const.ORG_STATUS_REALM_ENABLED:
            is_CREATE_START = False
            is_REALM_CREATE = False
            is_CLIENT_CREATE = False
            is_ROLE_SETTING = False
            is_SA_SETTING = False
            is_USER_CREATE = False
            is_USER_ROLE = False
            is_DB_CREATE = False
            is_DB_UPDATE = False
            is_ITA_CREATE = False
            is_PLAN_CREATE = False
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

    if is_ROLE_SETTING:
        # Client Role 設定
        # client Role Setting
        __client_role_setting(organization_id, user_id)

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

    if is_PLAN_CREATE:
        # Organization Plan 作成
        # Organization Plan creation
        __organization_plan_create(organization_id, plan_id, user_id)

    if is_REALM_ENABLED:
        # realm 有効化
        # realm to enabled
        __realm_enabled(organization_id, user_id)

    if is_CREATE_COMPLETE:
        # organization create complete の後処理
        # organization create complete finish function
        __organization_complete(organization_id, user_id)

    return common.response_200_ok(None)


@common.platform_exception_handler
def organization_list():
    """organization info. list

    Returns:
        response: HTTP Response
    """

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token = __get_token()

    # 全realm取得
    # all realm by keycloak
    response = api_keycloak_realms.realms_get(token)

    if response.status_code != 200:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = f"500-{MSG_FUNCTION_ID}018"
        message = multi_lang.get_text(message_id,
                                      "realm情報の取得に失敗しました。"
                                      )
        raise common.InternalErrorException(message_id=message_id, message=message)

    keycloak_realms = json.loads(response.text)

    db = DBconnector()
    with closing(db.connect_platformdb()) as conn:
        with conn.cursor(pymysql.cursors.DictCursor) as cursor:

            # DB取得
            # select organization
            cursor.execute(queries_organizations.SQL_QUERY_ORGANIZATIONS)

            result = cursor.fetchall()

    ret_realms = []

    # オーガナイゼーションごとの情報を返却値に設定する
    # Set the information for each organization to the return value
    if len(result) > 0:

        for row in result:
            organization_id = row.get("ORGANIZATION_ID")

            if row.get("INFORMATIONS"):
                org_informations = json.loads(row.get("INFORMATIONS"))
            else:
                org_informations = {
                    "status": "unkonwn"
                }

            keycloak_org = common.get_item(keycloak_realms, "id", organization_id)

            org_plans = bl_plan_service.organization_plan_get(organization_id)

            private = DBconnector().get_organization_private(organization_id)

            users_response = api_keycloak_roles.role_uesrs_get(
                realm_name=organization_id,
                client_id=private.user_token_client_id,
                role_name=common_const.ORG_ROLE_ORG_MANAGER,
                token=token,
            )

            if users_response.status_code != 200:
                raise Exception("get user role error status:{}, response:{}".format(users_response.status_code, users_response.text))

            users = json.loads(users_response.text)

            organization_managers = []
            for user in users:
                organization_managers.append(
                    {
                        "firstName": user.get("firstName", ""),
                        "lastName": user.get("lastName", ""),
                        "email": user.get("email", ""),
                        "name": common.get_username(user.get("firstName"), user.get("lastName"), user.get("username")),
                        "username": user.get("username", ""),
                        "enabled": user.get("enabled", False),
                        "create_timestamp": common.keycloak_timestamp_to_str(user.get("createdTimestamp")),
                    }
                )

            plans = []
            active_plan = {}
            point_plan_date = None
            for org_plan in org_plans:
                # Active plan check
                if datetime.datetime.strptime(org_plan.get("start_datetime"),
                                              common_const.FORMAT_DATETIME_PLAN_START_DATETIME) <= datetime.datetime.now():
                    # 初回か2回目以降かでチェックを分ける
                    # Separate checks for the first time or the second and subsequent times
                    if point_plan_date:
                        if point_plan_date <= org_plan.get("start_datetime"):
                            active_plan = {
                                "id": org_plan.get("id")
                            }
                            point_plan_date = org_plan.get("start_datetime")
                    else:
                        active_plan = {
                            "id": org_plan.get("id")
                        }
                        point_plan_date = org_plan.get("start_datetime")

                plan = {
                    "id": org_plan.get("id"),
                    "start_datetime": org_plan.get("start_datetime"),
                }
                plans.append(plan)

            ret_realm = {
                "id": organization_id,
                "name": row.get("ORGANIZATION_NAME"),
                "organization_managers": organization_managers,
                "active_plan": active_plan,
                "plans": plans,
                "status": org_informations.get("status"),
                "enabled": keycloak_org.get("enabled"),
            }

            ret_realms.append(ret_realm)

    return common.response_200_ok(ret_realms)


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

    return


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

    return


def __get_token():
    """get a token

    Raises:
        common.AuthException: _description_

    Returns:
        str: token
    """

    private = DBconnector().get_platform_private()

    # サービスアカウントのTOKEN取得
    # Get a service account token
    response = api_keycloak_tokens.service_account_get_token(
        private.token_check_realm_id, private.token_check_client_clientid, private.token_check_client_secret)
    if response.status_code != 200:
        message_id = "401-00001"
        message = multi_lang.get_text(message_id,
                                      "tokenの取得に失敗しました。 realm:[{0}] client:[{1}]",
                                      private.token_check_realm_id,
                                      private.token_check_client_clientid)
        raise common.AuthException(message_id=message_id, message=message)

    token = json.loads(response.text).get("access_token")

    return token


def __update_status(status, organization_id, user_id):
    """ステータス更新 update status

    Args:
        status (str): status
        organization_id (str): organization id
        user_id (str): user id

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

    return


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

    templates = ["template_client_internal_api.json", "template_client_token_check.json", "template_client_user_token.json", "template_client_api_token.json"]

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

    # ステータス更新
    # update status
    __update_status(const.ORG_STATUS_CLIENT_CREATE, organization_id, user_id)

    return


def __client_role_setting(organization_id, user_id):
    """client role setting

    Args:
        organization_id (str): organization id
        user_id (str): user id
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token = __get_token()

    # organization管理者用の権限を登録
    # create a authority for organization admin
    client_clientid = common.get_platform_client_id(organization_id)

    # client取得
    # client get to keycloak
    response = api_keycloak_clients.clients_get(organization_id, client_clientid, token)
    if response.status_code != 200:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = f"500-{MSG_FUNCTION_ID}004"
        message = multi_lang.get_text(
            message_id,
            "clientの取得に失敗しました(対象ID:{0} client:{1})",
            organization_id,
            client_clientid
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    client_info = json.loads(response.text)
    client_id = client_info[0].get("id")
    platform_client_id = client_id

    # オーガナイゼーションロール権限 登録
    # Organization role authority registration
    org_auths = common_const.ALL_ORG_AUTHORITIES

    for org_auth in org_auths:
        # client role追加
        # client role added
        response = api_keycloak_roles.clients_role_create(organization_id, client_id, org_auth, token)
        if response.status_code not in [200, 201, 409]:    # 409 exists role
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}008"
            message = multi_lang.get_text(
                message_id,
                "client roleの設定に失敗しました(対象ID:{0} client:{1})",
                organization_id,
                client_clientid
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

    # organization管理者用のロールを作成
    # create a role for organization admin
    client_clientid = common.get_user_token_client_id(organization_id)

    # client取得
    # client get to keycloak
    response = api_keycloak_clients.clients_get(organization_id, client_clientid, token)
    if response.status_code != 200:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = f"500-{MSG_FUNCTION_ID}004"
        message = multi_lang.get_text(
            message_id,
            "clientの取得に失敗しました(対象ID:{0} client:{1})",
            organization_id,
            client_clientid
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    client_info = json.loads(response.text)
    client_id = client_info[0].get("id")

    # オーガナイゼーションロール権限 登録
    # Organization role authority registration
    org_roles = common_const.ALL_ORG_ROLES

    role_options = {
        "attributes": {
            "kind": [common_const.ROLE_KIND_ORGANIZATION]
        }
    }

    for org_role in org_roles:
        # client role追加
        # client role added
        response = api_keycloak_roles.clients_role_create(organization_id, client_id, org_role, token, role_options)
        if response.status_code not in [200, 201, 409]:    # 409 exists role
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}008"
            message = multi_lang.get_text(
                message_id,
                "client roleの設定に失敗しました(対象ID:{0} client:{1})",
                organization_id,
                client_clientid
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        client_roles = []

        # ロールによって、付与する権限を分ける
        # Separate privileges to be granted by role
        if org_role == common_const.ORG_ROLE_ORG_MANAGER:
            arr_permissions = common_const.ORG_PERMISSION_ORG_MANAGER
        elif org_role == common_const.ORG_ROLE_USER_ROLE_MANAGER:
            arr_permissions = common_const.ORG_PERMISSION_USER_ROLE_MANAGER
        elif org_role == common_const.ORG_ROLE_USER_MANAGER:
            arr_permissions = common_const.ORG_PERMISSION_USER_MANAGER
        else:
            arr_permissions = []

        for permission in arr_permissions:
            # 該当Clientのorganization管理者ロールを取得
            # Process for the number of organization administrators
            response = api_keycloak_roles.clients_role_get(organization_id, platform_client_id, permission, token)
            if response.status_code != 200:
                globals.logger.error(f"response.status_code:{response.status_code}")
                globals.logger.error(f"response.text:{response.text}")
                message_id = f"500-{MSG_FUNCTION_ID}011"
                message = multi_lang.get_text(
                    message_id,
                    "client roleの取得に失敗しました(対象ID:{0} client:{1})",
                    organization_id,
                    common.get_platform_client_id(organization_id)
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

            client_roles.append(json.loads(response.text))

        # role付与
        # role grant for client-roles
        response = api_keycloak_roles.clients_role_composites_create(organization_id, client_id, org_role, client_roles, token)
        if response.status_code not in [200, 204]:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}007"
            message = multi_lang.get_text(
                message_id,
                "client roleのrole設定に失敗しました(対象ID:{0} client:{1})",
                organization_id,
                client_clientid
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

    # TODO : ユーザー管理機能、ロール管理機能が完成した際は、付与解除
    # Ungrant when user management function and role management function are completed
    realm_management_clientid = "realm-management"

    # client 情報取得
    # get client information
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

    client_roles = []

    for realm_management_role in common_const.ALL_REALM_MANAGEMENT_ROLE:
        # 該当Clientのorganization管理者ロールを取得
        # Process for the number of organization administrators
        response = api_keycloak_roles.clients_role_get(organization_id, realm_management_client_id, realm_management_role, token)
        if response.status_code != 200:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}011"
            message = multi_lang.get_text(
                message_id,
                "client roleの取得に失敗しました(対象ID:{0} client:{1})",
                organization_id,
                realm_management_client_id
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        client_roles.append(json.loads(response.text))

    # role付与
    # role grant for client-roles
    target_roles = [common_const.ORG_ROLE_ORG_MANAGER, common_const.ORG_ROLE_USER_ROLE_MANAGER, common_const.ORG_ROLE_USER_MANAGER]
    for target in target_roles:
        response = api_keycloak_roles.clients_role_composites_create(organization_id, client_id, target, client_roles, token)
        if response.status_code not in [200, 204]:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}007"
            message = multi_lang.get_text(
                message_id,
                "client roleのrole設定に失敗しました(対象ID:{0} client:{1})",
                organization_id,
                client_clientid
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

    # ステータス更新
    # update status
    __update_status(const.ORG_STATUS_ROLE_SETTING, organization_id, user_id)

    return


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
            "service account userの取得に失敗しました(対象ID:{0} client:{1})",
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
    response = api_keycloak_roles.clients_role_get(organization_id, realm_management_client_id, realm_management_role, token)
    if response.status_code != 200:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = f"500-{MSG_FUNCTION_ID}011"
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
    response = api_keycloak_roles.user_client_role_mapping_create(organization_id, sa_user_id, realm_management_client_id, client_roles, token)
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

    return


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
        if response.status_code not in [200, 201, 409]:    # 409 exists user
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}009"
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

    return


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

    client_client_id = common.get_user_token_client_id(organization_id)

    # オーガナイゼーション管理者数分処理する
    # Process for the number of organization administrators
    for user_json in org_mng_users:
        # user 情報取得
        # user get to keycloak
        response = api_keycloak_users.user_get(organization_id, user_json["username"], token)
        if response.status_code != 200:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}010"
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
        response = api_keycloak_roles.clients_role_get(organization_id, client_id, common_const.ORG_ROLE_ORG_MANAGER, token)
        if response.status_code != 200:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}011"
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
        response = api_keycloak_roles.user_client_role_mapping_create(organization_id, user_id, client_id, client_roles, token)
        if response.status_code not in [200, 204]:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}012"
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

    return


def __organization_database_create(organization_id, user_id):
    """organization database create

    Args:
        organization_id (str): organization id
        user_id (str): user id
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    dbinit = DBinit()
    org_dbinfo = dbinit.generate_dbinfo(dbinit.prefix_org_db)

    try:
        # organization database 作成
        # create organization database
        dbinit.create_database(org_dbinfo)

        # Table 作成
        # create table in organization database
        dbinit.create_table_organizationdb(org_dbinfo)

        # organization database 接続情報登録
        # organization database connect infomation registration
        dbinit.insert_organization_dbinfo(org_dbinfo, organization_id, user_id)

    except Exception as e:
        globals.logger.error(f"create organization database error:{str(e)}")

        dbinit.drop_database(org_dbinfo)

        message_id = f"500-{MSG_FUNCTION_ID}015"
        message = multi_lang.get_text(
            message_id,
            "Organization Database 作成に失敗しました(対象ID:{0} database:{1})",
            organization_id,
            org_dbinfo.db_database,
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    # ステータス更新
    # update status
    __update_status(const.ORG_STATUS_DB_CREATE, organization_id, user_id)

    return


def __organization_database_update(organization_id, user_id):
    """organization database update

    Args:
        organization_id (str): organization id
        user_id (str): user id
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # client secret値を取得して更新
    # Get client secret value and update

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token = __get_token()

    user_token_client_clientid = common.get_user_token_client_id(organization_id)
    internal_api_client_clientid = common.get_platform_client_id(organization_id)
    token_check_client_clientid = common.get_token_authentication_client_id(organization_id)
    api_token_client_clientid = common.get_api_token_client_id(organization_id)

    # 該当Client情報を取得
    # get client infomations
    response = api_keycloak_clients.clients_get(organization_id, user_token_client_clientid, token)
    if response.status_code != 200:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = f"500-{MSG_FUNCTION_ID}004"
        message = multi_lang.get_text(
            message_id,
            "clientの取得に失敗しました(対象ID:{0} client:{1})",
            organization_id,
            user_token_client_clientid
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    response_json = json.loads(response.text)
    globals.logger.info(f"-- clients_get:{response_json}")
    user_token_client_id = response_json[0].get("id")

    response = api_keycloak_clients.clients_get(organization_id, internal_api_client_clientid, token)
    if response.status_code != 200:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = f"500-{MSG_FUNCTION_ID}004"
        message = multi_lang.get_text(
            message_id,
            "clientの取得に失敗しました(対象ID:{0} client:{1})",
            organization_id,
            internal_api_client_clientid
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    response_json = json.loads(response.text)
    internal_api_client_id = response_json[0].get("id")

    response = api_keycloak_clients.clients_get(organization_id, token_check_client_clientid, token)
    if response.status_code != 200:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = f"500-{MSG_FUNCTION_ID}014"
        message = multi_lang.get_text(
            message_id,
            "clientの取得に失敗しました(対象ID:{0} client:{1})",
            organization_id,
            token_check_client_clientid
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    response_json = json.loads(response.text)
    token_check_client_id = response_json[0].get("id")

    response = api_keycloak_clients.clients_get(organization_id, api_token_client_clientid, token)
    if response.status_code != 200:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = f"500-{MSG_FUNCTION_ID}014"
        message = multi_lang.get_text(
            message_id,
            "clientの取得に失敗しました(対象ID:{0} client:{1})",
            organization_id,
            api_token_client_clientid
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    response_json = json.loads(response.text)
    api_token_client_id = response_json[0].get("id")

    # 該当Client secret情報を取得
    # get client secret

    response = api_keycloak_clients.client_secret_get(organization_id, user_token_client_id, token)
    if response.status_code == 200:
        response_json = json.loads(response.text)
        globals.logger.info(f"-- client_secret_get:{response_json}")
        user_token_client_secret = response_json.get("value")
    elif response.status_code == 404:
        user_token_client_secret = ""
    else:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = f"500-{MSG_FUNCTION_ID}016"
        message = multi_lang.get_text(
            message_id,
            "client secretの取得に失敗しました(対象ID:{0} client:{1} client_id{2})",
            organization_id,
            user_token_client_clientid,
            user_token_client_id
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    response = api_keycloak_clients.client_secret_get(organization_id, internal_api_client_id, token)
    if response.status_code == 200:
        response_json = json.loads(response.text)
        internal_api_client_secret = response_json.get("value")
    elif response.status_code == 404:
        internal_api_client_secret = ""
    else:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = f"500-{MSG_FUNCTION_ID}016"
        message = multi_lang.get_text(
            message_id,
            "client secretの取得に失敗しました(対象ID:{0} client:{1} client_id{2})",
            organization_id,
            token_check_client_clientid,
            token_check_client_id
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    response = api_keycloak_clients.client_secret_get(organization_id, token_check_client_id, token)
    if response.status_code == 200:
        response_json = json.loads(response.text)
        token_check_client_secret = response_json.get("value")
    elif response.status_code == 404:
        token_check_client_secret = ""
    else:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = f"500-{MSG_FUNCTION_ID}016"
        message = multi_lang.get_text(
            message_id,
            "client secretの取得に失敗しました(対象ID:{0} client:{1} client_id{2})",
            organization_id,
            token_check_client_clientid,
            token_check_client_id
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    infomations = {
        "USER_TOKEN_CLIENT_CLIENTID": user_token_client_clientid,
        "USER_TOKEN_CLIENT_ID": user_token_client_id,
        "USER_TOKEN_CLIENT_SECRET": user_token_client_secret,
        "INTERNAL_API_CLIENT_CLIENTID": internal_api_client_clientid,
        "INTERNAL_API_CLIENT_ID": internal_api_client_id,
        "INTERNAL_API_CLIENT_SECRET": internal_api_client_secret,
        "TOKEN_CHECK_CLIENT_CLIENTID": token_check_client_clientid,
        "TOKEN_CHECK_CLIENT_ID": token_check_client_id,
        "TOKEN_CHECK_CLIENT_SECRET": token_check_client_secret,
        "API_TOKEN_CLIENT_CLIENTID": api_token_client_clientid,
        "API_TOKEN_CLIENT_ID": api_token_client_id,
    }

    # organization private table update
    __update_organization_private(infomations, organization_id, user_id)

    return


def __ita_create(organization_id, user_id):
    """Exastro IT Automation initialize call

    Args:
        organization_id (str): organization id
        user_id (str): user id
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    header_para = {
        "Content-Type": "application/json",
        "User-Id": request.headers.get("User-Id"),
        "Roles": request.headers.get("Roles"),
        "Language": request.headers.get("Language"),
    }

    json_para = {
    }

    globals.logger.debug("realms post send")

    # 呼び出し先設定
    # Call destination setting
    api_url = "{}://{}:{}".format(os.environ['ITA_API_ADMIN_PROTOCOL'], os.environ['ITA_API_ADMIN_HOST'], os.environ['ITA_API_ADMIN_PORT'])
    response = requests.post(f"{api_url}/api/organizations/{organization_id}/ita/", headers=header_para, json=json_para)

    if response.status_code not in [200, 409]:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = f"500-{MSG_FUNCTION_ID}013"
        message = multi_lang.get_text(
            message_id,
            "Exastro IT Automationのorganization作成に失敗しました。(対象ID:{0})",
            organization_id
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    globals.logger.debug(response.text)

    # ステータス更新
    # update status
    __update_status(const.ORG_STATUS_ITA_CREATE, organization_id, user_id)

    return


def __organization_plan_create(organization_id, plan_id, user_id):
    """organization plan create

    Args:
        organization_id (str): organization id
        plan_id (str): plan id
        user_id (str): user id
    """
    if plan_id is not None:
        bl_plan_service.organization_plan_create(
            user_id, organization_id, plan_id, datetime.datetime.now().strftime(common_const.FORMAT_DATETIME_PLAN_START_DATETIME))

    # ステータス更新
    # update status
    __update_status(const.ORG_STATUS_PLAN_CREATE, organization_id, user_id)

    return


def __realm_enabled(organization_id, user_id):
    """realm to enabled

    Args:
        organization_id (str): organization id
        user_id (str): user id
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token = __get_token()

    realm_json = {
        "enabled": True,
    }

    # realm登録
    # realm registration to keycloak
    response = api_keycloak_realms.realm_update(organization_id, realm_json, token)
    if response.status_code not in [200, 204]:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = f"500-{MSG_FUNCTION_ID}014"
        message = multi_lang.get_text(message_id,
                                      "realmの有効化に失敗しました(対象ID:{0})",
                                      organization_id)
        raise common.InternalErrorException(message_id=message_id, message=message)

    # ステータス更新
    # update status
    __update_status(const.ORG_STATUS_REALM_ENABLED, organization_id, user_id)

    return


def __organization_complete(organization_id, user_id):
    """organization complete function

    Args:
        organization_id (str): organization id
        user_id (str): user id
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # ステータス更新
    # update status
    __update_status(const.ORG_STATUS_CREATE_COMPLETE, organization_id, user_id)

    return


def __update_organization_private(infomations, organization_id, user_id):
    """organization private table update

    Args:
        infomations (dict): infomations json
        organization_id (str): organization id
        user_id (str): user id

    Raises:
        common.InternalErrorException: _description_
    """

    # ステータス更新
    # update status
    db = DBconnector()
    with closing(db.connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:

            parameter = {
                "informations": json.dumps(infomations),
                "last_update_user": user_id,
            }
            try:
                cursor.execute(queries_organizations.SQL_INSERT_ORGANIZATION_PRIVATE, parameter)

                conn.commit()

            except Exception as e:
                globals.logger.error(f"exception:{e.args}")
                # Duplicate PRIMARY KEY
                message_id = f"500-{MSG_FUNCTION_ID}017"
                message = multi_lang.get_text(message_id,
                                              "organization private tableの更新に失敗しました。(対象ID:{0})",
                                              organization_id)
                raise common.InternalErrorException(message_id=message_id, message=message)

    return


@common.platform_exception_handler
def organization_setting_get(organization_id):  # noqa: E501
    """get an organization settings

    Args:
        organization_id (str): organization id

    Returns:
        response: HTTP Response
    """
    private = DBconnector().get_organization_private(organization_id)

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

    # realm取得
    # get realm to keycloak
    realm_response = api_keycloak_realms.realm_get(organization_id, token)
    if realm_response.status_code != 200:
        globals.logger.error(f"response.status_code:{realm_response.status_code}")
        globals.logger.error(f"response.text:{realm_response.text}")
        message_id = f"500-{MSG_FUNCTION_ID}018"
        message = multi_lang.get_text(
            message_id,
            "realm情報の取得に失敗しました。")
        raise common.InternalErrorException(message_id=message_id, message=message)

    realm_response_json = json.loads(realm_response.text)

    client_response = api_keycloak_clients.clients_get(organization_id, private.api_token_client_clientid, token)
    if client_response.status_code != 200:
        globals.logger.error(f"response.status_code:{client_response.status_code}")
        globals.logger.error(f"response.text:{client_response.text}")
        message_id = f"500-{MSG_FUNCTION_ID}004"
        message = multi_lang.get_text(
            message_id,
            "clientの取得に失敗しました(対象ID:{0} client:{1})",
            organization_id, private.api_token_client_clientid)
        raise common.InternalErrorException(message_id=message_id, message=message)

    client_response_json = json.loads(client_response.text)[0]

    data = {'token': {}}

    data['token']['refresh_token_max_lifespan_enabled'] = realm_response_json['offlineSessionMaxLifespanEnabled']
    if realm_response_json['offlineSessionMaxLifespanEnabled']:
        data['token']['refresh_token_max_lifespan_days'] = int(realm_response_json['offlineSessionMaxLifespan']  / 24 / 60 / 60)

    data['token']['access_token_lifespan_minutes'] = int(int(client_response_json["attributes"]["access.token.lifespan"]) / 60)

    return common.response_200_ok(data)


@common.platform_exception_handler
def organization_setting_update(body, organization_id):  # noqa: E501
    """update an organization settings

    Args:
        body (dict): organization setting.
        organization_id (str): organization id

    Returns:
        response: HTTP Response
    """

    # validation check
    validate = validation.validate_organization_setting(body)
    if not validate.ok:
        return common.response_validation_error(validate)

    # get client
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

    # make keycloak parameter
    realm_updete = False
    realm_json = {}
    api_client_update = False
    api_client_json = {}

    if "token" in body:
        realm_updete = True
        realm_json["offlineSessionMaxLifespanEnabled"] = body["token"]["refresh_token_max_lifespan_enabled"]
        if realm_json["offlineSessionMaxLifespanEnabled"]:
            realm_json["offlineSessionMaxLifespan"] = body["token"]["refresh_token_max_lifespan_days"] * 24 * 60 * 60
            realm_json["offlineSessionIdleTimeout"] = body["token"]["refresh_token_max_lifespan_days"] * 24 * 60 * 60
        else:
            realm_json["offlineSessionMaxLifespan"] = 999999999
            realm_json["offlineSessionIdleTimeout"] = 999999999

        api_client_update = True
        if "attributes" not in api_client_json:
            api_client_json["attributes"] = {}

        api_client_json["attributes"]["access.token.lifespan"] = body["token"]["access_token_lifespan_minutes"] * 60
        api_client_json["attributes"]["client.session.max.lifespan"] = body["token"]["access_token_lifespan_minutes"] * 60
        api_client_json["attributes"]["client.session.idle.timeout"] = body["token"]["access_token_lifespan_minutes"] * 60

    if realm_updete:
        # realm更新
        # realm update to keycloak
        response = api_keycloak_realms.realm_update(organization_id, realm_json, token)
        if response.status_code != 200 and response.status_code != 204:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}019"
            message = multi_lang.get_text(
                message_id,
                "realmの更新に失敗しました(対象ID:{0})",
                organization_id)
            raise common.InternalErrorException(message_id=message_id, message=message)

    if api_client_update:
        # api client更新
        response = api_keycloak_clients.client_update(organization_id, private.api_token_client_id, api_client_json, token)
        if response.status_code != 200 and response.status_code != 204:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}020"
            message = multi_lang.get_text(
                message_id,
                "clientの更新に失敗しました(対象ID:{0}.{1})",
                organization_id, private.api_token_client_clientid)
            raise common.InternalErrorException(message_id=message_id, message=message)

    return common.response_200_ok(None)
