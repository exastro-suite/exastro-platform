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
from flask import request
import base64
import json

from common_library.common import common, const
from common_library.common import api_keycloak_tokens, api_keycloak_clients
from common_library.common import multi_lang
from common_library.common.db import DBconnector

import globals

MSG_FUNCTION_ID = 00


def is_workspace_authority(organization_id, workspace_id):
    """workspace authority check

    Args:
        organization_id (str): organization id
        workspace_id (str): workspace id

    Returns:
        boolean: true:ok false:ng
    """

    is_auth = False

    client_id = common.get_platform_client_id(organization_id)

    user_id = request.headers.get("User-Id")

    # ヘッダのRole, Org-Roleの情報をもとに該当のworkspaceが利用可能かチェックする
    # Check if the corresponding workspace is available based on the Role and Org-Role information in the header
    roles_enc = request.headers.get("Roles")
    org_roles_enc = request.headers.get("Org-Roles")

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
    private = db.get_organization_private(organization_id)

    # サービスアカウントのTOKEN取得
    # Get a service account token
    response = api_keycloak_tokens.client_user_get_token(
        organization_id, client_id, private.internal_api_client_secret, user_id, "", grant_type="client_credentials")

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
        response = api_keycloak_clients.client_role_composites_get(organization_id, private.user_token_client_id, org_role, token)

        if response.status_code == 404:
            continue
        elif response.status_code != 200:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}008"
            message = multi_lang.get_text(
                message_id,
                "organization role composite 取得失敗しました(対象ID:{0} client:{1})",
                organization_id,
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
        response = api_keycloak_clients.client_role_composites_get(organization_id, private.user_token_client_id, role, token)

        if response.status_code == 404:
            continue
        elif response.status_code != 200:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}009"
            message = multi_lang.get_text(
                message_id,
                "workspace role composite 取得失敗しました(対象ID:{0} client:{1})",
                organization_id,
                private.user_token_client_clientid
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        composite_roles = json.loads(response.text)
        for composite_role in composite_roles:
            if composite_role["name"] not in ws_auths:
                ws_auths.append(composite_role["name"])

    globals.logger.debug(f"org_auths:{org_auths}")
    globals.logger.debug(f"ws_auths:{ws_auths}")

    # オーガナイゼーションロールで、wsに関連するロールがあれば優先的にOKとする
    # In the organization role, if there is a role related to ws, it is given priority as OK
    if const.ORG_AUTH_WS_ROLE_MAINTE in org_auths or \
       const.ORG_AUTH_WS_MAINTE in org_auths:
        # オーガナイゼーションロールに該当あり
        # Applicable to organization role
        is_auth = True
    elif common.get_ws_admin_authname(workspace_id) in ws_auths:
        # workspace role is a oK (ws admin role)
        is_auth = True
    elif workspace_id in ws_auths:
        # workspace role is a oK
        is_auth = True

    globals.logger.debug(f"check auth:{is_auth}")

    return is_auth
