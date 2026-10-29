#   Copyright 2026 NEC Corporation
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
import json
import ulid

from tests.common import request_parameters, test_common
from common_library.common.libs import queries_bl_notification

from common_library.common.db import DBconnector


def sample_data_notification_job(update={}):
    """通知ジョブ(T_NOTIFICATION_MESSAGE)のサンプルデータを生成するテストヘルパー

    Args:
        update (dict, optional): デフォルト値を上書きする項目. Defaults to {}.

    Returns:
        dict: T_NOTIFICATION_MESSAGEへのINSERTパラメータ
    """
    return {
        **{
            "notification_id": ulid.new().str,
            "destination_id": "test-dest-001",
            "destination_name": "Test Destination",
            "destination_kind": "Mail",
            "destination_informations": json.dumps([{"address_header": {"to": "test@example.com"}}]),
            "conditions": json.dumps({"ita": {"event_type": {"new": True}}}),
            "func_id": "test-func-001",
            "func_informations": json.dumps({"event_type": "new"}),
            "message_informations": json.dumps({"title": "Test Subject", "message": "Test Body"}),
            "notification_status": "Successful",
            "notification_timestamp": datetime.now(),
            "http_response_code": 200,
            "http_response_body": "OK",
            "enable_retry": 1,
            "retry_count_limit": 3,
            "retry_count": 0,
            "create_user": "unittest-user01",
            "last_update_user": "unittest-user01",
        },
        **update
    }


def create_notification_job(organization_id, workspace_id, notification_job):
    """通知ジョブ(T_NOTIFICATION_MESSAGE)をDBへ直接登録するテストヘルパー

    通知ジョブを登録するAPIが無いため、テストデータはDBへ直接INSERTする。

    Args:
        organization_id (str): オーガナイゼーションID
        workspace_id (str): ワークスペースID
        notification_job (dict): sample_data_notification_jobで生成したデータ

    Returns:
        dict: 登録した通知ジョブのデータ
    """
    with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
        with conn.cursor() as cursor:
            cursor.execute(
                """
                INSERT INTO T_NOTIFICATION_MESSAGE (
                    NOTIFICATION_ID, DESTINATION_ID, DESTINATION_NAME, DESTINATION_KIND, DESTINATION_INFORMATIONS,
                    CONDITIONS, FUNC_ID, FUNC_INFORMATIONS, MESSAGE_INFORMATIONS, NOTIFICATION_STATUS,
                    NOTIFICATION_TIMESTAMP, HTTP_RESPONSE_CODE, HTTP_RESPONSE_BODY,
                    ENABLE_RETRY, RETRY_COUNT_LIMIT, RETRY_COUNT, CREATE_USER, LAST_UPDATE_USER
                ) VALUES (
                    %(notification_id)s, %(destination_id)s, %(destination_name)s, %(destination_kind)s, %(destination_informations)s,
                    %(conditions)s, %(func_id)s, %(func_informations)s, %(message_informations)s, %(notification_status)s,
                    %(notification_timestamp)s, %(http_response_code)s, %(http_response_body)s,
                    %(enable_retry)s, %(retry_count_limit)s, %(retry_count)s, %(create_user)s, %(last_update_user)s
                )
                """,
                notification_job)
        conn.commit()

    return notification_job


