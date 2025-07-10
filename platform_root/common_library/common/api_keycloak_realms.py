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
import inspect
import requests
import re

# User Imports
import globals  # 共通的なglobals Common globals


def realm_create(realm_json, token):
    """realm作成

    Args:
        realm_json (dict): 登録するrealm情報のjson値(json)
                            json value of realm information to be registered
        toekn (str): token

    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """
    globals.logger.info('Create keycloak realms. realm_name={}'.format(realm_json["id"]))

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    globals.logger.debug("realms post send")
    # 呼び出し先設定
    # Call destination setting
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])
    request_response = requests.post(f"{api_url}/auth/admin/realms", headers=header_para, json=realm_json)

    globals.logger.debug(request_response.text)

    # 応答をそのまま返却
    # return response as is
    return request_response


def realm_update(realm_id, realm_json, token):
    """realm更新

    Args:
        realm_id (str): realm id
        realm_json (dict): 更新対象の項目json値(json)
                            Item json value to be updated (json)
        toekn (str): token

    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """
    globals.logger.info(f'Put keycloak realms. realm_name={realm_id}')

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    globals.logger.debug("realms put send")
    # 呼び出し先設定
    # Call destination setting
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])
    request_response = requests.put(f"{api_url}/auth/admin/realms/{realm_id}", headers=header_para, json=realm_json)

    globals.logger.debug(request_response.text)

    # 応答をそのまま返却
    # return response as is
    return request_response


def realm_delete(realm_id, token):
    """realm更新

    Args:
        realm_id (str): realm id
        realm_json (dict): 更新対象の項目json値(json)
                            Item json value to be updated (json)
        toekn (str): token

    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """
    globals.logger.info(f'Delete keycloak realms. realm_name={realm_id}')

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    # 呼び出し先設定
    # Call destination setting
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])
    request_response = requests.delete(f"{api_url}/auth/admin/realms/{realm_id}", headers=header_para)

    globals.logger.debug(request_response.text)

    # 応答をそのまま返却
    # return response as is
    return request_response


def __get_keycloak_api_url():
    return "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])


def realms_get(token):
    """realm取得

    Args:
        toekn (str): token

    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """
    globals.logger.debug('Get keycloak realms.')

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    globals.logger.debug("realms get send")
    # 呼び出し先設定
    # Call destination setting
    api_url = __get_keycloak_api_url()
    request_response = requests.get(f"{api_url}/auth/admin/realms", headers=header_para)

    globals.logger.debug(request_response.text)

    # 応答をそのまま返却
    # return response as is
    return request_response


def realm_get(realm_name, token):
    """realm取得

    Args:
        realm_name (str): realm name
        toekn (str): token

    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """
    globals.logger.debug(f"# func:{inspect.currentframe().f_code.co_name}")

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    api_url = __get_keycloak_api_url()

    # 呼び出し先設定
    # Call destination setting
    request_response = requests.get(f"{api_url}/auth/admin/realms/{realm_name}", headers=header_para)

    globals.logger.debug(f"# Succeed func:{inspect.currentframe().f_code.co_name}")

    # 応答をそのまま返却
    # return response as is
    return request_response


def pickup_password_policy(realm_response_json: dict) -> dict:
    """realm情報からpassword policyの設定情報を返します
        Returns password policy setting information from realm information

    Args:
        realm_response_json (dict): get realm response json

    Returns:
        dict[str,str]: password policy設定情報 / password policy configuration information
    """
    if realm_response_json.get("passwordPolicy", None) is None:
        return {}

    if realm_response_json.get("passwordPolicy", None).rstrip() == "":
        return {}

    return_value = {}

    # passwordPolicyの項目は "length(8) and upperCase(1) ..."のように入っているので" and "で分割して処理する
    # The passwordPolicy items are included as "length(8) and upperCase(1) ...", so they are processed by dividing them with " and ".
    for policy_item in realm_response_json.get("passwordPolicy", None).split(" and "):

        policy_item_split = re.match(r'^(.+)\((.*)\)$', policy_item)
        if policy_item_split is None:
            continue

        return_value[policy_item_split.group(1)] = policy_item_split.group(2)

    return return_value
