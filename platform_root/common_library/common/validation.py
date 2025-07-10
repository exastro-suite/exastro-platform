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
import json
from datetime import datetime
import urllib.parse

from common_library.common import common, multi_lang
from common_library.common import bl_service_account_user
import common_library.common.const as const
from email_validator import validate_email, EmailNotValidError


MSG_FUNCTION_ID = "00"

RE_ID_USABLE_CHARACTERS = r'[a-zA-Z0-9_-]'
RE_ID_USABLE_FIRST_CHARACTER = r'[a-zA-Z]'
RE_EMAIL_USABLE_CHARACTERS = r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$'
RE_HOST_CHARACTERS = r'^[a-zA-Z0-9-.]+$'
RE_USER_DISPLAY_NAME_UNUSABLE_CHARCTERS = r'[!"#$()=^~|{};*<>/?\\[\]]'

ORG_RESERVED_WORDS = [
    {"text": "master", "re": r"^master$"},
    {"text": "platform", "re": r"^platform$"},
    {"text": "ita", "re": r"^ita$"},
    {"text": "oase", "re": r"^oase$"},
    {"text": "epoch", "re": r"^epoch$"},
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
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00103', "オーガナイゼーションID")
        )

    if len(organization_id) > const.length_organization_id:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
            multi_lang.get_text('000-00103', "オーガナイゼーションID"),
            str(const.length_organization_id)
        )

    rlt, chr = validate_id_characters(organization_id)
    if not rlt:
        return result(
            False, 400, '400-{}013'.format(MSG_FUNCTION_ID), '指定できない文字が含まれています。(項目:{0},指定できない文字:{1})',
            multi_lang.get_text('000-00103', "オーガナイゼーションID"),
            chr
        )

    if organization_id != organization_id.lower():
        return result(
            False, 400, '400-{}015'.format(MSG_FUNCTION_ID), 'アルファベットは小文字のみ指定可能です。({0})',
            multi_lang.get_text('000-00103', "オーガナイゼーションID")
        )

    if not re.match(RE_ID_USABLE_FIRST_CHARACTER, organization_id):
        return result(
            False, 400, '400-{}014'.format(MSG_FUNCTION_ID), '先頭の文字にアルファベット以外が指定されています。({0})',
            multi_lang.get_text('000-00103', "オーガナイゼーションID")
        )

    for rsv_word in ORG_RESERVED_WORDS:
        if re.match(rsv_word["re"], organization_id):
            return result(
                False, 400, '400-{}016'.format(MSG_FUNCTION_ID), '予約語のため指定できません。(項目:{0},予約語:{1})',
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
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00104', "オーガナイゼーション名")
        )

    if len(organization_name) > const.length_organization_name:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
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
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00101', "ワークスペースID")
        )

    if len(workspace_id) > const.length_workspace_id:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
            multi_lang.get_text('000-00101', "ワークスペースID"),
            str(const.length_workspace_id)
        )

    rlt, chr = validate_id_characters(workspace_id)
    if not rlt:
        return result(
            False, 400, '400-{}013'.format(MSG_FUNCTION_ID), '指定できない文字が含まれています。(項目:{0},指定できない文字:{1})',
            multi_lang.get_text('000-00101', "ワークスペースID"),
            chr
        )

    if not re.match(RE_ID_USABLE_FIRST_CHARACTER, workspace_id):
        return result(
            False, 400, '400-{}014'.format(MSG_FUNCTION_ID), '先頭の文字にアルファベット以外が指定されています。({0})',
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
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00102', "ワークスペース名")
        )

    if len(workspace_name) > const.length_workspace_name:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
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
            False, 400, '400-00002', 'リクエストボディのパラメータ({})が不正です。'.format('informations.environments'),
            'informations.environments'
        )

    if len(workspace_informations.get('environments', [])) > const.max_workspace_environments:
        return result(
            False, 400, '400-{}018'.format(MSG_FUNCTION_ID), '指定可能な最大数を超えています。(項目:{0},最大数:{1})',
            multi_lang.get_text('000-00105', "環境名"),
            str(const.max_workspace_environments)
        )

    if len([t for t in workspace_informations.get('environments', []) if not isinstance(t.get('name', None), str)]) > 0:
        return result(
            False, 400, '400-00002', 'リクエストボディのパラメータ({})が不正です。'.format('informations.environments'),
            'informations.environments'
        )

    if len([t for t in workspace_informations.get('environments', []) if len(t.get('name', '')) == 0]) > 0:
        return result(
            False, 400, '400-00002', 'リクエストボディのパラメータ({})が不正です。'.format('informations.environments'),
            'informations.environments'
        )

    if len([t for t in workspace_informations.get('environments', []) if len(t.get('name', '')) > const.length_workspace_environment_name]) > 0:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
            multi_lang.get_text('000-00105', "環境名"),
            str(const.length_workspace_description)
        )

    environment_names = ([x.get('name', '') for x in workspace_informations.get('environments', [])])
    if len(list(set(environment_names))) != len(environment_names):
        return result(
            False, 400, '400-{}019'.format(MSG_FUNCTION_ID), '指定された値が重複しています。(項目:{0})',
            multi_lang.get_text('000-00105', "環境名"),
            str(const.length_workspace_description)
        )

    if not isinstance(workspace_informations.get('description', ''), str):
        return result(
            False, 400, '400-00002', 'リクエストボディのパラメータ({})が不正です。'.format('informations.description'),
            'informations.description'
        )

    if len(workspace_informations.get('description', '')) > const.length_workspace_description:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
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
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00107', "ロール名")
        )

    if len(role_name) > const.length_role_name:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
            multi_lang.get_text('000-00107', "ロール名"),
            str(const.length_role_name)
        )

    rlt, chr = validate_id_characters(role_name)
    if not rlt:
        return result(
            False, 400, '400-{}013'.format(MSG_FUNCTION_ID), '指定できない文字が含まれています。(項目:{0},指定できない文字:{1})',
            multi_lang.get_text('000-00107', "ロール名"),
            chr
        )

    if not re.match(RE_ID_USABLE_FIRST_CHARACTER, role_name):
        return result(
            False, 400, '400-{}014'.format(MSG_FUNCTION_ID), '先頭の文字にアルファベット以外が指定されています。({0})',
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
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00108', "ロール種別")
        )

    if role_kind not in [const.ROLE_KIND_WORKSPACE]:
        return result(
            False, 400, '400-00002', 'リクエストボディのパラメータ({})が不正です。'.format('kind'),
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
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
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
            False, 400, '400-00002', 'リクエストボディのパラメータ({})が不正です。'.format('workspaces'),
            'workspaces'
        )

    if len([t for t in role_workspaces if not isinstance(t.get('id', None), str)]) > 0:
        return result(
            False, 400, '400-00002', 'リクエストボディのパラメータ({})が不正です。'.format('workspaces'),
            'workspaces'
        )

    if len([t for t in role_workspaces if len(t.get('id', '')) == 0]) > 0:
        return result(
            False, 400, '400-00002', 'リクエストボディのパラメータ({})が不正です。'.format('workspaces'),
            'workspaces'
        )

    if len(role_workspaces) > const.max_role_workspaces:
        return result(
            False, 400, '400-{}018'.format(MSG_FUNCTION_ID), '指定可能な最大数を超えています。(項目:{0},最大数:{1})',
            multi_lang.get_text('000-00101', "ワークスペースID"),
            str(const.max_role_workspaces)
        )

    if len([t for t in role_workspaces if len(t.get('id', '')) > const.length_workspace_id]) > 0:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
            multi_lang.get_text('000-00101', "ワークスペースID"),
            str(const.length_workspace_id)
        )

    workspace_ids = ([x.get('id', '') for x in role_workspaces])
    if len(list(set(workspace_ids))) != len(workspace_ids):
        return result(
            False, 400, '400-{}019'.format(MSG_FUNCTION_ID), '指定された値が重複しています。(項目:{0})',
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

    usernames = ([x.get('preferred_username', '') for x in role_users if x.get('preferred_username')])
    if len(usernames) < 1:
        return result(
            False, 400, '400-00002', 'リクエストボディのパラメータ({})が不正です。'.format('preferred_username'),
            multi_lang.get_text('000-0010X', "preferred_username"),
        )

    # 重複チェック
    # dupulication check
    if len(list(set(usernames))) != len(usernames):
        return result(
            False, 400, '400-{}019'.format(MSG_FUNCTION_ID), '指定された値が重複しています。(項目:{0})',
            multi_lang.get_text('000-0010X', "preferred_username"),
        )
    # TODO: MESSAGE登録
    return result(True)


def validate_plan_id(plan_id):
    """Validate plan id

    Args:
        plan_id (str): plan id

    Returns:
        result: Validation result
    """
    if plan_id is None or plan_id == "":
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00121', "プランID")
        )

    if len(plan_id) > const.length_plan_id:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
            multi_lang.get_text('000-00121', "プランID"),
            str(const.length_plan_id)
        )

    rlt, chr = validate_id_characters(plan_id)
    if not rlt:
        return result(
            False, 400, '400-{}013'.format(MSG_FUNCTION_ID), '指定できない文字が含まれています。(項目:{0},指定可能な文字:{1})',
            multi_lang.get_text('000-00121', "プランID"),
            chr
        )

    if not re.match(RE_ID_USABLE_FIRST_CHARACTER, plan_id):
        return result(
            False, 400, '400-{}014'.format(MSG_FUNCTION_ID), '先頭の文字にアルファベット以外が指定されています。({0})',
            multi_lang.get_text('000-00121', "プランID")
        )

    return result(True)


