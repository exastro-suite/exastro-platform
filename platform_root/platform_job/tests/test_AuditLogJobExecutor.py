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
import requests_mock

import io
from zipfile import ZipFile, BadZipfile
import glob
import os
import ulid
import json
import time
import datetime
import re
from contextlib import closing
import pathlib
import copy

from unittest import mock
import threading
from importlib import import_module

from common_library.common import const, common
from common_library.common import encrypt
from common_library.common.db import DBconnector

import job_manager
import job_manager_const
import job_manager_config
import jobs.AuditLogJobExecutor
from jobs.AuditLogJobExecutor import AuditLogJobExecutor
from libs import queries_auditlog
from tests.common import test_common

from libs.job_manager_classes import SubProcessesManager


def test_execute_nomally():
    """正常系 / normal pattern
    """
    testdata = import_module("tests.db.exports.testdata")

    with test_common.requsts_mocker_default():
        # 抽出情報の設定
        organization_id = list(testdata.ORGANIZATIONS.keys())[0]
        conditions = {"ts_from": "2024-06-05 00:00:00", "ts_to": "2024-06-09 23:59:59"}
        auditlog_all = auditlog_sample_data1()

        # 要求情報の作成
        queue = make_queue_auditlog('ja', organization_id, conditions, auditlog_all)

        # JOBの実行
        executor = AuditLogJobExecutor(queue)
        result = executor.execute_base()

        # 成功を返すこと
        assert result
        t_jobs_audit_log = select_t_jobs_audit_log(organization_id, queue["PROCESS_EXEC_ID"])
        assert t_jobs_audit_log["JOB_STATUS"] == const.AUDIT_LOG_COMP

        # 作成予定のデータ
        auditlog_filter = [
            log for log in auditlog_all
                if log["ts"] >= datetime.datetime.strptime(conditions['ts_from'], '%Y-%m-%d %H:%M:%S') \
                and log["ts"] <= datetime.datetime.strptime(conditions['ts_to'], '%Y-%m-%d %H:%M:%S')
        ]

        # 出力件数が正しいこと
        assert t_jobs_audit_log["COUNT_EXPORT"] == len(auditlog_filter)

        # 出力ファイルの確認

        t_jobs_audit_log_file = select_t_jobs_audit_log_file(organization_id, queue["PROCESS_EXEC_ID"])
        assert t_jobs_audit_log_file is not None

        # Zipファイル確認(ファイルの出力件数まで確認)
        with ZipFile(io.BytesIO(t_jobs_audit_log_file["FILE_DATA"]), mode='r',) as fp_zip, \
            fp_zip.open(f"exastro_audit_{datetime.datetime.strptime(conditions['ts_from'], '%Y-%m-%d %H:%M:%S').strftime('%Y%m%d')}-{datetime.datetime.strptime(conditions['ts_to'], '%Y-%m-%d %H:%M:%S').strftime('%Y%m%d')}.log", 'r') as fp_file:
            file_image = fp_file.readlines()
            assert len(file_image) == len(auditlog_filter)

        # Temporary fileが残ってないこと
        assert len([p for p in glob.glob(f'{os.environ.get("TEMPORARY_DIR")}/exastro*') if os.path.isfile(p)]) == 0


def test_execute_notfound():
    """データなし / not found pattern
    """
    testdata = import_module("tests.db.exports.testdata")

    with test_common.requsts_mocker_default():
        # 抽出情報の設定
        organization_id = list(testdata.ORGANIZATIONS.keys())[0]
        conditions = {"ts_from": "2024-05-01 00:00:01", "ts_to": "2024-05-01 00:00:00"}
        auditlog_all = auditlog_sample_data1()

        # 要求情報の作成
        queue = make_queue_auditlog('ja', organization_id, conditions, auditlog_all)

        # JOBの実行
        executor = AuditLogJobExecutor(queue)
        result = executor.execute_base()

        # 成功を返すこと
        assert result
        t_jobs_audit_log = select_t_jobs_audit_log(organization_id, queue["PROCESS_EXEC_ID"])
        assert t_jobs_audit_log["JOB_STATUS"] == const.AUDIT_LOG_NODATA

        # 出力ファイルの確認
        t_jobs_audit_log_file = select_t_jobs_audit_log_file(organization_id, queue["PROCESS_EXEC_ID"])
        assert t_jobs_audit_log_file is None

        # Temporary fileが残ってないこと
        assert len([p for p in glob.glob(f'{os.environ.get("TEMPORARY_DIR")}/exastro*') if os.path.isfile(p)]) == 0


