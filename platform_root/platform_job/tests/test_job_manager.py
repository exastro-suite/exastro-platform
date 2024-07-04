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
import pytest
from _pytest.logging import LogCaptureFixture

import os
import psutil
import logging
import threading
import time
import datetime
from unittest import mock
from unittest.mock import MagicMock
import ulid
from importlib import import_module
import copy

from common_library.common import const

from common import test_common

from tests.jobs.TestJobExecutor import TestExecuteStocker

import globals
import job_manager
import job_manager_const
import job_manager_config
from libs.job_manager_classes import SubProcessesManager
from libs import queries_health_check


def test_job_manager_main_sigterm_signal():
    """job manager main の終了動作(sigterm signal)
    """
    sub_process_count = 3
    with mock.patch("job_manager_config.SUB_PROCESS_ACCEPTABLE", sub_process_count):
        # main processの起動
        main_thread = threading.Thread(
            target=job_manager.job_manager_main_process,
            name="main_process",
            daemon=True
        )
        main_thread.start()

        try:
            # sub processの起動確認
            assert test_common.check_state(
                timeout=5.0, conditions=lambda : len([p for p in psutil.Process(os.getpid()).children() if p.name().startswith('python') ]), conditions_value=sub_process_count)

        finally:
            job_manager.job_manager_process_sigterm_handler(None, None)

            # sub processの終了確認
            assert test_common.check_state(
                timeout=5.0, conditions=lambda : len([p for p in psutil.Process(os.getpid()).children() if p.name().startswith('python') ]), conditions_value=0)

            # main processの終了確認
            assert not main_thread.is_alive()

            main_thread.join()


def test_job_manager_main_sigint_signal():
    """job manager main の終了動作(sigint → sigterm signal)
    """
    sub_process_count = 3
    with mock.patch("job_manager_config.SUB_PROCESS_ACCEPTABLE", sub_process_count):
        # main processの起動
        main_thread = threading.Thread(
            target=job_manager.job_manager_main_process,
            name="main_process",
            daemon=True
        )
        main_thread.start()

        try:
            # sub processの起動確認
            assert test_common.check_state(
                timeout=5.0, conditions=lambda : len([p for p in psutil.Process(os.getpid()).children() if p.name().startswith('python') ]), conditions_value=sub_process_count)

            # sigint signalの送信
            job_manager.job_manager_process_sigint_handler(None, None)

            # sub processの終了確認
            assert test_common.check_state(
                timeout=10.0, conditions=lambda : len([p for p in psutil.Process(os.getpid()).children() if p.name().startswith('python') ]), conditions_value=0)

            # 終了しているか確認
            assert test_common.check_state(
                timeout=5.0, conditions=lambda : not main_thread.is_alive())

        finally:
            # sigterm signalの送信
            job_manager.job_manager_process_sigterm_handler(None, None)

            # main processの終了確認
            assert test_common.check_state(
                timeout=10.0, conditions=lambda : not main_thread.is_alive())

            main_thread.join()


def test_job_manager_main_replacement_sub():
    """sub process交代の確認
    """
    with mock.patch("job_manager_config.SUB_PROCESS_ACCEPTABLE", 1), \
            mock.patch("job_manager_config.SUB_PROCESS_TERMINATE_REQUEST_SECONDS", 5):

        # main processの起動
        main_thread = threading.Thread(
            target=job_manager.job_manager_main_process,
            name="main_process",
            daemon=True
        )
        main_thread.start()

        try:
            # sub processの起動確認
            assert test_common.check_state(
                timeout=5.0, conditions=lambda : len([p for p in psutil.Process(os.getpid()).children() if p.name().startswith('python') ]), conditions_value=1)

            pid = [p.pid for p in psutil.Process(os.getpid()).children() if p.name().startswith('python')][0]

            # sub processの起動確認(pidが違うものが1件出来上がっている)
            assert test_common.check_state(
                timeout=10.0, conditions=lambda : len([p for p in psutil.Process(os.getpid()).children() if p.name().startswith('python') and p.pid != pid]), conditions_value=1)
            # sub processが最終的に1件に戻っている
            assert test_common.check_state(
                timeout=3.0, conditions=lambda : len([p for p in psutil.Process(os.getpid()).children() if p.name().startswith('python') ]), conditions_value=1)

        finally:
            # sigterm signalの送信
            job_manager.job_manager_process_sigterm_handler(None, None)

            # main processの終了確認
            assert test_common.check_state(
                timeout=5.0, conditions=lambda : not main_thread.is_alive())

            main_thread.join()