def validate_plan_name(plan_name):
    """Validate plan name

    Args:
        plan_name (str): plan name

    Returns:
        result: Validation result
    """
    if plan_name is None or plan_name == "":
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00122', "プラン名")
        )

    if len(plan_name) > const.length_plan_name:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
            multi_lang.get_text('000-00122', "プラン名"),
            str(const.length_plan_name)
        )

    return result(True)


def validate_plan_informations(plan_informations):
    """Validate plan informations

    Args:
        plan_informations (dict): informations

    Returns:
        result: Validation result
    """
    if not isinstance(plan_informations.get('description', ''), str):
        return result(
            False, 400, '400-00002', 'リクエストボディのパラメータ({})が不正です。'.format('informations.description'),
            'informations.description'
        )

    if len(plan_informations.get('description', '')) > const.length_plan_description:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
            multi_lang.get_text('000-00106', "説明"),
            str(const.length_plan_description)
        )

    return result(True)


def validate_plan_limits(plan_limits):
    """Validate plan limits

    Args:
        plan_limits (dict): plan limits

    Returns:
        result: Validation result
    """
    if not any(plan_limits):
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00124', "リミット値")
        )

    no_int = [i for i, v in plan_limits.items() if not validate_int(v)]
    if len(no_int) > 0:
        return result(
            False, 400, '400-{}034'.format(MSG_FUNCTION_ID), '指定された値が数値ではありません。({0})',
            multi_lang.get_text('000-00124', "リミット値"),
        )

    range_out_mysql_int = [i for i, v in plan_limits.items() if int(v) > const.max_db_bigint_value or int(v) < const.min_db_bigint_value]
    if len(range_out_mysql_int) > 0:
        return result(
            False, 400, '400-{}035'.format(MSG_FUNCTION_ID), '指定された値が指定できる範囲を超えています。({0},最小値:{1},最大値:{2})',
            multi_lang.get_text('000-00124', "リミット値"),
            const.min_db_bigint_value,
            const.max_db_bigint_value,
        )

    return result(True)


