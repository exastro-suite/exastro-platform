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
# from flask import Flask, render_template
import inspect
import os
import json
import traceback
from contextlib import closing

import globals
from common_library.common.db import DBconnector
from common_library.common import common, api_keycloak_tokens, api_keycloak_clients, api_keycloak_roles
from common_library.common import multi_lang
from .libs import queries_db_user_mainte_role_delete

# keycloak realm-managementロール 登録
# keycloak realm-management role
ALL_REALM_MANAGEMENT_ROLE = ["manage-users", "view-users"]

# オーガナイゼーションロール
# Organization role
ORG_ROLE_ORG_MANAGER = "_organization-manager"
ORG_ROLE_USER_ROLE_MANAGER = "_organization-user-role-manager"
ORG_ROLE_USER_MANAGER = "_organization-user-manager"

MSG_FUNCTION_ID = "90"


class user_mainte_role_delete:

    # realm name
    realm = None

    # add client name
    platform_client_clientid = None
    platform_api_clientid = None

    realm_management_clientid = "realm-management"

    token_user = os.environ.get("KEYCLOAK_USER")
    token_pass = os.environ.get("KEYCLOAK_PASSWORD")

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
        """データ初期化開始処理 Data initialization start processing

        """
        globals.logger.info('user mainte role delete start')

        try:
            self.step_count = 1
            self.step_max = 3

            # organization取得
            organizations = self.__get_organizations()
            self.step_count += 1

            # アクセストークンを取得
            # Get an access token
            access_token = self.__access_token_get(self.realm, self.token_user, self.token_pass)
            self.step_count += 1

            # オーガナイゼーション数分処理する
            # Process for the number of organisations.
            for organization in organizations:
                
                self.organization_count += 1
                organization_id = organization.get("ORGANIZATION_ID")
                globals.logger.info(f"[{self.step_count}/{self.step_max}] ##### Organization iteration [{self.organization_count}/{len(organizations)}] Start - organization id [{organization_id}]")  # noqa: #E501
                
                # organization client取得
                # get organization client
                organization_client_id = self.__get_organization_client_id(organization_id, access_token)
                
                # realm management client取得
                # get realm management client
                realm_management_client_id = self.__get_realm_management_client_id(organization_id, access_token)

                # platform用client登録
                # client registration for platform
                management_roles = self.__get_management_roles(organization_id, realm_management_client_id, access_token)

                # platform用Service account設定
                # Service account settings for platform
                self.__delete_management_roles(organization_id, organization_client_id, management_roles, access_token)

                globals.logger.info(f"[{self.step_count}/{self.step_max}] ##### Organization iteration [{self.organization_count}/{len(organizations)}] End")  # noqa: E501

            self.step_count += 1

            last_message = "user mainte role delete successful !!"

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
            last_message = "user mainte role delete failed..."

        except Exception as err:
            self.failed_count += 1
            globals.logger.info("=" * 50)
            globals.logger.error(f'exception:\n args:[{err.args}]')
            globals.logger.info("-" * 50)
            globals.logger.error(''.join(list(traceback.TracebackException.from_exception(err).format())))
            last_message = "user mainte role delete failed..."

        globals.logger.info("-" * 50)
        globals.logger.info(f"user mainte role delete status: [OK:{self.ok_count}] [SKIP:{self.skip_count}] [IGNORE:{self.ignore_count}] [NG:{self.failed_count}]")     # noqa: E501
        globals.logger.info("-" * 50)
        globals.logger.info(last_message)

        if self.failed_count > 0:
            return -1
        else:
            return 0
        
    def __get_organizations(self):
        """ get organizations

        Raises:
            common.NotFoundException: _description_
        """
        
        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### func:{inspect.currentframe().f_code.co_name}")

        # exists organization
        with closing(DBconnector().connect_platformdb()) as conn:
            with conn.cursor() as cursor:
                cursor.execute(
                    queries_db_user_mainte_role_delete.SQL_QUERY_ORGANIZATIONS)
                result = cursor.fetchall()

        globals.logger.debug(f"result:{result}")

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Succeed func:{inspect.currentframe().f_code.co_name} orgnaization count [{len(result)}]")  # noqa: E501

        return result

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

            globals.logger.info(f"[{self.step_count}/{self.step_max}] - get token:")
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

    def __get_organization_client_id(self, organization_id, token):
        """get organization client id

        Args:
            organization_id (str): organization id
            token (str): access token

        Raises:
            common.InternalErrorException: _description_

        Returns:
            str: organization client id
        """

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Start func:{inspect.currentframe().f_code.co_name} - organization_id: [{organization_id}]")  # noqa: E501
        
        client_clientid = common.get_user_token_client_id(organization_id)

        # client取得
        # client get to keycloak
        response = api_keycloak_clients.clients_get(organization_id, client_clientid, token)
        if response.status_code != 200:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}001"
            message = multi_lang.get_text(
                message_id,
                "clientの取得に失敗しました(対象ID:{0} client:{1})",
                organization_id,
                client_clientid
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        client_info = json.loads(response.text)
        client_id = client_info[0].get("id")

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Succeed func:{inspect.currentframe().f_code.co_name}")

        return client_id 

    def __get_realm_management_client_id(self, organization_id, token):
        """get realm management client id

        Args:
            organization_id (str): organization id
            token (str): access token

        Raises:
            common.InternalErrorException: _description_

        Returns:
            str: realm management client id
        """

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Start func:{inspect.currentframe().f_code.co_name} - organization_id: [{organization_id}]")  # noqa: E501

        # client 情報取得
        # get client information
        response = api_keycloak_clients.clients_get(organization_id, self.realm_management_clientid, token)
        if response.status_code != 200:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}001"
            message = multi_lang.get_text(
                message_id,
                "clientの取得に失敗しました(対象ID:{0} client:{1})",
                organization_id,
                self.realm_management_clientid
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        client_info = json.loads(response.text)

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Succeed func:{inspect.currentframe().f_code.co_name}")

        return client_info[0].get("id")

    def __get_management_roles(self, organization_id, realm_management_client_id, token):
        """get management roles

        Args:
            organization_id (str): organization id
            realm_management_client_id (str): realm management client id
            token (str): access token

        Raises:
            common.InternalErrorException: _description_

        Returns:
            dic: roles
        """

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Start func:{inspect.currentframe().f_code.co_name} - organization_id: [{organization_id}]")  # noqa: E501

        client_roles = []

        for realm_management_role in ALL_REALM_MANAGEMENT_ROLE:
            # 該当Clientのorganization管理者ロールを取得
            # Process for the number of organization administrators
            response = api_keycloak_roles.clients_role_get(organization_id, realm_management_client_id, realm_management_role, token)
            if response.status_code != 200:
                globals.logger.error(f"response.status_code:{response.status_code}")
                globals.logger.error(f"response.text:{response.text}")
                message_id = f"500-{MSG_FUNCTION_ID}002"
                message = multi_lang.get_text(
                    message_id,
                    "client roleの取得に失敗しました(対象ID:{0} client:{1})",
                    organization_id,
                    realm_management_client_id
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

            client_roles.append(json.loads(response.text))

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Succeed func:{inspect.currentframe().f_code.co_name}")

        return client_roles

    def __delete_management_roles(self, organization_id, client_id, client_roles, token):
        """delete management roles

        Args:
            organization_id (str): organization id
            client_id (str): organization client id
            client_roles (dic): delete roles
            token (str): access token
        """

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Start func:{inspect.currentframe().f_code.co_name} - organization_id: [{organization_id}]")  # noqa: E501

        # role削除
        # role delete for client-roles
        target_roles = [ORG_ROLE_ORG_MANAGER, ORG_ROLE_USER_ROLE_MANAGER, ORG_ROLE_USER_MANAGER]
        for target in target_roles:
            response = api_keycloak_roles.clients_role_composites_delete(organization_id, client_id, target, client_roles, token)
            if response.status_code not in [200, 204]:
                globals.logger.info(f"[{self.step_count}/{self.step_max}] - role [{target}] delete status:{response.status_code}")  # noqa: E501
        
        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Succeed func:{inspect.currentframe().f_code.co_name}")

        return
