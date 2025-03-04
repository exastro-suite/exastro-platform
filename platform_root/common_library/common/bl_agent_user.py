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
import random
import string

from common_library.common import const
from common_library.common import api_keycloak_roles, api_keycloak_users


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


def temporary_password(password_policy: dict) -> str:
    default_length = 30  # デフォルトのパスワード長(policyによって返されるパスワード長は変わります)
    temporary_password = ""

    if "upperCase" in password_policy:
        # 英大文字の最低文字数を満たすように英大文字を追加
        # Add uppercase letters to meet the minimum number of uppercase letters
        try:
            temporary_password = temporary_password + ''.join(random.choices(string.ascii_uppercase, k=int(password_policy["upperCase"])))
        except Exception:
            pass

    if "lowerCase" in password_policy:
        # 英小文字の最低文字数を満たすように英小文字を追加
        # Add lowercase letters to meet the minimum number of lowercase letters
        try:
            temporary_password = temporary_password + ''.join(random.choices(string.ascii_lowercase, k=int(password_policy["lowerCase"])))
        except Exception:
            pass

    if "digits" in password_policy:
        # 数字の最低文字数を満たすように数字を追加
        # Add numbers to meet the minimum number of characters
        try:
            temporary_password = temporary_password + ''.join(random.choices(string.digits, k=int(password_policy["digits"])))
        except Exception:
            pass

    if "specialChars" in password_policy:
        # 記号の最低文字数を満たすように記号を追加
        # Add symbols to meet the minimum number of characters for a symbol
        try:
            temporary_password = temporary_password + ''.join(random.choices(string.punctuation, k=int(password_policy["specialChars"])))
        except Exception:
            pass

    # パスワードが脆弱にならないように追加でランダム文字列を追加する
    # Add additional random characters to prevent passwords from becoming weak
    try:
        if "maxLength" in password_policy:
            # max lengthがある場合はmax lengthになる桁数
            # If there is a max length, the number of characters that will result in that length
            addtional_length = int(password_policy["maxLength"]) - len(temporary_password)

        elif "length" in password_policy:
            # 最小文字数がある場合は、デフォルトの桁数未満の時はデフォルトの桁数、デフォルトの桁数以上の場合は指定した最小文字数
            # If there is a minimum number of characters, use the default number of digits if it is less than the default number of digits,
            # or the specified minimum number of characters if it is greater than or equal to the default number of digits.
            if int(password_policy["length"]) < default_length:
                addtional_length = default_length - len(temporary_password)
            else:
                addtional_length = int(password_policy["length"]) - len(temporary_password)
        else:
            # 最大・最小文字数の指定が無い場合はデフォルトの桁数
            # Default number of digits if maximum/minimum number of characters is not specified
            addtional_length = default_length - len(temporary_password)

        if addtional_length > 0:
            temporary_password = temporary_password + ''.join(random.choices(string.ascii_letters + string.digits, k=addtional_length))
    except Exception:
        pass

    #
    # 各文字の位置が偏らないように、文字の並びもランダムにシャッフルする
    #
    temporary_password = ''.join(random.sample(temporary_password, len(temporary_password)))

    return temporary_password
