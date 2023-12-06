#   Copyright 2023 NEC Corporation
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

from contextlib import closing

import globals
from common_library.common import common, const, encrypt, multi_lang, validation
from common_library.common.db import DBconnector
from common_library.common.libs import queries_bl_mailserver

MSG_FUNCTION_ID = "37"


def settings_mailserver_register_or_update(body, organization_id, user_id):
    """Register for mailserver

    Args:
        body (dict): json
        organization_id (str): organization_id
        user_id (str): user_id
    """

    with closing(DBconnector().connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:
            parameter = {
                "smtp_id": const.DEFAULT_SMTP_ID,
                "smtp_host": body.get("smtp_host"),
                "smtp_port": int(body.get("smtp_port")),
                "send_from": body.get("send_from"),
                "send_name": body.get("send_name"),
                "replay_to": body.get("replay_to"),
                "replay_name": body.get("replay_name"),
                "envelope_from": body.get("envelope_from"),
                "ssl_enable": body.get("ssl_enable"),
                "start_tls_enable": body.get("start_tls_enable"),
                "authentication_enable": body.get("authentication_enable"),
                "authentication_user": body.get("authentication_user"),
                "authentication_password": encrypt.encrypt_str(body.get("authentication_password")),
                "create_user": user_id,
                "last_update_user": user_id
            }
            globals.logger.debug(f"parameter:\n{parameter}")

            cursor.execute(queries_bl_mailserver.SQL_QUERY_MAILSERVER, {"smtp_id": const.DEFAULT_SMTP_ID})
            count = len(cursor.fetchall())
            globals.logger.debug(f"M_NOTIFICATION_DESTINATIONのデータ件数:{count}")

            try:
                if count == 0:
                    globals.logger.debug("M_NOTIFICATION_DESTINATIONにINSERTを実施")
                    cursor.execute(queries_bl_mailserver.SQL_INSERT_MAILSERVER, parameter)
                else:
                    globals.logger.debug("M_NOTIFICATION_DESTINATIONにUPDATEを実施")
                    cursor.execute(queries_bl_mailserver.SQL_UPDATE_MAILSERVER, parameter)

                conn.commit()
            except Exception as e:
                globals.logger.error(f"exception:{e.args}")
                message_id = f"500-{MSG_FUNCTION_ID}001"
                message = multi_lang.get_text(
                    message_id,
                    "メールサーバー設定の登録・更新に失敗しました",
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

    return None


def set_default_value_of_settings_mailserver(body):
    """set default value of settings mailserver

    Args:
        body (dict): json

    Returns:
        body (dict): json
    """

    # requestBodyで値が渡されなかった場合（body.getの結果がNoneになる）、デフォルト値を設定する
    # If no value is passed in requestBody (body.get results in None), set a default value
    body["ssl_enable"] = body["ssl_enable"] if not body.get("ssl_enable") is None else False
    body["start_tls_enable"] = body["start_tls_enable"] if not body.get("start_tls_enable") is None else False
    body["authentication_enable"] = body["authentication_enable"] if not body.get("authentication_enable") is None else False

    return body


def validate_setting_mailserver(body):
    """validate setting mailserver

    Args:
        body (dict): json
    """

    validate = validation.validate_mailserver(body)
    if not validate.ok:
        return validate

    validate = validation.validate_smtp_host(body.get("smtp_host"))
    if not validate.ok:
        return validate

    validate = validation.validate_smtp_port(body.get("smtp_port"))
    if not validate.ok:
        return validate

    validate = validation.validate_send_from(body.get("send_from"))
    if not validate.ok:
        return validate

    validate = validation.validate_send_name(body.get("send_name"))
    if not validate.ok:
        return validate

    validate = validation.validate_replay_to(body.get("replay_to"))
    if not validate.ok:
        return validate

    validate = validation.validate_replay_name(body.get("replay_name"))
    if not validate.ok:
        return validate

    validate = validation.validate_envelope_from(body.get("envelope_from"))
    if not validate.ok:
        return validate

    validate = validation.validate_ssl_enable(body.get("ssl_enable"))
    if not validate.ok:
        return validate

    validate = validation.validate_start_tls_enable(body.get("start_tls_enable"))
    if not validate.ok:
        return validate

    validate = validation.complex_validate_ssl_start_tls(body.get("ssl_enable"), body.get("start_tls_enable"))
    if not validate.ok:
        return validate

    validate = validation.validate_authentication_enable(body.get("authentication_enable"))
    if not validate.ok:
        return validate

    validate = validation.validate_authentication_user(body.get("authentication_user"))
    if not validate.ok:
        return validate

    validate = validation.validate_authentication_password(body.get("authentication_password"))
    if not validate.ok:
        return validate

    validate = validation.complex_validate_authentication_user_password(
        body.get("authentication_enable"),
        body.get("authentication_user"),
        body.get("authentication_password")
    )
    if not validate.ok:
        return validate

    return validation.result(True)
