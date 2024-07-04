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
from jobs.AuditLogJobExecutor import AuditLogJobExecutor
from jobs.AuditLogCleanupJobExecutor import AuditLogCleanupJobExecutor
from libs import queries_auditlog
from tests.common import test_common

from libs.job_manager_classes import SubProcessesManager


def test_execute_nomally():
    """正常系 / normal pattern
    """
    testdata = import_module("tests.db.exports.testdata")

    with test_common.requsts_mocker_default():
        # M_SYSTEM_CONFIGから実行時間を取得
        with closing(DBconnector().connect_platformdb()) as conn:
            retention_days = bl_common_service.settings_system_config_list(conn,const.CONFIG_KEY_AUDIT_LOG_RETENTION_DAYS)["value"]
            download_exp_days = bl_common_service.settings_system_config_list(conn,const.CONFIG_KEY_AUDIT_LOG_DOWNLOAD_EXP_DAYS)["value"]

        # 監査ログのレコードを作成
        organization_id = list(testdata.ORGANIZATIONS.keys())[0]
        make_auditlog_record('ja', organization_id)

        # 監査ログ削除の実行
        queue = make_queue_auditlog_creanup()
        executor = AuditLogCleanupJobExecutor(queue)
        result = executor.execute_base()

        # 成功を返すこと
        assert result

        # T_AUDIT_LOGテーブルに365日以上前のデータが残っていないこと
        ret = select_t_audit_log(organization_id, "WHERE (TS < DATE_SUB(NOW(), INTERVAL {} DAY) ) ".format(retention_days))
        assert len(ret) == 0

        # T_AUDIT_LOGテーブルに365日以内のデータが残っていること
        ret = select_t_audit_log(organization_id, "WHERE (TS > DATE_SUB(NOW(), INTERVAL {} DAY) ) ".format(retention_days))
        assert len(ret) > 0

        # T_JOBS_AUDIT_LOGテーブルに7日以上前のデータが残っていないこと
        ret = select_t_jobs_audit_log(organization_id, "WHERE (CREATE_TIMESTAMP < DATE_SUB(NOW(), INTERVAL {} DAY) ) ".format(download_exp_days))
        assert len(ret) == 0

        # T_JOBS_AUDIT_LOGテーブルに7日以内のデータが残っていること
        ret = select_t_jobs_audit_log(organization_id, "WHERE (CREATE_TIMESTAMP > DATE_SUB(NOW(), INTERVAL {} DAY) ) ".format(download_exp_days))
        assert len(ret) > 0

        # T_JOBS_AUDIT_LOG_FILEテーブルに7日以上前のデータが残っていないこと
        ret = select_t_jobs_audit_log_file(organization_id, "WHERE (CREATE_TIMESTAMP < DATE_SUB(NOW(), INTERVAL {} DAY) ) ".format(download_exp_days))
        assert len(ret) == 0

        # T_JOBS_AUDIT_LOG_FILEテーブルに7日以内のデータが残っていること
        ret = select_t_jobs_audit_log_file(organization_id, "WHERE (CREATE_TIMESTAMP > DATE_SUB(NOW(), INTERVAL {} DAY) ) ".format(download_exp_days))
        assert len(ret) > 0


