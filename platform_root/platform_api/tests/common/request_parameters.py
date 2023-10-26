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
import datetime
from ulid import ULID
from common_library.common import const, common


def request_headers(user_id=None, organization_role=[], workspace_role=[], language='en'):
    """platform api request header

    Args:
        user_id (str, optional): user_id. Defaults to None.
        organization_role (list, optional): organization_role. Defaults to [].
        workspace_role (list, optional): workspace_role. Defaults to [].
        language (str, optional): language. Defaults to 'en'.

    Returns:
        dict: platform api http headers
    """
    return {
        "User-id": (user_id if user_id is not None else "unittest-user01"),
        "Roles": base64.b64encode("\n".join(workspace_role).encode()).decode(),
        "Org-Roles": base64.b64encode("\n".join(organization_role).encode()).decode(),
        "Language": language
    }


def create_organization(organization_id=None, organization_id_prefix="", organization_name=None):
    """create organization api body parameter

    Args:
        organization_id (_type_, optional): _description_. Defaults to None.
        organization_id_prefix (str, optional): _description_. Defaults to "".
        organization_name (str, optional): _description_. Defaults to None.

    Returns:
        dict: create organization api body parameter json
    """
    ret_organization_id = (
        organization_id if organization_id is not None else (organization_id_prefix + 't' + str(ULID()).lower())[0:const.length_organization_id])

    ret_organization_name = (
        organization_name if organization_name is not None else "unit test organization : create " + common.datetime_to_str(datetime.datetime.now()))

    return {
        "id": ret_organization_id,
        "name": ret_organization_name,
        "organization_managers": [
            {
                "username": "admin",
                "email": "admin@example.com",
                "firstName": "admin",
                "lastName": "admin",
                "credentials": [
                    {
                        "type": "password",
                        "value": "password",
                        "temporary": True
                    }
                ],
                "requiredActions": [
                    "UPDATE_PROFILE"
                ],
                "enabled": True
            }
        ],
        "options": {},
        "optionsIta": {}
    }


def create_workspace(workspace_id, workspace_admin_user_id, workspace_name=None):
    """create workspace api body parameter

    Args:
        workspace_id (str): workspace_id
        workspace_admin_user_id (str): workspace_admin_user_id
        workspace_name (str, optional): workspace_name. Defaults to None.

    Returns:
        dict: create workspace api body parameter json
    """
    return {
        "id": workspace_id,
        "name": (workspace_name if workspace_name is not None else "unit test workspace"),
        "informations": {
            "description": "",
            "environments": [],
            "workspace_administrators": [
                {
                    "id": workspace_admin_user_id
                }
            ]
        }
    }
