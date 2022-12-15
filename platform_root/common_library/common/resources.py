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

import inspect
import json

from common_library.common import common, const
from common_library.common import multi_lang
from common_library.common import api_keycloak_tokens, api_keycloak_roles
from common_library.common.db import DBconnector

import globals


class counter():
    """リソース集計 resource aggregation
    """

    def __init__(self, organization_id):

        self.organization_id = organization_id

    def __call__(self, kind_resource):
        """指定リソースの集計 Aggregation of specified resources

        Args:
            kind_resource (str): kind resource

        Returns:
            int: リソース数 count resources

        """
        globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

        if kind_resource == const.RESOURCE_COUNT_WORKSPACES:
            ret = self.get_resource_count_workspaces(self.organization_id)
        elif kind_resource == const.RESOURCE_COUNT_USERS:
            ret = self.get_resource_count_users(self.organization_id)
        elif kind_resource == const.RESOURCE_COUNT_ROLES:
            ret = self.get_resource_count_roles(self.organization_id)
        else:
            globals.logger.error(f"not support count resource:{kind_resource}")
            message_id = "400-00021"
            message = multi_lang.get_text(
                message_id,
                "集計できるリソースではありません。({0})",
                kind_resource
            )
            raise common.BadRequestException(message_id=message_id, message=message)

        return ret

    def get_resource_count_workspaces(self, organization_id):
        """ワークスペース数の取得 Get roll count

        Args:
            organization_id (str): organization id

        Returns:
            int: ワークスペース数 count workspaces
        """

        return 0

    def get_resource_count_users(self, organization_id):
        """ユーザー数の取得 Get roll count

        Args:
            organization_id (str): organization id

        Returns:
            int: ユーザー数 count users
        """

        return 0

    def get_resource_count_roles(self, organization_id):
        """ロール数の取得 Get roll count

        Args:
            organization_id (str): organization id

        Returns:
            int: ロール数 count roles
        """

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

        # ロール数は、デフォルト全件、件数を絞っても1件目からの場合は、全件となってしまう
        # The number of roles is all by default, even if the number of cases is narrowed down, it will be all from the first case
        response = api_keycloak_roles.clients_roles_get(
            realm_name=organization_id, client_id=private.user_token_client_id, token=token, briefRepresentation=True
        )
        if response.status_code != 200:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = "500-00010"
            message = multi_lang.get_text(
                message_id,
                "ロールの取得に失敗しました(対象ID:{0} client:{1})",
                organization_id,
                private.user_token_client_clientid
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        roles = json.loads(response.text)

        # globals.logger.debug(f"roles:{roles}")

        return len(roles)