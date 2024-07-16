#   Copyright 2024 NEC Corporation
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
import os
import ulid
import json
import time
import datetime
import logging
import threading
from contextlib import closing
from _pytest.logging import LogCaptureFixture
from unittest import mock
from importlib import import_module
import copy

from common_library.common import const, bl_common_service
from common_library.common.db import DBconnector

import job_manager
import job_manager_const
import job_manager_config
from jobs.UserExportImportCleanupJobExecutor import UserExportImportCleanupJobExecutor
from libs import queries_user_import, queries_user_export
from tests.common import test_common

from libs.job_manager_classes import SubProcessesManager


def test_execute_nomally():
    """正常系 / normal pattern
    """
    testdata = import_module("tests.db.exports.testdata")

    with test_common.requsts_mocker_default():
        # M_SYSTEM_CONFIGから実行時間を取得
        with closing(DBconnector().connect_platformdb()) as conn:
            exp_days = bl_common_service.settings_system_config_list(conn,const.CONFIG_KEY_USER_EXPORT_IMPORT_EXP_DAYS)["value"]

        # ユーザーエクスポート・インポートのレコードを作成
        organization_id = list(testdata.ORGANIZATIONS.keys())[0]
        make_user_export_import_record('ja', organization_id)

        # ユーザーエクスポート・インポートクリーンアップの実行
        queue = make_queue_user_export_import_creanup()
        executor = UserExportImportCleanupJobExecutor(queue)
        result = executor.execute_base()

        # 成功を返すこと
        assert result

        # T_JOBS_USERテーブルに7日以上前のデータが残っていないこと
        ret = select_t_jobs_user(organization_id, "WHERE (CREATE_TIMESTAMP < DATE_SUB(NOW(), INTERVAL {} DAY) ) ".format(exp_days))
        assert len(ret) == 0

        # T_JOBS_USERテーブルに7日以内のデータが残っていること
        ret = select_t_jobs_user(organization_id, "WHERE (CREATE_TIMESTAMP > DATE_SUB(NOW(), INTERVAL {} DAY) ) ".format(exp_days))
        assert len(ret) > 0

        # T_JOBS_USER_FILEテーブルに7日以上前のデータが残っていないこと
        ret = select_t_jobs_user_file(organization_id, "WHERE (CREATE_TIMESTAMP < DATE_SUB(NOW(), INTERVAL {} DAY) ) ".format(exp_days))
        assert len(ret) == 0

        # T_JOBS_USER_FILEテーブルに7日以内のデータが残っていること
        ret = select_t_jobs_user_file(organization_id, "WHERE (CREATE_TIMESTAMP > DATE_SUB(NOW(), INTERVAL {} DAY) ) ".format(exp_days))
        assert len(ret) > 0

        # T_JOBS_USER_RESULTテーブルに7日以上前のデータが残っていないこと
        ret = select_t_jobs_user_result(organization_id, "WHERE (CREATE_TIMESTAMP < DATE_SUB(NOW(), INTERVAL {} DAY) ) ".format(exp_days))
        assert len(ret) == 0

        # T_JOBS_USER_RESULTテーブルに7日以内のデータが残っていること
        ret = select_t_jobs_user_result(organization_id, "WHERE (CREATE_TIMESTAMP > DATE_SUB(NOW(), INTERVAL {} DAY) ) ".format(exp_days))
        assert len(ret) > 0

        # T_JOBS_USER_EXPORTテーブルに7日以上前のデータが残っていないこと
        ret = select_t_jobs_user_export(organization_id, "WHERE (CREATE_TIMESTAMP < DATE_SUB(NOW(), INTERVAL {} DAY) ) ".format(exp_days))
        assert len(ret) == 0

        # T_JOBS_USER_EXPORTテーブルに7日以内のデータが残っていること
        ret = select_t_jobs_user_export(organization_id, "WHERE (CREATE_TIMESTAMP > DATE_SUB(NOW(), INTERVAL {} DAY) ) ".format(exp_days))
        assert len(ret) > 0

        # T_JOBS_USER_FILE_EXPORTテーブルに7日以上前のデータが残っていないこと
        ret = select_t_jobs_user_file_export(organization_id, "WHERE (CREATE_TIMESTAMP < DATE_SUB(NOW(), INTERVAL {} DAY) ) ".format(exp_days))
        assert len(ret) == 0

        # T_JOBS_USER_FILE_EXPORTテーブルに7日以内のデータが残っていること
        ret = select_t_jobs_user_file_export(organization_id, "WHERE (CREATE_TIMESTAMP > DATE_SUB(NOW(), INTERVAL {} DAY) ) ".format(exp_days))
        assert len(ret) > 0


