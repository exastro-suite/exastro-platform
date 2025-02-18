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

from common_library.common import const


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
