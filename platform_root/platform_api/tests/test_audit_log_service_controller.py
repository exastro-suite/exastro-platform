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
# from unittest import mock
from tests.common import request_parameters, test_common
from contextlib import closing
from common_library.common import const, bl_common_service
from common_library.common.db import DBconnector
from common_library.common.libs import queries_bl_audit_log, queries_bl_common, queries_bl_notification
from tests.libs import queries_test_audit_log
from unittest import mock

import time
import datetime
import logging
import urllib.parse
import ulid
import json

logger = logging.getLogger(__name__)


def test_audit_log_api(connexion_client):
    """_summary_

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)

    with test_common.requsts_mocker_default():
        # 監査ログダウンロード一覧が0件であることを確認
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/auditlog/download",
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 200, "get audit_log_download_list response code = 200"
        assert len(response.json["data"]) == 0, "get audit_log_download_list count 0"

        # 予約する条件
        post_conditions = sample_conditions(["ts_from", "ts_to"])

        # 監査ログダウンロード予約（正常）
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/auditlog/download",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=post_conditions)
        assert response.status_code == 200, "post audit log download response code"

        # 監査ログダウンロード一覧が1件であることを確認
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/auditlog/download",
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 200, "get audit_log_download_list response code = 200"
        assert len(response.json["data"]) == 1

        # 登録したものと等しいかを確認
        assert json.loads(response.json["data"][0]["conditions"]) == post_conditions
        assert response.json["data"][0]["create_user_id"] == organization["user_id"]
        assert response.json["data"][0]["status"] == const.AUDIT_LOG_NOT_EXEC


def test_auditlog_download_reserve(connexion_client):
    """auditlog_download_reserve test

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)
    # workspace = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])

    with test_common.requsts_mocker_default():
        # 監査ログダウンロード予約（正常）
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/auditlog/download",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=sample_conditions(["ts_from", "ts_to"]))
        assert response.status_code == 200, "post audit log download response code"

        # 監査ログダウンロード予約（異常）bodyが無い場合
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/auditlog/download",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))
        assert response.status_code == 400, "post audit log download no body response code"

        # 監査ログダウンロード予約（異常）ts_fromが無い場合
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/auditlog/download",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=sample_conditions(["ts_to"]))
        assert response.status_code == 400, "post audit log download no ts_from response code"
        assert response.json["result"] == "400-00011"
        assert response.json["message"] == "Missing a required item.(Time stamp(From))", "post audit log download no ts_from response code"

        # 監査ログダウンロード予約（異常）ts_toが無い場合
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/auditlog/download",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=sample_conditions(["ts_from"]))
        assert response.status_code == 400, "post audit log download no ts_to response code"
        assert response.json["result"] == "400-00011"
        assert response.json["message"] == "Missing a required item.(Time stamp(To))", "post audit log download no ts_from response code"

        # 監査ログダウンロード予約（異常）ts_fromが日時フォーマットでは無い場合
        conditions = sample_conditions(["ts_from", "ts_to"])
        conditions["ts_from"] = "hogehoge"
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/auditlog/download",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=conditions)
        assert response.status_code == 400, "post audit log download no ts_from response code"
        assert response.json["result"] == "400-00020"
        assert response.json["message"] == "A format other than the date and time format is specified. (Time stamp(From))", "post audit log download the timestamp(From) is not in datetime format response code"

        # 監査ログダウンロード予約（異常）ts_toが日時フォーマットでは無い場合
        conditions = sample_conditions(["ts_from", "ts_to"])
        conditions["ts_to"] = "hogehoge"
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/auditlog/download",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=conditions)
        assert response.status_code == 400, "post audit log download no ts_to response code"
        assert response.json["result"] == "400-00020"
        assert response.json["message"] == "A format other than the date and time format is specified. (Time stamp(To))", "post audit log download the timestamp(To) is not in datetime format response code"

    with test_common.requsts_mocker_default(), \
            test_common.pymysql_execute_raise_exception_mocker(queries_bl_audit_log.SQL_QUERY_COUNT_JOBS_AUDIT_LOG, Exception("DB Error Test")):
        # DB error route
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/auditlog/download",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=sample_conditions(["ts_from", "ts_to"]))

        assert response.status_code == 500, "DB error route"
        assert response.json["result"] == "500-40003"

    with test_common.requsts_mocker_default(), \
            test_common.pymysql_execute_raise_exception_mocker(queries_bl_audit_log.SQL_INSERT_JOBS_AUDIT_LOG, Exception("DB Error Test")):
        # DB error route
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/auditlog/download",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=sample_conditions(["ts_from", "ts_to"]))

        assert response.status_code == 500, "DB error route"
        assert response.json["result"] == "500-40001"

    with test_common.requsts_mocker_default(), \
            test_common.pymysql_execute_raise_exception_mocker(queries_bl_notification.SQL_INSERT_PROCESS_QUEUE, Exception("DB Error Test")):
        # DB error route
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/auditlog/download",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=sample_conditions(["ts_from", "ts_to"]))

        assert response.status_code == 500, "DB error route"
        assert response.json["result"] == "500-40002"


