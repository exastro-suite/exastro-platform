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
from datetime import datetime

from common_library.common import common, validation
from common_library.common import const as common_const
from common_library.common.db import DBconnector
from common_library.common import multi_lang
from common_library.common import bl_plan_service
from libs import queries_plans

import globals

MSG_FUNCTION_ID = "27"


@common.platform_exception_handler
def plan_item_list():
    """List returns list of plan items

    Returns:
        _type_: _description_
    """

    with closing(DBconnector().connect_platformdb()) as conn:
        with conn.cursor() as cursor:

            cursor.execute(queries_plans.SQL_QUERY_PLAN_ITEMS)
            plan_items = cursor.fetchall()

            cursor.execute(queries_plans.SQL_QUERY_PLAN_LIMITS + " WHERE PLAN_ID = %(plan_id)s", {"plan_id": common_const.DEFAULT_PLAN_ID})
            default_limits = cursor.fetchall()

    data = []
    for plan_item in plan_items:
        data_item = {
            "id": plan_item["LIMIT_ID"],
            "informations": json.loads(plan_item["INFORMATIONS"]),
        }
        data_item["informations"]["default"] = next((limit["LIMIT_VALUE"] for limit in default_limits if limit["LIMIT_ID"] == plan_item["LIMIT_ID"]), None)

        data.append(data_item)

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
        message_id = "400-000002"
        message = multi_lang.get_text(
            message_id,
            "リクエストボディのパラメータ({0})が不正です。",
            'Json',
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    user_id = connexion.request.headers.get("User-id")
    plan_id = body.get("id")
    plan_name = body.get("name")
    limits = body.get("limits") if body.get("limits") else {}
    info = body.get("informations")

    if info:
        description = info.get("description") if info.get("description") else ""
    else:
        description = ""

    # validation check
    validate = validation.validate_plan_id(plan_id)
    if not validate.ok:
        return common.response_validation_error(validate)
    validate = validation.validate_plan_name(plan_name)
    if not validate.ok:
        return common.response_validation_error(validate)
    validate = validation.validate_plan_informations(info)
    if not validate.ok:
        return common.response_validation_error(validate)
    validate = validation.validate_plan_limits(limits)
    if not validate.ok:
        return common.response_validation_error(validate)

    # DB登録
    #  insert plan and plan_limit
    with closing(DBconnector().connect_platformdb()) as conn:
        with conn.cursor() as cursor:

            # check limit_id and limit_value
            cursor.execute(queries_plans.SQL_QUERY_PLAN_ITEMS)
            result_limits = cursor.fetchall()
            limit_ids = [str(d.get("LIMIT_ID")).lower() for d in result_limits]

            for limit_id, limit_value in limits.items():
                limit_id = str(limit_id).lower()
                if limit_id not in limit_ids:
                    message_id = f"400-{MSG_FUNCTION_ID}001"
                    message = multi_lang.get_text(
                        message_id,
                        "指定可能なリミットIDではありません。(対象ID:{0})",
                        limit_id,
                    )
                    raise common.BadRequestException(message_id=message_id, message=message)

                informations = [d.get("INFORMATIONS") for d in result_limits if d.get("LIMIT_ID") == limit_id][0]
                json_dict = json.loads(informations)
                if (json_dict.get("max") and limit_value > int(json_dict.get("max"))) or \
                   (limit_value < 0):
                    message_id = f"400-{MSG_FUNCTION_ID}002"
                    message = multi_lang.get_text(
                        message_id,
                        "指定可能なリミット値の範囲外です。(対象ID:{0})",
                        limit_id,
                    )
                    raise common.BadRequestException(message_id=message_id, message=message)

            if len(limit_ids) != len(limits):
                message_id = f"400-{MSG_FUNCTION_ID}003"
                message = multi_lang.get_text(
                    message_id,
                    "値が指定されていないリミットIDがあります。",
                )
                raise common.BadRequestException(message_id=message_id, message=message)

            # insert plan
            informations = {"description": description, }
            parameter = {
                "plan_id": plan_id,
                "plan_name": plan_name,
                "informations": json.dumps(informations, ensure_ascii=False),
                "create_user": user_id,
                "last_update_user": user_id,
            }
            try:
                cursor.execute(queries_plans.SQL_INSERT_PLAN, parameter)
            except pymysql.err.IntegrityError:
                # Duplicate PRIMARY KEY
                message_id = f"400-{MSG_FUNCTION_ID}004"
                message = multi_lang.get_text(
                    message_id,
                    "指定されたプランはすでに存在しているため作成できません(Plan:{0})",
                    plan_id,
                )
                raise common.BadRequestException(message_id=message_id, message=message)
            except Exception as e:
                globals.logger.error(f"exception:{e.args}")
                message_id = f"500-{MSG_FUNCTION_ID}001"
                message = multi_lang.get_text(
                    message_id,
                    "プランの作成に失敗しました(Plan:{0})",
                    plan_id,
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

            # insert plan_limit
            parameters = []
            for limit_id, limit_value in limits.items():
                parameter = {
                    "plan_id": plan_id,
                    "limit_id": limit_id,
                    "limit_value": limit_value,
                    "create_user": user_id,
                    "last_update_user": user_id,
                }
                parameters.append(parameter)

            try:
                cursor.executemany(queries_plans.SQL_INSERT_PLAN_LIMIT, parameters)
            except pymysql.err.IntegrityError:
                # Duplicate PRIMARY KEY
                message_id = f"400-{MSG_FUNCTION_ID}005"
                message = multi_lang.get_text(
                    message_id,
                    "指定されたプラン・リミット値はすでに存在しているため作成できません(Plan:{0})",
                    plan_id,
                )
                raise common.BadRequestException(message_id=message_id, message=message)
            except Exception as e:
                globals.logger.error(f"exception:{e.args}")
                message_id = f"500-{MSG_FUNCTION_ID}002"
                message = multi_lang.get_text(
                    message_id,
                    "プラン・リミット値の作成に失敗しました(Plan:{0})",
                    plan_id,
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

            conn.commit()

    return common.response_200_ok(data=None)


@common.platform_exception_handler
def plan_list():
    """List returns list of plans

    Returns:
        _type_: _description_
    """

    # plan and plan_limit list get
    with closing(DBconnector().connect_platformdb()) as conn:
        with conn.cursor() as cursor:

            cursor.execute(queries_plans.SQL_QUERY_PLANS)
            result_plans = cursor.fetchall()
            cursor.execute(queries_plans.SQL_QUERY_PLAN_LIMITS)
            result_plan_limits = cursor.fetchall()

    data = []
    for row_plan in result_plans:
        row = {
            "id": row_plan["PLAN_ID"],
            "name": row_plan["PLAN_NAME"],
            "informations": json.loads(row_plan["INFORMATIONS"]),
            "create_timestamp": common.datetime_to_str(row_plan["CREATE_TIMESTAMP"]),
            "create_user": row_plan["CREATE_USER"],
            "last_update_timestamp": common.datetime_to_str(row_plan["LAST_UPDATE_TIMESTAMP"]),
            "last_update_user": row_plan["LAST_UPDATE_USER"],
        }

        limits = {}
        same_id_limits = [pl for pl in result_plan_limits if str(pl["PLAN_ID"]).lower() == str(row_plan["PLAN_ID"]).lower()]
        for row_plan_limit in same_id_limits:
            limits[row_plan_limit["LIMIT_ID"]] = row_plan_limit["LIMIT_VALUE"]

        row["limits"] = limits

        data.append(row)

    return common.response_200_ok(data)


@common.platform_exception_handler
def organization_plan_get(organization_id):
    """Get plan of the organization

    Args:
        organization_id (str): organization id

    Returns:
        response: HTTP Response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    data = bl_plan_service.organization_plan_get(organization_id)

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
        message_id = "400-000002"
        message = multi_lang.get_text(
            message_id,
            "リクエストボディのパラメータ({0})が不正です。",
            'Json',
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    # organizationチェック
    # check organization
    DBconnector().get_organization_private(organization_id)

    r = connexion.request
    user_id = r.headers.get("User-id")
    plan_id = body.get("id")
    plan_start_datetime = body.get("start_datetime")

    # validation check
    validate = validation.validate_plan_id(plan_id)
    if not validate.ok:
        return common.response_validation_error(validate)

    validate = validation.validate_plan_start_datetime(plan_start_datetime)
    if not validate.ok:
        return common.response_validation_error(validate)

    # PLAN情報設定
    bl_plan_service.organization_plan_create(user_id, organization_id, plan_id, plan_start_datetime)

    return common.response_200_ok(data=None)


@common.platform_exception_handler
def organization_plan_delete(organization_id, plan_start_datetime):
    """Set plan to the organization

    Args:
        organization_id (str): organization id
        plan_start_datetime (str): plan start datetime

    Returns:
        _type_: _description_
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # organizationチェック
    # check organization
    DBconnector().get_organization_private(organization_id)

    # validation check
    validate = validation.validate_plan_start_datetime(plan_start_datetime)
    if not validate.ok:
        return common.response_validation_error(validate)

    # PLAN情報取得
    # get plan info.
    db = DBconnector()
    with closing(db.connect_platformdb()) as conn:
        with conn.cursor() as cursor:

            parameter = {
                "organization_id": organization_id,
                "plan_start_datetime": datetime.strptime(plan_start_datetime, common_const.FORMAT_DATETIME_PLAN_START_DATETIME),
            }
            where = " WHERE organization_id = %(organization_id)s" + \
                    " AND start_timestamp = %(plan_start_datetime)s"
            try:
                cursor.execute(queries_plans.SQL_QUERY_ORGANIZATION_PLAN + where, parameter)
                result = cursor.fetchone()

                if not result:
                    globals.logger.error(f"organization plan not found id:{organization_id} plan_start_datetime:{plan_start_datetime}")
                    message_id = f"404-{MSG_FUNCTION_ID}002"
                    message = multi_lang.get_text(
                        message_id,
                        "指定されたプラン開始日時に該当するorganizationプランが存在しません(対象ID:{0}, プラン開始日時:{1})",
                        organization_id,
                        plan_start_datetime,
                    )
                    raise common.NotFoundException(message_id=message_id, message=message)

            except common.NotFoundException:
                raise
            except Exception as e:
                globals.logger.error(f"exception:{e.args}")
                message_id = f"500-{MSG_FUNCTION_ID}003"
                message = multi_lang.get_text(
                    message_id,
                    "organizationに設定されているプランの取得に失敗しました(対象ID:{0} プラン開始日時:{1})",
                    organization_id,
                    plan_start_datetime,
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

            parameter = {
                "organization_id": organization_id,
                "start_timestamp": datetime.strptime(plan_start_datetime, common_const.FORMAT_DATETIME_PLAN_START_DATETIME),
            }
            try:
                cursor.execute(queries_plans.SQL_DELETE_ORGANIZATION_PLAN, parameter)

                conn.commit()

            except Exception as e:
                globals.logger.error(f"exception:{e.args}")
                message_id = f"500-{MSG_FUNCTION_ID}004"
                message = multi_lang.get_text(
                    message_id,
                    "organizationに設定されているプランの削除に失敗しました(対象ID:{0} プラン開始日時:{1})",
                    organization_id,
                    plan_start_datetime,
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

    return common.response_200_ok(data=None)


@common.platform_exception_handler
def organization_limits_get(organization_id, limit_id=None):
    """Returns the current limits value

    Args:
        organization_id (str): organization_id
        limit_id (str, optional): filter limit id. (prefix match). Defaults to None.

    Returns:
        response: HTTP Response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # check organization
    DBconnector().get_organization_private(organization_id)

    # plan and plan_limit list get
    data = bl_plan_service.organization_limits_get(organization_id, limit_id)

    return common.response_200_ok(data)