def test_job_manager_sub_terminate_request():
    """job manager subの終了要求
    """
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
        time.sleep(1.0)

    finally:
        # sub processの終了要求
        sub_processes_mgr.set_sub_process_termination_request(force=True)

        # sub processの終了確認
        assert test_common.check_state(
            timeout=3.0, conditions=lambda : not main_thread.is_alive())

        main_thread.join()


def test_job_manager_sub_execute_normal_job():
    """JOB正常終了
    """
    testdata = import_module("tests.db.exports.testdata")

    TestExecuteStocker.initalize()

    # Jobの実行classを試験用に切り替え
    process_kind=const.PROCESS_KIND_NOTIFICATION
    job_config_jobs = copy.deepcopy(job_manager_config.JOBS)
    job_config_jobs[process_kind]["timeout_seconds"] = 3
    job_config_jobs[process_kind]["max_job_per_process"] = 1
    job_config_jobs[process_kind]["module"] = "tests.jobs.TestJobExecutor"
    job_config_jobs[process_kind]["class"] = "TestNormalJobExecutor"

    with mock.patch.dict(f"job_manager_config.JOBS", job_config_jobs):

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
            # queueにデータを作成
            queue_data = [
                {
                    "PROCESS_ID": ulid.new().str,
                    "PROCESS_KIND": const.PROCESS_KIND_NOTIFICATION,
                    "PROCESS_EXEC_ID": ulid.new().str,
                    "ORGANIZATION_ID": list(testdata.ORGANIZATIONS.keys())[0],
                    "WORKSPACE_ID": testdata.ORGANIZATIONS[list(testdata.ORGANIZATIONS.keys())[0]]["workspace_id"][0],
                    "LAST_UPDATE_USER": "system"
                }
            ]
            test_common.insert_queue(queue_data)

            # executedに1件はいること
            assert test_common.check_state(
                timeout=10.0, conditions=lambda : len(TestExecuteStocker.executed_queue) == 1)
            # 実行したものがqueueに入れたものとおなじであること
            assert test_common.equal_queue(queue_data[0], TestExecuteStocker.executed_queue[0])

        finally:
            # sub processの終了要求
            sub_processes_mgr.set_sub_process_termination_request(force=True)

            # sub processの終了確認
            assert test_common.check_state(
                timeout=3.0, conditions=lambda : not main_thread.is_alive())

            main_thread.join()


