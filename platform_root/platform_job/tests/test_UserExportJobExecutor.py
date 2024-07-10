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
import requests_mock

import io
import openpyxl
from zipfile import ZipFile, BadZipfile

import os
import ulid
import json
import time
import datetime
import re
from contextlib import closing

from unittest import mock
import threading
from importlib import import_module
import copy

from common_library.common import const
from common_library.common import encrypt
from common_library.common.db import DBconnector
from common_library.common import bl_plan_service
from common_library.common import api_keycloak_users
from common_library.common import api_keycloak_roles

import job_manager
import job_manager_const
import job_manager_config
from jobs.UserExportJobExecutor import UserExportJobExecutor
from jobs import jobs_common

from tests.common import test_common

from libs.job_manager_classes import SubProcessesManager
from common_library.common import user_import_file_common

user_json1 = {
    "username": "admin1",
    "email": "admin1@example.com",
    "firstName": "admin1",
    "lastName": "admin1",
    "credentials": [
        {
            "type": "password",
            "value": "password",
            "temporary": True,
        }
    ],
    "attributes":
    {
        "affiliation": "affi1",
        "description": "desc1",
    },
    "enabled": True
}

user_json2 = {
    "username": "admin2",
    "email": "admin2@example.com",
    "firstName": "admin2",
    "lastName": "admin2",
    "credentials": [
        {
            "type": "password",
            "value": "password",
            "temporary": True,
        }
    ],
    "attributes":
    {
        "affiliation": "affi1",
        "description": "desc1",
    },
    "enabled": True
}

user_json3 = {
    "username": "user3",
    "email": "user3@example.com",
    "firstName": "user3",
    "lastName": "user3",
    "credentials": [
        {
            "type": "password",
            "value": "password",
            "temporary": True,
        }
    ],
    "enabled": True
}

user_json4 = {
    "username": "user4",
    "email": "user4@example.com",
    "firstName": "user4",
    "lastName": "user4",
    "credentials": [
        {
            "type": "password",
            "value": "password",
            "temporary": True,
        }
    ],
    "enabled": True
}

user_json5 = {
    "username": "user5",
    "email": "user5@example.com",
    "firstName": "user5",
    "lastName": "user5",
    "credentials": [
        {
            "type": "password",
            "value": "password",
            "temporary": True,
        }
    ],
    "enabled": True
}

def test_execute_user_get_nomally():
    """ユーザー取得正常系 / User registration normal pattern
    """
    testdata = import_module("tests.db.exports.testdata")
 
    add_user(user=user_json1)
    add_user(user=user_json2)
    add_user(user=user_json3)
    
    with test_common.requsts_mocker_default(), \
        mock.patch("jobs.UserExportJobExecutor.USER_GET_ONCE", 1):

        organization_id = list(testdata.ORGANIZATIONS.keys())[0]
        queue = make_queue_export_user('ja', organization_id)

        executor = UserExportJobExecutor(queue)
        result = executor.execute_base()
        save_result_file(organization_id, queue["PROCESS_EXEC_ID"])

        # 成功を返すこと
        assert result

        # 状態が完了で、取得件数が3であること
        t = select_t_jobs_user_export(organization_id, queue["PROCESS_EXEC_ID"])
        assert t["JOB_STATUS"] == const.JOB_USER_COMP
        assert t["COUNT_EXPORT"] == 3

def test_execute_user_get_error_limits():
    """userのlimit超過エラー
    """
    testdata = import_module("tests.db.exports.testdata")

    # 上限数エラー
    limit_users = 2
    process_kind=const.PROCESS_KIND_USER_EXPORT
    job_config_jobs = copy.deepcopy(job_manager_config.JOBS)
    job_config_jobs[process_kind]["extra_config"]["max_number_of_rows_allowd"] = limit_users

    add_user(user=user_json1)
    add_user(user=user_json2)
    add_user(user=user_json3)
    add_user(user=user_json4)
    add_user(user=user_json5)

    with test_common.requsts_mocker_default(), \
        mock.patch.dict(f"job_manager_config.JOBS", job_config_jobs):
        
        organization_id = list(testdata.ORGANIZATIONS.keys())[0]
        queue = make_queue_export_user('ja', organization_id)

        executor = UserExportJobExecutor(queue)
        result = executor.execute_base()
        save_result_file(organization_id, queue["PROCESS_EXEC_ID"])

        # 失敗を返すこと
        assert not result