def test_execute_timeout(caplog: LogCaptureFixture):
    """JOBタイムアウト
    """
    testdata = import_module("jobs.UserExportImportCleanupJobExecutor")
    timeout_sec = 3

    # Jobの設定を試験用に切り替え
    process_kind=job_manager_const.PROCESS_KIND_USER_EXPORT_IMPORT_CLEANUP
    job_config_jobs = copy.deepcopy(job_manager_config.JOBS)
    job_config_jobs[process_kind]["timeout_seconds"] = timeout_sec

    with test_common.requsts_mocker_default(), mock.patch.dict(f"job_manager_config.JOBS", job_config_jobs), mock.patch.object(testdata, 'sleep_time', new=3):
        # sub process起動用の情報生成
        sub_processes_mgr = SubProcessesManager()
        sub_process_parameter = sub_processes_mgr.generate_sub_process_parameter()

        # user_export_import_cleanupが即時実行されるようにexec_timesを書き換える
        ago_10s = datetime.datetime.now() + datetime.timedelta(seconds=-10)
        interval_job_exec_times = datetime.datetime.timestamp(ago_10s)
        sub_process_parameter.set_interval_job_exec_times(interval_job_exec_times, process_kind)

        # プロセスを追加
        sub_processes_mgr.append_new_process(sub_process_parameter, test_common.get_main_process(os.getpid()))

        # sub processの起動
        main_thread = threading.Thread(
            target=job_manager.job_manager_sub_process,
            args=(sub_process_parameter,),
            name="sub_process",
            daemon=True
        )
        main_thread.start()
        time.sleep(1.0)

        # sub processの状態更新(user export import log cleanupを行うprocessをどれにするかの情報を更新するため)
        sub_processes_mgr.refresh_sub_process_status()
        sub_processes_mgr.set_interval_job_execute_process()

        try:
            # timeout発生まで待つ
            time.sleep(5)

            # ログ出力の確認
            assert ('root', logging.ERROR, 'Cancel user export and bulk import cleanup (timeout)') in caplog.record_tuples

        finally:
            # sub processの終了要求
            sub_processes_mgr.set_sub_process_termination_request(force=True)

            # sub processの終了確認
            assert test_common.check_state(timeout=5.0, conditions=lambda : not main_thread.is_alive())

            main_thread.join()


def test_execute_db_error(caplog: LogCaptureFixture):
    """異常系（DB error） / db error pattern
    """
    testdata = import_module("tests.db.exports.testdata")

    with test_common.requsts_mocker_default(), \
        test_common.pymysql_execute_raise_exception_mocker(queries_user_import.SQL_DELETE_JOBS_USER, Exception("DB Error Test")):
        # 監査ログ削除JOBの実行
        queue = make_queue_user_export_import_creanup()
        executor = UserExportImportCleanupJobExecutor(queue)
        executor.execute_base()

        # ログ出力の確認
        assert ('root', logging.DEBUG, 'Failed user export and bulk import cleanup') in caplog.record_tuples


def select_t_audit_log(organization_id, str_where):
    """テスト用共通:T_JOBS_AUDIT_LOG取得

    Args:
        organization_id (_type_): _description_
        job_id (_type_): _description_

    Returns:
        _type_: _description_
    """
    with closing(DBconnector().connect_orgdb(organization_id)) as conn,\
        conn.cursor() as cursor:
        str_sql = "SELECT * FROM T_AUDIT_LOG " + str_where
        cursor.execute(str_sql)
        return cursor.fetchall()


def select_t_jobs_user(organization_id, str_where):
    """テスト用共通:T_JOBS_USER取得

    Args:
        organization_id (_type_): _description_
        job_id (_type_): _description_

    Returns:
        _type_: _description_
    """
    with closing(DBconnector().connect_orgdb(organization_id)) as conn,\
        conn.cursor() as cursor:
        str_sql = "SELECT * FROM T_JOBS_USER " + str_where
        cursor.execute(str_sql)
        return cursor.fetchall()


def select_t_jobs_user_file(organization_id, str_where):
    """テスト用共通:T_JOBS_USER_FILE取得

    Args:
        organization_id (_type_): _description_
        job_id (_type_): _description_

    Returns:
        _type_: _description_
    """
    with closing(DBconnector().connect_orgdb(organization_id)) as conn,\
        conn.cursor() as cursor:
        str_sql = "SELECT * FROM T_JOBS_USER_FILE " + str_where
        cursor.execute(str_sql)
        return cursor.fetchall()

def select_t_jobs_user_result(organization_id, str_where):
    """テスト用共通:T_JOBS_USER_RESULT取得

    Args:
        organization_id (_type_): _description_
        job_id (_type_): _description_

    Returns:
        _type_: _description_
    """
    with closing(DBconnector().connect_orgdb(organization_id)) as conn,\
        conn.cursor() as cursor:
        str_sql = "SELECT * FROM T_JOBS_USER_RESULT " + str_where
        cursor.execute(str_sql)
        return cursor.fetchall()

