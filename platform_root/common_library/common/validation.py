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