def validate_plan_start_datetime(plan_start_datetime):
    """Validate plan_start_datetime

    Args:
        plan_start_datetime (str): plan start datetime

    Returns:
        result: Validation result
    """
    if plan_start_datetime is None or plan_start_datetime == "":
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00125', "プラン開始日時")
        )

    if not validate_datetime(plan_start_datetime):
        return result(
            False, 400, '400-{}020'.format(MSG_FUNCTION_ID), '日時形式以外が指定されています。({0})',
            multi_lang.get_text('000-00125', "プラン開始日時")
        )

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


def validate_int(num):
    """validate int

    Args:
        num (str): int

    Returns:
        bool: True=OK / False=NG
    """
    try:
        int(num)
    except ValueError:
        return False
    else:
        return True


def validate_datetime(datetime_string, format=const.FORMAT_DATETIME_PLAN_START_DATETIME):
    """validate datetime

    Args:
        datetime_string (str): datetime string

    Returns:
        bool: True=OK / False=NG
    """
    try:
        datetime.strptime(datetime_string, format)
    except ValueError:
        return False
    else:
        return True


def validate_user_name(user_name, lang=None):
    """Validate user name

    Args:
        user_name (str): user name

    Returns:
        result: Validation result
    """
    if user_name is None or user_name == "":
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00128', "ユーザー名") if lang is None else multi_lang.get_text_spec(lang, '000-00128', "ユーザー名")
        )

    if len(user_name) > const.length_user_name:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
            multi_lang.get_text('000-00128', "ユーザー名") if lang is None else multi_lang.get_text_spec(lang, '000-00128', "ユーザー名"),
            str(const.length_user_name)
        )

    rlt, chr = validate_id_characters(user_name)
    if not rlt:
        return result(
            False, 400, '400-{}013'.format(MSG_FUNCTION_ID), '指定できない文字が含まれています。(項目:{0},指定できない文字:{1})',
            multi_lang.get_text('000-00128', "ユーザー名") if lang is None else multi_lang.get_text_spec(lang, '000-00128', "ユーザー名"),
            chr
        )

    if not re.match(RE_ID_USABLE_FIRST_CHARACTER, user_name):
        return result(
            False, 400, '400-{}014'.format(MSG_FUNCTION_ID), '先頭の文字にアルファベット以外が指定されています。({0})',
            multi_lang.get_text('000-00128', "ユーザー名") if lang is None else multi_lang.get_text_spec(lang, '000-00128', "ユーザー名")
        )

    return result(True)


def validate_user_email(user_email, lang=None):
    """Validate user email

    Args:
        user_email (str): user email

    Returns:
        result: Validation result
    """
    if user_email is None or user_email == "":
        return result(True)

    if len(user_email) > const.length_user_email:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
            multi_lang.get_text('000-00128', "email") if lang is None else multi_lang.get_text_spec(lang, '000-00128', "email"),
            str(const.length_user_email)
        )

    try:
        # Check that the email address is valid.
        validate_email(user_email, check_deliverability=False, allow_smtputf8=False, test_environment=True)

    except EmailNotValidError:
        return result(
            False, 400, '400-{}023'.format(MSG_FUNCTION_ID), 'メールアドレスの形式に誤りがあります。({0})',
            multi_lang.get_text('000-00128', "email") if lang is None else multi_lang.get_text_spec(lang, '000-00128', "email")
        )

    return result(True)


def validate_user_firstName(user_firstName, lang=None):
    """Validate user firstName

    Args:
        user_firstName (str): user firstName

    Returns:
        result: Validation result
    """
    if user_firstName is None or user_firstName == "":
        return result(True)

    if len(user_firstName) > const.length_user_firstName:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
            multi_lang.get_text('000-00130', "名") if lang is None else multi_lang.get_text_spec(lang, '000-00130', "名"),
            str(const.length_user_firstName)
        )

    match = re.search(RE_USER_DISPLAY_NAME_UNUSABLE_CHARCTERS, user_firstName)
    if match:
        return result(
            False, 400, '400-{}013'.format(MSG_FUNCTION_ID), '指定できない文字が含まれています。(項目:{0},指定できない文字:{1})',
            multi_lang.get_text('000-00130', "名") if lang is None else multi_lang.get_text_spec(lang, '000-00130', "名"),
            match.group()
        )

    return result(True)


def validate_user_lastName(user_lastName, lang=None):
    """Validate user lastName

    Args:
        user_lastName (str): user lastName

    Returns:
        result: Validation result
    """
    if user_lastName is None or user_lastName == "":
        return result(True)

    if len(user_lastName) > const.length_user_lastName:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
            multi_lang.get_text('000-00131', "姓") if lang is None else multi_lang.get_text_spec(lang, '000-00131', "姓"),
            str(const.length_user_lastName)
        )

    match = re.search(RE_USER_DISPLAY_NAME_UNUSABLE_CHARCTERS, user_lastName)
    if match:
        return result(
            False, 400, '400-{}013'.format(MSG_FUNCTION_ID), '指定できない文字が含まれています。(項目:{0},指定できない文字:{1})',
            multi_lang.get_text('000-00131', "姓") if lang is None else multi_lang.get_text_spec(lang, '000-00131', "姓"),
            match.group()
        )

    return result(True)


def validate_password(password, lang=None):
    """Validate password temporary

    Args:
        password (str): password

    Returns:
        result: Validation result
    """
    if password is None or password == "":
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00132', "パスワード") if lang is None else multi_lang.get_text_spec(lang, '000-00132', "パスワード")
        )

    if len(password) > const.length_user_password:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
            multi_lang.get_text('000-00132', "パスワード") if lang is None else multi_lang.get_text_spec(lang, '000-00132', "パスワード"),
            str(const.length_user_password)
        )

    return result(True)


def validate_password_temporary(password_temporary):
    """Validate password temporary

    Args:
        password_temporary (str): password temporary

    Returns:
        result: Validation result
    """

    if not (common.is_boolean(password_temporary)):
        return result(
            False, 400, '400-00024', 'True/False 以外が指定されています。({0})',
            multi_lang.get_text('000-00133', "password_temporary"),
        )

    return result(True)


