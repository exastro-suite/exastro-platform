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
import inspect

from common_library.common import common

import globals

MSG_FUNCTION_ID = "27"


@common.platform_exception_handler
def limit_list():
    """List returns list of limits

    Returns:
        _type_: _description_
    """

    data = []
    return common.response_200_ok(data)


@common.platform_exception_handler
def plan_create(body):
    """Create creates an plan

    Args:
        body (dict): _description_

    Returns:
        _type_: _description_
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    body = connexion.request.get_json()
    if not body:
        raise common.BadRequestException(
            message_id='400-000002', message='リクエストボディのパラメータ({0})が不正です。'.format('Json')
        )

    return common.response_200_ok(data=None)


@common.platform_exception_handler
def plan_list():
    """List returns list of plans

    Returns:
        _type_: _description_
    """

    data = []
    return common.response_200_ok(data)


@common.platform_exception_handler
def organization_plan_create(body, organization_id):
    """Set plan to the organization

    Args:
        body (dict): _description_
        organization_id (str): organization id

    Returns:
        _type_: _description_
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    body = connexion.request.get_json()
    if not body:
        raise common.BadRequestException(
            message_id='400-000002', message='リクエストボディのパラメータ({0})が不正です。'.format('Json')
        )

    return common.response_200_ok(data=None)
