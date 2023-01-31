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
from datetime import datetime

from common_library.common import common, multi_lang
import common_library.common.const as const
from email_validator import validate_email, EmailNotValidError


MSG_FUNCTION_ID = "00"

RE_ID_USABLE_CHARACTERS = r'[a-zA-Z0-9_-]'
RE_ID_USABLE_FIRST_CHARACTER = r'[a-zA-Z]'
RE_EMAIL_USABLE_CHARACTERS = r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$'

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
            False, 400, '400-000002', 'リクエストボディのパラメータ({})が不正です。'.format('informations.environments'),
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
            False, 400, '400-000002', 'リクエストボディのパラメータ({})が不正です。'.format('informations.description'),
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
            False, 400, '400-000002', 'リクエストボディのパラメータ({})が不正です。'.format('preferred_username'),
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
            False, 400, '400-000002', 'リクエストボディのパラメータ({})が不正です。'.format('informations.description'),
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
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定された値が数値ではありません。',
            multi_lang.get_text('000-00124', "リミット値"),
        )

    range_out_mysql_int = [i for i, v in plan_limits.items() if int(v) > const.max_db_int_value or int(v) < const.min_db_int_value]
    if len(range_out_mysql_int) > 0:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な数値ではありません。',
            multi_lang.get_text('000-00124', "リミット値"),
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


def validate_user_name(user_name):
    """Validate user name

    Args:
        user_name (str): user name

    Returns:
        result: Validation result
    """
    if user_name is None or user_name == "":
        return result(
            False, 400, '400-{}011'.format(MSG_FUNCTION_ID), '必須項目が不足しています。({0})',
            multi_lang.get_text('000-00128', "ユーザー名")
        )

    if len(user_name) > const.length_user_name:
        return result(
            False, 400, '400-{}012'.format(MSG_FUNCTION_ID), '指定可能な文字数を超えています。(項目:{0},最大文字数:{1})',
            multi_lang.get_text('000-00128', "ユーザー名"),
            str(const.length_user_name)
        )

    rlt, chr = validate_id_characters(user_name)
    if not rlt:
        return result(
            False, 400, '400-{}013'.format(MSG_FUNCTION_ID), '指定できない文字が含まれています。(項目:{0},指定できない文字:{1})',
            multi_lang.get_text('000-00128', "ユーザー名"),
            chr
        )

    if not re.match(RE_ID_USABLE_FIRST_CHARACTER, user_name):
        return result(
            False, 400, '400-{}014'.format(MSG_FUNCTION_ID), '先頭の文字にアルファベット以外が指定されています。({0})',
            multi_lang.get_text('000-00128', "ユーザー名")
        )

    return result(True)


def validate_user_email(user_email):
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
            multi_lang.get_text('000-00128', "email"),
            str(const.length_user_email)
        )

    try:
        # Check that the email address is valid.
        validate_email(user_email, check_deliverability=False, allow_smtputf8=False)

    except EmailNotValidError:
        return result(
            False, 400, '400-{}023'.format(MSG_FUNCTION_ID), 'メールアドレスの形式に誤りがあります。({0})',
            multi_lang.get_text('000-00128', "email")
        )

    return result(True)


def validate_user_firstName(user_firstName):
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
            multi_lang.get_text('000-00130', "名"),
            str(const.length_user_firstName)
        )

    return result(True)


def validate_user_lastName(user_lastName):
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
            multi_lang.get_text('000-00131', "姓"),
            str(const.length_user_lastName)
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


def validate_user_enabled(user_enabled):
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