def test_job_manager_sub_execute_timeout_job():
    """JOB timeout
    """
    testdata = import_module("tests.db.exports.testdata")

    TestExecuteStocker.initalize()

    # Jobの実行classを試験用に切り替え
    process_kind=const.PROCESS_KIND_NOTIFICATION
    job_config_jobs = copy.deepcopy(job_manager_config.JOBS)
    job_config_jobs[process_kind]["timeout_seconds"] = 1
    job_config_jobs[process_kind]["max_job_per_process"] = 1
    job_config_jobs[process_kind]["module"] = "tests.jobs.TestJobExecutor"
    job_config_jobs[process_kind]["class"] = "TestCancelTimeoutJobExecutor"

    with mock.patch.dict(f"job_manager_config.JOBS", job_config_jobs), \
            mock.patch('job_manager_config.SUB_PROCESS_MAX_CANCEL_TIMEOUT', 3):

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
            # queueにデータを作成
            queue_data = [
                {
                    "PROCESS_ID": ulid.new().str,
                    "PROCESS_KIND": const.PROCESS_KIND_NOTIFICATION,
                    "PROCESS_EXEC_ID": ulid.new().str,
                    "ORGANIZATION_ID": list(testdata.ORGANIZATIONS.keys())[0],
                    "WORKSPACE_ID": testdata.ORGANIZATIONS[list(testdata.ORGANIZATIONS.keys())[0]]["workspace_id"][0],
                    "LAST_UPDATE_USER": "system"
                }
            ]
            test_common.insert_queue(queue_data)

            # executed, canceledに1件はいること
            assert test_common.check_state(
                timeout=3.0, conditions=lambda : len(TestExecuteStocker.executed_queue) == 1)
            assert test_common.check_state(
                timeout=3.0, conditions=lambda : len(TestExecuteStocker.canceled_queue) == 1)
            assert test_common.check_state(
                timeout=10.0, conditions=lambda : len(TestExecuteStocker.cancel_exited_queue) == 1)

            # 実行したものがqueueに入れたものとおなじであること
            assert test_common.equal_queue(queue_data[0], TestExecuteStocker.executed_queue[0])
            assert test_common.equal_queue(queue_data[0], TestExecuteStocker.canceled_queue[0])
            assert test_common.equal_queue(queue_data[0], TestExecuteStocker.cancel_exited_queue[0])

            # sub process再起動されるcancel timeout回数
            queue_data = [
                {
                    "PROCESS_ID": ulid.new().str,
                    "PROCESS_KIND": const.PROCESS_KIND_NOTIFICATION,
                    "PROCESS_EXEC_ID": ulid.new().str,
                    "ORGANIZATION_ID": list(testdata.ORGANIZATIONS.keys())[0],
                    "WORKSPACE_ID": testdata.ORGANIZATIONS[list(testdata.ORGANIZATIONS.keys())[0]]["workspace_id"][0],
                    "LAST_UPDATE_USER": "system"
                },
                {
                    "PROCESS_ID": ulid.new().str,
                    "PROCESS_KIND": const.PROCESS_KIND_NOTIFICATION,
                    "PROCESS_EXEC_ID": ulid.new().str,
                    "ORGANIZATION_ID": list(testdata.ORGANIZATIONS.keys())[0],
                    "WORKSPACE_ID": testdata.ORGANIZATIONS[list(testdata.ORGANIZATIONS.keys())[0]]["workspace_id"][0],
                    "LAST_UPDATE_USER": "system"
                },
            ]
            test_common.insert_queue(queue_data)

            # 3件のcancel timeoutが行われていること
            assert test_common.check_state(
                timeout=20.0, conditions=lambda : len(TestExecuteStocker.cancel_exited_queue) == 3)

            # sub processの終了確認
            assert test_common.check_state(
                timeout=5.0, conditions=lambda : not main_thread.is_alive())

        finally:
            # sub processの終了要求
            sub_processes_mgr.set_sub_process_termination_request(force=True)

            # sub processの終了確認
            assert test_common.check_state(
                timeout=5.0, conditions=lambda : not main_thread.is_alive())

            main_thread.join()


def test_job_manager_sub_temminate_job_running():
    """job実行中に強制終了
    """
    testdata = import_module("tests.db.exports.testdata")
    TestExecuteStocker.initalize()

    # Jobの実行classを試験用に切り替え
    process_kind=const.PROCESS_KIND_NOTIFICATION
    job_config_jobs = copy.deepcopy(job_manager_config.JOBS)
    job_config_jobs[process_kind]["timeout_seconds"] = 3
    job_config_jobs[process_kind]["max_job_per_process"] = 1
    job_config_jobs[process_kind]["module"] = "tests.jobs.TestJobExecutor"
    job_config_jobs[process_kind]["class"] = "TestTimeoutJobExecutor"

    with mock.patch.dict(f"job_manager_config.JOBS", job_config_jobs):
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
            # queueにデータを作成
            queue_data = [
                {
                    "PROCESS_ID": ulid.new().str,
                    "PROCESS_KIND": const.PROCESS_KIND_NOTIFICATION,
                    "PROCESS_EXEC_ID": ulid.new().str,
                    "ORGANIZATION_ID": list(testdata.ORGANIZATIONS.keys())[0],
                    "WORKSPACE_ID": testdata.ORGANIZATIONS[list(testdata.ORGANIZATIONS.keys())[0]]["workspace_id"][0],
                    "LAST_UPDATE_USER": "system"
                }
            ]
            test_common.insert_queue(queue_data)

            # executedに1件はいること
            assert test_common.check_state(
                timeout=3.0, conditions=lambda : len(TestExecuteStocker.executed_queue) == 1)
            # 実行したものがqueueに入れたものとおなじであること
            assert test_common.equal_queue(queue_data[0], TestExecuteStocker.executed_queue[0])

        finally:
            # sub processの終了
            job_manager.job_manager_process_sigterm_handler(None, None)

            # sub processの終了確認
            assert test_common.check_state(
                timeout=5.0, conditions=lambda : not main_thread.is_alive())

            main_thread.join()