def validate_user_affiliation(user_affiliation, lang=None):
    """Validate user affiliation

    Args:
        user_affiliation (str): user affiliation

    Returns:
        result: Validation result
    """
    if len(user_affiliation) > const.length_user_affiliation:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
            multi_lang.get_text('000-00143', "所属") if lang is None else multi_lang.get_text_spec(lang, '000-00143', "所属"),
            str(const.length_user_affiliation)
        )

    return result(True)


def validate_user_description(user_description, lang=None):
    """Validate user description

    Args:
        user_description (str): user description

    Returns:
        result: Validation result
    """
    if len(user_description) > const.length_user_description:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
            multi_lang.get_text('000-00106', "説明") if lang is None else multi_lang.get_text_spec(lang, '000-00106', "説明"),
            str(const.length_user_description)
        )

    return result(True)


def validate_user_enabled(user_enabled, lang=None):
    """Validate user enabled

    Args:
        user_enabled (bool): user enabled

    Returns:
        result: Validation result
    """

    if not (common.is_boolean(user_enabled)):
        return result(
            False, 400, '400-00024', 'True/False 以外が指定されています。({0})',
            multi_lang.get_text('000-00134', "enabled"),
        )

    return result(True)


def validate_organization_setting(body):
    """Validate organization setting

    Args:
        body (dict): body json

    Returns:
        result: Validation result
    """
    if "token" in body:
        if "refresh_token_max_lifespan_enabled" not in body["token"]:
            return result(
                False, 400, '400-00011', '必須項目が不足しています。({0})',
                "token.refresh_token_max_lifespan_enabled",
            )

        # The type check for body["token"]["refresh_token_max_lifespan_enabled"] is omitted because it is performed by openapi (connexion)
        # body["token"]["refresh_token_max_lifespan_enabled"]のtypeチェックはopenapi(connexion)で実施されているので割愛する

        if body["token"]["refresh_token_max_lifespan_enabled"] and "refresh_token_max_lifespan_days" not in body["token"]:
            return result(
                False, 400, '400-00011', '必須項目が不足しています。({0})',
                "token.refresh_token_max_lifespan_days",
            )

        # The range check of body["token"]["refresh_token_max_lifespan_days"] is omitted because it is performed by openapi (connexion)
        # body["token"]["refresh_token_max_lifespan_days"]の範囲チェックはopenapi(connexion)で実施されているので割愛する

        if "access_token_lifespan_minutes" not in body["token"]:
            return result(
                False, 400, '400-00011', '必須項目が不足しています。({0})',
                "token.access_token_lifespan_minutes",
            )

        # The range check of body["token"]["access_token_lifespan_minutes"] is omitted because it is performed by openapi (connexion)
        # body["token"]["access_token_lifespan_minutes"]の範囲チェックはopenapi(connexion)で実施されているので割愛する

    return result(True)


def validate_system_config_key(config_key):
    """validate system config key

    Args:
        config_key (str): system config key

    Returns:
        result: Validation result
    """
    if config_key is None or config_key == "":
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00136', "システム設定名")
        )

    if len(config_key) > const.length_system_config_key:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
            multi_lang.get_text('000-00136', "システム設定名"),
            str(const.length_system_config_key)
        )

    return result(True)


def validate_system_config_value(config_value):
    """validate system config value

    Args:
        config_value (str): system config value

    Returns:
        result: Validation result
    """
    if config_value is None or config_value == "":
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00137', "システム設定値")
        )

    if len(config_value) > const.length_system_config_value:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
            multi_lang.get_text('000-00137', "システム設定値"),
            str(const.length_system_config_value)
        )

    return result(True)


def validate_system_config_description(description):
    """validate system config description

    Args:
        description (str): system config description

    Returns:
        result: Validation result
    """
    if description is not None and len(description) > const.length_system_config_description:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
            multi_lang.get_text('000-00138', "システム設定値説明"),
            str(const.length_system_config_description)
        )

    return result(True)


def validate_limit_id(limit_id):
    """validate limit id

    Args:
        limit_id (str): limit id

    Returns:
        result: Validation result
    """
    if limit_id is None or limit_id == "":
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00123', "リミットID")
        )

    if len(limit_id) > const.length_limit_id:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
            multi_lang.get_text('000-00123', "リミットID"),
            str(const.length_limit_id)
        )

    return result(True)


def validate_plan_item_description(description):
    """validate plan item description

    Args:
        description (str): plan item description

    Returns:
        result: Validation result
    """
    if description is not None and len(description) > const.length_plan_item_description:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
            multi_lang.get_text('000-00139', "プラン項目説明"),
            str(const.length_plan_item_description)
        )

    return result(True)


def validate_plan_item_default(default, max):
    """validate plan item validate

    Args:
        default (int): default plan limit
        max (int): plan item max limit

    Returns:
        result: Validation result
    """
    if default is None:
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00140', "プラン項目デフォルト値")
        )

    if default > const.max_db_bigint_value or default < const.min_db_bigint_value:
        return result(
            False, 400, '400-{}035'.format(MSG_FUNCTION_ID), '指定された値が指定できる範囲を超えています。({0},最小値:{1},最大値:{2})',
            multi_lang.get_text('000-00140', "プラン項目デフォルト値"),
            const.min_db_bigint_value,
            const.max_db_bigint_value,
        )

    if max is not None and max > const.max_db_bigint_value or default < const.min_db_bigint_value:
        return result(
            False, 400, '400-{}035'.format(MSG_FUNCTION_ID), '指定された値が指定できる範囲を超えています。({0},最小値:{1},最大値:{2})',
            multi_lang.get_text('000-00207', "プラン項目最大値"),
            const.min_db_bigint_value,
            const.max_db_bigint_value,
        )

    if max is not None and default > max:
        return result(
            False, 400, '400-{}025'.format(MSG_FUNCTION_ID), '指定した最大値を超えるデフォルト値を指定することはできません。'
        )

    return result(True)


