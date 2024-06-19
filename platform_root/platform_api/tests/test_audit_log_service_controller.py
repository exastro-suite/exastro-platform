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
from common_library.common.db import DBconnector
from common_library.common.libs import queries_bl_audit_log, queries_bl_common
from tests.libs import queries_test_audit_log

import datetime
import logging
import urllib.parse
import ulid

logger = logging.getLogger(__name__)


def test_audit_log_api(connexion_client):
    """audit log service api test

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
            test_common.pymysql_execute_raise_exception_mocker(queries_bl_audit_log.SQL_INSERT_JOBS_AUDIT_LOG, Exception("DB Error Test")):
        #
        # DB error route
        #
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/auditlog/download",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=sample_conditions(["ts_from", "ts_to"]))

        assert response.status_code == 500, "DB error route"
        assert response.json["result"] == "500-40001"
        assert response.json["message"] == "Audit log download reservation failed (download id:{0})", "DB error route"


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
            "CREATE_USER": "TEST",
            "LAST_UPDATE_USER": "TEST",
        }

        with conn.cursor() as cursor:
            cursor.execute(queries_test_audit_log.SQL_INSERT_JOBS_AUDIT_LOG_FILE, parameter)
            conn.commit()

            cursor.execute(queries_test_audit_log.SQL_SELECT_JOBS_AUDIT_LOG_FILE, parameter)
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
