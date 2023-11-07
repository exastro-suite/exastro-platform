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

from common_library.common import common, validation
from common_library.common.db import DBconnector
from common_library.common import multi_lang, encrypt
from libs import queries_notification

import globals

MSG_FUNCTION_ID = "34"


@common.platform_exception_handler
def settings_destination_get(organization_id, workspace_id, destination_id, query_string=None):  # noqa: E501
    """Returns of settings destination

    :param organization_id: 
    :type organization_id: str
    :param workspace_id: 
    :type workspace_id: str
    :param destination_id: 
    :type destination_id: str
    :param query_string: 
    :type query_string: str

    :rtype: settings destination
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

            cursor.execute(queries_notification.SQL_QUERY_NOTIFICATION_DESTINATION + str_where, parameter)
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
def settings_notification_list(organization_id, workspace_id):  # noqa: E501
    """List returns list of settings notifications

    :param organization_id: 
    :type organization_id: str
    :param workspace_id: 
    :type workspace_id: str

    :rtype: settings notifications
    """
# destination_id list get
    with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
        with conn.cursor() as cursor:
            cursor.execute(queries_notification.SQL_QUERY_NOTIFICATION_DESTINATION)
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
    return common.response_200_ok(data)

@common.platform_exception_handler
def notification_list(organization_id, workspace_id, page_size=None, current_page=None, details_info=None, func_id=None, match_key=None, like_before_key=None, like_after_key=None, like_all_key=None):  # noqa: E501
    """Returns a list of message notifications

     # noqa: E501

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
    :param match_key: Specify exact match condition
    :type match_key: str
    :param like_before_key: Specifying conditions for beginning match
    :type like_before_key: str
    :param like_after_key: Specifying conditions for suffix match
    :type like_after_key: str
    :param like_all_key: Specifying conditions for fuzzy search
    :type like_all_key: str

    :rtype: InlineResponse20013
    """
    return common.response_200_ok(data=None)


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

    # # validation check
    # validate = validation.validate_destinations(body)
    # if not validate.ok:
    #     return common.response_validation_error(validate)
            
    # for row in body:
    #     validate = validation.validate_destination_id(row.get('id'))
    #     if not validate.ok:
    #         return common.response_validation_error(validate)
    #     validate = validation.validate_destination_name(row.get('name'))
    #     if not validate.ok:
    #         return common.response_validation_error(validate)
    #     validate = validation.validate_destination_kind(row.get('kind'))
    #     if not validate.ok:
    #         return common.response_validation_error(validate)
    #     validate = validation.validate_destination_informations(row.get('kind'), row.get('destination_informations'))
    #     if not validate.ok:
    #         return common.response_validation_error(validate)
    #     validate = validation.validate_destination_conditions(row.get('conditions'))
    #     if not validate.ok:
    #         return common.response_validation_error(validate)

    # user_id = connexion.request.headers.get("User-id")

    # with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
    #     with conn.cursor() as cursor:
    #         for row in body:
    #             try:
    #                 parameter = {
    #                     "destination_id": row.get('id'),
    #                     "destination_name": row.get('name'),
    #                     "destination_kind": row.get('kind'),
    #                     "destination_informations": encrypt.encrypt_str(json.dumps(row.get('destination_informations'))),
    #                     "conditions": json.dumps(row.get('conditions')),
    #                     "create_user": user_id,
    #                     "last_update_user": user_id
    #                 }
    #                 try:
    #                     cursor.execute(queries_notification.SQL_INSERT_NOTIFICATION_DESTINATION, parameter)
    #                 except pymysql.err.IntegrityError:
    #                     # Duplicate PRIMARY KEY
    #                     message_id = f"400-{MSG_FUNCTION_ID}001"
    #                     message = multi_lang.get_text(
    #                         message_id,
    #                         "指定された通知先はすでに存在しているため作成できません(id:{0})",
    #                         parameter['destination_id'],
    #                     )
    #                     raise common.BadRequestException(message_id=message_id, message=message)

    #                 except Exception as e:
    #                     globals.logger.error(f"exception:{e.args}")
    #                     message_id = f"500-{MSG_FUNCTION_ID}001"
    #                     message = multi_lang.get_text(
    #                         message_id,
    #                         "通知先の作成に失敗しました(id:{0})",
    #                         parameter['destination_id'],
    #                     )
    #                     raise common.InternalErrorException(message_id=message_id, message=message)

    #             except Exception as e:
    #                 conn.rollback()
    #                 raise e

    #         conn.commit()

    return common.response_200_ok(data=None)