def validate_maintenance_mode(config_key, config_value):
    """validate maintenance mode name, setting value

    Args:
        config_key (str): maintenance mode name
        config_value (str): maintenance setting value

    Returns:
        result: Validation result
    """
    accept_key_value = {
        "key": [
            "backyard_execute_stop",
            "data_update_stop"
        ],
        "value": [
            "0",
            "1"
        ]
    }
    if config_key is None or (str(config_key).lower() not in accept_key_value['key']):
        return result(
            False, 400, '400-{}026'.format(MSG_FUNCTION_ID),
            'メンテナンスモード名に「{}」以外が指定されています。({}:{})',
            '/'.join(accept_key_value['key']), config_key, config_value
        )

    if config_value is None or (str(config_value) not in accept_key_value['value']):
        return result(
            False, 400, '400-{}027'.format(MSG_FUNCTION_ID),
            '設定値に「{}」以外が指定されています。({}:{}) ',
            '/'.join(accept_key_value['value']), config_key, config_value
        )

    return result(True)


def validate_destinations(body):
    if type(body) is not list:
        return result(
            False, 400, '400-{}002'.format(MSG_FUNCTION_ID), 'リクエストボディのパラメータ({0})が不正です。',
            'Json'
        )

    if len(body) == 0:
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00150', "通知先")
        )

    return result(True)


def validate_destination_id(destination_id):
    """validate destination_id

    Args:
        destination_id (str): destination_id

    Returns:
        result: Validation result
    """
    if destination_id is None or destination_id == "":
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00145', "通知先ID")
        )

    if len(destination_id) > const.length_destination_id:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
            multi_lang.get_text('000-00145', "通知先ID"),
            str(const.length_destination_id)
        )

    rlt, chr = validate_id_characters(destination_id)
    if not rlt:
        return result(
            False, 400, '400-{}013'.format(MSG_FUNCTION_ID), '指定できない文字が含まれています。(項目:{0},指定できない文字:{1})',
            multi_lang.get_text('000-00145', "通知先ID"),
            chr
        )

    if not re.match(RE_ID_USABLE_FIRST_CHARACTER, destination_id):
        return result(
            False, 400, '400-{}014'.format(MSG_FUNCTION_ID), '先頭の文字にアルファベット以外が指定されています。({0})',
            multi_lang.get_text('000-00145', "通知先ID")
        )

    return result(True)


def validate_destination_name(destination_name):
    """validate destination_name

    Args:
        destination_name (str): destination_name

    Returns:
        result: Validation result
    """
    if destination_name is None or destination_name == "":
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00146', "通知先名")
        )

    if len(destination_name) > const.length_destination_name:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
            multi_lang.get_text('000-00146', "通知先名"),
            str(const.length_destination_name)
        )

    return result(True)


def validate_destination_kind(destination_kind):
    """validate destination_kind

    Args:
        destination_kind (str): destination_kind

    Returns:
        result: Validation result
    """
    if destination_kind is None or destination_kind == "":
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00146', "通知方法")
        )

    if destination_kind not in const.ALL_DESTINATION_KIND:
        return result(
            False, 400, '400-{}026'.format(MSG_FUNCTION_ID), '{0}以外の{1}は指定できません',
            "/".join(const.ALL_DESTINATION_KIND),
            multi_lang.get_text('000-00146', "通知方法")
        )

    return result(True)


