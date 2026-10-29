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
import json

from tests.common import request_parameters, test_common
from common_library.common.libs import queries_bl_notification

# 公開用APIのテストからサンプルデータ生成関数・登録関数を再利用する
# （通知ジョブを登録するAPIが無いため、DBへ直接登録するヘルパー）
from tests.test_notification_job_service_controller import sample_data_notification_job, create_notification_job


def test_internal_notification_job_get(connexion_client):
    """内部API: 通知ジョブ取得(ID指定)のテスト

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
            f"/internal-api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/notification-jobs/{notification_job['notification_id']}",
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
            f"/internal-api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/notification-jobs/not-exists-notification-id",
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
            f"/internal-api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/notification-jobs/{notification_job['notification_id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']))

        assert response.status_code == 500


def test_internal_notification_job_get_other_workspace(connexion_client):
    """内部API: 通知ジョブ取得(ID指定)のテスト（別ワークスペースの通知ジョブを指定）

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
            f"/internal-api/{organization['organization_id']}/platform/workspaces/{workspace2['workspace_id']}/notification-jobs/{notification_job['notification_id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']))

        assert response.status_code == 404
