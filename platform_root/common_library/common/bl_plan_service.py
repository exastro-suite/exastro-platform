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

from contextlib import closing
from datetime import datetime
import pymysql

from common_library.common import common, const
from common_library.common.db import DBconnector
from common_library.common import multi_lang
from common_library.common.libs import queries_bl_plan

import globals

MSG_FUNCTION_ID = "29"


def organization_limits_get(organization_id, limit_id=None):
    """Returns the current limits value

    Args:
        organization_id (str): organization_id
        limit_id (str, optional): filter limit id. (prefix match). Defaults to None.

    Returns:
        list: limit values
    """
    # plan and plan_limit list get
    with closing(DBconnector().connect_platformdb()) as conn:
        with conn.cursor() as cursor:

            parameter = {
                "organization_id": organization_id,
            }
            where = " WHERE organization_id = %(organization_id)s" \
                    " AND start_timestamp <= CURRENT_TIMESTAMP()" \
                    " ORDER BY start_timestamp DESC" \
                    " LIMIT 1"
            cursor.execute(queries_bl_plan.SQL_QUERY_ORGANIZATION_PLAN + where, parameter)
            org_plans = cursor.fetchall()

            if len(org_plans) >= 1:
                plan_id = org_plans[0]["PLAN_ID"]
            else:
                plan_id = const.DEFAULT_PLAN_ID

            parameter = {
                "plan_id": plan_id,
            }
            where = " WHERE plan_id = %(plan_id)s"
            if limit_id is not None:
                parameter["limit_id"] = limit_id
                where = where + " AND limit_id LIKE CONCAT(%(limit_id)s,'%%')"

            cursor.execute(queries_bl_plan.SQL_QUERY_PLAN_LIMITS + where, parameter)
            result_plan_limits = cursor.fetchall()

    data = {}
    for plan_limit in result_plan_limits:
        data[plan_limit["LIMIT_ID"]] = plan_limit["LIMIT_VALUE"]

    return data


def organization_plan_get(organization_id):
    """organization plan get

    Args:
        organization_id (str): organization id

    Returns:
        dict: organization plan info. list
    """

    # check organization
    DBconnector().get_organization_private(organization_id)

    # plan list get
    with closing(DBconnector().connect_platformdb()) as conn:
        with conn.cursor() as cursor:

            parameter = {
                "organization_id": organization_id,
            }
            where = " WHERE organization_id = %(organization_id)s ORDER BY start_TIMESTAMP"
            cursor.execute(queries_bl_plan.SQL_QUERY_ORGANIZATION_PLAN + where, parameter)
            org_plans = cursor.fetchall()

    data = []
    for org_plan in org_plans:
        data.append({
            "id": org_plan["PLAN_ID"],
            "start_date": datetime.strftime(org_plan["START_TIMESTAMP"], '%Y-%m-%d'),
            "create_timestamp": common.datetime_to_str(org_plan["CREATE_TIMESTAMP"]),
            "create_user": org_plan["CREATE_USER"],
            "last_update_timestamp": common.datetime_to_str(org_plan["LAST_UPDATE_TIMESTAMP"]),
            "last_update_user": org_plan["LAST_UPDATE_USER"],
        })

    return data


def exists_plan(platform_db_cursor, plan_id):
    parameter = {
        "plan_id": plan_id,
    }

    where = " WHERE plan_id = %(plan_id)s"
    platform_db_cursor.execute(queries_bl_plan.SQL_QUERY_PLANS + where, parameter)
    result = platform_db_cursor.fetchone()

    if not result:
        return False
    else:
        return True


def organization_plan_create(user_id, organization_id, plan_id, plan_start_date):
    """oraganaization plan create

    Args:
        user_id (str): user id
        organization_id (str): organization id
        plan_id (str): plan id
        plan_start_date (str): plan start date (%Y-%m-%d)

    Raises:
        common.NotFoundException: _description_
        common.InternalErrorException: _description_
        common.BadRequestException: _description_
        common.InternalErrorException: _description_
    """
    # PLAN情報取得
    # get plan info.
    db = DBconnector()
    with closing(db.connect_platformdb()) as conn:
        with conn.cursor() as cursor:

            try:
                if not exists_plan(cursor, plan_id):
                    globals.logger.error(f"plan not found id:{plan_id}")
                    message_id = f"404-{MSG_FUNCTION_ID}001"
                    message = multi_lang.get_text(
                        message_id,
                        "プランが存在しません(id:{0})",
                        plan_id
                    )
                    raise common.NotFoundException(message_id=message_id, message=message)

            except common.NotFoundException:
                raise

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
                cursor.execute(queries_bl_plan.SQL_INSERT_ORGANIZATION_PLAN, parameter)

                conn.commit()

            except pymysql.err.IntegrityError:
                # Duplicate PRIMARY KEY
                message_id = f"400-{MSG_FUNCTION_ID}001"
                message = multi_lang.get_text(message_id,
                                              "指定されたorganizationのプラン開始日は、すでに別のプランが登録済みのため、登録できません。(対象ID:{0}, Plan:{1}, プラン開始日:{2})",
                                              organization_id,
                                              plan_id,
                                              plan_start_date)
                raise common.BadRequestException(message_id=message_id, message=message)

            except Exception as e:
                globals.logger.error(f"exception:{e.args}")
                # Duplicate PRIMARY KEY
                message_id = f"500-{MSG_FUNCTION_ID}001"
                message = multi_lang.get_text(message_id,
                                              "organizationへのプラン設定に失敗しました(対象ID:{0} Plan:{1})")
                raise common.InternalErrorException(message_id=message_id, message=message)