def validate_destination_informations(destination_kind, destination_info):
    """validate destination_informations

    Args:
        destination_info (dict): destination_info

    Returns:
        result: Validation result
    """
    if type(destination_info) is not list:
        return result(
            False, 400, '400-{}002'.format(MSG_FUNCTION_ID), 'リクエストボディのパラメータ({0})が不正です。',
            'destination_informations'
        )

    if len(destination_info) == 0:
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00150', "通知先")
        )

    if destination_kind == const.DESTINATION_KIND_MAIL:

        if len(destination_info) > const.max_destination_email:
            return result(
                False, 400, '400-{}018'.format(MSG_FUNCTION_ID), '指定可能な最大数を超えています。(項目:{0},最大数:{1})',
                multi_lang.get_text('000-00148', "通知先email"),
                str(const.max_destination_email)
            )

        for row in destination_info:
            if row.get('address_header') is None or row.get('address_header') == "":
                return result(
                    False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
                    multi_lang.get_text('000-00151', "通知先emailヘッダー")
                )

            if row.get('address_header') not in const.ALL_MAIL_HEADER:
                return result(
                    False, 400, '400-{}026'.format(MSG_FUNCTION_ID), '{0}以外の{1}は指定できません',
                    "/".join(const.ALL_MAIL_HEADER),
                    multi_lang.get_text('000-00151', "通知先emailヘッダー")
                )

            if row.get('email') is None or row.get('email') == "":
                return result(
                    False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
                    multi_lang.get_text('000-00148', "通知先email")
                )

            if len(row['email']) > const.length_destination_email:
                return result(
                    False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
                    multi_lang.get_text('000-00148', "通知先email"),
                    str(const.length_destination_email)
                )

            try:
                # Check that the email address is valid.
                validate_email(row['email'], check_deliverability=False, allow_smtputf8=False, test_environment=True)

            except EmailNotValidError:
                return result(
                    False, 400, '400-{}023'.format(MSG_FUNCTION_ID), 'メールアドレスの形式に誤りがあります。({0})',
                    multi_lang.get_text('000-00148', "通知先email"),
                )

    if destination_kind == const.DESTINATION_KIND_TEAMS_WF:
        if len(destination_info) > const.max_destination_teams_wf:
            return result(
                False, 400, '400-{}018'.format(MSG_FUNCTION_ID), '指定可能な最大数を超えています。(項目:{0},最大数:{1})',
                multi_lang.get_text('000-00214', "通知先Teams(Workflows) URL"),
                str(const.max_destination_teams_wf)
            )

        for row in destination_info:
            if row.get('url') is None or row.get('url') == "":
                return result(
                    False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
                    multi_lang.get_text('000-00214', "通知先Teams(Workflows) URL")
                )

            if len(row['url']) > const.length_destination_teams_wf_url:
                return result(
                    False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
                    multi_lang.get_text('000-00214', "通知先Teams(Workflows) URL"),
                    str(const.length_destination_teams_wf_url)
                )

            try:
                urlparse = urllib.parse.urlparse(row['url'])
                if urlparse.scheme not in ['http', 'https']:
                    raise ValueError

            except ValueError:
                return result(
                    False, 400, '400-{}027'.format(MSG_FUNCTION_ID), 'URLの形式に誤りがあります。({0}）',
                    multi_lang.get_text('000-00214', "通知先Teams(Workflows) URL")
                )

    if destination_kind == const.DESTINATION_KIND_TEAMS:
        # 廃止された通知方法のためエラー
        return result(
            False, 400, '400-{}036'.format(MSG_FUNCTION_ID), '非推奨の通知方法が指定されています。({0}）',
            const.DESTINATION_KIND_TEAMS
        )

    if destination_kind == const.DESTINATION_KIND_WEBHOOK:
        if len(destination_info) > const.max_destination_webhook:
            return result(
                False, 400, '400-{}018'.format(MSG_FUNCTION_ID), '指定可能な最大数を超えています。(項目:{0},最大数:{1})',
                multi_lang.get_text('000-00212', "通知先Webhook URL"),
                str(const.max_destination_webhook)
            )

        for row in destination_info:
            if row.get('url') is None or row.get('url') == "":
                return result(
                    False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
                    multi_lang.get_text('000-00212', "通知先Webhook URL")
                )

            if len(row['url']) > const.length_destination_webhook_url:
                return result(
                    False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
                    multi_lang.get_text('000-00212', "通知先Webhook URL"),
                    str(const.length_destination_webhook_url)
                )

            try:
                urlparse = urllib.parse.urlparse(row['url'])
                if urlparse.scheme not in ['http', 'https']:
                    raise ValueError

            except ValueError:
                return result(
                    False, 400, '400-{}027'.format(MSG_FUNCTION_ID), 'URLの形式に誤りがあります。({0}）',
                    multi_lang.get_text('000-00212', "通知先Webhook URL")
                )

            if row['header'] is not None and row['header'] != "":
                try:
                    json.loads(row['header'])
                except ValueError:
                    return result(
                        False, 400, '400-{}027'.format(MSG_FUNCTION_ID), 'Headerの形式に誤りがあります。({0}）',
                        multi_lang.get_text('000-00213', "通知先Webhook Header")
                    )

    return result(True)


def validate_destination_conditions(conditions):
    """validate destination conditions

    Args:
        event_type (dict): conditions

    Returns:
        result: Validation result
    """
    if conditions.get('ita', {}).get('event_type', {}).get('new', None) is None:
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00153', "新規イベント")
        )

    if type(conditions.get('ita', {}).get('event_type', {}).get('new', None)) is not bool:
        return result(
            False, 400, '400-{}024'.format(MSG_FUNCTION_ID), 'True/False 以外が指定されています。({0})',
            multi_lang.get_text('000-00153', "新規イベント")
        )

    if conditions.get('ita', {}).get('event_type', {}).get('evaluated', None) is None:
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00154', "既知（判定済み）")
        )

    if type(conditions.get('ita', {}).get('event_type', {}).get('evaluated', None)) is not bool:
        return result(
            False, 400, '400-{}024'.format(MSG_FUNCTION_ID), 'True/False 以外が指定されています。({0})',
            multi_lang.get_text('000-00154', "既知（判定済み）")
        )

    if conditions.get('ita', {}).get('event_type', {}).get('timeout', None) is None:
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00155', "既知（時間切れ）")
        )

    if type(conditions.get('ita', {}).get('event_type', {}).get('timeout', None)) is not bool:
        return result(
            False, 400, '400-{}024'.format(MSG_FUNCTION_ID), 'True/False 以外が指定されています。({0})',
            multi_lang.get_text('000-00155', "既知（時間切れ）")
        )

    if conditions.get('ita', {}).get('event_type', {}).get('undetected', None) is None:
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00156', "未知")
        )
    if type(conditions.get('ita', {}).get('event_type', {}).get('undetected', None)) is not bool:
        return result(
            False, 400, '400-{}024'.format(MSG_FUNCTION_ID), 'True/False 以外が指定されています。({0})',
            multi_lang.get_text('000-00156', "未知")
        )

    return result(True)


def validate_notifications(body):
    if type(body) is not list:
        return result(
            False, 400, '400-{}002'.format(MSG_FUNCTION_ID), 'リクエストボディのパラメータ({0})が不正です。',
            'Json'
        )

    if len(body) == 0:
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00181', "メッセージ通知情報")
        )

    return result(True)


def validate_func_id(func_id):
    """validate func_id

    Args:
        func_id (str): func_id

    Returns:
        result: Validation result
    """
    if func_id is None or func_id == "":
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00182', "機能ID")
        )

    if len(func_id) > const.length_func_id:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
            multi_lang.get_text('000-00182', "機能ID"),
            str(const.length_func_id)
        )

    return result(True)


def validate_func_informations(func_info):
    """validate func_informations

    Args:
        func_info (dict): func_info

    Returns:
        result: Validation result
    """
    # if not common.is_json_format(func_info):
    #     return result(
    #         False, 400, '400-{}002'.format(MSG_FUNCTION_ID), 'リクエストボディのパラメータ({0})が不正です。',
    #         'func_informations'
    #     )

    return result(True)


