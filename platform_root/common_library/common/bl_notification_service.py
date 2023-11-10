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
import json

from common_library.common import common
from common_library.common.db import DBconnector
from common_library.common import encrypt
from common_library.common import multi_lang
from common_library.common.libs import queries_bl_notification


import globals

MSG_FUNCTION_ID = "35"


def settings_destination_get(organization_id, workspace_id, destination_id):  # noqa: E501
    """List returns list of settings notifications

    Args:
        organization_id (str): organization_id
        workspace_id (str): workspace_id
        destination_id (str): destination_id

    Returns:
        Response: http response
    """

    # destination_id list get
    with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
        with conn.cursor() as cursor:
            if destination_id:
                str_where = " WHERE destination_id = %(destination_id)s"
                parameter = {
                    "destination_id": destination_id,
                }
            else:
                str_where = ""
                parameter = {}

            cursor.execute(queries_bl_notification.SQL_QUERY_NOTIFICATION_DESTINATION + str_where, parameter)
            result = cursor.fetchone()

    data = []
    # 取得した結果が存在しない場合は、何もしない
    # If the obtained result does not exist, do nothing
    if result is not None:
        globals.logger.debug(f"result:{result}")
        data.append(settings_notification_rowset(result))
    else:
        raise common.NotFoundException(
            message_id=f"404-{MSG_FUNCTION_ID}001",
            message=multi_lang.get_text(f"404-{MSG_FUNCTION_ID}001", "通知先情報が存在しません(id:{0})", destination_id)
        )

    return data


def settings_notification_rowset(row):
    row_set = {
        "id": row["DESTINATION_ID"],
        "name": row["DESTINATION_NAME"],
        "kind": row["DESTINATION_KIND"],
        "conditions": json.loads(row["CONDITIONS"]),
        "destination_informations": json.loads(encrypt.decrypt_str(row["DESTINATION_INFORMATIONS"])),
        "create_timestamp": common.datetime_to_str(row["CREATE_TIMESTAMP"]),
        "create_user": row["CREATE_USER"],
        "last_update_timestamp": common.datetime_to_str(row["LAST_UPDATE_TIMESTAMP"]),
        "last_update_user": row["LAST_UPDATE_USER"],
    }

    return row_set


def settings_notification_list(organization_id, workspace_id, event_type_true=None, event_type_false=None):  # noqa: E501
    """List returns list of settings notifications

    Args:
        organization_id (str): organization_id
        workspace_id (str): workspace_id
        event_type_true (str): event_type true item_name (delimit ,)
        event_type_false (str): event_type false item_name (delimit ,)

    Returns:
        Response: http response
    """

    WhereArray = []
    # event_type Trueの抽出SQL作成
    # Create extraction SQL for event_type True
    if event_type_true:
        for cond in event_type_true:
            cond = common.rep_sql_json_para(cond)
            WhereArray.append(f" AND JSON_EXTRACT(CONDITIONS, '$.{cond}') = True")
    # event_type Falseの抽出SQL作成
    # Create extraction SQL for event_type False
    if event_type_false:
        for cond in event_type_false:
            cond = common.rep_sql_json_para(cond)
            WhereArray.append(f" AND JSON_EXTRACT(CONDITIONS, '$.{cond}') = False")

    # 条件結合
    # conditional join
    if len(WhereArray) > 0:
        Where = ' WHERE' + ''.join(WhereArray)[4:]
    else:
        Where = ''

    globals.logger.debug(f"Where:{Where}")

    # destination_id list get
    with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
        with conn.cursor() as cursor:
            cursor.execute(queries_bl_notification.SQL_QUERY_NOTIFICATION_DESTINATION + Where)
            result = cursor.fetchall()

    data = []
    for row in result:
        data.append(settings_notification_rowset(row))

    return data
