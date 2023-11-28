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

import ulid
import json
import datetime
from contextlib import closing

from common_library.common import const
from common_library.common import encrypt
from common_library.common.db import DBconnector

import job_manager_const
import job_manager_config
from jobs.NotificationJobExecutor import NotificationJobExecutor

from tests.common import test_common
from tests.db.exports import testdata


def test_execute_teams_nomally():
    organization_id = list(testdata.ORGANIZATIONS.keys())[0]
    workspace_id = testdata.ORGANIZATIONS[organization_id]["workspace_id"][0]

    webhook_url_path = "/test_execute_teams_nomally"
    message_title = "test_execute_teams_nomally title"
    message_text = "test_execute_teams_nomally text"

    queue = make_notification_teams(
                organization_id,
                workspace_id,
                f"{test_common.TEST_HTTPCODE200_ORIGIN}/{webhook_url_path}",
                message_title,
                message_text
                )

    with test_common.requsts_mocker_default() as requsts_mocker:
        executor = NotificationJobExecutor(queue)
        result = executor.execute_base()

        # 成功を返すこと
        assert result
        # ステータスが成功に更新されていること
        assert get_notification_status(organization_id, workspace_id, queue['PROCESS_EXEC_ID']) == const.NOTIFICATION_STATUS_SUCCESSFUL
        # 指定したwebhookが1回呼ばれていること
        request_webhooks = [history for history in requsts_mocker.request_history if history.url == f"{test_common.TEST_HTTPCODE200_ORIGIN}/{webhook_url_path}"]
        assert len(request_webhooks) == 1
        # 送信webhookの内容が正しいこと
        assert request_webhooks[0].method == 'POST'
        assert json.loads(request_webhooks[0].text)["title"] == message_title
        assert json.loads(request_webhooks[0].text)["text"] == message_text


def test_execute_teams_http_error():
    organization_id = list(testdata.ORGANIZATIONS.keys())[0]
    workspace_id = testdata.ORGANIZATIONS[organization_id]["workspace_id"][0]

    webhook_url_path = "/test_execute_teams_http_error"
    message_title = "test_execute_teams_http_error title"
    message_text = "test_execute_teams_http_error text"

    queue = make_notification_teams(
                organization_id,
                workspace_id,
                f"{test_common.TEST_HTTPCODE500_ORIGIN}/{webhook_url_path}",
                message_title,
                message_text
                )

    with test_common.requsts_mocker_default() as requsts_mocker:
        executor = NotificationJobExecutor(queue)
        result = executor.execute_base()

        # 失敗を返すこと
        assert not result
        # ステータスが失敗に更新されていること
        assert get_notification_status(organization_id, workspace_id, queue['PROCESS_EXEC_ID']) == const.NOTIFICATION_STATUS_FAILED
        # 指定したwebhookが1回呼ばれていること
        request_webhooks = [history for history in requsts_mocker.request_history if history.url == f"{test_common.TEST_HTTPCODE500_ORIGIN}/{webhook_url_path}"]
        assert len(request_webhooks) == 1
        # 送信webhookの内容が正しいこと
        assert request_webhooks[0].method == 'POST'
        assert json.loads(request_webhooks[0].text)["title"] == message_title
        assert json.loads(request_webhooks[0].text)["text"] == message_text


def test_execute_no_notification():
    organization_id = list(testdata.ORGANIZATIONS.keys())[0]
    workspace_id = testdata.ORGANIZATIONS[organization_id]["workspace_id"][0]

    queue = {
        "PROCESS_ID": ulid.new().str,
        "PROCESS_KIND": const.PROCESS_KIND_NOTIFICATION,
        "PROCESS_EXEC_ID": ulid.new().str,
        "ORGANIZATION_ID": organization_id,
        "WORKSPACE_ID": workspace_id,
        "LAST_UPDATE_USER": job_manager_const.SYSTEM_USER_ID,
        "LAST_UPDATE_TIMESTAMP": datetime.datetime.now(),
    }

    with test_common.requsts_mocker_default() as requsts_mocker:
        executor = NotificationJobExecutor(queue)
        result = executor.execute_base()

        # 失敗を返すこと
        assert not result