def validate_notification_message(message):
    """validate notification_message

    Args:
        message (dict): message

    Returns:
        result: Validation result
    """
    # if not common.is_json_format(message):
    #     return result(
    #         False, 400, '400-{}002'.format(MSG_FUNCTION_ID), 'リクエストボディのパラメータ({0})が不正です。',
    #         'message'
    #     )

    return result(True)


def validate_mailserver(body):
    """validate mailserver

    Args:
        body (dict): json

    Returns:
        result: Validation result
    """

    # 以下のパターンはswaggerで弾くので、チェック不要
    # ・bodyの型がobject(dict)以外
    # ・bodyがNone
    # The following patterns are played by swagger, so no need to check
    # ・The type of body is other than object (dict).
    # ・body is None
    return result(True)


def validate_smtp_host(host):
    """validate smtp host

    Args:
        host (str): host

    Returns:
        result: Validation result
    """

    # Noneの場合はswaggerで弾かれるためチェック不要
    # If None, it is played by swagger and does not need to be checked.
    if host == "":
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00187', "SMTPサーバーホスト")
        )

    if len(host) > const.length_smtp_host:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
            multi_lang.get_text('000-00187', "SMTPサーバーホスト"),
            str(const.length_smtp_host)
        )

    if not re.match(RE_HOST_CHARACTERS, host):
        return result(
            False, 400, '400-{}028'.format(MSG_FUNCTION_ID), 'ホストの形式に誤りがあります。({0})',
            multi_lang.get_text('000-00187', "SMTPサーバーホスト")
        )

    check_list = host.split(".")
    # 「.」を用いたスプリットで要素数が2以上の配列が生成された場合、「.」が使用されていると判断し以下のチェックもおこなう
    # 「.」 is used to generate an array with more than two elements, it is assumed that 「.」 is used and the following checks are also performed
    if len(check_list) > 1:
        for item in check_list:
            length = len(item)
            if (length < const.min_length_separated_by_period_mark or length > const.max_length_separated_by_period_mark):
                return result(
                    False, 400, '400-{}028'.format(MSG_FUNCTION_ID), 'ホストの形式に誤りがあります。({0})',
                    multi_lang.get_text('000-00187', "SMTPサーバーホスト")
                )

    return result(True)


def validate_smtp_port(port):
    """validate smtp port

    Args:
        port (str): port

    Returns:
        result: Validation result
    """

    # Noneの場合はswaggerで弾かれるためチェック不要
    # If None, it is played by swagger and does not need to be checked.
    if port == "":
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00187', "送信サーバーポート番号")
        )

    if not port.isdecimal():
        return result(
            False, 400, '400-{}029'.format(MSG_FUNCTION_ID), '数値の変換に失敗しました。(項目:{0},対象の値:{1})',
            multi_lang.get_text('000-00188', "SMTPサーバーポート"),
            port
        )

    tmp = int(port)
    if tmp < const.min_smtp_port or tmp > const.max_smtp_port:
        return result(
            False, 400, '400-{}030'.format(MSG_FUNCTION_ID),
            '数値が最小値より小さいまたは最大値より大きな値となっています。(項目:{0},対象の値:{1},最小値:{2},最大値:{3})',
            multi_lang.get_text('000-00188', "SMTPサーバーポート"),
            port,
            const.min_smtp_port,
            const.max_smtp_port
        )

    return result(True)


def validate_send_from(send_from):
    """validate send from

    Args:
        send_from (str): send_from

    Returns:
        result: Validation result
    """

    # Noneの場合はswaggerで弾かれるためチェック不要
    # If None, it is played by swagger and does not need to be checked.
    if send_from == "":
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00189', "送信元メールアドレス")
        )

    if len(send_from) > const.length_send_from:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
            multi_lang.get_text('000-00189', "送信元メールアドレス"),
            str(const.length_send_from)
        )

    try:
        # Check that the email address is valid.
        validate_email(send_from, check_deliverability=False, allow_smtputf8=False, test_environment=True)

    except EmailNotValidError:
        return result(
            False, 400, '400-{}023'.format(MSG_FUNCTION_ID), 'メールアドレスの形式に誤りがあります。({0})',
            multi_lang.get_text('000-00189', "送信元メールアドレス")
        )

    return result(True)


def validate_send_name(name):
    """validate send name

    Args:
        name (str): name

    Returns:
        result: Validation result
    """

    # 未指定や空文字の場合は以降のチェックは実施しない
    # If none or empty, subsequent checks are not performed.
    if name is None or name == "":
        return result(True)

    if len(name) > const.length_send_name:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
            multi_lang.get_text('000-00190', "送信元表示名"),
            str(const.length_send_name)
        )

    return result(True)


def validate_reply_to(reply_to):
    """validate replay to

    Args:
        reply_to (str): reply_to

    Returns:
        result: Validation result
    """

    # 未指定や空文字の場合は以降のチェックは実施しない
    # If none or empty, subsequent checks are not performed.
    if reply_to is None or reply_to == "":
        return result(True)

    if len(reply_to) > const.length_reply_to:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
            multi_lang.get_text('000-00191', "返信先メールアドレス"),
            str(const.length_reply_to)
        )

    try:
        # Check that the email address is valid.
        validate_email(reply_to, check_deliverability=False, allow_smtputf8=False, test_environment=True)

    except EmailNotValidError:
        return result(
            False, 400, '400-{}023'.format(MSG_FUNCTION_ID), 'メールアドレスの形式に誤りがあります。({0})',
            multi_lang.get_text('000-00191', "返信先メールアドレス")
        )

    return result(True)


def validate_reply_name(name):
    """validate replay name

    Args:
        name (str): name

    Returns:
        result: Validation result
    """

    # 未指定や空文字の場合は以降のチェックは実施しない
    # If none or empty, subsequent checks are not performed.
    if name is None or name == "":
        return result(True)

    if len(name) > const.length_reply_name:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
            multi_lang.get_text('000-00192', "返信先表示名"),
            str(const.length_reply_name)
        )

    return result(True)


