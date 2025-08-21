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


@common.platform_exception_handler
def settings_notification_put(body, organization_id, workspace_id, destination_id):  # noqa: E501
    """Put an settings notification

    Args:
        body (dict): json
        organization_id (str): organization_id
        workspace_id (str): workspace_id
        destination_id (str): destination_id

    Returns:
        _type_: _description_
    """
    # if connexion.request.is_json:
    #     body = SettingsDestinationPut.from_dict(connexion.request.get_json())  # noqa: E501
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
        with conn.cursor() as cursor:
            # destination_idの存在チェック
            # exists check to destination_id
            cursor.execute(
                queries_notification.SQL_QUERY_NOTIFICATION_DESTINATION + " WHERE destination_id = %(destination_id)s",
                {"destination_id": destination_id})
            result = cursor.fetchall()

    if len(result) <= 0:
        message_id = f"404-{MSG_FUNCTION_ID}001"
        raise common.NotFoundException(
            message_id=message_id,
            message=multi_lang.get_text(message_id, "通知先情報が存在しません(id:{0})", destination_id)
        )

    # 更新する情報の取得
    # get information to be updated
    # body = connexion.request.get_json()
    destination_name = body.get('name')
    destination_kind = body.get('kind')
    info = body.get("destination_informations")
    conditions = body.get('conditions')
    enable_batch = body.get('enable_batch')
    batch_period_seconds = body.get('batch_period_seconds')
    batch_count_limit = body.get('batch_count_limit')
    user_id = connexion.request.headers.get("User-id")

    # validation check
    validate = validation.validate_destination_name(destination_name)
    if not validate.ok:
        return common.response_validation_error(validate)

    validate = validation.validate_destination_kind(destination_kind)
    if not validate.ok:
        return common.response_validation_error(validate)

    validate = validation.validate_destination_informations(destination_kind, info, enable_batch, batch_period_seconds, batch_count_limit, 'put')
    if not validate.ok:
        return common.response_validation_error(validate)

    validate = validation.validate_destination_conditions(conditions)
    if not validate.ok:
        return common.response_validation_error(validate)

    # ServiceNowの場合かつ、servicenow_passwordが空で送られた場合はservicenow_passwordを更新しないため、元々入っていた値に書き換える。
    # In the case of ServiceNow, if servicenow_password is sent as empty, servicenow_password will not be updated, so it will be rewritten to the original value.
    if destination_kind == const.DESTINATION_KIND_SERVICENOW and not info[0]['servicenow_password']:
        current_destination_informations = json.loads(encrypt.decrypt_str(result[0]['DESTINATION_INFORMATIONS']))
        current_password = current_destination_informations[0].get('servicenow_password')
        info[0]['servicenow_password'] = current_password

    # 通知先更新
    # update Notification
    db = DBconnector()
    with closing(db.connect_workspacedb(organization_id, workspace_id)) as conn:
        with conn.cursor() as cursor:

            sql_where = " WHERE DESTINATION_ID != %(destination_id)s"
            sql_where += " AND DESTINATION_NAME = %(destination_name)s"
            parameter = {
                "destination_id": destination_id,
                "destination_name": destination_name,
            }
            cursor.execute(queries_notification.SQL_QUERY_NOTIFICATION_DESTINATION + sql_where, parameter)
            result = cursor.fetchone()

            # 取得した結果が存在した場合は、エラーとする
            # If the obtained result exists, it will be an error.
            if result is not None:
                message_id = f"400-{MSG_FUNCTION_ID}004"
                message = multi_lang.get_text(
                    message_id,
                    "指定された通知先名はすでに存在しているため更新できません({0})",
                    destination_name,
                )
                raise common.BadRequestException(message_id=message_id, message=message)

            # Check workspace exists
            cursor.execute(
                queries_notification.SQL_QUERY_NOTIFICATION_DESTINATION + " WHERE destination_id = %(destination_id)s FOR UPDATE",
                {"destination_id": destination_id}
            )

            parameter = {
                "destination_id": destination_id,
                "destination_name": destination_name,
                "destination_kind": destination_kind,
                "destination_informations": encrypt.encrypt_str(json.dumps(info)),
                "conditions": json.dumps(conditions),
                "enable_batch": 1 if enable_batch else 0,
                "batch_period_seconds": batch_period_seconds if enable_batch else None,
                "batch_count_limit": batch_count_limit if enable_batch else None,
                "last_update_user": user_id
            }
            cursor.execute(queries_notification.SQL_UPDATE_NOTIFICATION_DESTINATION, parameter)

            conn.commit()

    return common.response_200_ok(None)


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

    name_check = []

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
        validate = validation.validate_destination_informations(row.get('kind'), row.get('destination_informations'), row.get('enable_batch'), row.get('batch_period_seconds'), row.get('batch_count_limit'), 'create')
        if not validate.ok:
            return common.response_validation_error(validate)
        validate = validation.validate_destination_conditions(row.get('conditions'))
        if not validate.ok:
            return common.response_validation_error(validate)

        # nameの一意制約チェック
        # name unique constraint check
        destination_name = row.get('name')
        if destination_name in name_check:
            message_id = f"400-{MSG_FUNCTION_ID}002"
            message = multi_lang.get_text(
                message_id,
                "同じ通知先名は指定できません({0})",
                destination_name,
            )
            raise common.BadRequestException(message_id=message_id, message=message)

        name_check.append(destination_name)

        result = None
        with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
            with conn.cursor() as cursor:
                try:
                    sql_where = " WHERE DESTINATION_NAME = %(destination_name)s"
                    parameter = {
                        "destination_name": destination_name,
                    }
                    try:
                        cursor.execute(queries_notification.SQL_QUERY_NOTIFICATION_DESTINATION + sql_where, parameter)
                        result = cursor.fetchone()

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

        # 取得した結果が存在した場合は、エラーとする
        # If the obtained result exists, it will be an error.
        if result is not None:
            message_id = f"400-{MSG_FUNCTION_ID}003"
            message = multi_lang.get_text(
                message_id,
                "指定された通知先名はすでに存在しているため作成できません({0})",
                destination_name,
            )
            raise common.BadRequestException(message_id=message_id, message=message)

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
                        "enable_batch": 1 if row.get('enable_batch') else 0,
                        "batch_period_seconds": row.get('batch_period_seconds') if row.get('enable_batch') else None,
                        "batch_count_limit": row.get('batch_count_limit') if row.get('enable_batch') else None,
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

    # body = connexion.request.get_json()
    user_id = connexion.request.headers.get("User-id")

    # validation check
    validate = bl_notification_service.validate_notification_register(body)
    if not validate.ok:
        return common.response_validation_error(validate)

    # register
    bl_notification_service.notification_register(body, organization_id, workspace_id, user_id)

    return common.response_200_ok(data=None)


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

    data = bl_notification_service.notification_list(organization_id, workspace_id, page_size, current_page, details_info, func_id, match, like_before, like_after, like_all)

    return common.response_200_ok(data)


@common.platform_exception_handler
def notification_delete(organization_id, workspace_id, destination_id):  # noqa: E501
    """Delete deletes an notification

    Args:
        organization_id (str): organization_id
        workspace_id (str): workspace_id
        destination_id (str): destination_id

    Returns:
        Response: http response
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")
    globals.logger.debug(f"destination_id:{destination_id}")

    r = connexion.request

    user_id = r.headers.get("User-id")
    encode_roles = r.headers.get("Roles")
    language = r.headers.get("Language")

    globals.logger.debug(f"user_id:{user_id}")
    globals.logger.debug(f"roles:{encode_roles}")
    globals.logger.debug(f"language:{language}")

    bl_notification_service.settings_notification_delete(organization_id, workspace_id, destination_id, user_id, encode_roles, language)

    return common.response_200_ok(data=None)