def test_execute_error_not_found_jobs_table():
    """TABLEの情報なし
    """
    testdata = import_module("tests.db.exports.testdata")

    with test_common.requsts_mocker_default():
        organization_id = list(testdata.ORGANIZATIONS.keys())[0]
        queue = make_queue_export_user('ja', organization_id)

        with closing(DBconnector().connect_orgdb(organization_id)) as conn,\
            conn.cursor() as cursor:
            cursor.execute("DELETE FROM T_JOBS_USER_EXPORT WHERE JOB_ID = %(job_id)s", {"job_id": queue["PROCESS_EXEC_ID"]})
            conn.commit()

        executor = UserExportJobExecutor(queue)
        result = executor.execute_base()
        save_result_file(organization_id, queue["PROCESS_EXEC_ID"])

        # 失敗を返すこと
        assert not result

def test_execute_timeout():
    """Timeoutによる中断
    """
    testdata = import_module("tests.db.exports.testdata")

    organization_id = list(testdata.ORGANIZATIONS.keys())[0]

    timeout_sec = 2

    # Jobの設定を試験用に切り替え
    process_kind=const.PROCESS_KIND_USER_EXPORT
    job_config_jobs = copy.deepcopy(job_manager_config.JOBS)
    job_config_jobs[process_kind]["timeout_seconds"] = timeout_sec
    job_config_jobs[process_kind]["extra_config"]["user_export_interval_millisecond"] = 2500
    
    add_user(user=user_json1)
    add_user(user=user_json2)
    add_user(user=user_json3)
    add_user(user=user_json4)
    add_user(user=user_json5)

    with test_common.requsts_mocker_default(), mock.patch.dict(f"job_manager_config.JOBS", job_config_jobs), \
        mock.patch("jobs.UserExportJobExecutor.USER_GET_ONCE", 1):
        # sub process起動用の情報生成
        sub_processes_mgr = SubProcessesManager()
        sub_process_parameter = sub_processes_mgr.generate_sub_process_parameter()
        sub_processes_mgr.append_new_process(sub_process_parameter, test_common.get_main_process(os.getpid()))

        # sub processの起動
        main_thread = threading.Thread(
            target=job_manager.job_manager_sub_process,
            args=(sub_process_parameter,),
            name="sub_process",
            daemon=True
        )
        main_thread.start()
        try:
            queue = make_queue_export_user('ja', organization_id)

            # timeout発生まで待つ
            time.sleep(timeout_sec)
            for i in range(30):
                t = select_t_jobs_user_export(organization_id, queue["PROCESS_EXEC_ID"])
                if t["JOB_STATUS"] != const.JOB_USER_EXEC:
                    break
                time.sleep(1)
            
            t = select_t_jobs_user_export(organization_id, queue["PROCESS_EXEC_ID"])
            # タイムアウトエラーで終了していること
            assert t["JOB_STATUS"] == const.JOB_USER_FAILED
            assert '行目の処理中にタイムアウトしました。' in t["MESSAGE"]

        finally:
            # sub processの終了要求
            sub_processes_mgr.set_sub_process_termination_request(force=True)

            # sub processの終了確認
            # assert test_common.check_state(
            #     timeout=5.0, conditions=lambda : not main_thread.is_alive())

            main_thread.join()


def test_force_update_status_normally():
    """強制ステータス更新の確認
    """
    testdata = import_module("tests.db.exports.testdata")

    datas = [
        {
            "organization_id": list(testdata.ORGANIZATIONS.keys())[0],
            "queue_exists": False,
            "too_old_date": True,
            "queue": None,
        },
        {
            "organization_id": list(testdata.ORGANIZATIONS.keys())[0],
            "queue_exists": False,
            "too_old_date": True,
            "queue": None,
        },
        {
            "organization_id": list(testdata.ORGANIZATIONS.keys())[1],
            "queue_exists": False,
            "too_old_date": True,
            "queue": None,
        },
        {
            "organization_id": list(testdata.ORGANIZATIONS.keys())[1],
            "queue_exists": True,
            "too_old_date": True,
            "queue": None,
        },
        {
            "organization_id": list(testdata.ORGANIZATIONS.keys())[2],
            "queue_exists": False,
            "too_old_date": True,
            "queue": None,
        },
        {
            "organization_id": list(testdata.ORGANIZATIONS.keys())[2],
            "queue_exists": False,
            "too_old_date": False,
            "queue": None,
        },
    ]
    for data in datas:
        queue = make_queue_export_user('ja', data['organization_id'], insert_queue=data["queue_exists"])
        data['queue'] = queue

        with closing(DBconnector().connect_orgdb(data['organization_id'])) as conn,\
            conn.cursor() as cursor:

            if data["too_old_date"]:
                cursor.execute("""
                    UPDATE T_JOBS_USER_EXPORT SET LAST_UPDATE_TIMESTAMP = DATE_SUB(LAST_UPDATE_TIMESTAMP, INTERVAL %(SECONDS)s SECOND)
                        WHERE JOB_ID = %(JOB_ID)s
                """, {"JOB_ID": queue["PROCESS_EXEC_ID"], "SECONDS": job_manager_config.JOBS[job_manager_const.PROCESS_KIND_FORCE_UPDATE_STATUS]['extra_config']['prograss_seconds'] + 1})
                conn.commit()

    # 強制ステータス更新を実行
    UserExportJobExecutor.force_update_status()
    # データの更新状況を確認
    for i, data in enumerate(datas):
        t = select_t_jobs_user_export(data['organization_id'], data["queue"]["PROCESS_EXEC_ID"])

        if data['queue_exists']:
            # queueに情報が残っている場合は、日時とは関係なく更新しない
            assert t["JOB_STATUS"] == const.JOB_USER_NOT_EXEC
        elif not data['too_old_date']:
            # 日時が古くない場合は、更新しない
            assert t["JOB_STATUS"] == const.JOB_USER_NOT_EXEC
        else:
            # queueにデータがなく、日付が古い場合、エラーに更新していること
            assert t["JOB_STATUS"] == const.JOB_USER_FAILED

