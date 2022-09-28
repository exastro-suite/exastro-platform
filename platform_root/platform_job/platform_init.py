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
from flask import Flask, render_template
import inspect
import os
import json
from dotenv import load_dotenv  # python-dotenv
import logging
from logging.config import dictConfig as dictLogConf
from flask_log_request_id import RequestID

import globals
import const
import common_library.common.common as common
import common_library.common.api_keycloak_tokens as api_keycloak_tokens
from common_library.common.exastro_logging import ExastroLogRecordFactory, LOGGING
from common_library.common.db import DBconnector
from common_library.common import multi_lang


# load environ variables
load_dotenv(override=True)

# 設定ファイル読み込み・globals初期化
# Read configuration file and initialize globals
app = Flask(__name__)
globals.init(app)


org_factory = logging.getLogRecordFactory()
logging.setLogRecordFactory(ExastroLogRecordFactory(org_factory))
globals.logger = logging.getLogger('root')
dictLogConf(LOGGING)

RequestID(app)

MSG_FUNCTION_ID = "01"


class platform_init:

    # realm name
    realm = None

    token_user = os.environ.get("KEYCLOAK_USER")
    token_pass = os.environ.get("KEYCLOAK_PASSWORD")

    failed_count = 0
    complete = 0
    skip_count = 0
    ok_count = 0

    def __init__(self):
        """初期化処理 initialize setting

        Args:
            realm (str): realm name

        """
        self.realm = "master"

    def __init__(self, realm):  # noqa: F811
        """初期化処理 initialize setting

        Args:
            realm (str): realm name

        """
        self.realm = realm

    def init_start(self):
        """データ初期化開始処理 Data initialization start processing

        """
        globals.logger.info('platform initialize setting start')

        globals.logger.info('Get keycloak token start')

        try:
            # アクセストークンを取得
            # Get an access token
            access_token = self.__access_token_get(self.realm, self.token_user, self.token_pass)
            globals.logger.info('Get keycloak token')

        except common.AuthException:
            self.failed_count += 1
            err_info = 'token get failed'
            globals.logger.info(err_info)
            raise common.AuthException(err_info)

        globals.logger.info('Get keycloak token complete')
        ok_count += 1

        globals.logger.info('Create platform client start')

        self.__client_create()

        globals.logger.info('Create platform client complete')

    def __access_token_get(self, realm, user_name, password):
        """アクセストークン取得 Get access token

        Args:
            realm (str): realm
            user_name (str): user_name
            password (str): password

        Returns:
            str: access_token
        """
        try:
            globals.logger.info(f"### Start func:{inspect.currentframe().f_code.co_name}")

            # アクセストークン取得
            # get access token
            # access_token = api_keycloak_tokens.get_user_token(user_name, password, realm)
            access_token_response = api_keycloak_tokens.client_user_get_token(
                realm, self.user_token_client_id, self.user_token_client_secret, user_name, password)

            if access_token_response.status_code not in [200]:
                message_id = f"500-{MSG_FUNCTION_ID}001"
                message = multi_lang.get_text(
                    message_id,
                    "get access token failed."
                )
                raise common.AuthException(message_id=message_id, message=message)

            access_token = json.loads(access_token_response.text)["access_token"]

            globals.logger.info(f"### Succeed func:{inspect.currentframe().f_code.co_name}")

            return access_token

        except Exception:
            raise

    def __client_create(realm_name, token):
        """client create

        Args:
            realm_name (str): realm name
            token (str): keycloak access token
        """

        globals.logger.info(f"### Start func:{inspect.currentframe().f_code.co_name}")

        templates = ["template_platform_client.json"]

        for template_path in templates:
            # templatesの取得
            # get a templates
            client_json = render_template(template_path)
            client_json = json.loads(client_json)

            # globals.logger.debug(f"client_json:{client_json}")

            # client登録
            # client registration to keycloak
            response = api_keycloak_clients.client_create(realm_name, client_json, token)
            if response.status_code not in [200, 201, 409]:    # 409 exists client
                globals.logger.error(f"response.status_code:{response.status_code}")
                globals.logger.error(f"response.text:{response.text}")
                message_id = f"500-{MSG_FUNCTION_ID}002"
                message = multi_lang.get_text(
                    message_id,
                    "client create failed. (cliest:{0})",
                    client_json.get("clientId")
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

            # # secretありの場合は、secret値を生成
            # # If there is a secret, generate a secret value
            # if client_json.get("clientAuthenticatorType") == "client-secret":
            #     # client取得
            #     # client get to keycloak
            #     response = api_keycloak_clients.clients_get(realm_name, client_json.get("clientId"), token)
            #     if response.status_code != 200:
            #         globals.logger.error(f"response.status_code:{response.status_code}")
            #         globals.logger.error(f"response.text:{response.text}")
            #         message_id = f"500-{MSG_FUNCTION_ID}003"
            #         message = multi_lang.get_text(
            #             message_id,
            #             "clientの取得に失敗しました(対象ID:{0} client:{1})",
            #             realm_name,
            #             client_json.get("clientId")
            #         )
            #         raise common.InternalErrorException(message_id=message_id, message=message)

            #     client_info = json.loads(response.text)
            #     client_id = client_info[0].get("id")

            #     # client secret登録
            #     # client secret registration to keycloak
            #     response = api_keycloak_clients.client_secret_create(realm_name, client_id, token)
            #     if response.status_code != 200:
            #         globals.logger.error(f"response.status_code:{response.status_code}")
            #         globals.logger.error(f"response.text:{response.text}")
            #         message_id = f"500-{MSG_FUNCTION_ID}005"
            #         message = multi_lang.get_text(
            #             message_id,
            #             "client secretの作成に失敗しました(対象ID:{0} client:{1} client_id{2})",
            #             realm_name,
            #             client_json.get("clientId"),
            #             client_id
            #         )
            #         raise common.InternalErrorException(message_id=message_id, message=message)

        # ステータス更新
        # update status
        # __update_status(const.ORG_STATUS_CLIENT_CREATE, organization_id, user_id)

        globals.logger.info(f"### Succeed func:{inspect.currentframe().f_code.co_name}")

        return

    def __service_account_setting(realm_name, platform_client_id, token):
        """service account setting

        Args:
            realm_name (str): realm name
            platform_client_id (str): platform client id
            token (str): keycloak access token
        """

        globals.logger.info(f"### Start func:{inspect.currentframe().f_code.co_name}")

        # client 情報取得
        response = api_keycloak_clients.clients_get(realm_name, platform_client_id, token)
        if response.status_code not in [200]:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}003"
            message = multi_lang.get_text(
                message_id,
                "get client failed. (cliest:{0})",
                platform_client_id
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        client_info = json.loads(response.text)
        client_id = client_info[0].get("id")

        # service account user id 取得
        response = api_keycloak_users.service_account_user_get(realm_name, client_id, token)
        if response.status_code not in [200]:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}006"
            message = multi_lang.get_text(
                message_id,
                "get service account user failed. (client:{0})",
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
        response = api_keycloak_clients.clients_get(realm_name, realm_management_clientid, token)
        if response.status_code not in [200]:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}003"
            message = multi_lang.get_text(
                message_id,
                "get client failed. (cliest:{0})",
                realm_management_clientid
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        client_info = json.loads(response.text)
        realm_management_client_id = client_info[0].get("id")

        # 該当Clientのorganization管理者ロールを取得
        # Process for the number of organization administrators
        response = api_keycloak_clients.client_role_get(realm_name, realm_management_client_id, realm_management_role, token)
        if response.status_code not in [200]:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}005"
            message = multi_lang.get_text(
                message_id,
                "get client role failed. (client:{0})",
                realm_management_client_id
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        client_roles = [json.loads(response.text), ]

        # realm-adminのrole付与
        # role grant for realm-admin
        response = api_keycloak_users.user_client_role_mapping_create(realm_name, sa_user_id, realm_management_client_id, client_roles, token)
        if response.status_code not in [200, 204]:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}006"
            message = multi_lang.get_text(
                message_id,
                "servise account setting failed. (client:{0})",
                platform_client_id
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        # # ステータス更新
        # # update status
        # __update_status(const.ORG_STATUS_SA_SETTING, realm_name, user_id)

        globals.logger.info(f"### Succeed func:{inspect.currentframe().f_code.co_name}")

        return

    def __update_db(status, realm_name):
        """Platform database update

        Args:
            realm_name (str): realm name
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
                    "organization_id": realm_name,
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


api = platform_init()

api.init_start()