def test_cancel_normal():
    organization_id = list(testdata.ORGANIZATIONS.keys())[0]
    workspace_id = testdata.ORGANIZATIONS[organization_id]["workspace_id"][0]

    webhook_url_path = "/test_cancel_normal"
    message_title = "test_cancel_normal title"
    message_text = "test_cancel_normal text"

    queue = make_notification_teams(
                organization_id,
                workspace_id,
                f"{test_common.TEST_HTTPCODE500_ORIGIN}/{webhook_url_path}",
                message_title,
                message_text
                )

    executor = NotificationJobExecutor(queue)
    result = executor.cancel_base()

    # 成功を返すこと
    assert result
    # ステータスが失敗に更新されていること
    assert get_notification_status(organization_id, workspace_id, queue['PROCESS_EXEC_ID']) == const.NOTIFICATION_STATUS_FAILED


def test_force_update_status_normal():
    # テストデータ作成
    datas = [
        {
            "organization_id": list(testdata.ORGANIZATIONS.keys())[0],
            "workspace_id": testdata.ORGANIZATIONS[list(testdata.ORGANIZATIONS.keys())[0]]["workspace_id"][0],
            "queue_exists": False,
            "too_old_date": True,
            "queue": None,
        },
        {
            "organization_id": list(testdata.ORGANIZATIONS.keys())[0],
            "workspace_id": testdata.ORGANIZATIONS[list(testdata.ORGANIZATIONS.keys())[0]]["workspace_id"][1],
            "queue_exists": False,
            "too_old_date": True,
            "queue": None,
        },
        {
            "organization_id": list(testdata.ORGANIZATIONS.keys())[1],
            "workspace_id": testdata.ORGANIZATIONS[list(testdata.ORGANIZATIONS.keys())[1]]["workspace_id"][0],
            "queue_exists": False,
            "too_old_date": True,
            "queue": None,
        },
        {
            "organization_id": list(testdata.ORGANIZATIONS.keys())[1],
            "workspace_id": testdata.ORGANIZATIONS[list(testdata.ORGANIZATIONS.keys())[1]]["workspace_id"][0],
            "queue_exists": True,
            "too_old_date": True,
            "queue": None,
        },
        {
            "organization_id": list(testdata.ORGANIZATIONS.keys())[2],
            "workspace_id": testdata.ORGANIZATIONS[list(testdata.ORGANIZATIONS.keys())[2]]["workspace_id"][0],
            "queue_exists": False,
            "too_old_date": True,
            "queue": None,
        },
        {
            "organization_id": list(testdata.ORGANIZATIONS.keys())[2],
            "workspace_id": testdata.ORGANIZATIONS[list(testdata.ORGANIZATIONS.keys())[2]]["workspace_id"][0],
            "queue_exists": False,
            "too_old_date": False,
            "queue": None,
        },
    ]

    for data in datas:
        queue = make_notification_teams(data['organization_id'], data['workspace_id'], test_common.TEST_HTTPCODE200_ORIGIN, 'title', 'message')
        data['queue'] = queue
        if data["queue_exists"]:
            # queueにデータをinsert
            test_common.insert_queue([queue])

        if data["too_old_date"]:
            # データを古い時間に更新
            with closing(DBconnector().connect_workspacedb(data['organization_id'], data['workspace_id'])) as conn, \
                    conn.cursor() as cursor:

                cursor.execute("""
                        UPDATE T_NOTIFICATION_MESSAGE
                            SET LAST_UPDATE_TIMESTAMP = DATE_SUB(LAST_UPDATE_TIMESTAMP, INTERVAL %(SECONDS)s SECOND)
                            WHERE NOTIFICATION_ID = %(NOTIFICATION_ID)s
                    """, {"NOTIFICATION_ID": queue['PROCESS_EXEC_ID'], "SECONDS": job_manager_config.FORCE_UPDATE_STATUS_PROGRASS_SECONDS + 1})
                conn.commit()

    # 強制ステータス更新を実行
    NotificationJobExecutor.force_update_status()
    # データの更新状況を確認
    for i, data in enumerate(datas):
        status = get_notification_status(data['queue']['ORGANIZATION_ID'], data['queue']['WORKSPACE_ID'], data['queue']['PROCESS_EXEC_ID'])
        if data['queue_exists']:
            # queueに情報が残っている場合は、日時とは関係なく更新しない
            assert status == const.NOTIFICATION_STATUS_UNSENT, f"assert status data[{i}]"
        elif not data['too_old_date']:
            # 日時が古くない場合は、更新しない
            assert status == const.NOTIFICATION_STATUS_UNSENT, f"assert status data[{i}]"
        else:
            # queueにデータがなく、日付が古い場合、エラーに更新していること
            assert status == const.NOTIFICATION_STATUS_FAILED, f"assert status data[{i}]"


