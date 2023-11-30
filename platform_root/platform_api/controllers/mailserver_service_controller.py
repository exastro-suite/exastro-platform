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

from common_library.common import common, validation
from common_library.common.db import DBconnector
from common_library.common import multi_lang, encrypt
from common_library.common import bl_notification_service
from libs import queries_mailserver

import globals


@common.platform_exception_handler
def settings_mailserver_get(organization_id):  # noqa: E501
    """List returns list of settings mailserver

    Args:
        organization_id (str): organization_id

    Returns:
        Response: http response
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # organization_id list get
    with closing(DBconnector().connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:
            if organization_id:
                str_where = " WHERE organization_id = %(organization_id)s"
                parameter = {
                    "organization_id": organization_id,
                }
            else:
                str_where = ""
                parameter = {}

            cursor.execute(queries_mailserver.SQL_QUERY_SMTP_SERVER + str_where, parameter)
            result = cursor.fetchone()

    # 取得した結果が存在しない場合は、何もしない
    # If the obtained result does not exist, do nothing
    if result is not None:
        globals.logger.debug(f"result:{result}")
        data = settings_mailserver_rowset(result)

        return data
    else:
        raise common.NotFoundException(
            message_id=f"404-{MSG_FUNCTION_ID}001",
            message=multi_lang.get_text(f"404-{MSG_FUNCTION_ID}001", "メールサーバーが存在しません(id:{0})", organization_id)
        )


def settings_mailserver_rowset(row):
    row_set = {
        "SMTP_ID": row["SMTP_ID"],
        "SMTP_HOST": row[""],
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

    return row_set


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
    return 'do some magic!'