def test_execute_timeout(caplog: LogCaptureFixture):
    """JOBタイムアウト
    """
    testdata = import_module("jobs.AuditLogCleanupJobExecutor")
    timeout_sec = 3

    # Jobの設定を試験用に切り替え
    process_kind=job_manager_const.PROCESS_KIND_AUDIT_LOG_CLEANUP
    job_config_jobs = copy.deepcopy(job_manager_config.JOBS)
    job_config_jobs[process_kind]["timeout_seconds"] = timeout_sec

    with test_common.requsts_mocker_default(), mock.patch.dict(f"job_manager_config.JOBS", job_config_jobs), mock.patch.object(testdata, 'sleep_time', new=3):
        # sub process起動用の情報生成
        sub_processes_mgr = SubProcessesManager()
        sub_process_parameter = sub_processes_mgr.generate_sub_process_parameter()

        # audit_log_cleanupが即時実行されるようにexec_timesを書き換える
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

        # sub processの状態更新(audit log cleanupを行うprocessをどれにするかの情報を更新するため)
        sub_processes_mgr.refresh_sub_process_status()
        sub_processes_mgr.set_interval_job_execute_process()

        try:
            # timeout発生まで待つ
            time.sleep(5)

            # ログ出力の確認
            assert ('root', logging.ERROR, 'Cancel audit log cleanup (timeout)') in caplog.record_tuples

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
        test_common.pymysql_execute_raise_exception_mocker(queries_auditlog.SQL_DELETE_AUDIT_LOG, Exception("DB Error Test")):
        # 監査ログ削除JOBの実行
        queue = make_queue_auditlog_creanup()
        executor = AuditLogCleanupJobExecutor(queue)
        executor.execute_base()

        # ログ出力の確認
        assert ('root', logging.DEBUG, 'Failed audit log cleanup') in caplog.record_tuples


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


def select_t_jobs_audit_log(organization_id, str_where):
    """テスト用共通:T_JOBS_AUDIT_LOG取得

    Args:
        organization_id (_type_): _description_
        job_id (_type_): _description_

    Returns:
        _type_: _description_
    """
    with closing(DBconnector().connect_orgdb(organization_id)) as conn,\
        conn.cursor() as cursor:
        str_sql = "SELECT * FROM T_JOBS_AUDIT_LOG " + str_where
        cursor.execute(str_sql)
        return cursor.fetchall()


def select_t_jobs_audit_log_file(organization_id, str_where):
    """テスト用共通:T_JOBS_AUDIT_LOG_FILE取得

    Args:
        organization_id (_type_): _description_
        job_id (_type_): _description_

    Returns:
        _type_: _description_
    """
    with closing(DBconnector().connect_orgdb(organization_id)) as conn,\
        conn.cursor() as cursor:
        str_sql = "SELECT * FROM T_JOBS_AUDIT_LOG_FILE " + str_where
        cursor.execute(str_sql)
        return cursor.fetchall()