def test_auditlog_download_reserve_max(connexion_client):
    """auditlog_download_reserve test(max reserve)

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)

    # 最大の予約数のチェック
    with test_common.requsts_mocker_default(), \
            mock.patch.object(bl_common_service, 'settings_system_config_list', return_value={"value": "1"}):

        # 監査ログダウンロード予約（上限値到達）
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/auditlog/download",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=sample_conditions(["ts_from", "ts_to"]))
        assert response.status_code == 200, "post audit log download response code"

        # 監査ログダウンロード予約（上限超過）
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/auditlog/download",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=sample_conditions(["ts_from", "ts_to"]))

        assert response.status_code == 400
        assert json.loads(response.text)["result"] == "400-40001"


def test_audit_log_download_file(connexion_client):
    """audit log service api test

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)

    # ダウンロードするための下準備
    # Preparation for download
    result = None
    with closing(DBconnector().connect_orgdb(organization['organization_id'])) as conn:

        parameter = {
            "FILE_ID": ulid.new().str,
            "JOB_ID": ulid.new().str,
            "FILE_DATA": bytes.fromhex('ABCDEF0123456789'),
            "CREATE_USER": "TEST",
            "LAST_UPDATE_USER": "TEST",
        }

        with conn.cursor() as cursor:
            cursor.execute(queries_test_audit_log.SQL_INSERT_JOBS_AUDIT_LOG_FILE, parameter)
            conn.commit()

            cursor.execute(queries_test_audit_log.SQL_SELECT_JOBS_AUDIT_LOG_FILE)
            result = cursor.fetchone()

    download_id = result.get("JOB_ID")

    with test_common.requsts_mocker_default():

        # 直呼び出しなので認証情報はヴァリデーションチェックのみに使用
        # Since it is a direct call, the authentication information is used only for validation check.
        req = {
            'authorization': "dummy",
        }
        req_data = urllib.parse.urlencode(req)

        # 監査ログダウンロード（正常）
        # Audit log download (normal)
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/auditlog/download/{download_id}",
            content_type='application/x-www-form-urlencoded',
            headers=request_parameters.request_headers(organization["user_id"]),
            data=req_data)
        assert response.status_code == 200, "post audit log download response code normal"
        assert response.content_type == 'application/zip', "post audit log download response content_type check"
        assert response.content_length > 0, "post audit log download response content_length check"

        # 監査ログダウンロード（エラー）
        # Audit log download (error)
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/auditlog/download/xxx",
            content_type='application/x-www-form-urlencoded',
            headers=request_parameters.request_headers(organization["user_id"]),
            data=req_data)
        assert response.status_code == 404, "post audit log download response code not found error"

    with test_common.requsts_mocker_default(), \
            test_common.pymysql_execute_raise_exception_mocker(queries_bl_audit_log.SQL_QUERY_JOBS_AUDIT_LOG_FILE_LENGTH + " WHERE JOB_ID = %(job_id)s", Exception("DB Error Test")):
        #
        # DB error route
        #
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/auditlog/download/{download_id}",
            content_type='application/x-www-form-urlencoded',
            headers=request_parameters.request_headers(organization["user_id"]),
            data=req_data)

        assert response.status_code == 500, "DB error route"
        assert response.json["result"] == "500-99999"

    with test_common.requsts_mocker_default(), \
            test_common.pymysql_execute_data_mocker(queries_bl_common.SQL_QUERY_SELECT_SYSTEM_CONFIG + ' WHERE CONFIG_KEY = %(config_key)s', []):
        #
        # data None route
        #
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/auditlog/download/{download_id}",
            content_type='application/x-www-form-urlencoded',
            headers=request_parameters.request_headers(organization["user_id"]),
            data=req_data)

        assert response.status_code == 500, "DB error route"
        assert response.json["result"] == "500-00011"

    with test_common.requsts_mocker_default(), \
            test_common.pymysql_execute_raise_exception_mocker(queries_bl_common.SQL_QUERY_SELECT_SYSTEM_CONFIG + ' WHERE CONFIG_KEY = %(config_key)s', Exception("DB Error Test")):
        #
        # DB error route
        #
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/auditlog/download/{download_id}",
            content_type='application/x-www-form-urlencoded',
            headers=request_parameters.request_headers(organization["user_id"]),
            data=req_data)

        assert response.status_code == 500, "DB error route"
        assert response.json["result"] == "500-99999"


