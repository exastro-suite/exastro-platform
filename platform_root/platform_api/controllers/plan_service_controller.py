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
from common_library.common.db import DBconnector
from common_library.common import multi_lang
from libs import queries_plans

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

    user_id = connexion.request.headers.get("User-id")
    encode_roles = connexion.request.headers.get("Roles")
    # roles = base64.b64decode(encode_roles).decode()
    language = connexion.request.headers.get("Language")

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
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, validate.args)
    validate = validation.validate_plan_name(plan_name)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, validate.args)
    validate = validation.validate_plan_informations(info)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, validate.args)
    validate = validation.validate_plan_limits(limits)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, validate.args)

    # DB登録
    #  insert plan and plan_limit
    with closing(DBconnector().connect_platformdb()) as conn:
        with conn.cursor() as cursor:

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
                return common.response_status(
                    409, None, f"409-{MSG_FUNCTION_ID}001", "指定されたプランはすでに存在しているため作成できません。"
                )

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
                return common.response_status(
                    409, None, f"409-{MSG_FUNCTION_ID}002", "指定されたプラン・リミット値はすでに存在しているため作成できません。"
                )

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

    r = connexion.request
    user_id = r.headers.get("User-id")
    plan_id = body.get("id")
    plan_start_date = body.get("start_date")

    # validation check
    validate = validation.validate_plan_id(plan_id)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, validate.args)

    validate = validation.validate_plan_start_date(plan_start_date)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, validate.args)

    # PLAN情報取得
    # get plan info.
    db = DBconnector()
    with closing(db.connect_platformdb()) as conn:
        with conn.cursor() as cursor:

            parameter = {
                "plan_id": plan_id,
                "plan_start_date": plan_start_date,
            }
            where = " WHERE plan_id = %(plan_id)s"
            try:
                cursor.execute(queries_plans.SQL_QUERY_PLANS + where, parameter)
                result = cursor.fetchone()

                if not result:
                    globals.logger.error(f"plan not found id:{plan_id}")
                    message_id = "404-{MSG_FUNCTION_ID}001"
                    message = multi_lang.get_text(
                        message_id,
                        "プランが存在しません(id:{0})",
                        plan_id
                    )
                    raise common.NotFoundException(message_id=message_id, message=message)

            except Exception as e:
                globals.logger.error(f"exception:{e.args}")
                # Duplicate PRIMARY KEY
                message_id = f"500-{MSG_FUNCTION_ID}001"
                message = multi_lang.get_text(message_id,
                                              "organizationへのプラン設定に失敗しました(対象ID:{0} Plan:{1})")
                raise common.InternalErrorException(message_id=message_id, message=message)

            parameter = {
                "organization_id": organization_id,
                "start_timestamp": datetime.strptime(plan_start_date, '%Y-%m-%d'),
                "plan_id": plan_id,
                "create_user": user_id,
                "last_update_user": user_id,
            }

            try:
                cursor.execute(queries_plans.SQL_INSERT_ORGANIZATION_PLAN, parameter)

                conn.commit()

            except pymysql.err.IntegrityError:
                # Duplicate PRIMARY KEY
                message_id = f"400-{MSG_FUNCTION_ID}001"
                message = multi_lang.get_text(message_id,
                                              "指定されたorganizationのプラン開始日にはすでに別のプランが登録済みのため、登録できません。(対象ID:{0}, Plan:{1})",
                                              organization_id,
                                              plan_id)
                raise common.BadRequestException(message_id=message_id, message=message)

            except Exception as e:
                globals.logger.error(f"exception:{e.args}")
                # Duplicate PRIMARY KEY
                message_id = f"500-{MSG_FUNCTION_ID}001"
                message = multi_lang.get_text(message_id,
                                              "organizationへのプラン設定に失敗しました(対象ID:{0} Plan:{1})")
                raise common.InternalErrorException(message_id=message_id, message=message)

    return common.response_200_ok(data=None)


@common.platform_exception_handler
def organization_plan_delete(body, organization_id, plan_start_date):
    """Set plan to the organization

    Args:
        body (dict): _description_
        organization_id (str): organization id
        plan_start_date (str): plan start date

    Returns:
        _type_: _description_
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # validation check
    validate = validation.validate_plan_start_date(plan_start_date)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, validate.args)

    # PLAN情報取得
    # get plan info.
    db = DBconnector()
    with closing(db.connect_platformdb()) as conn:
        with conn.cursor() as cursor:

            parameter = {
                "organization_id": organization_id,
                "plan_start_date": datetime.strptime(plan_start_date, '%Y-%m-%d'),
            }
            where = " WHERE organization_id = %(organization_id)s" \
                    " AND plan_start_date = %(plan_start_date)s"
            try:
                cursor.execute(queries_plans.SQL_QUERY_ORGANIZATION_PLAN + where, parameter)
                result = cursor.fetchone()

                if not result:
                    globals.logger.error(f"organization plan not found id:{organization_id} plan_start_date:{plan_start_date}")
                    message_id = "404-{MSG_FUNCTION_ID}002"
                    message = multi_lang.get_text(
                        message_id,
                        "指定されたプラン開始日に該当するorganizationプランが存在しません(対象ID:{0}, プラン開始日:{1})",
                        organization_id,
                        datetime.strptime(plan_start_date, '%Y-%m-%d')
                    )
                    raise common.NotFoundException(message_id=message_id, message=message)

            except Exception as e:
                globals.logger.error(f"exception:{e.args}")
                # Duplicate PRIMARY KEY
                message_id = f"500-{MSG_FUNCTION_ID}001"
                message = multi_lang.get_text(message_id,
                                              "organizationへのプラン設定に失敗しました(対象ID:{0} Plan:{1})")
                raise common.InternalErrorException(message_id=message_id, message=message)

            parameter = {
                "organization_id": organization_id,
                "start_timestamp": datetime.strptime(plan_start_date, '%Y-%m-%d'),
            }
            try:
                cursor.execute(queries_plans.SQL_DELETE_ORGANIZATION_PLAN, parameter)

                conn.commit()

            except Exception as e:
                globals.logger.error(f"exception:{e.args}")
                # Duplicate PRIMARY KEY
                message_id = f"500-{MSG_FUNCTION_ID}001"
                message = multi_lang.get_text(message_id,
                                              "organizationへのプラン設定に失敗しました(対象ID:{0} Plan:{1})")
                raise common.InternalErrorException(message_id=message_id, message=message)

    return common.response_200_ok(data=None)