def make_auditlog_record(lang, organization_id):
    """テスト用共通:監査ログレコードを作成

    Args:
        lang (_type_): _description_
        organization_id (_type_): _description_

    Returns:
        _type_: _description_
    """
    now = datetime.datetime.now()
    auditlog_new = auditlog_sample_data(now.year, now.month)
    auditlog_old = auditlog_sample_data(2023, 5)
    auditlog_list = [auditlog_new, auditlog_old]

    with closing(DBconnector().connect_orgdb(organization_id)) as conn,\
        conn.cursor() as cursor:

        for auditlog in auditlog_list:
            for log in auditlog:
                cursor.execute("""
                    INSERT INTO T_AUDIT_LOG
                    (`TS`,
                    `USER_ID`,
                    `USERNAME`,
                    `ORG_ID`,
                    `WS_ID`,
                    `LEVEL`,
                    `FULL_PATH`,
                    `ACCESS_ROUTE`,
                    `REMOTE_ADDR`,
                    `REQUEST_HEADERS`,
                    `REQUEST_USER_HEADERS`,
                    `REQUEST_BODY`,
                    `REQUEST_FORM`,
                    `REQUEST_FILES`,
                    `STATUS_CODE`,
                    `NAME`,
                    `MESSAGE`,
                    `MESSAGE_ID`,
                    `MESSAGE_TEXT`,
                    `STACK_INFO`,
                    `PROCESS`,
                    `LOG_TS`,
                    `USERID`,
                    `METHOD`,
                    `CONTENT_TYPE`)
                    VALUES
                    (%(ts)s,
                    %(user_id)s,
                    %(username)s,
                    %(org_id)s,
                    %(ws_id)s,
                    %(level)s,
                    %(full_path)s,
                    %(access_route)s,
                    %(remote_addr)s,
                    %(request_headers)s,
                    %(request_user_headers)s,
                    %(request_body)s,
                    %(request_form)s,
                    %(request_files)s,
                    %(status_code)s,
                    %(name)s,
                    %(message)s,
                    %(message_id)s,
                    %(message_text)s,
                    %(stack_info)s,
                    %(process)s,
                    %(log_ts)s,
                    %(userid)s,
                    %(method)s,
                    %(content_type)s);
                """, log)

        # uuidを生成
        process_exec_id = ulid.new().str
        file_id = ulid.new().str

        # ジョブ監査ログレコードを作成
        cursor.execute('''
            INSERT INTO T_JOBS_AUDIT_LOG
            (JOB_ID,
            JOB_TYPE,
            JOB_STATUS,
            CONDITIONS,
            LANGUAGE)
            VALUES
            (%(JOB_ID)s,
            %(JOB_TYPE)s,
            %(JOB_STATUS)s,
            %(CONDITIONS)s,
            %(LANGUAGE)s)
            ''',
            {"JOB_ID": process_exec_id,
            "JOB_TYPE": const.PROCESS_KIND_AUDIT_LOG,
            "JOB_STATUS": const.AUDIT_LOG_COMP,  # テストデータのためステータスは「完了」とする
            "CONDITIONS": json.dumps({"ts_from": "2024-06-05 00:00:00", "ts_to": "2024-06-09 23:59:59"}),
            "LANGUAGE": lang}
        )

        # ジョブ監査ログファイルレコードを作成
        cursor.execute('''
            INSERT INTO T_JOBS_AUDIT_LOG_FILE
            (FILE_ID,
            JOB_ID,
            FILE_DATA)
            VALUES
            (%(FILE_ID)s,
            %(JOB_ID)s,
            %(FILE_DATA)s)
            ''',
            {"FILE_ID": file_id,
            "JOB_ID": process_exec_id,
            "FILE_DATA": "xxxxxxxx"}
        )

        # uuidを生成
        process_exec_id = ulid.new().str
        file_id = ulid.new().str

        # タイムスタンプに7日以上前の日付を入れる
        old_timestamp = datetime.datetime.now() - datetime.timedelta(days=10)

        # 過去時刻用のジョブ監査ログレコードを作成
        cursor.execute('''
            INSERT INTO T_JOBS_AUDIT_LOG
            (JOB_ID,
            JOB_TYPE,
            JOB_STATUS,
            CONDITIONS,
            LANGUAGE,
            CREATE_TIMESTAMP)
            VALUES
            (%(JOB_ID)s,
            %(JOB_TYPE)s,
            %(JOB_STATUS)s,
            %(CONDITIONS)s,
            %(LANGUAGE)s,
            %(CREATE_TIMESTAMP)s)
            ''',
            {"JOB_ID": process_exec_id,
            "JOB_TYPE": const.PROCESS_KIND_AUDIT_LOG,
            "JOB_STATUS": const.AUDIT_LOG_COMP,  # テストデータのためステータスは「完了」とする
            "CONDITIONS": json.dumps({"ts_from": "2024-06-05 00:00:00", "ts_to": "2024-06-09 23:59:59"}),
            "LANGUAGE": lang,
            "CREATE_TIMESTAMP": old_timestamp}
        )

        # 過去時刻用のジョブ監査ログファイルレコードを作成
        cursor.execute('''
            INSERT INTO T_JOBS_AUDIT_LOG_FILE
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
            "JOB_ID": process_exec_id,
            "FILE_DATA": "xxxxxxxx",
            "CREATE_TIMESTAMP": old_timestamp}
        )

        conn.commit()

    return True


def make_queue_auditlog_creanup():
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
        "PROCESS_KIND": job_manager_const.PROCESS_KIND_AUDIT_LOG_CLEANUP,
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