def validate_envelope_from(envelope_from):
    """validate envelope from

    Args:
        envelope_from (str): envelope_from

    Returns:
        result: Validation result
    """

    # 未指定や空文字の場合は以降のチェックは実施しない
    # If none or empty, subsequent checks are not performed.
    if envelope_from is None or envelope_from == "":
        return result(True)

    if len(envelope_from) > const.length_envelope_from:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
            multi_lang.get_text('000-00193', "差出人メールアドレス"),
            str(const.length_envelope_from)
        )

    try:
        # Check that the email address is valid.
        validate_email(envelope_from, check_deliverability=False, allow_smtputf8=False, test_environment=True)

    except EmailNotValidError:
        return result(
            False, 400, '400-{}023'.format(MSG_FUNCTION_ID), 'メールアドレスの形式に誤りがあります。({0})',
            multi_lang.get_text('000-00193', "差出人メールアドレス")
        )

    return result(True)


def validate_ssl_enable(ssl_enable):
    """validate ssl enable

    Args:
        ssl_enable (bool): ssl_enable

    Returns:
        result: Validation result
    """

    # swaggerでboolの判定は行っているので、何もチェックしない
    # Since bool is determined by swagger, nothing is checked.
    return result(True)


def validate_start_tls_enable(start_tls_enable):
    """validate start tls enable

    Args:
        start_tls_enable (bool): start_tls_enable

    Returns:
        result: Validation result
    """

    # swaggerでboolの判定は行っているので、何もチェックしない
    # Since bool is determined by swagger, nothing is checked.
    return result(True)


def complex_validate_ssl_start_tls(ssl_enable, start_tls_enable):
    """complex validate ssl, start_tls

    Args:
        ssl_enable (bool): ssl_enable
        start_tls_enable (bool): start_tls_enable

    Returns:
        result: Validation result
    """

    # どちらもTrueの場合NGとする
    # If both are True, NG is assumed.
    if ssl_enable is True and start_tls_enable is True:
        return result(
            False, 400, '400-{}031'.format(MSG_FUNCTION_ID), 'SSLおよびStartTLSを同時に有効にすることはできません。'
        )

    return result(True)


def validate_authentication_enable(authentication_enable):
    """validate authentication enable

    Args:
        authentication_enable (bool): authentication_enable

    Returns:
        result: Validation result
    """

    # swaggerでboolの判定は行っているので、何もチェックしない
    # Since bool is determined by swagger, nothing is checked.
    return result(True)


def validate_authentication_user(authentication_user):
    """validate authentication_user

    Args:
        authentication_user (str): authentication_user

    Returns:
        result: Validation result
    """

    # 未指定や空文字の場合は以降のチェックは実施しない
    # If none or empty, subsequent checks are not performed.
    if authentication_user is None or authentication_user == "":
        return result(True)

    if len(authentication_user) > const.length_authentication_user:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
            multi_lang.get_text('000-00197', "認証ユーザー"),
            str(const.length_authentication_user)
        )

    return result(True)


def validate_authentication_password(authentication_password):
    """validate authentication_password

    Args:
        authentication_password (str): authentication_password

    Returns:
        result: Validation result
    """

    # 未指定や空文字の場合は以降のチェックは実施しない
    # If none or empty, subsequent checks are not performed.
    if authentication_password is None or authentication_password == "":
        return result(True)

    if len(authentication_password) > const.length_authentication_password:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
            multi_lang.get_text('000-00198', "認証パスワード"),
            str(const.length_authentication_password)
        )

    return result(True)


def complex_validate_authentication_user_password(authentication_enable, authentication_user, authentication_password):
    """complex validate authentication enable, user, passowrd

    Args:
        authentication_enable (bool): authentication_enable
        authentication_user (str): authentication_user
        authentication_password (str): authentication_password

    Returns:
        result: Validation result
    """

    authentication_user_check_condition = authentication_user is None or authentication_user == ""
    authentication_password_check_condition = authentication_password is None or authentication_password == ""

    # authentication_enableがtrueの場合、どちらも値の指定を必須とする
    # If authentication_enable is true, both require a value to be specified
    if authentication_enable and (authentication_user_check_condition or authentication_password_check_condition):
        return result(
            False, 400, '400-{}032'.format(MSG_FUNCTION_ID), '認証を有効にする場合、認証ユーザーおよび認証パスワードは必須となります。'
        )

    return result(True)


def validate_audit_log_conditions(conditions):
    """Validate audit log conditions

    Args:
        conditions (dict): conditions

    Returns:
        result: Validation result
    """
    ts_from = conditions.get('ts_from')
    ts_to = conditions.get('ts_to')

    if ts_from is None:
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00205', "タイムスタンプ(From)")
        )

    if ts_to is None:
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00206', "タイムスタンプ(To)")
        )

    if not validate_datetime(ts_from):
        return result(
            False, 400, '400-{}020'.format(MSG_FUNCTION_ID), '日時形式以外が指定されています。({0})',
            multi_lang.get_text('000-00205', "タイムスタンプ(From)")
        )

    if not validate_datetime(ts_to):
        return result(
            False, 400, '400-{}020'.format(MSG_FUNCTION_ID), '日時形式以外が指定されています。({0})',
            multi_lang.get_text('000-00206', "タイムスタンプ(To)")
        )

    return result(True)


def validate_service_account_user_type(service_account_user_type):
    if service_account_user_type is None or service_account_user_type == "":
        return result(
            False, 400, '400-00011', '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00216', "サービスアカウントユーザータイプ")
        )

    if service_account_user_type not in bl_service_account_user.service_account_user_types():
        return result(
            False, 400, '400-00037', '指定可能な値ではありません({0})',
            multi_lang.get_text('000-00216', "サービスアカウントユーザータイプ")
        )

    return result(True)
