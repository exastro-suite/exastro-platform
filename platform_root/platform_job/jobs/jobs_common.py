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
import time
import random

from common_library.common.db import DBconnector
from common_library.common import common
from common_library.common import api_keycloak_tokens

from libs import queries_common, queries_process_queue
from libs.job_manager_classes import IntervalTiming


import job_manager_const
import job_manager_config


def get_organizations():
    """get oranization list (filter create complete)

    Returns:
        list: oranization list
    """
    with closing(DBconnector().connect_platformdb()) as conn:
        with conn.cursor() as cursor:
            cursor.execute(queries_common.SQL_QUERY_ORGANIZATION)
            rows = cursor.fetchall()

    return [row for row in rows if json.loads(row["INFORMATIONS"]).get('status') == job_manager_const.ORG_STATUS_CREATE_COMPLETE]


def get_workspaces(organization_id: str):
    """get workspace list

    Args:
        organization_id (str): organization id

    Returns:
        list: workspace list
    """
    try:
        with closing(DBconnector().connect_orgdb(organization_id)) as conn:
            with conn.cursor() as cursor:
                cursor.execute(queries_common.SQL_QUERY_WORKSPACE)
                return cursor.fetchall()
    except Exception:
        return []


def exists_queue(conn, process_exec_id: str):
    """check queue exists

    Args:
        conn (_type_): db connection (platform db)
        process_exec_id (str): process_exec_id

    Returns:
        bool: True: exists queue
    """
    with conn.cursor() as cursor:
        cursor.execute(
            queries_process_queue.SQL_QUERY_PROCESS_QUEUE_EXEC_ID,
            {"process_exec_id": process_exec_id})

        rlt = cursor.fetchone()

        return rlt is not None


def delete_queue(conn, process_exec_id: str) -> bool:
    """delete queue

    Args:
        conn (_type_): db connection (platform db)
        process_exec_id (str): process_exec_id

    Returns:
        bool: True=Succeed / False=Not Found
    """
    with conn.cursor() as cursor:
        cursor.execute(
            queries_process_queue.SQL_DELETE_PROCESS_QUEUE_EXEC_ID,
            {"process_exec_id": process_exec_id})

        return cursor.rowcount > 0


class organization_sa_token():
    """organization service account token発行 / organization service account token issued
    """
    def __init__(self, organization_id, organization_private):
        """constructor

        Args:
            organization_id (str): organization_id
            organization_private (dict): organization_private
        """
        self.__organization_id = organization_id
        self.__organization_private = organization_private
        self.__interval_timing = IntervalTiming(job_manager_config.KEYCLOAK_TOKEN_REFRESH_INTERVAL_SECONDS)
        self.__token = None

    def get(self):
        """organization service account token取得 / organization service account token acquisition

        Raises:
            common.AuthException: failed get token

        Returns:
            str: organization service account token
        """
        if self.__token is None or self.__interval_timing.is_passed():
            # サービスアカウントのTOKEN取得
            # Get a service account token
            token_response = api_keycloak_tokens.service_account_get_token(
                self.__organization_id,
                self.__organization_private.internal_api_client_clientid,
                self.__organization_private.internal_api_client_secret,
            )
            if token_response.status_code != 200:
                self.__token = None
                raise common.AuthException(
                    "client_user_get_token error status:{}, response:{}".format(token_response.status_code, token_response.text)
                )

            self.__token = json.loads(token_response.text)["access_token"]

        return self.__token


def foreach_organizations(func, *args, **kwargs):
    """全オーガナイゼーションに対して関数を実行します

    Args:
        func (_type_): _description_
    """
    organizations = get_organizations()

    # 実行順序を不定にする / Make the execution order undefined
    random.shuffle(organizations)

    # 全てのorganization分、指定関数を呼び出す
    for organization in organizations:
        func(organization['ORGANIZATION_ID'], *args, **kwargs)


def foreach_workspaces(func, *args, **kwargs):
    """全ワークスペースに対して関数を実行します

    Args:
        func (_type_): 実行する関数
    """
    all_workspaces = []
    organizations = get_organizations()
    for organization in organizations:
        time.sleep(0.1)
        workspaces = get_workspaces(organization['ORGANIZATION_ID'])
        for workspace in workspaces:
            all_workspaces.append({
                "organization_id": organization['ORGANIZATION_ID'],
                "workspace_id": workspace['WORKSPACE_ID'],
            })

    # 実行順序を不定にする / Make the execution order undefined
    random.shuffle(all_workspaces)

    # 全てのWorkspace分、指定関数を呼び出す
    for workspace in all_workspaces:
        func(workspace['organization_id'], workspace['workspace_id'], *args, **kwargs)