def select_t_jobs_user_export(organization_id, str_where):
    """テスト用共通:T_JOBS_USER_EXPORT取得

    Args:
        organization_id (_type_): _description_
        job_id (_type_): _description_

    Returns:
        _type_: _description_
    """
    with closing(DBconnector().connect_orgdb(organization_id)) as conn,\
        conn.cursor() as cursor:
        str_sql = "SELECT * FROM T_JOBS_USER_EXPORT " + str_where
        cursor.execute(str_sql)
        return cursor.fetchall()

def select_t_jobs_user_file_export(organization_id, str_where):
    """テスト用共通:T_JOBS_USER_FILE_EXPORT取得

    Args:
        organization_id (_type_): _description_
        job_id (_type_): _description_

    Returns:
        _type_: _description_
    """
    with closing(DBconnector().connect_orgdb(organization_id)) as conn,\
        conn.cursor() as cursor:
        str_sql = "SELECT * FROM T_JOBS_USER_FILE_EXPORT " + str_where
        cursor.execute(str_sql)
        return cursor.fetchall()

def make_user_export_import_record(lang, organization_id):
    """テスト用共通:ユーザーエクスポート・インポート用レコードを作成

    Args:
        lang (_type_): _description_
        organization_id (_type_): _description_

    Returns:
        _type_: _description_
    """
    with closing(DBconnector().connect_orgdb(organization_id)) as conn,\
        conn.cursor() as cursor:

        # 現在と過去のタイムスタンプ
        now_timestamp = datetime.datetime.now()
        old_timestamp = now_timestamp - datetime.timedelta(days=10)

        create_list = [now_timestamp, old_timestamp]

        for timestamp in create_list:
            # uuidを生成
            job_id = ulid.new().str
            file_id = ulid.new().str
            result_id = ulid.new().str

            # T_JOBS_USERにレコードを作成
            cursor.execute('''
                INSERT INTO T_JOBS_USER
                (JOB_ID,
                JOB_TYPE,
                JOB_STATUS,
                COUNT_REGISTER,
                COUNT_UPDATE,
                COUNT_DELETE,
                SUCCESS_REGISTER,
                SUCCESS_UPDATE,
                SUCCESS_DELETE,
                FAILED_REGISTER,
                FAILED_UPDATE,
                FAILED_DELETE,
                MESSAGE,
                LANGUAGE,
                CREATE_TIMESTAMP)
                VALUES
                (%(JOB_ID)s,
                %(JOB_TYPE)s,
                %(JOB_STATUS)s,
                %(COUNT_REGISTER)s,
                %(COUNT_UPDATE)s,
                %(COUNT_DELETE)s,
                %(SUCCESS_REGISTER)s,
                %(SUCCESS_UPDATE)s,
                %(SUCCESS_DELETE)s,
                %(FAILED_REGISTER)s,
                %(FAILED_UPDATE)s,
                %(FAILED_DELETE)s,
                %(MESSAGE)s,
                %(LANGUAGE)s,
                %(CREATE_TIMESTAMP)s)
                ''',
                {"JOB_ID": job_id,
                "JOB_TYPE": const.PROCESS_KIND_USER_IMPORT,
                "JOB_STATUS": const.JOB_USER_COMP,  # テストデータのためステータスは「完了」とする
                "COUNT_REGISTER": 2,
                "COUNT_UPDATE": 0,
                "COUNT_DELETE": 0,
                "SUCCESS_REGISTER": 2,
                "SUCCESS_UPDATE": 0,
                "SUCCESS_DELETE": 0,
                "FAILED_REGISTER": 0,
                "FAILED_UPDATE": 0,
                "FAILED_DELETE": 0,
                "MESSAGE": "dummy message import",
                "LANGUAGE": lang,
                "CREATE_TIMESTAMP": timestamp}
            )

            # T_JOBS_USER_FILEにレコードを作成
            cursor.execute('''
                INSERT INTO T_JOBS_USER_FILE
                (FILE_ID,
                JOB_ID,
                FILE_DATA,
                CREATE_TIMESTAMP)
                VALUES
                (%(FILE_ID)s,
                %(JOB_ID)s,
                %(FILE_DATA)s,
                %(CREATE_TIMESTAMP)s)
                ''',
                {"FILE_ID": file_id,
                "JOB_ID": job_id,
                "FILE_DATA": "xxxxxxxx",
                "CREATE_TIMESTAMP": timestamp}
            )

            # T_JOBS_USER_RESULTにレコードを作成
            cursor.execute('''
                INSERT INTO T_JOBS_USER_RESULT
                (RESULT_ID,
                JOB_ID,
                FILE_DATA,
                CREATE_TIMESTAMP)
                VALUES
                (%(RESULT_ID)s,
                %(JOB_ID)s,
                %(FILE_DATA)s,
                %(CREATE_TIMESTAMP)s)
                ''',
                {"RESULT_ID": result_id,
                "JOB_ID": job_id,
                "FILE_DATA": "xxxxxxxx",
                "CREATE_TIMESTAMP": timestamp}
            )

            job_id = ulid.new().str
            file_id = ulid.new().str

            # T_JOBS_USER_EXPORTにレコードを作成
            cursor.execute('''
                INSERT INTO T_JOBS_USER_EXPORT
                (JOB_ID,
                JOB_TYPE,
                JOB_STATUS,
                COUNT_EXPORT,
                MESSAGE,
                LANGUAGE,
                CREATE_TIMESTAMP)
                VALUES
                (%(JOB_ID)s,
                %(JOB_TYPE)s,
                %(JOB_STATUS)s,
                %(COUNT_EXPORT)s,
                %(MESSAGE)s,
                %(LANGUAGE)s,
                %(CREATE_TIMESTAMP)s)
                ''',
                {"JOB_ID": job_id,
                "JOB_TYPE": const.PROCESS_KIND_USER_EXPORT,
                "JOB_STATUS": const.JOB_USER_COMP,  # テストデータのためステータスは「完了」とする
                "COUNT_EXPORT": 2,
                "MESSAGE": "dummy message export",
                "LANGUAGE": lang,
                "CREATE_TIMESTAMP": timestamp}
            )

            # T_JOBS_USER_FILE_EXPORTにレコードを作成
            cursor.execute('''
                INSERT INTO T_JOBS_USER_FILE_EXPORT
                (FILE_ID,
                JOB_ID,
                FILE_DATA,
                CREATE_TIMESTAMP)
                VALUES
                (%(FILE_ID)s,
                %(JOB_ID)s,
                %(FILE_DATA)s,
                %(CREATE_TIMESTAMP)s)
                ''',
                {"FILE_ID": file_id,
                "JOB_ID": job_id,
                "FILE_DATA": "xxxxxxxx",
                "CREATE_TIMESTAMP": timestamp}
            )

            conn.commit()

    return True


