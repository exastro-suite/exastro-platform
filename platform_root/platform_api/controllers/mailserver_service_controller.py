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

import connexion
from contextlib import closing
import json
import inspect
import pymysql

from common_library.common import common, validation,const
from common_library.common.db import DBconnector
from common_library.common import multi_lang, encrypt
from common_library.common import bl_notification_service
from libs import queries_mailserver

import globals

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
    parameter = {"smtp_id": const.DEFAULT_SMTP_ID}
    with closing(DBconnector().connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:
            cursor.execute(queries_mailserver.SQL_QUERY_SMTP_SERVER, parameter)
            row = cursor.fetchone()

    data = {}
    if row is not None:
        data = {
            "SMTP_HOST": row["SMTP_HOST"],
            "SMTP_PORT": row["SMTP_PORT"],
            "SEND_FROM": row["SEND_FROM"],
            "SEND_NAME": row["SEND_NAME"],
            "REPLAY_TO": row["REPLAY_TO"],
            "REPLAY_NAME": row["REPLAY_NAME"],
            "ENVELOPE_FROM": row["ENVELOPE_FROM"],
            "SSL_ENABLE": row["SSL_ENABLE"],
            "START_TLS_ENABLE": row["START_TLS_ENABLE"],
            "AUTHENTICATION_ENABLE": row["AUTHENTICATION_ENABLE"],
            "AUTHENTICATION_USER": row["AUTHENTICATION_USER"],
            "AUTHENTICATION_PASSWORD": encrypt.decrypt_str(row["AUTHENTICATION_PASSWORD"]),
            "create_timestamp": common.datetime_to_str(row["CREATE_TIMESTAMP"]),
            "create_user": row["CREATE_USER"],
            "last_update_timestamp": common.datetime_to_str(row["LAST_UPDATE_TIMESTAMP"]),
            "last_update_user": row["LAST_UPDATE_USER"],
        }
        data.append(row)

    return common.response_200_ok(data)


def settings_mailserver_create(body, organization_id):  # noqa: E501
    """Create creates an settings mailserver

    Args:
        body (dict): json
        organization_id (str): organization_id

    Returns:
        _type_: _description_
    """
    # if connexion.request.is_json:
    #     body = [SettingsMailserverCreate.from_dict(d) for d in connexion.request.get_json()]  # noqa: E501
    return 'do some magic!'


@common.platform_exception_handler
def mailserver_delete(organization_id):  # noqa: E501
    """Delete deletes an mailserver

    Args:
        organization_id (str): organization_id

    Returns:
        Response: http response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    r = connexion.request

    user_id = r.headers.get("User-id")
    encode_roles = r.headers.get("Roles")
    language = r.headers.get("Language")

    globals.logger.debug(f"user_id:{user_id}")
    globals.logger.debug(f"roles:{encode_roles}")
    globals.logger.debug(f"language:{language}")

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
