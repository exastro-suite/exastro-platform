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

from common_library.common import common, multi_lang, const, validation, bl_common_service


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