def test_execute_too_large():
    """ファイル最大値超過
    """
    testdata = import_module("tests.db.exports.testdata")

    # Jobの設定を試験用に切り替え
    process_kind=const.PROCESS_KIND_AUDIT_LOG
    job_config_jobs = copy.deepcopy(job_manager_config.JOBS)
    job_config_jobs[process_kind]["extra_config"]["max_file_size"] = 1

    with test_common.requsts_mocker_default(), \
        mock.patch.dict(f"job_manager_config.JOBS", job_config_jobs):

        # 抽出情報の設定
        organization_id = list(testdata.ORGANIZATIONS.keys())[0]
        conditions = {"ts_from": "2024-06-05 00:00:00", "ts_to": "2024-06-09 23:59:59"}
        auditlog_all = auditlog_sample_data1()

        # 要求情報の作成
        queue = make_queue_auditlog('ja', organization_id, conditions, auditlog_all)

        # JOBの実行
        executor = AuditLogJobExecutor(queue)
        result = executor.execute_base()

        # 失敗を返すこと
        assert not result
        t_jobs_audit_log = select_t_jobs_audit_log(organization_id, queue["PROCESS_EXEC_ID"])
        assert t_jobs_audit_log["JOB_STATUS"] == const.AUDIT_LOG_FAILED
        assert 'ファイルサイズ' in t_jobs_audit_log["MESSAGE"]

        # 出力ファイルの確認
        t_jobs_audit_log_file = select_t_jobs_audit_log_file(organization_id, queue["PROCESS_EXEC_ID"])
        assert t_jobs_audit_log_file is None

        # Temporary fileが残ってないこと
        assert len([p for p in glob.glob(f'{os.environ.get("TEMPORARY_DIR")}/exastro*') if os.path.isfile(p)]) == 0


def test_execute_job_notfound():
    """JOBレコード無し
    """
    testdata = import_module("tests.db.exports.testdata")

    with test_common.requsts_mocker_default():
        # 抽出情報の設定
        organization_id = list(testdata.ORGANIZATIONS.keys())[0]
        conditions = {"ts_from": "2024-06-05 00:00:00", "ts_to": "2024-06-09 23:59:59"}

        # 要求情報の作成(JOBキューにだけデータを作る)
        queue={
            "PROCESS_ID": ulid.new().str,
            "PROCESS_KIND": const.PROCESS_KIND_AUDIT_LOG,
            "PROCESS_EXEC_ID": ulid.new().str,
            "ORGANIZATION_ID": organization_id,
            "WORKSPACE_ID": None,
            "LAST_UPDATE_USER": job_manager_const.SYSTEM_USER_ID,
            "LAST_UPDATE_TIMESTAMP": str(datetime.datetime.now()),
        }
        test_common.insert_queue([queue])

        # JOBの実行
        executor = AuditLogJobExecutor(queue)
        result = executor.execute_base()

        # 失敗を返すこと
        assert not result

        # Temporary fileが残ってないこと
        assert len([p for p in glob.glob(f'{os.environ.get("TEMPORARY_DIR")}/exastro*') if os.path.isfile(p)]) == 0


