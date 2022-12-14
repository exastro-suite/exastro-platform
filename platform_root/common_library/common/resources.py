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

from common_library.common import common, const
from common_library.common import multi_lang

import globals


class counter():
    """リソース集計 resource aggregation
    """

    def __init__(self):
        pass

    def __call__(self, organization_id, kind_resource):
        """指定リソースの集計 Aggregation of specified resources

        Args:
            organization_id (str): organization id

        Returns:
            int: リソース数 count resources

        """

        if kind_resource == const.RESOURCE_COUNT_WORKSPACES:
            ret = self.get_resource_count_workspaces(organization_id)
        elif kind_resource == const.RESOURCE_COUNT_USERS:
            ret = self.get_resource_count_users(organization_id)
        elif kind_resource == const.RESOURCE_COUNT_ROLES:
            ret = self.get_resource_count_roles(organization_id)
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

        return 100