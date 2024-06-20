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

from tests.common import test_common

from libs.job_manager_classes import SubProcessesManager
from common_library.common import user_import_file_common

USERNAME_COL_INDEX = 2
ERROR_TEXT_COL_INDEX = 12

class mock_users_result():
    status_code : int
    text : str

mock_users_result_value1 = mock_users_result()
mock_users_result_value1.status_code = 200
mock_users_result_value1.text= '[' \
    '{"id":"b833b84f-468b-4894-a2bd-f96248374919","username":"admin1","firstName":"test","lastName":"test","email":"test1@example.com","emailVerified":false,"attributes":{"affiliation":["testafff"],"description":["testdesc"]},"createdTimestamp":1715561734123,"enabled":true,"totp":false,"disableableCredentialTypes":[],"requiredActions":[],"notBefore":0,"access":{"manageGroupMembership":true,"view":true,"mapRoles":true,"impersonate":true,"manage":true}}' \
    ']'

mock_users_result_value2 = mock_users_result()
mock_users_result_value2.status_code = 200
mock_users_result_value2.text= '[' \
    '{"id":"b833b84f-468b-4894-a2bd-f96248374918","username":"admin2","firstName":"test","lastName":"test","email":"test2@example.com","emailVerified":false,"attributes":{"affiliation":["testafff"],"description":["testdesc"]},"createdTimestamp":1715561734123,"enabled":true,"totp":false,"disableableCredentialTypes":[],"requiredActions":[],"notBefore":0,"access":{"manageGroupMembership":true,"view":true,"mapRoles":true,"impersonate":true,"manage":true}}' \
    ']'

mock_users_result_value3 = mock_users_result()
mock_users_result_value3.status_code = 200
mock_users_result_value3.text= '[' \
    '{"id":"b833b84f-468b-4894-a2bd-f96248374917","username":"user1","firstName":"test","lastName":"test","email":"test3@example.com","emailVerified":false,"attributes":{"affiliation":["testafff"],"description":["testdesc"]},"createdTimestamp":1715561734123,"enabled":true,"totp":false,"disableableCredentialTypes":[],"requiredActions":[],"notBefore":0,"access":{"manageGroupMembership":true,"view":true,"mapRoles":true,"impersonate":true,"manage":true}}' \
    ']'

mock_users_result_value4 = mock_users_result()
mock_users_result_value4.status_code = 200
mock_users_result_value4.text= '[]'

mock_users_result_value5 = mock_users_result()
mock_users_result_value5.status_code = 200
mock_users_result_value5.text= '[' \
    '{"id":"b833b84f-468b-4894-a2bd-f96248374919","username":"admin1","firstName":"test","lastName":"test","email":"test1@example.com","emailVerified":false,"attributes":{"affiliation":["testafff"],"description":["testdesc"]},"createdTimestamp":1715561734123,"enabled":true,"totp":false,"disableableCredentialTypes":[],"requiredActions":[],"notBefore":0,"access":{"manageGroupMembership":true,"view":true,"mapRoles":true,"impersonate":true,"manage":true},}' \
    '{"id":"b833b84f-468b-4894-a2bd-f96248374918","username":"admin2","firstName":"test","lastName":"test","email":"test2@example.com","emailVerified":false,"attributes":{"affiliation":["testafff"],"description":["testdesc"]},"createdTimestamp":1715561734123,"enabled":true,"totp":false,"disableableCredentialTypes":[],"requiredActions":[],"notBefore":0,"access":{"manageGroupMembership":true,"view":true,"mapRoles":true,"impersonate":true,"manage":true},}' \
    '{"id":"b833b84f-468b-4894-a2bd-f96248374917","username":"user1","firstName":"test","lastName":"test","email":"test3@example.com","emailVerified":false,"attributes":{"affiliation":["testafff"],"description":["testdesc"]},"createdTimestamp":1715561734123,"enabled":true,"totp":false,"disableableCredentialTypes":[],"requiredActions":[],"notBefore":0,"access":{"manageGroupMembership":true,"view":true,"mapRoles":true,"impersonate":true,"manage":true}}' \
    ']'

class mock_roles_result():
    status_code : int
    text : str

mock_roles_result_value = mock_roles_result()
mock_roles_result_value.status_code = 200
mock_roles_result_value.text= '[' \
    '{"id":"f4c90c36-4635-4a16-b4c6-eb90047f848e","name":"_organization-manager","composite":true,"clientRole":true,"containerId":"7fc92d71-0e92-4ea4-89a3-ff45b98448ab"},' \
    '{"id":"71e4a26b-0d85-488b-bd5d-bf6e56d5c15f","name":"_test_workspace1-admin","composite":true,"clientRole":true,"containerId":"7fc92d71-0e92-4ea4-89a3-ff45b98448ab"}' \
    ']'

mock_users=[{'id': 'b833b84f-468b-4894-a2bd-f96248374919', 'username': 'admin', 'firstName': 'test', 'lastName': 'test', 'email': 'test@example.com', 'emailVerified': False, 'attributes': {'affiliation': ['testafff'], 'description': ['testdesc']}, 'createdTimestamp': 1715561734123, 'enabled': True, 'totp': False, 'notBefore': 0, 'roles': '_organization-manager,_test_workspace1-admin,_test_workspace2-admin'}]

def test_execute_user_get_nomally():
    """ユーザー取得正常系 / User registration normal pattern
    """
    testdata = import_module("tests.db.exports.testdata")

    with test_common.requsts_mocker_default(), \
        mock.patch("common_library.common.api_keycloak_users.user_get", side_effect=[mock_users_result_value1, mock_users_result_value2, mock_users_result_value3, mock_users_result_value4]), \
        mock.patch("common_library.common.api_keycloak_roles.user_role_get", return_value = mock_roles_result_value), \
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
    with test_common.requsts_mocker_default(), \
        mock.patch.object(bl_plan_service, "organization_limits_get", return_value={const.RESOURCE_COUNT_USERS: limit_users}), \
        mock.patch("common_library.common.api_keycloak_users.user_get", side_effect=[mock_users_result_value5]), \
        mock.patch("common_library.common.api_keycloak_roles.user_role_get", return_value = mock_roles_result_value):

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

    timeout_sec = 5

    # Jobの設定を試験用に切り替え
    process_kind=const.PROCESS_KIND_USER_EXPORT
    job_config_jobs = dict(job_manager_config.JOBS)
    job_config_jobs[process_kind]["timeout_seconds"] = timeout_sec
    job_config_jobs[process_kind]["extra_config"]["status_update_interval"] = 3

    with test_common.requsts_mocker_default(), mock.patch.dict(f"job_manager_config.JOBS", job_config_jobs), \
        mock.patch("common_library.common.api_keycloak_users.user_get", side_effect=[mock_users_result_value5]), \
        mock.patch("common_library.common.api_keycloak_roles.user_role_get", return_value = mock_roles_result_value):
    
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

            # タイムアウトエラーで終了していること
            assert t["JOB_STATUS"] == const.JOB_USER_FAILED
            assert '初期処理中に想定外のエラーが発生し、処理を中断しました。' in t["MESSAGE"]

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
