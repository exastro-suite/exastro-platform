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
import ulid

from common_library.common import common, validation, const
from common_library.common.db import DBconnector
from common_library.common import encrypt
from common_library.common import multi_lang
from common_library.common.libs import queries_bl_notification
from common_library.common import api_ita_admin_call
from common_library.common import organization_options

import globals


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

    # 取得した結果が存在しない場合は、何もしない
    # If the obtained result does not exist, do nothing
    if result is not None:
        globals.logger.debug(f"result:{result}")
        data = settings_notification_rowset(result)

        return data
    else:
        raise common.NotFoundException(
            message_id="404-35001",
            message=multi_lang.get_text("404-35001", "通知先情報が存在しません(id:{0})", destination_id)
        )


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


def validate_notification_register(body):  # noqa: E501
    """ register message notifications validate check

    Args:
        body (dict): json

    Returns:
        Response: validate response
    """

    # validation check
    validate = validation.validate_notifications(body)
    if not validate.ok:
        return validate

    for row in body:
        validate = validation.validate_destination_id(row.get('destination_id'))
        if not validate.ok:
            return validate
        validate = validation.validate_func_id(row.get('func_id'))
        if not validate.ok:
            return validate
        globals.logger.debug("func_informations:{0}".format(row.get('func_informations')))
        validate = validation.validate_func_informations(row.get('func_informations'))
        if not validate.ok:
            return validate
        validate = validation.validate_notification_message(row.get('message'))
        if not validate.ok:
            return validate

    return validation.result(True)


def notification_register(body, organization_id, workspace_id, user_id):  # noqa: E501
    """Register for message notifications

    Args:
        body (dict): json
        organization_id (str): organization_id
        workspace_id (str): workspace_id
        user_id (str): user_id

    Returns:
        Response: http response
    """

    insert_notifications = []
    with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
        with conn.cursor() as cursor:
            for row in body:
                destination_id = row.get('destination_id')
                # destination_idの存在チェック
                # exists check to destination_id
                cursor.execute(
                    queries_bl_notification.SQL_QUERY_NOTIFICATION_DESTINATION + " WHERE destination_id = %(destination_id)s",
                    {"destination_id": destination_id}
                )

                destinations = cursor.fetchall()
                if len(destinations) == 0:
                    raise common.NotFoundException(
                        message_id="404-35001",
                        message=multi_lang.get_text("404-35001", "通知先情報が存在しません(id:{0})", destination_id)
                    )
                destination = destinations[0]

                insert_notifications.append({
                    "notification_id": ulid.new().str,
                    "destination_id": destination.get('DESTINATION_ID'),
                    "destination_name": destination.get('DESTINATION_NAME'),
                    "destination_kind": destination.get('DESTINATION_KIND'),
                    "destination_informations": destination.get('DESTINATION_INFORMATIONS'),
                    "conditions": destination.get('CONDITIONS'),
                    "func_id": row.get('func_id'),
                    "func_informations": json.dumps(row.get('func_informations')),
                    "message_informations": json.dumps(row.get('message')),
                    "notification_status": const.NOTIFICATION_STATUS_UNSENT,
                    "notification_timestamp": None,
                    "create_user": user_id,
                    "last_update_user": user_id
                })

    with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
        with conn.cursor() as cursor:
            for parameter in insert_notifications:
                try:
                    try:
                        cursor.execute(queries_bl_notification.SQL_INSERT_NOTIFICATION_MESSAGE, parameter)

                    except Exception as e:
                        globals.logger.error(f"exception:{e.args}")
                        message_id = "500-35003"
                        message = multi_lang.get_text(
                            message_id,
                            "メッセージ通知の登録に失敗しました(destination id:{0})",
                            parameter['destination_id'],
                        )
                        raise common.InternalErrorException(message_id=message_id, message=message)

                except Exception as e:
                    conn.rollback()
                    raise e

            conn.commit()

    with closing(DBconnector().connect_platformdb()) as conn:
        with conn.cursor() as cursor:
            for notifications_row in insert_notifications:
                parameter = {
                    "process_id": ulid.new().str,
                    "process_kind": const.PROCESS_KIND_NOTIFICATION,
                    "process_exec_id": notifications_row.get("notification_id"),
                    "organization_id": organization_id,
                    "workspace_id": workspace_id,
                    "last_update_user": user_id,
                }
                try:
                    try:
                        cursor.execute(queries_bl_notification.SQL_INSERT_PROCESS_QUEUE, parameter)

                        # QUEUEは1件ずつコミット
                        # QUEUE commits one item at a time
                        conn.commit()

                    except Exception as e:
                        globals.logger.error(f"exception:{e.args}")
                        message_id = "500-35003"
                        message = multi_lang.get_text(
                            message_id,
                            "処理キューの登録に失敗しました(process id:{0})",
                            parameter['process_id'],
                        )
                        raise common.InternalErrorException(message_id=message_id, message=message)

                except Exception as e:
                    conn.rollback()
                    raise e

    return


