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

import connexion
from contextlib import closing
import json
import inspect
import pymysql
import ulid

from common_library.common import common, validation, const
from common_library.common.db import DBconnector
from common_library.common import multi_lang, encrypt
from common_library.common import bl_notification_service
from libs import queries_notification

import globals

MSG_FUNCTION_ID = "34"


@common.platform_exception_handler
def settings_destination_get(organization_id, workspace_id, destination_id):  # noqa: E501
    """List returns list of settings notifications

    Args:
        organization_id (str): organization_id
        workspace_id (str): workspace_id
        destination_id (str): destination_id

    Returns:
        Response: http response
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    data = bl_notification_service.settings_destination_get(organization_id, workspace_id, destination_id)

    return common.response_200_ok(data)


def settings_destination_put(body, organization_id, workspace_id, destination_id):  # noqa: E501
    """Put an settings destination

     # noqa: E501

    :param body:
    :type body: dict | bytes
    :param organization_id:
    :type organization_id: str
    :param workspace_id:
    :type workspace_id: str
    :param destination_id:
    :type destination_id: str

    :rtype: InlineResponse2002
    """
    return 'do some magic!'


@common.platform_exception_handler
def settings_notification_create(body, organization_id, workspace_id):  # noqa: E501
    """Create creates an settings notifications

    Args:
        body (dict): json
        organization_id (str): organization_id
        workspace_id (str): workspace_id

    Returns:
        _type_: _description_
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    body = connexion.request.get_json()

    # validation check
    validate = validation.validate_destinations(body)
    if not validate.ok:
        return common.response_validation_error(validate)

    for row in body:
        validate = validation.validate_destination_id(row.get('id'))
        if not validate.ok:
            return common.response_validation_error(validate)
        validate = validation.validate_destination_name(row.get('name'))
        if not validate.ok:
            return common.response_validation_error(validate)
        validate = validation.validate_destination_kind(row.get('kind'))
        if not validate.ok:
            return common.response_validation_error(validate)
        validate = validation.validate_destination_informations(row.get('kind'), row.get('destination_informations'))
        if not validate.ok:
            return common.response_validation_error(validate)
        validate = validation.validate_destination_conditions(row.get('conditions'))
        if not validate.ok:
            return common.response_validation_error(validate)

    user_id = connexion.request.headers.get("User-id")

    with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
        with conn.cursor() as cursor:
            for row in body:
                try:
                    parameter = {
                        "destination_id": row.get('id'),
                        "destination_name": row.get('name'),
                        "destination_kind": row.get('kind'),
                        "destination_informations": encrypt.encrypt_str(json.dumps(row.get('destination_informations'))),
                        "conditions": json.dumps(row.get('conditions')),
                        "create_user": user_id,
                        "last_update_user": user_id
                    }
                    try:
                        cursor.execute(queries_notification.SQL_INSERT_NOTIFICATION_DESTINATION, parameter)
                    except pymysql.err.IntegrityError:
                        # Duplicate PRIMARY KEY
                        message_id = f"400-{MSG_FUNCTION_ID}001"
                        message = multi_lang.get_text(
                            message_id,
                            "指定された通知先はすでに存在しているため作成できません(id:{0})",
                            parameter['destination_id'],
                        )
                        raise common.BadRequestException(message_id=message_id, message=message)

                    except Exception as e:
                        globals.logger.error(f"exception:{e.args}")
                        message_id = f"500-{MSG_FUNCTION_ID}001"
                        message = multi_lang.get_text(
                            message_id,
                            "通知先の作成に失敗しました(id:{0})",
                            parameter['destination_id'],
                        )
                        raise common.InternalErrorException(message_id=message_id, message=message)

                except Exception as e:
                    conn.rollback()
                    raise e

            conn.commit()

    return common.response_200_ok(data=None)


@common.platform_exception_handler
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

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    globals.logger.debug(f"event_type_true:{event_type_true} --- event_type_false:{event_type_false}")

    data = bl_notification_service.settings_notification_list(organization_id, workspace_id, event_type_true, event_type_false)

    return common.response_200_ok(data)


