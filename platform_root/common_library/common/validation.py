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

import re
from common_library.common import multi_lang
import common_library.common.const as const


MSG_FUNCTION_ID = "00"

RE_ID_USABLE_CHARACTERS = r'[a-zA-Z0-9_-]'
RE_ID_USABLE_FIRST_CHARACTER = r'[a-zA-Z]'

ORG_RESERVED_WORDS = [
    {"text": "master", "re": r"^master$"},
    {"text": "platform", "re": r"^platform$"},
    {"text": "account", "re": r"^account$"},
    {"text": "account-console", "re": r"^account-console$"},
    {"text": "admin-cli", "re": r"^admin-cli$"},
    {"text": "broker", "re": r"^broker$"},
    {"text": "realm-management", "re": r"^realm-management$"},
    {"text": "security-admin-console", "re": r"^security-admin-console$"},
    {"text": "*-workspaces", "re": r".*-workspaces$"},
    {"text": "system-*-auth", "re": r"^system-.*-auth$"}
]


class result():
    """Validation result class
    """
    def __init__(self, ok, status_code=None, message_id=None, base_message=None, *args):
        """Validation result constructor

        Args:
            ok (boolean): Validation result
            status_code (int, optional): response status_code. Defaults to None.
            message_id (str, optional): response message_id. Defaults to None.
            base_message (str, optional): response base_message. Defaults to None.
        """
        self.ok = ok
        self.status_code = status_code
        self.message_id = message_id
        self.base_message = base_message
        self.args = args


def validate_organization_id(organization_id):
    """Validate organization id

    Args:
        organization_id (str): organization id

    Returns:
        result: Validation result
    """
    if organization_id is None or organization_id == "":
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。',
            multi_lang.get_text('000-00103', "オーガナイゼーションID")
        )

    if len(organization_id) > const.length_organization_id:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。',
            multi_lang.get_text('000-00103', "オーガナイゼーションID"),
            str(const.length_organization_id)
        )

    rlt, chr = validate_id_characters(organization_id)
    if not rlt:
        return result(
            False, 400, '400-{}013'.format(MSG_FUNCTION_ID), '指定できない文字が含まれています。',
            multi_lang.get_text('000-00103', "オーガナイゼーションID"),
            chr
        )

    if organization_id != organization_id.lower():
        return result(
            False, 400, '400-{}015'.format(MSG_FUNCTION_ID), 'アルファベットは小文字のみ指定可能です。',
            multi_lang.get_text('000-00103', "オーガナイゼーションID")
        )

    if not re.match(RE_ID_USABLE_FIRST_CHARACTER, organization_id):
        return result(
            False, 400, '400-{}014'.format(MSG_FUNCTION_ID), '先頭の文字にアルファベット以外が指定されています。',
            multi_lang.get_text('000-00103', "オーガナイゼーションID")
        )

    for rsv_word in ORG_RESERVED_WORDS:
        if re.match(rsv_word["re"], organization_id):
            return result(
                False, 400, '400-{}016'.format(MSG_FUNCTION_ID), '予約語のため指定できません。',
                multi_lang.get_text('000-00103', "オーガナイゼーションID"),
                rsv_word["text"]
            )

    return result(True)


def validate_organization_name(organization_name):
    """Validate organization name

    Args:
        organization_name (str): organization name

    Returns:
        result: Validation result
    """
    if organization_name is None or organization_name == "":
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。',
            multi_lang.get_text('000-00104', "オーガナイゼーション名")
        )

    if len(organization_name) > const.length_organization_name:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。',
            multi_lang.get_text('000-00104', "オーガナイゼーション名"),
            str(const.length_organization_name)
        )

    return result(True)


