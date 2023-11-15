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
import json
from contextlib import closing

from common_library.common.db import DBconnector
from libs import queries_common, queries_process_queue

import backyard_const


def get_organizations():
    with closing(DBconnector().connect_platformdb()) as conn:
        with conn.cursor() as cursor:
            cursor.execute(queries_common.SQL_QUERY_ORGANIZATION)
            rows = cursor.fetchall()

    return [row for row in rows if json.loads(row["INFORMATIONS"]).get('status') == backyard_const.ORG_STATUS_CREATE_COMPLETE]


def get_workspaces(organization_id):
    try:
        with closing(DBconnector().connect_orgdb(organization_id)) as conn:
            with conn.cursor() as cursor:
                cursor.execute(queries_common.SQL_QUERY_WORKSPACE)
                return cursor.fetchall()
    except Exception:
        return []


def exists_queue(conn, process_exec_id):
    with conn.cursor() as cursor:
        cursor.execute(
            queries_process_queue.SQL_QUERY_PROCESS_QUEUE_EXEC_ID,
            {"process_exec_id": process_exec_id})

        rlt = cursor.fetchone()

        return rlt is not None
