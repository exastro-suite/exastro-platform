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


def settings_destination_get(organization_id, workspace_id, destination_id):  # noqa: E501
    """Returns of settings destination

     # noqa: E501

    :param organization_id: 
    :type organization_id: str
    :param workspace_id: 
    :type workspace_id: str
    :param destination_id: 
    :type destination_id: str

    :rtype: InlineResponse20013
    """
    return 'do some magic!'


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
        validate = validation.validate_destination_id(row['id'])
        if not validate.ok:
            return common.response_validation_error(validate)
        validate = validation.validate_destination_name(row['name'])
        if not validate.ok:
            return common.response_validation_error(validate)
        validate = validation.validate_destination_kind(row['kind'])
        if not validate.ok:
            return common.response_validation_error(validate)
        validate = validation.validate_destination_info(row['kind'], row['informations'])
        if not validate.ok:
            return common.response_validation_error(validate)

    user_id = connexion.request.headers.get("User-id")

    with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
        with conn.cursor() as cursor:
            for row in body:
                try:
                    parameter = {
                        "destination_id": row['id'],
                        "destination_name": row['name'],
                        "destination_kind": row['kind'],
                        "destination_info": encrypt.encrypt_str(json.dumps(row['informations'])),
                        "create_user": user_id,
                        "last_update_user": user_id
                    }
                    try:
                        cursor.execute(queries_notification.SQL_INSERT_NOTIFICATION_DESTINATION, parameter)
                    except pymysql.err.IntegrityError:
                        # Duplicate PRIMARY KEY
                        message_id = f"400-{MSG_FUNCTION_ID}004"
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


def settings_notification_list(organization_id, workspace_id):  # noqa: E501
    """List returns list of settings notifications

     # noqa: E501

    :param organization_id: 
    :type organization_id: str
    :param workspace_id: 
    :type workspace_id: str

    :rtype: InlineResponse20016
    """
    return 'do some magic!'