def test_notification_job_get(connexion_client):
    """公開API: 通知ジョブ取得(ID指定)のテスト

    検証内容:
        1. 正常系 … 登録した通知ジョブが返り、各項目が登録内容と一致すること
        2. 存在しないID … 404になること
        3. DBエラー … 500になること

    Args:
        connexion_client: connexionのテストクライアント
    """
    organization = test_common.create_organization(connexion_client)
    workspace = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])

    # 前提: 通知ジョブを登録
    notification_job = create_notification_job(
        organization['organization_id'], workspace['workspace_id'], sample_data_notification_job())

    with test_common.requsts_mocker_default():
        #
        # ケース: 正常系
        #
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/notification-jobs/{notification_job['notification_id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']))

        assert response.status_code == 200
        data = response.json["data"]
        assert data["id"] == notification_job["notification_id"]
        assert data["destination_id"] == notification_job["destination_id"]
        assert data["destination_name"] == notification_job["destination_name"]
        assert data["destination_kind"] == notification_job["destination_kind"]
        assert data["func_id"] == notification_job["func_id"]
        # JSON文字列の項目はオブジェクトに変換されて返ること
        assert data["func_informations"] == json.loads(notification_job["func_informations"])
        assert data["message_informations"] == json.loads(notification_job["message_informations"])
        assert data["notification_status"] == notification_job["notification_status"]
        assert data["http_response_code"] == notification_job["http_response_code"]
        assert data["http_response_body"] == notification_job["http_response_body"]
        # ENABLE_RETRY=1 は True で返ること
        assert data["enable_retry"] is True
        assert data["retry_count_limit"] == notification_job["retry_count_limit"]
        assert data["retry_count"] == notification_job["retry_count"]
        assert data["create_user"] == notification_job["create_user"]
        assert data["last_update_user"] == notification_job["last_update_user"]
        # 送信先の接続情報(DESTINATION_INFORMATIONS)は返さないこと
        assert "destination_informations" not in data

        #
        # ケース: 存在しないID（→ 404）
        #
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/notification-jobs/not-exists-notification-id",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']))

        assert response.status_code == 404
        assert response.json["result"] == "404-35002"

    #
    # ケース: DBエラー（→ 500）
    #
    with test_common.requsts_mocker_default(), \
            test_common.pymysql_execute_raise_exception_mocker(queries_bl_notification.SQL_QUERY_NOTIFICATION_MESSAGE_BY_ID, Exception("DB Error Test")):
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/notification-jobs/{notification_job['notification_id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']))

        assert response.status_code == 500


def test_notification_job_get_nullable(connexion_client):
    """公開API: 通知ジョブ取得(ID指定)のテスト（未送信・任意項目なし）

    未送信(Unsent)でJSON項目・送信日時が未設定、リトライ無効の通知ジョブを取得した場合、
    該当項目がnull / Falseで返ることを検証する。

    Args:
        connexion_client: connexionのテストクライアント
    """
    organization = test_common.create_organization(connexion_client)
    workspace = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])

    # 前提: 任意項目が未設定の通知ジョブを登録
    notification_job = create_notification_job(
        organization['organization_id'], workspace['workspace_id'],
        sample_data_notification_job({
            "func_informations": None,
            "message_informations": None,
            "notification_status": "Unsent",
            "notification_timestamp": None,
            "http_response_code": None,
            "http_response_body": None,
            "enable_retry": 0,
        }))

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/notification-jobs/{notification_job['notification_id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']))

        assert response.status_code == 200
        data = response.json["data"]
        assert data["id"] == notification_job["notification_id"]
        assert data["notification_status"] == "Unsent"
        assert data["func_informations"] is None
        assert data["message_informations"] is None
        assert data["notification_timestamp"] is None
        assert data["http_response_code"] is None
        assert data["http_response_body"] is None
        # ENABLE_RETRY=0 は False で返ること
        assert data["enable_retry"] is False


def test_notification_job_get_other_workspace(connexion_client):
    """公開API: 通知ジョブ取得(ID指定)のテスト（別ワークスペースの通知ジョブを指定）

    workspace1に登録した通知ジョブを、workspace2のパスから取得しようとすると
    404になること（ワークスペース間で参照できないこと）を検証する。

    Args:
        connexion_client: connexionのテストクライアント
    """
    organization = test_common.create_organization(connexion_client)
    # 同一オーガナイゼーション内に2つのワークスペースを用意
    workspace1 = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])
    workspace2 = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-02', organization['user_id'])

    # 前提: workspace1に通知ジョブを登録
    notification_job = create_notification_job(
        organization['organization_id'], workspace1['workspace_id'], sample_data_notification_job())

    with test_common.requsts_mocker_default():
        #
        # ケース: 別ワークスペース(workspace2)のパスから取得（→ 404）
        #
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace2['workspace_id']}/notification-jobs/{notification_job['notification_id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']))

        assert response.status_code == 404