def make_notification_teams(organization_id: str, workspace_id: str, webhook_uri: str, title: str, message:str):
    process_id = ulid.new().str
    notification_id = ulid.new().str

    data = {
        "NOTIFICATION_ID": notification_id,
        "DESTINATION_KIND": const.DESTINATION_KIND_TEAMS,
        "DESTINATION_INFORMATIONS": encrypt.encrypt_str(json.dumps(
                [{
                    "webhook": webhook_uri,
                }]
            )),
        "MESSAGE_INFORMATIONS": json.dumps(
                {
                    "title": title,
                    "message": message
                }
            ),
        "NOTIFICATION_STATUS": const.NOTIFICATION_STATUS_UNSENT,
        "CREATE_USER": job_manager_const.SYSTEM_USER_ID,
        "LAST_UPDATE_USER": job_manager_const.SYSTEM_USER_ID,
    }

    with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn, \
            conn.cursor() as cursor:

        conn.begin()
        cursor.execute("""
                INSERT INTO T_NOTIFICATION_MESSAGE
                    (
                        NOTIFICATION_ID,
                        DESTINATION_KIND,
                        DESTINATION_INFORMATIONS,
                        MESSAGE_INFORMATIONS,
                        NOTIFICATION_STATUS,
                        CREATE_USER,
                        LAST_UPDATE_USER
                    ) VALUES (
                        %(NOTIFICATION_ID)s,
                        %(DESTINATION_KIND)s,
                        %(DESTINATION_INFORMATIONS)s,
                        %(MESSAGE_INFORMATIONS)s,
                        %(NOTIFICATION_STATUS)s,
                        %(CREATE_USER)s,
                        %(LAST_UPDATE_USER)s
                    )
            """, data)
        conn.commit()

    queue={
        "PROCESS_ID": process_id,
        "PROCESS_KIND": const.PROCESS_KIND_NOTIFICATION,
        "PROCESS_EXEC_ID": notification_id,
        "ORGANIZATION_ID": organization_id,
        "WORKSPACE_ID": workspace_id,
        "LAST_UPDATE_USER": job_manager_const.SYSTEM_USER_ID,
        "LAST_UPDATE_TIMESTAMP": str(datetime.datetime.now()),
    }
    # test_common.insert_queue([queue])
    return queue


def get_notification_status(organization_id, workspace_id, notification_id):
    with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn, \
            conn.cursor() as cursor:
        cursor.execute("""
                SELECT NOTIFICATION_STATUS  FROM    T_NOTIFICATION_MESSAGE
                    WHERE   NOTIFICATION_ID     =   %(NOTIFICATION_ID)s
            """, {"NOTIFICATION_ID": notification_id})
        row =  cursor.fetchone()
        if row is not None:
            return row["NOTIFICATION_STATUS"]
        else:
            return None