@common.platform_exception_handler
def notification_list(organization_id, workspace_id, page_size=None, current_page=None, details_info=None, func_id=None, match=None, like_before=None, like_after=None, like_all=None):  # noqa: E501
    """Returns a list of message notifications

    Args:
        :param organization_id:
        :type organization_id: str
        :param workspace_id:
        :type workspace_id: str
        :param page_size: Maximum number of return values ​​at one time (default: 100)
        :type page_size: float
        :param current_page: Current display page (default: 1)
        :type current_page: float
        :param details_info: With message output
        :type details_info: bool
        :param func_id: Filter by function ID
        :type func_id: str
        :param match: Specify exact match condition
        :type match: str
        :param like_before: Specifying conditions for beginning match
        :type like_before: str
        :param like_after: Specifying conditions for suffix match
        :type like_after: str
        :param like_all: Specifying conditions for fuzzy search
        :type like_all: str

    Returns:
        Response: http response
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    globals.logger.debug(f"connexion.request.query_string:{connexion.request.query_string}")
    globals.logger.debug(f"match:{match}")

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
            cursor.execute(queries_notification.SQL_QUERY_NOTIFICATION_DESTINATION + Where, values)
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

    return common.response_200_ok(data)


@common.platform_exception_handler
def notification_register(body, organization_id, workspace_id):  # noqa: E501
    """Register for message notifications

    Args:
        body (dict): json
        organization_id (str): organization_id
        workspace_id (str): workspace_id

    Returns:
        Response: http response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    body = connexion.request.get_json()

    # validation check
    validate = validation.validate_notifications(body)
    if not validate.ok:
        return common.response_validation_error(validate)

    for row in body:
        validate = validation.validate_destination_id(row.get('destination_id'))
        if not validate.ok:
            return common.response_validation_error(validate)
        validate = validation.validate_func_id(row.get('func_id'))
        if not validate.ok:
            return common.response_validation_error(validate)
        globals.logger.debug("func_informations:{0}".format(row.get('func_informations')))
        validate = validation.validate_func_informations(row.get('func_informations'))
        if not validate.ok:
            return common.response_validation_error(validate)
        validate = validation.validate_notification_message(row.get('message'))
        if not validate.ok:
            return common.response_validation_error(validate)

    user_id = connexion.request.headers.get("User-id")

    insert_notifications = []
    with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
        with conn.cursor() as cursor:
            for row in body:
                destination_id = row.get('destination_id')
                # destination_idの存在チェック
                # exists check to destination_id
                cursor.execute(
                    queries_notification.SQL_QUERY_NOTIFICATION_DESTINATION + " WHERE destination_id = %(destination_id)s",
                    {"destination_id": destination_id}
                )

                destinations = cursor.fetchall()
                if len(destinations) == 0:
                    raise common.NotFoundException(
                        message_id=f"404-{MSG_FUNCTION_ID}001",
                        message=multi_lang.get_text(f"404-{MSG_FUNCTION_ID}001", "通知先情報が存在しません(id:{0})", destination_id)
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
                        cursor.execute(queries_notification.SQL_INSERT_NOTIFICATION_MESSAGE, parameter)

                    except Exception as e:
                        globals.logger.error(f"exception:{e.args}")
                        message_id = f"500-{MSG_FUNCTION_ID}002"
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
                        cursor.execute(queries_notification.SQL_INSERT_PROCESS_QUEUE, parameter)

                        # QUEUEは1件ずつコミット
                        # QUEUE commits one item at a time
                        conn.commit()

                    except Exception as e:
                        globals.logger.error(f"exception:{e.args}")
                        message_id = f"500-{MSG_FUNCTION_ID}003"
                        message = multi_lang.get_text(
                            message_id,
                            "処理キューの登録に失敗しました(process id:{0})",
                            parameter['process_id'],
                        )
                        raise common.InternalErrorException(message_id=message_id, message=message)

                except Exception as e:
                    conn.rollback()
                    raise e

    return common.response_200_ok(data=None)
