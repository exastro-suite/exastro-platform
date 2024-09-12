#   Copyright 2024 NEC Corporation
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
from common_library.common import const as common_const
from common_library.common.db import DBconnector
from common_library.common import common, api_keycloak_tokens, api_keycloak_roles, api_keycloak_clients
from common_library.common import multi_lang
from .libs import queries_db_organization

# keycloak realm-managementロール 登録
# keycloak realm-management role
ALL_REALM_MANAGEMENT_ROLE = ["manage-users", "view-users"]

# オーガナイゼーションロール
# Organization role
ORG_ROLE_ORG_MANAGER = "_organization-manager"

MSG_FUNCTION_ID = "90"

MASTER_REALM_NAME = "master"
ADD_CLIENT_NAME = "_platform-console"


class realm_update:

    # realm name
    realm = None

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

            # organization取得
            organizations = self.__get_organizations()
            self.step_count += 1

            # アクセストークンを取得
            # Get an access token
            private = DBconnector().get_platform_private()
            access_token = self.__access_token_get(self.realm, private.token_check_client_clientid, private.token_check_client_secret)
            self.step_count += 1

            # オーガナイゼーション数分処理する
            # Process for the number of organisations.
            for organization in organizations:

                self.organization_count += 1
                organization_id = organization.get("ORGANIZATION_ID")
                globals.logger.info(f"[{self.step_count}/{self.step_max}] ##### Organization iteration [{self.organization_count}/{len(organizations)}] Start - organization id [{organization_id}]")  # noqa: #E501

                # organization管理者用の権限を登録
                # create a authority for organization admin
                self.__role_update(organization_id, access_token)

                globals.logger.info(f"[{self.step_count}/{self.step_max}] ##### Organization iteration [{self.organization_count}/{len(organizations)}] End")  # noqa: E501

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
                    queries_db_organization.SQL_SELECT_ORGANIZATION_DB)
                result = cursor.fetchall()

        globals.logger.debug(f"result:{result}")

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Succeed func:{inspect.currentframe().f_code.co_name} orgnaization count [{len(result)}]")  # noqa: E501

        return result

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

    def __role_update(self, organization_id, token):
        """role update

        Args:
            organization_id (str): organization id
            token (str): keycloak access token
        """
        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Start func:{inspect.currentframe().f_code.co_name}")

        # organization管理者用の権限を登録
        # create a authority for organization admin
        client_clientid = common.get_platform_client_id(organization_id)

        # client取得({organization_id}-workspaces)
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
        org_auth = common_const.ORG_AUTH_AUDIT_LOG
        response = api_keycloak_roles.clients_role_create(organization_id, platform_client_id, org_auth, token)
        if response.status_code not in [200, 201, 409]:    # 409 exists role
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}011"
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

        # client取得({organization_id})
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
        organization_client_id = client_info[0].get("id")

        # organization管理者用のロールを更新
        # update role for organization manager
        org_role = common_const.ORG_ROLE_ORG_MANAGER
        arr_permissions = [common_const.ORG_AUTH_AUDIT_LOG, ]

        client_roles = []
        for permission in arr_permissions:
            # Clientからorganization管理者に付与するロールを取得
            # Get role want to grant to organization manager from client
            response = api_keycloak_roles.clients_role_get(organization_id, platform_client_id, permission, token)
            if response.status_code != 200:
                globals.logger.error(f"response.status_code:{response.status_code}")
                globals.logger.error(f"response.text:{response.text}")
                message_id = f"500-{MSG_FUNCTION_ID}002"
                message = multi_lang.get_text(
                    message_id,
                    "client roleの取得に失敗しました(対象ID:{0} client:{1})",
                    organization_id,
                    organization_client_id
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

            client_roles.append(json.loads(response.text))

        # role付与
        # role grant for client-roles
        response = api_keycloak_roles.clients_role_composites_create(organization_id, organization_client_id, org_role, client_roles, token)
        if response.status_code not in [200, 204]:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}010"
            message = multi_lang.get_text(
                message_id,
                "client roleへのrole設定に失敗しました(対象ID:{0} client:{1})",
                organization_id,
                client_clientid
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        self.ok_count += 1

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Succeed func:{inspect.currentframe().f_code.co_name}")

        return
