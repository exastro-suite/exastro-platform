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
    if connexion.request.is_json:
        body = SettingsDestinationPut.from_dict(connexion.request.get_json())  # noqa: E501
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


def notification_delete(organization_id, workspace_id, destination_id):  # noqa: E501
    """Delete deletes an notification

    Args:
        organization_id (str): organization_id
        workspace_id (str): workspace_id
        destination_id (str): destination_id

    Returns:
        Response: http response
    """
    return 'do some magic!'