def test_job_manager_sub_db_reconnect(caplog: LogCaptureFixture):
    """sub processのdb connection確認
    """
    testdata = import_module("tests.db.exports.testdata")
    TestExecuteStocker.initalize()

    # Jobの実行classを試験用に切り替え
    process_kind=const.PROCESS_KIND_NOTIFICATION
    job_config_jobs = copy.deepcopy(job_manager_config.JOBS)
    job_config_jobs[process_kind]["timeout_seconds"] = 3
    job_config_jobs[process_kind]["max_job_per_process"] = 1
    job_config_jobs[process_kind]["module"] = "tests.jobs.TestJobExecutor"
    job_config_jobs[process_kind]["class"] = "TestNormalJobExecutor"

    with mock.patch.dict(f"job_manager_config.JOBS", job_config_jobs), \
            mock.patch("job_manager_config.SUB_PROCESS_DB_RECONNECT_INTERVAL_SECONDS", 5):

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
            # DB再接続ルートを通ったか
            assert test_common.check_state(timeout=10.0,
                conditions=lambda : ('root', logging.DEBUG, job_manager_const.LOG_RECONNECT) in caplog.record_tuples)

            # Reconnect後の正常性確認

            # queueにデータを作成
            queue_data = [
                {
                    "PROCESS_ID": ulid.new().str,
                    "PROCESS_KIND": const.PROCESS_KIND_NOTIFICATION,
                    "PROCESS_EXEC_ID": ulid.new().str,
                    "ORGANIZATION_ID": list(testdata.ORGANIZATIONS.keys())[0],
                    "WORKSPACE_ID": testdata.ORGANIZATIONS[list(testdata.ORGANIZATIONS.keys())[0]]["workspace_id"][0],
                    "LAST_UPDATE_USER": "system"
                }
            ]
            test_common.insert_queue(queue_data)

            # executedに1件はいること
            assert test_common.check_state(
                timeout=3.0, conditions=lambda : len(TestExecuteStocker.executed_queue) == 1)
        finally:
            # sub processの終了
            job_manager.job_manager_process_sigterm_handler(None, None)

            # sub processの終了確認
            assert test_common.check_state(
                timeout=5.0, conditions=lambda : not main_thread.is_alive())

            main_thread.join()


def test_job_manager_sub_db_helthcheck_error():
    """sub processのdb helthcheck error確認
    """
    testdata = import_module("tests.db.exports.testdata")
    TestExecuteStocker.initalize()

    # Jobの実行classを試験用に切り替え
    process_kind=const.PROCESS_KIND_NOTIFICATION
    job_config_jobs = copy.deepcopy(job_manager_config.JOBS)
    job_config_jobs[process_kind]["timeout_seconds"] = 3
    job_config_jobs[process_kind]["max_job_per_process"] = 1
    job_config_jobs[process_kind]["module"] = "tests.jobs.TestJobExecutor"
    job_config_jobs[process_kind]["class"] = "TestNormalJobExecutor"

    with mock.patch.dict(f"job_manager_config.JOBS", job_config_jobs), \
            mock.patch("job_manager_config.SUB_PROCESS_DB_HEALTH_CHECK_INTERVAL_SECONDS", 3), \
            test_common.pymysql_execute_raise_exception_mocker(queries_health_check.SQL_QUERY_HEALTH_CHECK, Exception('unit test error')):

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
            # helth checkエラーが発生していること
            assert test_common.check_state(timeout=5.0,
                conditions=lambda : test_common.pymysql_execute_raise_exception_state.call_count(queries_health_check.SQL_QUERY_HEALTH_CHECK) >= 1)

            # helth checkエラー後の正常性確認

            # queueにデータを作成
            queue_data = [
                {
                    "PROCESS_ID": ulid.new().str,
                    "PROCESS_KIND": const.PROCESS_KIND_NOTIFICATION,
                    "PROCESS_EXEC_ID": ulid.new().str,
                    "ORGANIZATION_ID": list(testdata.ORGANIZATIONS.keys())[0],
                    "WORKSPACE_ID": testdata.ORGANIZATIONS[list(testdata.ORGANIZATIONS.keys())[0]]["workspace_id"][0],
                    "LAST_UPDATE_USER": "system"
                }
            ]
            test_common.insert_queue(queue_data)

            # executedに1件はいること
            assert test_common.check_state(
                timeout=3.0, conditions=lambda : len(TestExecuteStocker.executed_queue) == 1)
        finally:
            # sub processの終了
            job_manager.job_manager_process_sigterm_handler(None, None)

            # sub processの終了確認
            assert test_common.check_state(
                timeout=5.0, conditions=lambda : not main_thread.is_alive())

            main_thread.join()


