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

from contextlib import closing
import inspect
import json

from common_library.common import common, const
from common_library.common import multi_lang
from common_library.common import api_keycloak_tokens, api_keycloak_roles, api_keycloak_users
from common_library.common.db import DBconnector
from common_library.common.libs import queries_resources

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

        with closing(DBconnector().connect_orgdb(organization_id)) as conn:
            with conn.cursor() as cursor:
                try:
                    cursor.execute(queries_resources.SQL_QUERY_COUNT_WORKSPACES)
                    result = cursor.fetchone()
                    count = int(result.get("COUNT"))
                except Exception as e:
                    globals.logger.error(f"exception:{e.args}")
                    message_id = "500-00011"
                    message = multi_lang.get_text(
                        message_id,
                        "ワークスペースの集計に失敗しました(対象ID:{0})",
                        organization_id,
                    )
                    raise common.InternalErrorException(message_id=message_id, message=message)

        return count

    def __get_token(self, organization_private):
        """get a token

        Args:
            organization_id (str): organization id

        Raises:
            common.AuthException: _description_

        Returns:
            str: token
        """

        # サービスアカウントのTOKEN取得
        # Get a service account token
        token_response = api_keycloak_tokens.service_account_get_token(
            organization_private.organization_id, organization_private.internal_api_client_clientid, organization_private.internal_api_client_secret,
        )
        if token_response.status_code != 200:
            raise common.AuthException(
                "client_user_get_token error status:{}, response:{}".format(token_response.status_code, token_response.text)
            )

        token = json.loads(token_response.text)["access_token"]

        return token

    def get_resource_count_users(self, organization_id):
        """ユーザー数の取得 Get roll count

        Args:
            organization_id (str): organization id

        Returns:
            int: ユーザー数 count users
        """

        private = DBconnector().get_organization_private(organization_id)

        # サービスアカウントのTOKEN取得
        # Get a service account token
        token = self.__get_token(private)

        response = api_keycloak_users.user_count_get(
            realm_name=private.organization_id, token=token,
        )
        if response.status_code != 200:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = "500-00012"
            message = multi_lang.get_text(
                message_id,
                "ユーザー数の取得に失敗しました(対象ID:{0})",
                private.organization_id,
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        users_count = json.loads(response.text)

        return users_count

    def get_resource_count_roles(self, organization_id):
        """ロール数の取得 Get roll count

        Args:
            organization_id (str): organization id

        Returns:
            int: ロール数 count roles
        """

        private = DBconnector().get_organization_private(organization_id)

        # サービスアカウントのTOKEN取得
        # Get a service account token
        token = self.__get_token(private)

        # ロール数は、デフォルト全件、件数を絞っても1件目からの場合は、全件となってしまう
        # The number of roles is all by default, even if the number of cases is narrowed down, it will be all from the first case
        response = api_keycloak_roles.clients_roles_get(
            realm_name=private.organization_id, client_id=private.user_token_client_id, token=token, briefRepresentation=False
        )
        if response.status_code != 200:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = "500-00010"
            message = multi_lang.get_text(
                message_id,
                "ロールの取得に失敗しました(対象ID:{0} client:{1})",
                private.organization_id,
                private.user_token_client_clientid
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        roles = json.loads(response.text)

        # globals.logger.debug(f"roles:{roles}")

        workspace_roles = []

        for pf_role in roles:
            # systemで作成したロールは除く
            # Except roles created by system
            if pf_role.get("name")[:1] == "_":
                continue
            # kind "workspace"以外は除く
            # Except for kind "workspace"
            if [const.ROLE_KIND_WORKSPACE] != pf_role.get("attributes", {}).get("kind"):
                continue

            workspace_roles.append(pf_role)

        globals.logger.debug(f"workspace_roles:{workspace_roles}")

        return len(workspace_roles)
