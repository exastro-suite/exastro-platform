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


from common_library.common import common
import controllers.users_service_controller as users_service_controller


@common.platform_exception_handler
def user_workspace_list(organization_id, user_id):
    """workspaces list of user posible

    :param organization_id:
    :type organization_id: str
    :param user_id:
    :type user_id: str

    :rtype: WorkspaceList
    """

    # 外部用の呼び出しにリダイレクト
    return users_service_controller.user_workspace_list(organization_id, user_id)
