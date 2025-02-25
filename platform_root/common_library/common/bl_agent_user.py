#   Copyright 2025 NEC Corporation
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
import json

from common_library.common import const
from common_library.common import api_keycloak_roles, api_keycloak_users
from common_library.common import common, multi_lang

import globals


def agent_user_roles(workspace_id):
    """agent user roles

    Args:
        workspace_id (str): workspace id

    Returns:
        list: _description_
    """
    return [i['role'] for i in agent_user_type_info(workspace_id)]


def agent_user_types():
    """agent user types

    Returns:
        list: agent user types
    """
    return [i['type'] for i in agent_user_type_info('_dummy_')]


def agent_user_type_info(workspace_id):
    """agent user type information

    Args:
        workspace_id (str): workspace id

    Returns:
        list: agent user type information
    """
    return [
        {"type": const.AGENT_USER_TYPE_ANSIBLE, "role": f"_{workspace_id}-agent-ansible"},
        {"type": const.AGENT_USER_TYPE_OASE, "role": f"_{workspace_id}-agent-oase"},
    ]


def agent_user_role_name(workspace_id, agent_user_type):
    """user agent role name

    Args:
        workspace_id (str): workspace id
        agent_user_type (str): agent user type

    Returns:
        str: role name
    """
    return f"_{workspace_id}-agent-{agent_user_type}"


def agent_user_create_parameter(username, agent_user_type, description):
    """agent user create keycloak parameter

    Args:
        username (str): username
        agent_user_type (str): user agent type
        description (str): description

    Returns:
        dict: user_
    """
    return {
        "username": username,
        "email": agent_user_email(username),
        "firstName": const.AGENT_USER_DUMMY_FIRSTNAME,
        "lastName": const.AGENT_USER_DUMMY_LASTNAME,
        # "credentials": [
        #     {
        #         "type": "password",
        #         "value": "",
        #         "temporary": False
        #     }
        # ],
        "attributes":
        {
            "affiliation": [""],
            "description": [description],
            const.AGENT_USER_TYPE_ATTRIBUTE_NAME: agent_user_type
        },
        "enabled": True
    }


def agent_user_email(username):
    """agent user email (dummy)

    Args:
        username (str): agent user dummy email

    Returns:
        str: dummy email address
    """
    return username + const.AGENT_USER_EMAIL_DUMMY_DOMAIN


def delete_workspace_agent_users(organization_id, workspace_id, private, token):
    """delete all agent users in workspace

    Args:
        organization_id (_type_): _description_
        workspace_id (_type_): _description_
        private (_type_): _description_
        token (_type_): _description_

    Raises:
        common.InternalErrorException: _description_
    """

    for role in agent_user_roles(workspace_id):
        get_first = 0
        get_max = 100

        while True:
            users_response = api_keycloak_roles.role_uesrs_get(
                realm_name=organization_id,
                client_id=private.user_token_client_id,
                role_name=role,
                token=token,
                first=get_first,
                max=get_max
            )

            if users_response.status_code != 200:
                # userの取得失敗時も処理を継続する
                break

            users = json.loads(users_response.text)

            for user in users:
                api_keycloak_users.user_delete(
                    realm_name=organization_id,
                    user_id=user["id"],
                    token=token
                )
                # 削除の失敗は無視する

            if len(users) < get_max:
                break

            get_first = get_first + get_max