def test_audit_log_download_list(connexion_client):
    """test audit_log_download_list

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)

    # get audit_log_download_list
    with test_common.requsts_mocker_default():

        # 監査ログダウンロード一覧が0件であることを確認
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/auditlog/download",
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 200, "get audit_log_download_list response code = 200"
        assert len(response.json["data"]) == 0, "get audit_log_download_list count 0"

        # 監査ログダウンロード一覧が1件であることを確認
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/auditlog/download",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=sample_conditions(["ts_from", "ts_to"]))

        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/auditlog/download",
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 200
        assert len(response.json["data"]) == 1, "get audit_log_download_list count 1"

        # 同一ユーザーでダウンロード予約した場合、keycloakからユーザー情報を取得しないことを確認
        time.sleep(1)
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/auditlog/download",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=sample_conditions(["ts_from", "ts_to"]))

        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/auditlog/download",
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 200
        assert len(response.json["data"]) == 2, "get audit_log_download_list count 2"

        # 監査ログダウンロード予約者が削除された場合のcreate_user_nameを確認
        user_name = "delete-user"
        post_user = {
            "username": user_name,
            "email": f"{user_name}@example.com",
            "firstName": f'first {user_name}',
            "lastName": f'last {user_name}',
            "password": "password",
            "password_temporary": False,
            "affiliation": f'affiliation {user_name}',
            "description": f'description {user_name}',
            "enabled": True
        }
        # Create User
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=post_user)
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/users?search={user_name}",
            content_type='application/json',
            headers=request_parameters.request_headers())
        delete_user = response.json["data"][0]

        # Role mappings
        post_role_mappings = [{"id": delete_user["id"], "preferred_username": delete_user["preferred_username"]}]
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles/{const.ORG_ROLE_ORG_MANAGER}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=post_role_mappings)

        time.sleep(1)
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/auditlog/download",
            content_type='application/json',
            headers=request_parameters.request_headers(delete_user["id"]),
            json=sample_conditions(["ts_from", "ts_to"]))

        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/auditlog/download",
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 200
        assert len(response.json["data"]) == 3, "get audit_log_download_list count 3"
        first_data = response.json["data"][0]
        assert first_data["create_user_id"] == delete_user['id']
        assert first_data["create_user_name"] == delete_user["name"]

        # Delete user
        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/users/{delete_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))

        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/auditlog/download",
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 200
        assert len(response.json["data"]) == 3, "get audit_log_download_list count 3"
        first_data = response.json["data"][0]
        assert first_data["create_user_id"] == delete_user['id']
        assert first_data["create_user_name"] is None

        # 監査ログダウンロード一覧の抽出が出来ていることを確認
        conditions = sample_conditions(["ts_from", "ts_to"])
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/auditlog/download",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=conditions)

        post_download = response.json["data"]

        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/auditlog/download?download_id={post_download['download_id']}",
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 200
        assert len(response.json["data"]) == 1, "get audit_log_download_list count 1"
        first_data = response.json["data"][0]
        assert first_data["download_id"] == post_download["download_id"]
        assert first_data["create_user_id"] == organization["user_id"]
        assert first_data["conditions"] == json.dumps(conditions)


def sample_conditions(key_list):
    """create audit log download conditions

    Args:

    Returns:
        dict: conditions parameter
    """
    # 現在時刻から1日前までのログを取得
    now = datetime.datetime.now()
    ago_1_day = now - datetime.timedelta(days=1)
    str_now = now.strftime('%Y-%m-%d %H:%M:%S')
    str_ago_1_day = ago_1_day.strftime('%Y-%m-%d %H:%M:%S')

    conditions = {}

    for key in key_list:
        if key == "ts_from":
            conditions[key] = str_ago_1_day
        if key == "ts_to":
            conditions[key] = str_now

    return conditions
