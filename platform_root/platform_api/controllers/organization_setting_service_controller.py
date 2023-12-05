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

import inspect
from contextlib import closing

import connexion
import globals
from common_library.common import bl_mailserver_service, common, const, encrypt, multi_lang
from common_library.common.db import DBconnector
from libs import queries_mailserver

MSG_FUNCTION_ID = "36"


@common.platform_exception_handler
def settings_mailserver_get(organization_id):  # noqa: E501
    """List returns list of settings mailserver

    Args:
        organization_id (str): organization_id

    Returns:
        Response: http response
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # DB取得
    # DB Acquisition
    parameter = {"smtp_id": const.DEFAULT_SMTP_ID}
    with closing(DBconnector().connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:
            cursor.execute(queries_mailserver.SQL_QUERY_SMTP_SERVER, parameter)
            row = cursor.fetchone()

    data = {}
    if row is not None:
        data = {
            "smtp_host": row["SMTP_HOST"],
            "smtp_port": row["SMTP_PORT"],
            "send_from": row["SEND_FROM"],
            "send_name": row["SEND_NAME"],
            "replay_to": row["REPLAY_TO"],
            "replay_name": row["REPLAY_NAME"],
            "envelope_from": row["ENVELOPE_FROM"],
            "ssl_enable": row["SSL_ENABLE"],
            "start_tls_enable": row["START_TLS_ENABLE"],
            "authentication_enable": row["AUTHENTICATION_ENABLE"],
            "authentication_user": row["AUTHENTICATION_USER"],
            "authentication_password": encrypt.decrypt_str(row["AUTHENTICATION_PASSWORD"]),
            "create_timestamp": common.datetime_to_str(row["CREATE_TIMESTAMP"]),
            "create_user": row["CREATE_USER"],
            "last_update_timestamp": common.datetime_to_str(row["LAST_UPDATE_TIMESTAMP"]),
            "last_update_user": row["LAST_UPDATE_USER"],
        }

    return common.response_200_ok(data)


@common.platform_exception_handler
def settings_mailserver_create(body, organization_id):  # noqa: E501
    """Create creates an settings mailserver

    Args:
        body (dict): json
        organization_id (str): organization_id

    Returns:
        Response: http response
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    r = connexion.request

    body = r.get_json()
    globals.logger.debug(f"body:\n{body}")

    user_id = r.headers.get("User-id")
    globals.logger.debug(f"user_id:{user_id}")

    body = bl_mailserver_service.set_default_value_of_settings_mailserver(body)

    validate = bl_mailserver_service.validate_setting_mailserver(body)
    if not validate.ok:
        return common.response_validation_error(validate)

    bl_mailserver_service.settings_mailserver_register_or_update(body, organization_id, user_id)

    return common.response_200_ok(data=None)


@common.platform_exception_handler
def setting_mailserver_delete(organization_id):  # noqa: E501
    """Delete deletes an mailserver

    Args:
        organization_id (str): organization_id

    Returns:
        Response: http response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    with closing(DBconnector().connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:
            try:
                cursor.execute(queries_mailserver.SQL_DELETE_SMTP_SERVER, {"smtp_id": const.DEFAULT_SMTP_ID})
                conn.commit()
            except Exception as e:
                globals.logger.error(f"exception:{e.args}")
                message_id = f"500-{MSG_FUNCTION_ID}002"
                message = multi_lang.get_text(
                    message_id,
                    "メールサーバの解除に失敗しました(destination id:{0})"
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

    return common.response_200_ok(data=None)