def validate_workspace_id(workspace_id):
    """Validate workspace id

    Args:
        workspace_id (str): workspace id

    Returns:
        result: Validation result
    """
    if workspace_id is None or workspace_id == "":
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。',
            multi_lang.get_text('000-00101', "ワークスペースID")
        )

    if len(workspace_id) > const.length_workspace_id:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。',
            multi_lang.get_text('000-00101', "ワークスペースID"),
            str(const.length_workspace_id)
        )

    rlt, chr = validate_id_characters(workspace_id)
    if not rlt:
        return result(
            False, 400, '400-{}013'.format(MSG_FUNCTION_ID), '指定できない文字が含まれています。',
            multi_lang.get_text('000-00101', "ワークスペースID"),
            chr
        )

    if not re.match(RE_ID_USABLE_FIRST_CHARACTER, workspace_id):
        return result(
            False, 400, '400-{}014'.format(MSG_FUNCTION_ID), '先頭の文字にアルファベット以外が指定されています。',
            multi_lang.get_text('000-00101', "ワークスペースID")
        )

    return result(True)


def validate_workspace_name(workspace_name):
    """Validate workspace name

    Args:
        workspace_name (str): workspace name

    Returns:
        result: Validation result
    """
    if workspace_name is None or workspace_name == "":
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。',
            multi_lang.get_text('000-00102', "ワークスペース名")
        )

    if len(workspace_name) > const.length_workspace_name:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。',
            multi_lang.get_text('000-00102', "ワークスペース名"),
            str(const.length_workspace_name)
        )

    return result(True)


def validate_workspace_informations(workspace_informations):
    """Validate workspace informations

    Args:
        workspace_informations (dict): informations

    Returns:
        result: Validation result
    """
    if not isinstance(workspace_informations.get('environments', []), list):
        return result(
            False, 400, '400-000002', 'リクエストボディのパラメータ({})が不正です。'.format('informations.environments'),
            'informations.environments'
        )

    if len(workspace_informations.get('environments', [])) > const.max_workspace_environments:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な最大数を超えています。',
            multi_lang.get_text('000-00105', "環境名"),
            str(const.max_workspace_environments)
        )

    if len([t for t in workspace_informations.get('environments', []) if not isinstance(t.get('name', None), str)]) > 0:
        return result(
            False, 400, '400-000002', 'リクエストボディのパラメータ({})が不正です。'.format('informations.environments'),
            'informations.environments'
        )

    if len([t for t in workspace_informations.get('environments', []) if len(t.get('name', '')) == 0]) > 0:
        return result(
            False, 400, '400-000002', 'リクエストボディのパラメータ({})が不正です。'.format('informations.environments'),
            'informations.environments'
        )

    if len([t for t in workspace_informations.get('environments', []) if len(t.get('name', '')) > const.length_workspace_environment_name]) > 0:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。',
            multi_lang.get_text('000-00105', "環境名"),
            str(const.length_workspace_description)
        )

    environment_names = ([x.get('name', '') for x in workspace_informations.get('environments', [])])
    if len(list(set(environment_names))) != len(environment_names):
        return result(
            False, 400, '400-{}019'.format(MSG_FUNCTION_ID), '指定された値が重複しています。',
            multi_lang.get_text('000-00105', "環境名"),
            str(const.length_workspace_description)
        )

    if not isinstance(workspace_informations.get('description', ''), str):
        return result(
            False, 400, '400-000002', 'リクエストボディのパラメータ({})が不正です。'.format('informations.description'),
            'informations.description'
        )

    if len(workspace_informations.get('description', '')) > const.length_workspace_description:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。',
            multi_lang.get_text('000-00106', "説明"),
            str(const.length_workspace_description)
        )

    return result(True)