def notification_list(organization_id, workspace_id, page_size=None, current_page=None, details_info=None, func_id=None, match=None, like_before=None, like_after=None, like_all=None):  # noqa: E501
    """
    """

    WhereArray = []
    values = {}
    # event_type Trueの抽出SQL作成
    # Create extraction SQL for event_type True
    if match:
        col = True
        colName = ""
        for cond in match:
            if col:
                colName = common.rep_sql_json_para(cond)
                col ^= True
            else:
                values.update({f"values{len(values)+1}": common.rep_sql_json_para(cond)})
                WhereArray.append(f" AND JSON_EXTRACT(CONDITIONS, '$.{colName}') = %(values{len(values)})s")
                col ^= True
    if like_before:
        col = True
        colName = ""
        for cond in like_before:
            if col:
                colName = common.rep_sql_json_para(cond)
                col ^= True
            else:
                values.update({f"values{len(values)+1}": "%" + common.rep_sql_json_para(cond)})
                WhereArray.append(f" AND JSON_EXTRACT(CONDITIONS, '$.{colName}') LIKE %(values{len(values)})s")
                col ^= True
    if like_after:
        col = True
        colName = ""
        for cond in like_after:
            if col:
                colName = common.rep_sql_json_para(cond)
                col ^= True
            else:
                values.update({f"values{len(values)+1}": common.rep_sql_json_para(cond) + "%"})
                WhereArray.append(f" AND JSON_EXTRACT(CONDITIONS, '$.{colName}') LIKE %(values{len(values)})s")
                col ^= True
    if like_all:
        col = True
        colName = ""
        for cond in like_all:
            if col:
                colName = common.rep_sql_json_para(cond)
                col ^= True
            else:
                values.update({f"values{len(values)+1}": "%" + common.rep_sql_json_para(cond) + "%"})
                WhereArray.append(f" AND JSON_EXTRACT(CONDITIONS, '$.{colName}') LIKE %(values{len(values)})s")
                col ^= True
    # 条件結合
    # conditional join
    if len(WhereArray) > 0:
        Where = ' WHERE' + ''.join(WhereArray)[4:]
    else:
        Where = ''

    globals.logger.debug(f"Where:{Where}")
    globals.logger.debug(f"values:{values}")

    """ ↓試験用のロジック"""
    # destination_id list get
    with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
        with conn.cursor() as cursor:
            cursor.execute(queries_bl_notification.SQL_QUERY_NOTIFICATION_DESTINATION + Where, values)
            result = cursor.fetchall()
    data = []
    for row in result:
        # 該当のロールがある場合のみ、設定
        # Set only if there is a corresponding role
        # if row["DESTINATION_ID"] in posible_destination_id or posible_all_workspace:
        row = {
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
        data.append(row)
    """ ↑試験用のロジック """

    return data


def settings_notification_delete(organization_id, workspace_id, destination_id, user_id, roles, language):
    """Delete a notification destination

    Args:
        organization_id (str): organization_id
        workspace_id (str): workspace_id
        destination_id (str): destination_id
        user_id (str): user_id
        roles (str): roles
        language (str): language
    """

    if organization_options.is_enabled_options_ita_drivers(organization_id, "oase"):
        # OASEが有効の場合、通知先で使用されているかチェックする

        # ITAに通知先IDを利用しているか問い合わせる
        # 通知先として利用されている場合は削除不可とするため、エラーを返す
        check_target = {
            "rule": [
                "before_notification_destination",
                "after_notification_destination"
            ]
        }

        check_id_list = []
        for key, value in check_target.items():
            for item in value:
                r_ita_notification_destination = api_ita_admin_call.ita_notification_destination(
                    organization_id, workspace_id, key, item, user_id, roles, language)

                if r_ita_notification_destination.status_code != 200:
                    message_id = "500-35002"
                    message = multi_lang.get_text(message_id, "利用中の通知先の取得に失敗しました(menu:{0} column:{1})", key, item)
                    raise common.InternalErrorException(message_id=message_id, message=message)

                result_dict = r_ita_notification_destination.json()
                check_id_list.extend(json.loads(result_dict.get("data")))

        #  重複を排除する
        check_id_list = list(set(check_id_list))

        if destination_id in check_id_list:
            message_id = "400-35001"
            message = multi_lang.get_text(message_id, "指定された通知先は利用されているため削除できません(destination id:{0})", destination_id)
            raise common.BadRequestException(message_id=message_id, message=message)

    with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
        with conn.cursor() as cursor:
            try:
                cursor.execute(queries_bl_notification.SQL_DELETE_NOTIFICATION_DESTINATION, {"destination_id": destination_id})
                conn.commit()
            except Exception as e:
                globals.logger.error(f"exception:{e.args}")
                message_id = "500-35001"
                message = multi_lang.get_text(
                    message_id,
                    "通知先の削除に失敗しました(destination id:{0})",
                    destination_id
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

    return None