def test_execute_timeout():
    """JOBタイムアウト
    """
    testdata = import_module("tests.db.exports.testdata")

    organization_id = list(testdata.ORGANIZATIONS.keys())[0]

    timeout_sec = 3

    # Jobの設定を試験用に切り替え
    process_kind=const.PROCESS_KIND_AUDIT_LOG
    job_config_jobs = copy.deepcopy(job_manager_config.JOBS)
    job_config_jobs[process_kind]["timeout_seconds"] = timeout_sec
    job_config_jobs[process_kind]["extra_config"]["status_update_interval"] = 1
    job_config_jobs[process_kind]["extra_config"]["output_interval_millisecond"] = 1000

    with test_common.requsts_mocker_default(), \
        mock.patch.dict(f"job_manager_config.JOBS", job_config_jobs), \
        mock.patch.object(jobs.AuditLogJobExecutor, 'GET_ROWS_LIMIT', new=1):

        # 抽出情報の設定
        organization_id = list(testdata.ORGANIZATIONS.keys())[0]
        conditions = {"ts_from": "2000-06-01 00:00:00", "ts_to": "2100-06-30 23:59:59"}
        auditlog_all = auditlog_sample_data1()

        # 要求情報の作成
        queue = make_queue_auditlog('ja', organization_id, conditions, auditlog_all)

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
            # timeout発生まで待つ
            time.sleep(timeout_sec)
            for i in range(30):
                t = select_t_jobs_audit_log(organization_id, queue["PROCESS_EXEC_ID"])
                if t["JOB_STATUS"] != const.AUDIT_LOG_EXEC:
                    break
                time.sleep(1)

            # タイムアウトエラーで終了していること
            assert t["JOB_STATUS"] == const.AUDIT_LOG_FAILED
            assert 'タイムアウト' in t["MESSAGE"]

            # Temporary fileが残ってないこと
            assert len([p for p in glob.glob(f'{os.environ.get("TEMPORARY_DIR")}/exastro*') if os.path.isfile(p)]) == 0

        finally:
            # sub processの終了要求
            sub_processes_mgr.set_sub_process_termination_request(force=True)

            # sub processの終了確認
            # assert test_common.check_state(
            #     timeout=5.0, conditions=lambda : not main_thread.is_alive())

            main_thread.join()


def test_execute_db_error():
    """異常系（DB error） / db error pattern
    """
    testdata = import_module("tests.db.exports.testdata")

    # Jobの設定を試験用に切り替え
    process_kind=const.PROCESS_KIND_AUDIT_LOG
    job_config_jobs = copy.deepcopy(job_manager_config.JOBS)
    job_config_jobs[process_kind]["extra_config"]["status_update_interval"] = 1

    with test_common.requsts_mocker_default(), \
        mock.patch.dict(f"job_manager_config.JOBS", job_config_jobs), \
        test_common.pymysql_execute_raise_exception_mocker(queries_auditlog.SQL_INSERT_JOBS_AUDIT_LOG_FILE, Exception("DB Error Test")):

        # 抽出情報の設定
        organization_id = list(testdata.ORGANIZATIONS.keys())[0]
        conditions = {"ts_from": "2024-06-05 00:00:00", "ts_to": "2024-06-09 23:59:59"}
        auditlog_all = auditlog_sample_data1()

        # 要求情報の作成
        queue = make_queue_auditlog('ja', organization_id, conditions, auditlog_all)

        # JOBの実行
        executor = AuditLogJobExecutor(queue)
        result = executor.execute_base()

        # 失敗を返すこと
        assert not result
        t_jobs_audit_log = select_t_jobs_audit_log(organization_id, queue["PROCESS_EXEC_ID"])
        assert t_jobs_audit_log["JOB_STATUS"] == const.AUDIT_LOG_FAILED

        # Temporary fileが残ってないこと
        assert len([p for p in glob.glob(f'{os.environ.get("TEMPORARY_DIR")}/exastro*') if os.path.isfile(p)]) == 0


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
        queue = make_queue_auditlog('ja', data['organization_id'], {}, [], insert_queue=data["queue_exists"])
        data['queue'] = queue

        with closing(DBconnector().connect_orgdb(data['organization_id'])) as conn,\
            conn.cursor() as cursor:

            if data["too_old_date"]:
                cursor.execute("""
                    UPDATE T_JOBS_AUDIT_LOG SET LAST_UPDATE_TIMESTAMP = DATE_SUB(LAST_UPDATE_TIMESTAMP, INTERVAL %(SECONDS)s SECOND)
                        WHERE JOB_ID = %(JOB_ID)s
                """, {"JOB_ID": queue["PROCESS_EXEC_ID"], "SECONDS": job_manager_config.JOBS[job_manager_const.PROCESS_KIND_FORCE_UPDATE_STATUS]['extra_config']['prograss_seconds'] + 1})
                conn.commit()

    # Temporaryの設置
    old_datetime = (datetime.datetime.now() - datetime.timedelta(days=2)).timestamp()
    pathlib.Path(os.path.join(os.environ.get('TEMPORARY_DIR'), 'exastro_auditlog_too_old')).touch()
    os.utime(path=os.path.join(os.environ.get('TEMPORARY_DIR'), 'exastro_auditlog_too_old'), times=(old_datetime, old_datetime))
    pathlib.Path(os.path.join(os.environ.get('TEMPORARY_DIR'), 'exastro_auditlog_new')).touch()

    # 強制ステータス更新を実行
    AuditLogJobExecutor.force_update_status()
    # データの更新状況を確認
    for i, data in enumerate(datas):
        t = select_t_jobs_audit_log(data['organization_id'], data["queue"]["PROCESS_EXEC_ID"])

        if data['queue_exists']:
            # queueに情報が残っている場合は、日時とは関係なく更新しない
            assert t["JOB_STATUS"] == const.JOB_USER_NOT_EXEC
        elif not data['too_old_date']:
            # 日時が古くない場合は、更新しない
            assert t["JOB_STATUS"] == const.JOB_USER_NOT_EXEC
        else:
            # queueにデータがなく、日付が古い場合、エラーに更新していること
            assert t["JOB_STATUS"] == const.JOB_USER_FAILED

    # Temporary fileが1つ残っている（１つ古いのが消える）
    assert len([p for p in glob.glob(f'{os.environ.get("TEMPORARY_DIR")}/exastro*') if os.path.isfile(p)]) == 1