def validate_role_name(role_name):
    """Validate role name

    Args:
        role_name (str): role name

    Returns:
        result: Validation result
    """
    if role_name is None or role_name == "":
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。',
            multi_lang.get_text('000-00107', "ロール名")
        )

    if len(role_name) > const.length_role_name:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。',
            multi_lang.get_text('000-00107', "ロール名"),
            str(const.length_role_name)
        )

    rlt, chr = validate_id_characters(role_name)
    if not rlt:
        return result(
            False, 400, '400-{}013'.format(MSG_FUNCTION_ID), '指定できない文字が含まれています。',
            multi_lang.get_text('000-00107', "ロール名"),
            chr
        )

    if not re.match(RE_ID_USABLE_FIRST_CHARACTER, role_name):
        return result(
            False, 400, '400-{}014'.format(MSG_FUNCTION_ID), '先頭の文字にアルファベット以外が指定されています。',
            multi_lang.get_text('000-00107', "ロール名")
        )

    return result(True)


def validate_role_kind(role_kind):
    """Validate role kind

    Args:
        role_kind (str): role kind

    Returns:
        result: Validation result
    """
    if role_kind is None or role_kind == "":
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。',
            multi_lang.get_text('000-00108', "ロール種別")
        )

    if role_kind not in [const.ROLE_KIND_WORKSPACE]:
        return result(
            False, 400, '400-000002', 'リクエストボディのパラメータ({})が不正です。'.format('kind'),
            'kind'
        )

    return result(True)


def validate_role_description(role_description):
    """Validate role description

    Args:
        role_description (str): role description

    Returns:
        result: Validation result
    """
    if len(role_description) > const.length_role_description:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。',
            multi_lang.get_text('000-00106', "説明"),
            str(const.length_role_description)
        )

    return result(True)


def validate_role_workspaces(role_workspaces):
    """Validate role workspaces

    Args:
        role_workspaces (list): role workspaces

    Returns:
        result: Validation result
    """
    if not isinstance(role_workspaces, list):
        return result(
            False, 400, '400-000002', 'リクエストボディのパラメータ({})が不正です。'.format('workspaces'),
            'workspaces'
        )

    if len([t for t in role_workspaces if not isinstance(t.get('id', None), str)]) > 0:
        return result(
            False, 400, '400-000002', 'リクエストボディのパラメータ({})が不正です。'.format('workspaces'),
            'workspaces'
        )

    if len([t for t in role_workspaces if len(t.get('id', '')) == 0]) > 0:
        return result(
            False, 400, '400-000002', 'リクエストボディのパラメータ({})が不正です。'.format('workspaces'),
            'workspaces'
        )

    if len(role_workspaces) > const.max_role_workspaces:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な最大数を超えています。',
            multi_lang.get_text('000-00101', "ワークスペースID"),
            str(const.max_role_workspaces)
        )

    if len([t for t in role_workspaces if len(t.get('id', '')) > const.length_workspace_id]) > 0:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。',
            multi_lang.get_text('000-00101', "ワークスペースID"),
            str(const.length_workspace_id)
        )

    workspace_ids = ([x.get('id', '') for x in role_workspaces])
    if len(list(set(workspace_ids))) != len(workspace_ids):
        return result(
            False, 400, '400-{}019'.format(MSG_FUNCTION_ID), '指定された値が重複しています。',
            multi_lang.get_text('000-00101', "ワークスペースID"),
        )

    return result(True)


def validate_role_mapping_users(role_users):
    """_summary_

    Args:
        role_users (list): users list

    Returns:
        result: Validation result
    """

    # 重複チェック
    # dupulication check
    usernames = ([x.get('preferred_username', '') for x in role_users])
    if len(list(set(usernames))) != len(usernames):
        return result(
            False, 400, '400-{}019'.format(MSG_FUNCTION_ID), '指定された値が重複しています。',
            multi_lang.get_text('000-0010X', "preferred_username"),
        )
    # TODO: MESSAGE登録
    return result(True)


def validate_id_characters(str):
    """validate id characters

    Args:
        str (str): id

    Returns:
        bool: True=OK / False=NG
        str: bad character
    """
    ng = re.sub(RE_ID_USABLE_CHARACTERS, "", str)
    if ng is None or ng == "":
        return True, None
    else:
        return False, ng[:1]