def make_queue_user_export_import_creanup():
    """テスト用共通:Queue情報生成

    Args:
        lang (_type_): _description_
        organization_id (_type_): _description_
        insert_queue (bool, optional): _description_. Defaults to True.

    Returns:
        _type_: _description_
    """
    # uuidを生成
    process_id = ulid.new().str
    process_exec_id = ulid.new().str

    queue={
        "PROCESS_ID": process_id,
        "PROCESS_KIND": job_manager_const.PROCESS_KIND_USER_EXPORT_IMPORT_CLEANUP,
        "PROCESS_EXEC_ID": process_exec_id,
        "ORGANIZATION_ID": None,
        "WORKSPACE_ID": None,
        "LAST_UPDATE_USER": job_manager_const.SYSTEM_USER_ID,
        "LAST_UPDATE_TIMESTAMP": str(datetime.datetime.now()),
    }

    return queue


def auditlog_sample_data(year, month):

    return [
        auditlog_sample_data_item(datetime.datetime(year,month,i), i) for i in range(1,30+1)
    ]


def auditlog_sample_data_item(ts, i):
    return {
        "ts": ts,
        "user_id": f"USER_ID-{i}",
        "username": f"USERNAME-{i}",
        "org_id": f"ORG-{i}",
        "ws_id": f"WORKSPACE-{i}",
        "level": "INFO",
        "full_path": f"/api/org1/platform/{i}",
        "access_route": f"ACCESS_ROUTE-{i}",
        "remote_addr": f"REMOTE_ADDR-{i}",
        "request_headers": f"REQUEST_HEADERS-{i}",
        "request_user_headers": f"REQUEST_USER_HEADERS-{i}",
        "request_body": f"REQUEST_BODY-{i}",
        "request_form": f"REQUEST_FORM-{i}",
        "request_files": f"REQUEST_FILES-{i}",
        "status_code": 200,
        "name": f"NAME-{i}",
        "message": f"MESSAGE-{i}",
        "message_id": f"MSG-{i}",
        "message_text": f"MESSAGE_TEXT-{i}",
        "stack_info": f"STACK_INFO-{i}",
        "process": 0,
        "log_ts": ts,
        "userid": f"USER_ID-{i}",
        "method": "GET",
        "content_type": f"CONTENT_TYPE-{i}"
    }
