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
import base64
import json

from common_library.common import common, const
from common_library.common import api_keycloak_tokens, api_keycloak_roles
from common_library.common import multi_lang
from common_library.common.db import DBconnector

import globals

MSG_FUNCTION_ID = 00


class CheckAuthority():

    def __init__(self, organization_id, headers):
        self._organization_id = organization_id

        o, w = self.__get_user_authority(headers)
        self._org_auths = o
        self._ws_auths = w

    @property
    def organization_id(self) -> str:
        return self._organization_id

    @organization_id.setter
    def organization_id(self, organization_id: str):
        self._organization_id = organization_id

    @property
    def org_auths(self) -> list:
        return self._org_auths

    @org_auths.setter
    def org_auths(self, org_auths: list):
        self._org_auths = org_auths

    @property
    def ws_auths(self) -> list:
        return self._ws_auths

    @ws_auths.setter
    def ws_auths(self, ws_auths: list):
        self._ws_auths = ws_auths

    def __get_user_authority(self, headers):
        """get user authority

        Args:
            headers (EnvironHeaders): request headers

        Returns:
            list, list: org_auths, ws_auths
        """
        client_id = common.get_platform_client_id(self._organization_id)

        user_id = headers.get("User-Id")

        # ヘッダのRole, Org-Roleの情報をもとに該当のworkspaceが利用可能かチェックする
        # Check if the corresponding workspace is available based on the Role and Org-Role information in the header
        roles_enc = headers.get("Roles")
        org_roles_enc = headers.get("Org-Roles")

        if org_roles_enc:
            org_roles = base64.b64decode(org_roles_enc.encode()).decode("utf-8")
            org_roles = org_roles.split("\n")
        else:
            org_roles = []

        if roles_enc:
            roles = base64.b64decode(roles_enc.encode()).decode("utf-8")
            roles = roles.split("\n")
        else:
            roles = []

        # サービスアカウントを使うためにClientのSercretを取得
        # Get Client Sercret to use service account
        db = DBconnector()
        private = db.get_organization_private(self._organization_id)

        # サービスアカウントのTOKEN取得
        # Get a service account token
        response = api_keycloak_tokens.service_account_get_token(
            self._organization_id, client_id, private.internal_api_client_secret)

        if response.status_code != 200:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}007"
            message = multi_lang.get_text(
                message_id,
                "token 取得失敗しました"
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        token = json.loads(response.text)["access_token"]

        globals.logger.debug(f"org_roles:{org_roles}")
        globals.logger.debug(f"roles:{roles}")

        org_auths = []
        ws_auths = []
        # オーガナイゼーションロールが存在する場合は、composites情報を取得する
        # Get composites information if the organization role exists
        for org_role in org_roles:
            response = api_keycloak_roles.clients_role_composites_get(self._organization_id, private.user_token_client_id, org_role, token)

            if response.status_code == 404:
                continue
            elif response.status_code != 200:
                globals.logger.error(f"response.status_code:{response.status_code}")
                globals.logger.error(f"response.text:{response.text}")
                message_id = f"500-{MSG_FUNCTION_ID}008"
                message = multi_lang.get_text(
                    message_id,
                    "organization role composite 取得失敗しました(対象ID:{0} client:{1})",
                    self._organization_id,
                    private.user_token_client_clientid,
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

            composite_roles = json.loads(response.text)
            for composite_role in composite_roles:
                if composite_role["name"] not in org_auths:
                    org_auths.append(composite_role["name"])

        # ワークスペースロールが存在する場合は、composites情報を取得する
        # Get composites information if the workspace role exists
        for role in roles:
            response = api_keycloak_roles.clients_role_composites_get(self._organization_id, private.user_token_client_id, role, token)

            if response.status_code == 404:
                continue
            elif response.status_code != 200:
                globals.logger.error(f"response.status_code:{response.status_code}")
                globals.logger.error(f"response.text:{response.text}")
                message_id = f"500-{MSG_FUNCTION_ID}009"
                message = multi_lang.get_text(
                    message_id,
                    "workspace role composite 取得失敗しました(対象ID:{0} client:{1})",
                    self._organization_id,
                    private.user_token_client_clientid
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

            composite_roles = json.loads(response.text)
            for composite_role in composite_roles:
                if composite_role["name"] not in ws_auths:
                    ws_auths.append(composite_role["name"])

        globals.logger.debug(f"org_auths:{org_auths}")
        globals.logger.debug(f"ws_auths:{ws_auths}")

        return org_auths, ws_auths

    def __check_org_auths(self):
        """workspace authority check

        Returns:
            boolean: true:ok false:ng
        """

        is_auth = False

        # オーガナイゼーションロールで、wsに関連するロールがあれば優先的にOKとする
        # In the organization role, if there is a role related to ws, it is given priority as OK
        if const.ORG_AUTH_WS_ROLE_MAINTE in self._org_auths or \
           const.ORG_AUTH_WS_ROLE_USER in self._org_auths or \
           const.ORG_AUTH_WS_MAINTE in self._org_auths:
            # オーガナイゼーションロールに該当あり
            # Applicable to organization role
            is_auth = True

        globals.logger.debug(f"check org auth: {is_auth}")

        return is_auth

    def __check_ws_auths(self, workspace_id, is_maintenance):
        """workspace authority check

        Args:
            workspace_id (_type_): workspace id
            is_maintenance (bool): check maintenance is allowed

        Returns:
            boolean: true:ok false:ng
        """

        is_auth = False

        if common.get_ws_admin_authname(workspace_id) in self._ws_auths:
            # workspace role is a oK (ws admin role)
            is_auth = True
        elif workspace_id in self._ws_auths:
            # workspace role is a oK
            if not is_maintenance:
                is_auth = True
            else:
                is_auth = False

        globals.logger.debug(f"check ws auth:{workspace_id} = {is_auth}")

        return is_auth

    def is_workspace_authority(self, workspace_id, is_maintenance=False):
        """workspace authority check

        Args:
            workspace_id (str): workspace id
            is_maintenance (bool): check maintenance is allowed

        Returns:
            boolean: true:ok false:ng
        """
        is_auth = False

        is_auth = self.is_workspaces_authority([workspace_id, ], is_maintenance)

        return is_auth

    def is_workspaces_authority(self, workspace_ids: list, is_maintenance=False):
        """workspace authority check

        Args:
            workspace_ids (list): workspace ids
            is_maintenance (bool): check maintenance is allowed

        Returns:
            boolean: true:ok false:ng
        """

        globals.logger.debug("Start is_workspaces_authority:{0}".format(",".join(workspace_ids)))

        is_org_auth = self.__check_org_auths()
        if is_org_auth:
            return True

        if len(workspace_ids) < 1:
            # オーガナイゼーションロールを持っていない場合、ワークスペースの未指定はNGとする。
            # If don't have organization role, It is NG if there is no workspace specified.
            globals.logger.warn("No workspace specified.")
            return False

        is_auths = []
        for workspace_id in workspace_ids:
            is_wa = self.__check_ws_auths(workspace_id, is_maintenance)
            is_auths.append(is_wa)

        is_auth = False
        if is_maintenance:
            is_auth = all(is_auths)
        else:
            is_auth = any(is_auths)

        if not is_auth:
            globals.logger.debug("Not authorized to access the workspaces:{0}".format(",".join(workspace_ids)))

        return is_auth

    class Role():
        def __init__(self, role):
            self._name = role.get("name")
            self._description = role.get("description")
            self._kind = role.get("kind")
            self._workspaces = role.get("workspaces")
            self._authorities = role.get("authorities")

    def is_role_authority(self, role):
        """role authority check

        Args:
            role (dict): _description_

        Returns:
            boolean: true:ok false:ng
        """

        if not any(role):
            globals.logger.warn("No role specified.")
            return False

        class_role = self.Role(role)

        globals.logger.debug(f"Start is_role_authority:{class_role._name}")

        is_auth = False
        if class_role._kind == const.ROLE_KIND_ORGANIZATION:
            if class_role._name == const.ORG_ROLE_ORG_MANAGER:
                if const.ORG_AUTH_OWNER_MAINTE in self._org_auths:
                    is_auth = True
            else:
                if const.ORG_AUTH_ROLE_USER in self._org_auths:
                    is_auth = True

        elif class_role._kind == const.ROLE_KIND_WORKSPACE:
            workspace_ids = [w.get("id") for w in class_role._workspaces]
            is_auth = self.is_workspaces_authority(workspace_ids, is_maintenance=True)

        if not is_auth:
            globals.logger.warn(f"Not authorized to access the role :{class_role._name}")

        return is_auth