def select_t_jobs_audit_log(organization_id, job_id):
    """テスト用共通:T_JOBS_AUDIT_LOG取得

    Args:
        organization_id (_type_): _description_
        job_id (_type_): _description_

    Returns:
        _type_: _description_
    """
    with closing(DBconnector().connect_orgdb(organization_id)) as conn,\
        conn.cursor() as cursor:

        cursor.execute("SELECT * FROM T_JOBS_AUDIT_LOG WHERE JOB_ID = %(job_id)s", {"job_id": job_id})
        return cursor.fetchone()


def select_t_jobs_audit_log_file(organization_id, job_id):
    """テスト用共通:T_JOBS_AUDIT_LOG_FILE取得

    Args:
        organization_id (_type_): _description_
        job_id (_type_): _description_

    Returns:
        _type_: _description_
    """
    with closing(DBconnector().connect_orgdb(organization_id)) as conn,\
        conn.cursor() as cursor:

        cursor.execute("SELECT * FROM T_JOBS_AUDIT_LOG_FILE WHERE JOB_ID = %(job_id)s", {"job_id": job_id})
        return cursor.fetchone()


def make_queue_auditlog(lang, organization_id, conditions, auditlog, insert_queue=True):
    """テスト用共通:Queue情報生成

    Args:
        lang (_type_): _description_
        organization_id (_type_): _description_
        insert_queue (bool, optional): _description_. Defaults to True.

    Returns:
        _type_: _description_
    """
    process_id = ulid.new().str
    process_exec_id = ulid.new().str

    queue={
        "PROCESS_ID": process_id,
        "PROCESS_KIND": const.PROCESS_KIND_AUDIT_LOG,
        "PROCESS_EXEC_ID": process_exec_id,
        "ORGANIZATION_ID": organization_id,
        "WORKSPACE_ID": None,
        "LAST_UPDATE_USER": job_manager_const.SYSTEM_USER_ID,
        "LAST_UPDATE_TIMESTAMP": str(datetime.datetime.now()),
    }

    with closing(DBconnector().connect_orgdb(organization_id)) as conn,\
        conn.cursor() as cursor:

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
            "JOB_STATUS": const.AUDIT_LOG_NOT_EXEC,
            "CONDITIONS": json.dumps(conditions),
            "LANGUAGE": lang}
        )

        conn.commit()

    if insert_queue:
        test_common.insert_queue([queue])

    return queue


def auditlog_sample_data1():
    return [
        auditlog_sample_data_item(datetime.datetime(2024,6,i), i) for i in range(1,30+1)
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
