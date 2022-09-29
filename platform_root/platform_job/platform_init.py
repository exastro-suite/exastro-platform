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
from contextlib import closing
from dotenv import load_dotenv  # python-dotenv
import logging
from logging.config import dictConfig as dictLogConf
from flask_log_request_id import RequestID
import traceback

import globals
# import const
from common_library.common import common, api_keycloak_tokens, api_keycloak_clients, api_keycloak_users, api_keycloak_roles
from common_library.common.exastro_logging import ExastroLogRecordFactory, LOGGING
from common_library.common.db import DBconnector
from common_library.common import multi_lang
from libs import queries_platform_init


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

    # add client name
    platform_client_clientid = None

    token_user = os.environ.get("KEYCLOAK_USER")
    token_pass = os.environ.get("KEYCLOAK_PASSWORD")

    failed_count = 0
    complete = 0
    skip_count = 0
    ok_count = 0

    step_count = 0
    step_max = 0

    def __init__(self, realm="master"):
        """初期化処理 initialize setting

        Args:
            realm (str): realm name

        """
        self.realm = realm

    def init_start(self):
        """データ初期化開始処理 Data initialization start processing

        """
        globals.logger.info('platform initialize setting start')

        try:
            self.step_count = 1
            self.step_max = 4

            # アクセストークンを取得
            # Get an access token
            access_token = self.__access_token_get(self.realm, self.token_user, self.token_pass)

            self.step_count += 1

            # platform用client登録
            # client registration for platform
            self.__client_create(self.realm, access_token)

            self.step_count += 1

            # platform用Service account設定
            # Service account settings for platform
            self.__service_account_setting(self.realm, access_token)

            self.step_count += 1

            # platform-dbの登録・更新
            # Platform database insert and update
            self.__update_db(self.realm, access_token)

            last_message = "Install successful !!"

        except (common.BadRequestException,
                common.AuthException,
                common.NotAllowedException,
                common.InternalErrorException,
                common.OtherException) as err:
            self.failed_count += 1
            globals.logger.info("=" * 50)
            globals.logger.error(f'exception handler:\n status_code:[{err.status_code}]\n message_id:[{err.message_id}]\n message:[{err.message}]')
            globals.logger.info("-" * 50)
            globals.logger.error(''.join(list(traceback.TracebackException.from_exception(err).format())))
            last_message = "Install failed..."

        except Exception as err:
            self.failed_count += 1
            globals.logger.info("=" * 50)
            globals.logger.error(f'exception:\n args:[{err.args}]')
            globals.logger.info("-" * 50)
            globals.logger.error(''.join(list(traceback.TracebackException.from_exception(err).format())))
            last_message = "Install failed..."

        globals.logger.info("-" * 50)
        globals.logger.info(f"install status: [OK:{self.ok_count}] [SKIP:{self.skip_count}] [NG:{self.failed_count}]")
        globals.logger.info("-" * 50)
        globals.logger.info(last_message)

        return 0

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
            globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Start func:{inspect.currentframe().f_code.co_name}")

            globals.logger.info("[{self.step_count}/{self.step_max}] - get token:")
            # アクセストークン取得
            # get access token
            access_token_response = api_keycloak_tokens.get_user_token(user_name, password, realm)

            if access_token_response.status_code not in [200]:
                globals.logger.info(f"[{self.step_count}/{self.step_max}] -- NG: get token:")
                message_id = f"500-{MSG_FUNCTION_ID}001"
                message = multi_lang.get_text(
                    message_id,
                    "get access token failed."
                )
                raise common.AuthException(message_id=message_id, message=message)

            globals.logger.info(f"[{self.step_count}/{self.step_max}] -- OK: get token:")
            self.ok_count += 1

            access_token = json.loads(access_token_response.text)["access_token"]

            globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Succeed func:{inspect.currentframe().f_code.co_name}")

            return access_token

        except Exception:
            raise

    def __client_create(self, realm_name, token):
        """client create

        Args:
            realm_name (str): realm name
            token (str): keycloak access token
        """

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Start func:{inspect.currentframe().f_code.co_name}")

        templates = ["template_platform_client.json"]

        with app.app_context():
            for template_path in templates:
                globals.logger.debug(f"template_path:{template_path}")
                # templatesの取得
                # get a templates
                client_json = render_template(template_path)
                client_json = json.loads(client_json)

                if template_path == "template_platform_client.json":
                    self.platform_client_clientid = client_json.get("clientId")

                # globals.logger.debug(f"client_json:{client_json}")

                globals.logger.info(f"[{self.step_count}/{self.step_max}] - create client:")
                # client登録
                # client registration to keycloak
                response = api_keycloak_clients.client_create(realm_name, client_json, token)
                if response.status_code not in [200, 201, 409]:    # 409 exists client
                    globals.logger.info(f"[{self.step_count}/{self.step_max}] -- NG: create client:")
                    globals.logger.error(f"response.status_code:{response.status_code}")
                    globals.logger.error(f"response.text:{response.text}")
                    message_id = f"500-{MSG_FUNCTION_ID}002"
                    message = multi_lang.get_text(
                        message_id,
                        "client create failed. (realm:{0} cliest:{1})",
                        realm_name,
                        client_json.get("clientId")
                    )
                    raise common.InternalErrorException(message_id=message_id, message=message)

                # 存在した場合はスキップ
                # skip if present
                if response.status_code not in [409]:
                    globals.logger.info(f"[{self.step_count}/{self.step_max}] -- SKIP: create client:")
                    self.skip_count += 1
                else:
                    globals.logger.info(f"[{self.step_count}/{self.step_max}] -- OK: create client:")
                    self.ok_count += 1

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

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Succeed func:{inspect.currentframe().f_code.co_name}")

        return

    def __service_account_setting(self, realm_name, token):
        """service account setting

        Args:
            realm_name (str): realm name
            token (str): keycloak access token
        """

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Start func:{inspect.currentframe().f_code.co_name}")

        globals.logger.info(f"[{self.step_count}/{self.step_max}] - get client:")
        # client 情報取得
        # Get client information
        response = api_keycloak_clients.clients_get(realm_name, self.platform_client_clientid, token)
        if response.status_code not in [200]:
            globals.logger.info(f"[{self.step_count}/{self.step_max}] -- NG: get client:")
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}003"
            message = multi_lang.get_text(
                message_id,
                "get client failed. (realm:{0} cliest:{1})",
                realm_name,
                self.platform_client_clientid
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        globals.logger.info(f"[{self.step_count}/{self.step_max}] -- OK: get client:")
        self.ok_count += 1

        client_info = json.loads(response.text)
        client_id = client_info[0].get("id")

        globals.logger.info(f"[{self.step_count}/{self.step_max}] - get service account:")
        # service account user id 取得
        # Get service account user id
        response = api_keycloak_users.service_account_user_get(realm_name, client_id, token)
        if response.status_code not in [200]:
            globals.logger.info(f"[{self.step_count}/{self.step_max}] -- NG: get service account:")
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}006"
            message = multi_lang.get_text(
                message_id,
                "get service account user failed. (realm:{0} client:{1})",
                realm_name,
                self.platform_client_clientid
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        globals.logger.info(f"[{self.step_count}/{self.step_max}] -- OK: get service account:")
        self.ok_count += 1

        globals.logger.debug(f"response.text:{response.text}")
        user_info = json.loads(response.text)
        sa_user_id = user_info.get("id")
        # sa_user_id = "service-account-{}".format(common.get_platform_client_id(organization_id))

        role_name = "admin"

        globals.logger.info(f"[{self.step_count}/{self.step_max}] - get realm role:")
        # 該当Clientのorganization管理者ロールを取得
        # Process for the number of organization administrators
        response = api_keycloak_roles.realm_role_get(realm_name, role_name, token)
        if response.status_code not in [200]:
            globals.logger.info("-- NG: get realm role:")
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}005"
            message = multi_lang.get_text(
                message_id,
                "get realm role failed. (realm:{0} role:{1})",
                realm_name,
                role_name
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        globals.logger.info(f"[{self.step_count}/{self.step_max}] -- OK: get realm role:")
        self.ok_count += 1

        realm_roles = [json.loads(response.text), ]

        globals.logger.info(f"[{self.step_count}/{self.step_max}] - create realm role mapping:")
        # realm-adminのrole付与
        # role grant for realm-admin
        response = api_keycloak_users.user_realm_role_mapping_create(realm_name, sa_user_id, realm_roles, token)
        if response.status_code not in [200, 204]:
            globals.logger.info(f"[{self.step_count}/{self.step_max}] -- NG: create realm role mapping:")
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}006"
            message = multi_lang.get_text(
                message_id,
                "servise account setting failed. (realm:{0})",
                realm_name
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        globals.logger.info(f"[{self.step_count}/{self.step_max}] -- OK: create realm role mapping:")
        self.ok_count += 1

        # # ステータス更新
        # # update status
        # __update_status(const.ORG_STATUS_SA_SETTING, realm_name, user_id)

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Succeed func:{inspect.currentframe().f_code.co_name}")

        return

    def __update_db(self, realm_name, token):
        """Platform database insert and update

        Args:
            realm_name (str): realm name
            user_id (str): user id

        Raises:
            common.InternalErrorException: _description_
        """

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Start func:{inspect.currentframe().f_code.co_name}")

        globals.logger.info(f"[{self.step_count}/{self.step_max}] - get client:")
        # 該当Client情報を取得
        # get client infomations
        response = api_keycloak_clients.clients_get(realm_name, self.platform_client_clientid, token)
        if response.status_code not in [200]:
            globals.logger.info(f"[{self.step_count}/{self.step_max}] -- NG: get client:")
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}003"
            message = multi_lang.get_text(
                message_id,
                "get client failed. (realm:{0} cliest:{1})",
                realm_name,
                self.platform_client_clientid
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        globals.logger.info(f"[{self.step_count}/{self.step_max}] -- OK: get client:")
        self.ok_count += 1

        response_json = json.loads(response.text)
        globals.logger.debug(f"-- clients_get:{response_json}")
        platform_client_id = response_json[0].get("id")

        globals.logger.info(f"[{self.step_count}/{self.step_max}] - get client secret:")
        # 該当Client secret情報を取得
        # get client secret
        response = api_keycloak_clients.client_secret_get(realm_name, platform_client_id, token)
        if response.status_code == 200:
            globals.logger.info(f"[{self.step_count}/{self.step_max}] -- OK: get client secret:")
            self.ok_count += 1
            response_json = json.loads(response.text)
            globals.logger.debug(f"-- client_secret_get:{response_json}")
            platform_client_secret = response_json.get("value")
        else:
            globals.logger.info(f"[{self.step_count}/{self.step_max}] -- NG: get client secret:")
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}007"
            message = multi_lang.get_text(
                message_id,
                "get client secret failed. (realm:{0} client:{1} client_id:{2})",
                realm_name,
                self.platform_client_clientid,
                platform_client_id
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        # ステータス更新
        # update status
        db = DBconnector()
        with closing(db.connect_platformdb()) as conn:
            with conn.cursor() as cursor:

                parameter = {
                    "KEYCLOAK_REALM": realm_name,
                    "CLIENT_ID": platform_client_id,
                    "CLIENT_SECRET": platform_client_secret,
                }
                try:
                    globals.logger.info(f"[{self.step_count}/{self.step_max}] - insert or update platform-db:")
                    cursor.execute(queries_platform_init.SQL_INSERT_PLATFORM_PRIVATE, parameter)

                    globals.logger.info(f"[{self.step_count}/{self.step_max}] -- OK: insert or update platform-db:")
                    self.ok_count += 1

                    conn.commit()

                except Exception as e:
                    globals.logger.info(f"[{self.step_count}/{self.step_max}] -- NG: insert or update platform-db:")
                    globals.logger.error(f"exception:{e.args}")
                    message_id = f"500-{MSG_FUNCTION_ID}008"
                    message = multi_lang.get_text(message_id,
                                                  "update platform-db setting failed.")
                    raise common.InternalErrorException(message_id=message_id, message=message)

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Succeed func:{inspect.currentframe().f_code.co_name}")

        return


api = platform_init()

api.init_start()
