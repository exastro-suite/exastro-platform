#   Copyright 2024 NEC Corporation
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
import common_library.common.const as common_const


def __get_keycloak_api_url():
    """keycloak base url

    Returns:
        str: keycloak base url
    """
    return "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])


def get_users_profiles(realm_name, token):
    """get users profiles

    Args:
        realm_name (str): realm name
        token (str): keycloak access token

    Returns:
        Response: keycloak get users profiles response
    """
    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    globals.logger.debug(f"users profiles get : {realm_name=}")
    request_response = requests.get(f"{__get_keycloak_api_url()}/auth/admin/realms/{realm_name}/users/profile", headers=header_para)
    globals.logger.debug(f"users profiles get : {request_response.status_code=}")

    return request_response


def put_users_profiles(realm_name, users_profiles, token):
    """put users profiles

    Args:
        realm_name (str): realm name
        users_profiles (dict): users_profiles
        token (str): keycloak access token

    Returns:
        Response: keycloak put users profiles response
    """
    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }
    globals.logger.debug(f"users profiles put : {realm_name=}")
    request_response = requests.put(f"{__get_keycloak_api_url()}/auth/admin/realms/{realm_name}/users/profile", headers=header_para, json=users_profiles)
    globals.logger.debug(f"users profiles put : {request_response.status_code=}")

    return request_response


def configure_realm_users_profiles(users_profiles):
    """users profiles に 項目の設定を行います / Configure items in users profiles

    Args:
        users_profiles (dict): users profiles (get_users_profiles value)
    """
    if len([item for item in users_profiles["attributes"] if item["name"] == "affiliation"]) == 0:
        users_profiles["attributes"].append(__users_profiles_item("affiliation", "所属 / Affiliation", common_const.length_user_affiliation))

    if len([item for item in users_profiles["attributes"] if item["name"] == "description"]) == 0:
        users_profiles["attributes"].append(__users_profiles_item("description", "説明 / Description", common_const.length_user_description))

    if len([item for item in users_profiles["attributes"] if item["name"] == common_const.SERVICE_ACCOUNT_USER_TYPE_ATTRIBUTE_NAME]) == 0:
        users_profiles["attributes"].append(__hidden_users_profiles(common_const.SERVICE_ACCOUNT_USER_TYPE_ATTRIBUTE_NAME))


def __users_profiles_item(name, display_name, max_length):
    """users profilesに追加するitemを返します / Returns the item to add to users profiles

    Args:
        name (str): attribute name
        display_name (str): attribute display name
        max_length (int): attribute max length

    Returns:
        dict: users profiles attribute item
    """
    return {
        "name": name,
        "displayName": display_name,
        "validations": {
            "length": {
                "max": max_length
            },
        },
        "permissions": {
            "view": [
                "admin",
                "user"
            ],
            "edit": [
                "admin",
                "user"
            ]
        },
        "multivalued": False
    }


def __hidden_users_profiles(name):
    """users profilesに追加する隠しitemを返します / Returns the hidden item to add to users profiles

    Args:
        name (str): attribute name

    Returns:
        dict: users profiles attribute item
    """
    return {
        "name": name,
        "permissions": {
            "view": [
                "admin"
            ],
            "edit": [
                "admin"
            ]
        },
        "multivalued": False
    }
