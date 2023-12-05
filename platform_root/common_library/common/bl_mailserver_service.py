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
from common_library.common import (common, const, encrypt, multi_lang,
                                   validation)
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
            cursor.execute(queries_bl_mailserver.SQL_QUERY_MAILSERVER)

            count = len(cursor.fetchall())
            globals.logger.debug(f"M_NOTIFICATION_DESTINATIONのデータ件数:{count}")

            # M_NOTIFICATION_DESTINATIONのデータ件数は0or1を想定しているため、2件以上存在する場合は例外とする
            if count > 1:
                message_id = f"500-{MSG_FUNCTION_ID}001"
                message = multi_lang.get_text(
                    message_id,
                    "メールサーバー設定のデータ件数が不正なため処理を中断します(データ件数:{0})",
                    count
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

            parameter = {
                "smtp_id": const.DEFAULT_SMTP_ID,
                "smtp_host": body.get("SMTP_HOST"),
                "smtp_port": int(body.get("SMTP_PORT")),
                "send_from": body.get("SEND_FROM"),
                "send_name": body.get("SEND_NAME"),
                "replay_to": body.get("REPLAY_TO"),
                "replay_name": body.get("REPLAY_NAME"),
                "envelope_from": body.get("ENVELOPE_FROM"),
                "ssl_enable": body.get("SSL_ENABLE") if body.get("SSL_ENABLE") is not None else False,
                "start_tls_enable": body.get("START_TLS_ENABLE") if body.get("START_TLS_ENABLE") is not None else False,
                "authentication_enable": body.get("AUTHENTICATION_ENABLE") if body.get("AUTHENTICATION_ENABLE") is not None else False,
                "authentication_user": body.get("AUTHENTICATION_USER"),
                "authentication_password": encrypt.encrypt_str(body.get("AUTHENTICATION_PASSWORD")),
                "create_user": user_id,
                "last_update_user": user_id
            }

            globals.logger.debug(f"parameter:\n{parameter}")

            try:
                if count == 0:
                    globals.logger.info("M_NOTIFICATION_DESTINATIONにINSERTを実施")
                    cursor.execute(queries_bl_mailserver.SQL_INSERT_MAILSERVER, parameter)
                else:
                    globals.logger.info("M_NOTIFICATION_DESTINATIONにUPDATEを実施")
                    cursor.execute(queries_bl_mailserver.SQL_UPDATE_QUERY, parameter)

                conn.commit()
            except Exception as e:
                globals.logger.error(f"exception:{e.args}")
                message_id = f"500-{MSG_FUNCTION_ID}002"
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

    body["SSL_ENABLE"] = body["SSL_ENABLE"] if not body.get("SSL_ENABLE") is None else False
    body["START_TLS_ENABLE"] = body["START_TLS_ENABLE"] if not body.get("START_TLS_ENABLE") is None else False
    body["AUTHENTICATION_ENABLE"] = body["AUTHENTICATION_ENABLE"] if not body.get("AUTHENTICATION_ENABLE") is None else False

    return body


def validate_setting_mailserver(body):
    """validate setting mailserver

    Args:
        body (dict): json
    """

    validate = validation.validate_mailserver(body)
    if not validate.ok:
        return validate

    validate = validation.validate_smtp_host(body.get("SMTP_HOST"))
    if not validate.ok:
        return validate

    validate = validation.validate_smtp_port(body.get("SMTP_PORT"))
    if not validate.ok:
        return validate

    validate = validation.validate_send_from(body.get("SEND_FROM"))
    if not validate.ok:
        return validate

    validate = validation.validate_send_name(body.get("SEND_NAME"))
    if not validate.ok:
        return validate

    validate = validation.validate_replay_to(body.get("REPLAY_TO"))
    if not validate.ok:
        return validate

    validate = validation.validate_replay_name(body.get("REPLAY_NAME"))
    if not validate.ok:
        return validate

    validate = validation.validate_envelope_from(body.get("ENVELOPE_FROM"))
    if not validate.ok:
        return validate

    validate = validation.validate_ssl_enable(body.get("SSL_ENABLE"))
    if not validate.ok:
        return validate

    validate = validation.validate_start_tls_enable(body.get("START_TLS_ENABLE"))
    if not validate.ok:
        return validate

    validate = validation.complex_validate_ssl_start_tls(body.get("SSL_ENABLE"), body.get("START_TLS_ENABLE"))
    if not validate.ok:
        return validate

    validate = validation.validate_authentication_enable(body.get("AUTHENTICATION_ENABLE"))
    if not validate.ok:
        return validate

    validate = validation.validate_authentication_user(body.get("AUTHENTICATION_USER"))
    if not validate.ok:
        return validate

    validate = validation.validate_authentication_password(body.get("AUTHENTICATION_PASSWORD"))
    if not validate.ok:
        return validate

    validate = validation.complex_validate_authentication_user_password(
        body.get("AUTHENTICATION_ENABLE"),
        body.get("AUTHENTICATION_USER"),
        body.get("AUTHENTICATION_PASSWORD")
    )
    if not validate.ok:
        return validate

    return validation.result(True)
