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

# import inspect
import os
import json
import requests

# User Imports
import globals  # 共通的なglobals Common globals


def __get_api_url_ita_admin():
    api_url = "{}://{}:{}".format(os.environ['ITA_API_ADMIN_PROTOCOL'], os.environ['ITA_API_ADMIN_HOST'], os.environ['ITA_API_ADMIN_PORT'])
    return api_url


def ita_organization_create(organization_id, user_id, encode_roles, language):
    """IT Automation Organization作成 Create IT Automation Organization
    Args:
        organization_id (str): organization id
        user_id (str): user id
        encode_roles (str): decode roles
        language (str): language
    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """

    globals.logger.info('Create ITA Organization. organization_id={}, user_id={}'.format(organization_id, user_id))

    header_para = {
        "Content-Type": "application/json",
        "organization_id": organization_id,
        "User-Id": user_id,
        "Roles": encode_roles,
        "Language": language,
    }

    globals.logger.debug("Create IT Automation Organization post送信")
    # 呼び出し先設定 call destination setting
    api_url = __get_api_url_ita_admin()
    request_response = requests.post(
        "{}/api/organizations/{}/ita/".format(api_url, organization_id),
        headers=header_para
    )
    globals.logger.debug(request_response.text)

    return request_response


def ita_organization_delete(organization_id, user_id, encode_roles, language):
    """IT Automation Organization削除 Delete IT Automation Organization
    Args:
        organization_id (str): organization id
        user_id (str): user id
        encode_roles (str): decode roles
        language (str): language
    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """

    globals.logger.info('Delete ITA Organization. organization_id={}, user_id={}'.format(organization_id, user_id))

    header_para = {
        "Content-Type": "application/json",
        "organization_id": organization_id,
        "User-Id": user_id,
        "Roles": encode_roles,
        "Language": language,
    }

    globals.logger.debug("Delete IT Automation Organization delete送信")
    # 呼び出し先設定 call destination setting
    api_url = __get_api_url_ita_admin()
    request_response = requests.delete(
        "{}/api/organizations/{}/ita/".format(api_url, organization_id),
        headers=header_para
    )
    globals.logger.debug(request_response.text)

    return request_response


def ita_workspace_create(organization_id, workspace_id, wsadmin_role_name, user_id, encode_roles, language):
    """IT Automation Workspace作成 Create IT Automation Workspace
    Args:
        organization_id (str): organization id
        workspace_id (str): workspace id
        wsadmin_role_name (str): wsadmin role name
        user_id (str): user id
        encode_roles (str): encode roles
        language (str): language
    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """

    globals.logger.info(
        'Create ITA Workspace. organization_id={}, workspace_id={}, wsadmin_role_name={}, user_id={}'.format(
            organization_id, workspace_id, wsadmin_role_name, user_id)
    )

    header_para = {
        "Content-Type": "application/json",
        "organization_id": organization_id,
        "User-Id": user_id,
        "Roles": encode_roles,
        "Language": language,
    }
    data_para = {
        "role_id": wsadmin_role_name,
    }

    globals.logger.debug("Create IT Automation Workspace post送信")
    # 呼び出し先設定 call destination setting
    api_url = __get_api_url_ita_admin()
    request_response = requests.post(
        "{}/api/{}/workspaces/{}/ita/".format(api_url, organization_id, workspace_id),
        headers=header_para,
        data=json.dumps(data_para),
    )
    globals.logger.debug(request_response.text)

    return request_response


def ita_workspace_delete(organization_id, workspace_id, user_id, encode_roles, language):
    """IT Automation Workspace削除 Delete IT Automation Workspace
    Args:
        organization_id (str): organization id
        workspace_id (str): workspace id
        user_id (str): user id
        encode_roles (str): decode roles
        language (str): language
    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """

    globals.logger.info(
        'Delete ITA Workspace. organization_id={}, workspace_id={}, user_id={}'.format(organization_id, workspace_id, user_id)
    )

    header_para = {
        "organization_id": organization_id,
        "User-Id": user_id,
        "Roles": encode_roles,
        "Language": language,
    }

    globals.logger.debug("Delete IT Automation Workspace delete送信")
    # 呼び出し先設定 call destination setting
    api_url = __get_api_url_ita_admin()
    request_response = requests.delete(
        "{}/api/{}/workspaces/{}/ita/".format(api_url, organization_id, workspace_id),
        headers=header_para
    )
    globals.logger.debug(request_response.text)

    return request_response