def test_job_manager_sub_job_limit_over():
    """jobの最大数を超えた時の動作およびORGANIZATIONの優先付け
    """
    testdata = import_module("tests.db.exports.testdata")
    TestExecuteStocker.initalize()
    max_job_per_process = 2

    # Jobの実行classを試験用に切り替え
    process_kind=const.PROCESS_KIND_NOTIFICATION
    job_config_jobs = copy.deepcopy(job_manager_config.JOBS)
    job_config_jobs[process_kind]["timeout_seconds"] = 4
    job_config_jobs[process_kind]["max_job_per_process"] = max_job_per_process
    job_config_jobs[process_kind]["module"] = "tests.jobs.TestJobExecutor"
    job_config_jobs[process_kind]["class"] = "TestTimeoutJobExecutor"

    with mock.patch.dict(f"job_manager_config.JOBS", job_config_jobs):

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
            # queueにデータを作成
            queue_data = [
                {
                    "PROCESS_ID": ulid.new().str,
                    "PROCESS_KIND": const.PROCESS_KIND_NOTIFICATION,
                    "PROCESS_EXEC_ID": ulid.new().str,
                    "ORGANIZATION_ID": list(testdata.ORGANIZATIONS.keys())[0],
                    "WORKSPACE_ID": testdata.ORGANIZATIONS[list(testdata.ORGANIZATIONS.keys())[0]]["workspace_id"][0],
                    "LAST_UPDATE_USER": "system"
                },
                {
                    "PROCESS_ID": ulid.new().str,
                    "PROCESS_KIND": const.PROCESS_KIND_NOTIFICATION,
                    "PROCESS_EXEC_ID": ulid.new().str,
                    "ORGANIZATION_ID": list(testdata.ORGANIZATIONS.keys())[0],
                    "WORKSPACE_ID": testdata.ORGANIZATIONS[list(testdata.ORGANIZATIONS.keys())[0]]["workspace_id"][0],
                    "LAST_UPDATE_USER": "system"
                },
                {
                    "PROCESS_ID": ulid.new().str,
                    "PROCESS_KIND": const.PROCESS_KIND_NOTIFICATION,
                    "PROCESS_EXEC_ID": ulid.new().str,
                    "ORGANIZATION_ID": list(testdata.ORGANIZATIONS.keys())[1],
                    "WORKSPACE_ID": testdata.ORGANIZATIONS[list(testdata.ORGANIZATIONS.keys())[1]]["workspace_id"][0],
                    "LAST_UPDATE_USER": "system"
                },
                {
                    "PROCESS_ID": ulid.new().str,
                    "PROCESS_KIND": const.PROCESS_KIND_NOTIFICATION,
                    "PROCESS_EXEC_ID": ulid.new().str,
                    "ORGANIZATION_ID": list(testdata.ORGANIZATIONS.keys())[1],
                    "WORKSPACE_ID": testdata.ORGANIZATIONS[list(testdata.ORGANIZATIONS.keys())[1]]["workspace_id"][0],
                    "LAST_UPDATE_USER": "system"
                },
            ]
            test_common.insert_queue(queue_data)

            # executedにlimit件はいること
            assert test_common.check_state(
                timeout=3.0, conditions=lambda : len(TestExecuteStocker.executed_queue) == max_job_per_process)
            time.sleep(1)
            assert test_common.check_state(
                timeout=3.0, conditions=lambda : len(TestExecuteStocker.executed_queue) == max_job_per_process)
            # 同じORGANIZATION_IDばかりが処理されていないこと
            assert TestExecuteStocker.executed_queue[0]["ORGANIZATION_ID"] != TestExecuteStocker.executed_queue[1]["ORGANIZATION_ID"]

            # その後全件処理されていること
            assert test_common.check_state(
                timeout=10.0, conditions=lambda : len(TestExecuteStocker.executed_queue) == len(queue_data))

        finally:
            # sub processの終了
            job_manager.job_manager_process_sigterm_handler(None, None)

            # sub processの終了確認
            assert test_common.check_state(
                timeout=10.0, conditions=lambda : not main_thread.is_alive())

            main_thread.join()


