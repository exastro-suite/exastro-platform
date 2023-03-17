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
import json

from common_library.common import common, const as common_const
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

            limits_where = " WHERE plan_id = %(plan_id)s" + (" AND limit_id LIKE CONCAT(%(limit_id)s,'%%')" if limit_id is not None else "")

            # get default plan
            cursor.execute(queries_bl_plan.SQL_QUERY_PLAN_LIMITS + limits_where, {"plan_id": common_const.DEFAULT_PLAN_ID, "limit_id": limit_id})
            default_limits = cursor.fetchall()

            # get organization plan
            if len(org_plans) >= 1:
                cursor.execute(queries_bl_plan.SQL_QUERY_PLAN_LIMITS + limits_where, {"plan_id": org_plans[0]["PLAN_ID"], "limit_id": limit_id})
                org_limits = cursor.fetchall()
            else:
                org_limits = None

    # make response data
    data = {}
    if org_limits is not None:
        for limit in org_limits:
            data[limit["LIMIT_ID"]] = limit["LIMIT_VALUE"]

    for limit in default_limits:
        if not (limit["LIMIT_ID"] in data):
            data[limit["LIMIT_ID"]] = limit["LIMIT_VALUE"]

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
            "start_datetime": datetime.strftime(org_plan["START_TIMESTAMP"], common_const.FORMAT_DATETIME_PLAN_START_DATETIME),
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


def organization_plan_create(user_id, organization_id, plan_id, plan_start_datetime):
    """oraganaization plan create

    Args:
        user_id (str): user id
        organization_id (str): organization id
        plan_id (str): plan id
        plan_start_datetime (str): plan start datetime (%Y-%m-%d %H:%M:%S)

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
                        plan_id,
                    )
                    raise common.NotFoundException(message_id=message_id, message=message)

            except common.NotFoundException:
                raise

            except Exception as e:
                globals.logger.error(f"exception:{e.args}")
                message_id = f"500-{MSG_FUNCTION_ID}001"
                message = multi_lang.get_text(
                    message_id,
                    "organizationへ設定するプランの取得に失敗しました(対象ID:{0} Plan:{1})",
                    organization_id,
                    plan_id,
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

            parameter = {
                "organization_id": organization_id,
                "start_timestamp": datetime.strptime(plan_start_datetime, common_const.FORMAT_DATETIME_PLAN_START_DATETIME),
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
                message = multi_lang.get_text(
                    message_id,
                    "指定されたorganizationのプラン開始日時は、すでに別のプランが登録済みのため、登録できません。(対象ID:{0}, Plan:{1}, プラン開始日時:{2})",
                    organization_id,
                    plan_id,
                    plan_start_datetime,
                )
                raise common.BadRequestException(message_id=message_id, message=message)

            except Exception as e:
                globals.logger.error(f"exception:{e.args}")
                message_id = f"500-{MSG_FUNCTION_ID}002"
                message = multi_lang.get_text(
                    message_id,
                    "organizationへのプラン設定に失敗しました(対象ID:{0} Plan:{1})",
                    organization_id,
                    plan_id,
                )
                raise common.InternalErrorException(message_id=message_id, message=message)


def organization_plan_delete(organization_id):
    """Delete organization plan

    Args:
        organization_id (str): organization id
    """
    with closing(DBconnector().connect_platformdb()) as conn:
        with conn.cursor() as cursor:
            cursor.execute(queries_bl_plan.SQL_DELETE_ORGANIZATION_PLAN, {"organization_id": organization_id})

        conn.commit()
    return


def plan_item_create(conn, user_id, plan_item):
    """create plan item

    Args:
        conn (connection): database connection
        user_id (str): user id
        plan_item (dict): plan item
    """
    with conn.cursor() as cursor:

        default = plan_item.get("informations", {}).get("default")

        informations = {
            "description": plan_item.get("informations", {}).get("description"),
            "max": plan_item.get("informations", {}).get("max")
        }

        # insert t_plan_item
        parameter = {
            "limit_id": plan_item.get("id"),
            "informations": json.dumps(informations),
            "create_user": user_id
        }

        cursor.execute(queries_bl_plan.SQL_INSERT_PLAN_ITEM, parameter)

        # insert default plan
        parameter = {
            "plan_id": common_const.DEFAULT_PLAN_ID,
            "limit_id": plan_item.get("id"),
            "limit_value": default,
            "create_user": user_id
        }

        cursor.execute(queries_bl_plan.SQL_INSERT_PLAN_LIMIT, parameter)


def plan_item_get(conn, limit_id):
    with conn.cursor() as cursor:

        # get infomation from T_PLAN_ITEM
        parameter = {
            "limit_id": limit_id
        }

        where = "WHERE limit_id = %(limit_id)s"

        cursor.execute(queries_bl_plan.SQL_QUERY_PLAN_ITEMS + where, parameter)
        plan_item = cursor.fetchone()

        if plan_item is None:
            return None

        # get default limit_value from T_PLAN
        parameter = {
            "limit_id": limit_id,
            "plan_id": common_const.DEFAULT_PLAN_ID
        }

        where = "WHERE limit_id = %(limit_id)s AND PLAN_ID = %(plan_id)s"

        cursor.execute(queries_bl_plan.SQL_QUERY_PLAN_LIMITS + where, parameter)
        plan_limit = cursor.fetchone()

    informations = json.loads(plan_item.get("INFORMATIONS"))
    informations["default"] = plan_limit.get("LIMIT_VALUE") if plan_limit is not None else None

    data = {
        "id": plan_item.get("LIMIT_ID"),
        "informations": informations
    }

    return data


def plan_item_update(conn, user_id, limit_id, plan_item):
    """update plan item

    Args:
        conn (connection): database connection
        user_id (str): user id
        limit_id (str): limit id
        plan_item (dict): plan item
    """
    with conn.cursor() as cursor:
        default = plan_item.get("informations", {}).get("default")

        informations = {
            "description": plan_item.get("informations", {}).get("description"),
            "max": plan_item.get("informations", {}).get("max")
        }

        # update t_plan_item
        parameter = {
            "limit_id": limit_id,
            "informations": json.dumps(informations),
            "last_update_user": user_id
        }

        cursor.execute(queries_bl_plan.SQL_UPDATE_PLAN_ITEM, parameter)

        # update default plan
        parameter = {
            "plan_id": common_const.DEFAULT_PLAN_ID,
            "limit_id": limit_id,
            "limit_value": default,
            "create_user": user_id
        }

        cursor.execute(queries_bl_plan.SQL_INSERT_PLAN_LIMIT, parameter)


def plan_item_delete(conn, limit_id):
    """delete plan item

    Args:
        conn (connection): database connection
        limit_id (str): limit id
    """
    with conn.cursor() as cursor:
        # delete t_plan_item
        parameter = {
            "limit_id": limit_id
        }

        cursor.execute(queries_bl_plan.SQL_DELETE_PLAN_ITEM, parameter)

        # delete default plan item
        parameter = {
            "plan_id": common_const.DEFAULT_PLAN_ID,
            "limit_id": limit_id
        }

        cursor.execute(queries_bl_plan.SQL_DELETE_PLAN_LIMIT, parameter)
