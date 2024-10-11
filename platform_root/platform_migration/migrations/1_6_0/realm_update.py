#   Copyright 2023 NEC Corporation
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
import traceback

import globals
from common_library.common.db import DBconnector
from common_library.common import common, api_keycloak_tokens, api_keycloak_clients, api_keycloak_realms
from common_library.common import multi_lang

# keycloak realm-managementロール 登録
# keycloak realm-management role
ALL_REALM_MANAGEMENT_ROLE = ["manage-users", "view-users"]

# オーガナイゼーションロール
# Organization role
ORG_ROLE_ORG_MANAGER = "_organization-manager"
ORG_ROLE_USER_ROLE_MANAGER = "_organization-user-role-manager"
ORG_ROLE_USER_MANAGER = "_organization-user-manager"

MSG_FUNCTION_ID = "90"

MASTER_REALM_NAME = "master"
ADD_CLIENT_NAME = "_platform-console"


class realm_update:

    # realm name
    realm = None

    # add client name
    platform_client_clientid = None
    platform_api_clientid = None

    realm_management_clientid = "realm-management"

    failed_count = 0
    complete = 0
    skip_count = 0
    ignore_count = 0
    ok_count = 0

    organization_count = 0
    step_count = 0
    step_max = 0

    def __init__(self, realm="master"):
        """初期化処理 initialize setting

        Args:
            realm (str): realm name

        """
        self.realm = realm

    def start(self):
        """マイグレーション処理 migration start processing

        """
        globals.logger.info('realm update start')

        try:
            self.step_count = 1
            self.step_max = 3

            # アクセストークンを取得
            # Get an access token
            private = DBconnector().get_platform_private()
            access_token = self.__access_token_get(self.realm, private.token_check_client_clientid, private.token_check_client_secret)
            self.step_count += 1

            # client作成
            # create client
            self.__client_create(MASTER_REALM_NAME, ADD_CLIENT_NAME, access_token)
            self.step_count += 1

            # master realm 更新 (sslRequired)
            # master realm update (sslRequired)
            self.__realm_update(MASTER_REALM_NAME, access_token)
            self.step_count += 1

            last_message = "realm update successful !!"

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
            last_message = "realm update failed..."

        except Exception as err:
            self.failed_count += 1
            globals.logger.info("=" * 50)
            globals.logger.error(f'exception:\n args:[{err.args}]')
            globals.logger.info("-" * 50)
            globals.logger.error(''.join(list(traceback.TracebackException.from_exception(err).format())))
            last_message = "realm update failed..."

        globals.logger.info("-" * 50)
        globals.logger.info(f"realm update status: [OK:{self.ok_count}] [SKIP:{self.skip_count}] [IGNORE:{self.ignore_count}] [NG:{self.failed_count}]")     # noqa: E501
        globals.logger.info("-" * 50)
        globals.logger.info(last_message)

        if self.failed_count > 0:
            return -1
        else:
            return 0

    def __access_token_get(self, realm, token_check_client_clientid, token_check_client_secret):
        """アクセストークン取得 Get access token

        Args:
            realm (str): realm
            token_check_client_clientid (str): token_check_client_clientid
            token_check_client_secret (str): token_check_client_secret

        Returns:
            str: access_token
        """
        try:
            globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Start func:{inspect.currentframe().f_code.co_name}")

            globals.logger.info(f"[{self.step_count}/{self.step_max}] - get token:")
            # アクセストークン取得
            # get access token
            access_token_response = api_keycloak_tokens.service_account_get_token(realm, token_check_client_clientid, token_check_client_secret)

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

    def __client_create(self, realm_name, client_name, token):
        """client create

        Args:
            realm_name (str): realm name
            client_name (str): client name
            token (str): keycloak access token
        """
        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Start func:{inspect.currentframe().f_code.co_name}")

        templates = ["template_client_user_token.json"]

        template_folder = os.path.join(os.path.dirname(__file__), "templates")
        app = Flask(__name__, template_folder=template_folder)
        globals.logger.debug(f"__file__:{__file__}")
        globals.logger.debug(f"template_folder:{template_folder}")

        for template_path in templates:
            client_json = None
            with app.app_context():
                # templatesの取得
                # get a templates
                client_json = render_template(template_path,
                                              organization_id=client_name)
                client_json = json.loads(client_json)

            globals.logger.debug(f"client_json:{client_json}")

            # client登録
            # Client registration to keycloak
            response = api_keycloak_clients.client_create(realm_name, client_json, token)
            globals.logger.debug(f"client_create response:{response}")
            if response.status_code != 200 and \
                response.status_code != 201 and \
                response.status_code != 409:    # 409 exists client # noqa: E125
                globals.logger.error(f"response.status_code:{response.status_code}")
                globals.logger.error(f"response.text:{response.text}")
                message_id = f"500-{MSG_FUNCTION_ID}003"
                message = multi_lang.get_text(
                    message_id,
                    "clientの作成に失敗しました(対象ID:{0} client:{1})",
                    realm_name,
                    client_json.get("clientId")
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

            # secretありの場合は、secret値を生成
            # If there is a secret, generate a secret value
            if client_json.get("clientAuthenticatorType") == "client-secret":
                # client取得
                # client get to keycloak
                response = api_keycloak_clients.clients_get(realm_name, client_json.get("clientId"), token)
                globals.logger.debug(f"clients_get response:{response}")
                if response.status_code != 200:
                    globals.logger.error(f"response.status_code:{response.status_code}")
                    globals.logger.error(f"response.text:{response.text}")
                    message_id = f"500-{MSG_FUNCTION_ID}002"
                    message = multi_lang.get_text(
                        message_id,
                        "clientの取得に失敗しました(対象ID:{0} client:{1})",
                        realm_name,
                        client_json.get("clientId")
                    )
                    raise common.InternalErrorException(message_id=message_id, message=message)

                client_info = json.loads(response.text)
                client_id = client_info[0].get("id")

                # client secret登録
                # client secret registration to keycloak
                response = api_keycloak_clients.client_secret_create(realm_name, client_id, token)
                globals.logger.debug(f"client_secret_create response:{response}")
                if response.status_code != 200:
                    globals.logger.error(f"response.status_code:{response.status_code}")
                    globals.logger.error(f"response.text:{response.text}")
                    message_id = f"500-{MSG_FUNCTION_ID}004"
                    message = multi_lang.get_text(
                        message_id,
                        "client secretの作成に失敗しました(対象ID:{0} client:{1} client_id{2})",
                        realm_name,
                        client_json.get("clientId"),
                        client_id
                    )
                    raise common.InternalErrorException(message_id=message_id, message=message)

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Succeed func:{inspect.currentframe().f_code.co_name}")

        return

    def __realm_update(self, realm_name, token):
        """realm update

        Args:
            realm_name (str): realm name
            token (str): keycloak access token
        """
        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Start func:{inspect.currentframe().f_code.co_name}")

        update_json = {
            "sslRequired": "none"
        }

        # realm更新
        # realm update to keycloak
        response = api_keycloak_realms.realm_update(realm_name, update_json, token)
        globals.logger.debug(f"realm_update response:{response}")
        if response.status_code != 204:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}005"
            message = multi_lang.get_text(
                message_id,
                "realmの更新に失敗しました。(対象ID:{0})",
                realm_name
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Succeed func:{inspect.currentframe().f_code.co_name}")

        return