def add_user(user):
        """ユーザの追加 / add user

        Args:
            cell_values (dict): cellの値 / cell value

        Returns:
            str: user id
        """
        testdata = import_module("tests.db.exports.testdata")
        
        with closing(DBconnector().connect_orgdb(list(testdata.ORGANIZATIONS.keys())[0])) as conn:
            organization_private = DBconnector().get_organization_private(list(testdata.ORGANIZATIONS.keys())[0])
            organization_sa_token = jobs_common.organization_sa_token(list(testdata.ORGANIZATIONS.keys())[0], organization_private)
        
        # ユーザーの追加 / add user
        u_create = api_keycloak_users.user_create(
            realm_name=list(testdata.ORGANIZATIONS.keys())[0], user_json=user, token=organization_sa_token.get()
        )
        return True

def make_queue_export_user(lang, organization_id, insert_queue=True):
    """テスト用共通:Queue情報生成

    Args:
        lang (_type_): _description_
        organization_id (_type_): _description_
        
    Returns:
        _type_: _description_
    """
    process_id = ulid.new().str
    process_exec_id = ulid.new().str
    file_id = ulid.new().str

    queue={
        "PROCESS_ID": process_id,
        "PROCESS_KIND": const.PROCESS_KIND_USER_EXPORT,
        "PROCESS_EXEC_ID": process_exec_id,
        "ORGANIZATION_ID": organization_id,
        "WORKSPACE_ID": None,
        "LAST_UPDATE_USER": job_manager_const.SYSTEM_USER_ID,
        "LAST_UPDATE_TIMESTAMP": str(datetime.datetime.now()),
    }

    with closing(DBconnector().connect_orgdb(organization_id)) as conn,\
        conn.cursor() as cursor:
    
        cursor.execute('''
            INSERT INTO T_JOBS_USER_EXPORT
            (JOB_ID,
            JOB_TYPE,
            JOB_STATUS,
            LANGUAGE)
            VALUES
            (%(JOB_ID)s,
            %(JOB_TYPE)s,
            %(JOB_STATUS)s,
            %(LANGUAGE)s)
            ''',
            {"JOB_ID": process_exec_id,
            "JOB_TYPE": const.PROCESS_KIND_USER_IMPORT,
            "JOB_STATUS": const.JOB_USER_NOT_EXEC,
            "LANGUAGE": lang}
        )

        conn.commit()

    if insert_queue:
        test_common.insert_queue([queue])

    return queue

def save_result_file(organization_id, job_id):
    """テスト用共通:結果情報Excelファイル保存

    Args:
        organization_id (_type_): _description_
        job_id (_type_): _description_
    """
    if os.environ.get("USER_EXCEL_FILE_SAVED") == "TRUE":
        with closing(DBconnector().connect_orgdb(organization_id)) as conn,\
            conn.cursor() as cursor:

            cursor.execute("SELECT * FROM T_JOBS_USER_FILE_EXPORT WHERE JOB_ID = %(job_id)s", {"job_id": job_id})
            row = cursor.fetchone()
            if row is not None:
                with open(f'{os.environ.get("TEST_OUTPUT_PATH")}/{job_id}_result.xlsx', 'wb') as fp:
                    fp.write(row["FILE_DATA"])


def select_t_jobs_user_export(organization_id, job_id):
    """テスト用共通:T_JOBS_USER_EXPORT取得

    Args:
        organization_id (_type_): _description_
        job_id (_type_): _description_

    Returns:
        _type_: _description_
    """
    with closing(DBconnector().connect_orgdb(organization_id)) as conn,\
        conn.cursor() as cursor:

        cursor.execute("SELECT * FROM T_JOBS_USER_EXPORT WHERE JOB_ID = %(job_id)s", {"job_id": job_id})
        return cursor.fetchone()