def test_job_manager_sub_force_update_status():
    """force update status呼出確認
    """
    TestExecuteStocker.initalize()

    # Jobの実行classを試験用に切り替え
    job_config_jobs = copy.deepcopy(job_manager_config.JOBS)
    job_config_jobs[const.PROCESS_KIND_NOTIFICATION]["module"] = "tests.jobs.TestJobExecutor"
    job_config_jobs[const.PROCESS_KIND_NOTIFICATION]["class"] = "TestNormalJobExecutor"

    job_config_jobs[job_manager_const.PROCESS_KIND_FORCE_UPDATE_STATUS]["job_interval"] = 3

    with mock.patch.dict(f"job_manager_config.JOBS", job_config_jobs):

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
        time.sleep(1.0)

        # sub processの状態更新(force_update_statusを行うprocessをどれにするかの情報を更新するため)
        sub_processes_mgr.refresh_sub_process_status()
        sub_processes_mgr.set_interval_job_execute_process()

        try:
            # force update status呼出確認
            assert test_common.check_state(
                timeout=10.0, conditions=lambda : TestExecuteStocker.call_force_update_status_count >= 1)

        finally:
            # sub processの終了
            job_manager.job_manager_process_sigterm_handler(None, None)

            # sub processの終了確認
            assert test_common.check_state(
                timeout=10.0, conditions=lambda : not main_thread.is_alive())

            main_thread.join()


def test_job_manager_sub_job_trigger_daily():
    """job_triggerがdailyのjob呼出確認
    """
    TestExecuteStocker.initalize()

    process_kind = job_manager_const.PROCESS_KIND_AUDIT_LOG_CLEANUP

    # Jobの実行classを試験用に切り替え
    job_config_jobs = copy.deepcopy(job_manager_config.JOBS)
    job_config_jobs[process_kind]["module"] = "tests.jobs.TestJobExecutor"
    job_config_jobs[process_kind]["class"] = "TestNormalJobExecutor"

    with mock.patch.dict(f"job_manager_config.JOBS", job_config_jobs):

        # sub process起動用の情報生成
        sub_processes_mgr = SubProcessesManager()
        sub_process_parameter = sub_processes_mgr.generate_sub_process_parameter()

        # 即時実行されるようにexec_timesを書き換える
        ago_10s = datetime.datetime.now() + datetime.timedelta(seconds=-10)
        interval_job_exec_times = datetime.datetime.timestamp(ago_10s)
        sub_process_parameter.set_interval_job_exec_times(interval_job_exec_times, process_kind)

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
            # executedに1件はいること
            assert test_common.check_state(
                timeout=10.0, conditions=lambda : len(TestExecuteStocker.executed_queue) == 1)

        finally:
            # sub processの終了
            job_manager.job_manager_process_sigterm_handler(None, None)

            # sub processの終了確認
            assert test_common.check_state(
                timeout=10.0, conditions=lambda : not main_thread.is_alive())

            main_thread.join()


def test_job_manager_sub_liveness_file():
    """ハングアップ監視用ファイルの確認
    """
    testdata = import_module("tests.db.exports.testdata")

    mock_time = time.time()
    with mock.patch("time.time", return_value = mock_time):

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
        time.sleep(3)
        try:
            # livenessファイルの時刻がmock_timeと同じであること
            with open(os.environ.get('FILE_PATH_LIVENESS'), 'r') as f:
                actual_value = f.read()
                assert actual_value == str(int(mock_time))

        finally:
            # sub processの終了要求
            sub_processes_mgr.set_sub_process_termination_request(force=True)

            main_thread.join()
