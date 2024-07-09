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
import tempfile
from common_library.common import const
from common_library.common import api_keycloak_tokens, api_keycloak_users 
from common_library.common.db import DBconnector
from common_library.common.libs import queries_bl_jobs, queries_bl_notification
from tests.libs import queries_test_jobs

import requests
from unittest import mock
import ulid
import logging

logger = logging.getLogger(__name__)


def test_jobs_api(connexion_client):
    """jobs service api test

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)
    # workspace = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])

    with test_common.requsts_mocker_default():
        # ユーザー一括登録Excelファイルインポート(正常)
        temp_file = tempfile.TemporaryFile()
        temp_file.write(b'hogehoge')
        temp_file.seek(0)
        content_type = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
        file_data = {"import_file": (temp_file, "hoge.xlsx", content_type)}
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/jobs/users/bulk/import",
            headers=request_parameters.request_headers(organization["user_id"]),
            content_type="multipart/form-data",
            data=file_data
        )

        assert response.status_code == 200, "jobs user import response code"

        # アップロードしたファイルが正しいことを確認
        create_data = __fetch_jobs_user_file(organization['organization_id'])
        assert create_data["FILE_DATA"].decode() == "hogehoge", "register jobs user file success"

    with test_common.requsts_mocker_default(), \
            test_common.pymysql_execute_raise_exception_mocker(queries_bl_jobs.SQL_INSERT_JOBS_USER_FILE, Exception("DB Error Test")):
        #
        # DB error route
        #
        temp_file = tempfile.TemporaryFile()
        temp_file.write(b'hogehoge')
        temp_file.seek(0)
        content_type = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
        file_data = {"import_file": (temp_file, "hoge.xlsx", content_type)}
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/jobs/users/bulk/import",
            headers=request_parameters.request_headers(organization["user_id"]),
            content_type="multipart/form-data",
            data=file_data
        )

        assert response.status_code == 500, "DB error route"
        assert response.json["result"] == "500-38001"
        assert response.json["message"] == "Failed to register job", "DB error route"

    with test_common.requsts_mocker_default(), \
            test_common.pymysql_execute_raise_exception_mocker(queries_bl_notification.SQL_INSERT_PROCESS_QUEUE, Exception("DB Error Test")):
        #
        # DB error route
        #
        temp_file = tempfile.TemporaryFile()
        temp_file.write(b'hogehoge')
        temp_file.seek(0)
        content_type = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
        file_data = {"import_file": (temp_file, "hoge.xlsx", content_type)}
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/jobs/users/bulk/import",
            headers=request_parameters.request_headers(organization["user_id"]),
            content_type="multipart/form-data",
            data=file_data
        )

        assert response.status_code == 500, "DB error route"
        assert response.json["result"] == "500-38002"
        assert response.json["message"] == "Failed to register processing queue", "DB error route"

    with test_common.requsts_mocker_default():
        # ユーザー一覧Excelファイル出力(正常)
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/jobs/users/export",
            content_type="application/json",
            headers=request_parameters.request_headers(),
            json={}
        )

        assert response.status_code == 200, "jobs user export response code"

    with test_common.requsts_mocker_default(), \
            test_common.pymysql_execute_raise_exception_mocker(queries_bl_jobs.SQL_INSERT_JOBS_USER_EXPORT, Exception("DB Error Test")):
        #
        # DB error route
        #
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/jobs/users/export",
            content_type="application/json",
            headers=request_parameters.request_headers(),
            json={}
        )

        assert response.status_code == 500, "DB error route"
        assert response.json["result"] == "500-38001"
        assert response.json["message"] == "Failed to register job", "DB error route"

    with test_common.requsts_mocker_default(), \
            test_common.pymysql_execute_raise_exception_mocker(queries_bl_notification.SQL_INSERT_PROCESS_QUEUE, Exception("DB Error Test")):
        #
        # DB error route
        #
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/jobs/users/export",
            content_type="application/json",
            headers=request_parameters.request_headers(),
            json={}
        )

        assert response.status_code == 500, "DB error route"
        assert response.json["result"] == "500-38002"
        assert response.json["message"] == "Failed to register processing queue", "DB error route"

    with test_common.requsts_mocker_default():
        # ユーザー一括削除Excelファイルインポート(正常)
        temp_file = tempfile.TemporaryFile()
        temp_file.write(b'hogehoge')
        temp_file.seek(0)
        content_type = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
        file_data = {"import_file": (temp_file, "hoge.xlsx", content_type)}
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/jobs/users/bulk/delete",
            headers=request_parameters.request_headers(organization["user_id"]),
            content_type="multipart/form-data",
            data=file_data
        )

        assert response.status_code == 200, "jobs user import response code"

        # アップロードしたファイルが正しいことを確認
        create_data = __fetch_jobs_user_file(organization['organization_id'])
        assert create_data["FILE_DATA"].decode() == "hogehoge", "register jobs user file success"

    with test_common.requsts_mocker_default(), \
            test_common.pymysql_execute_raise_exception_mocker(queries_bl_jobs.SQL_INSERT_JOBS_USER_FILE, Exception("DB Error Test")):
        #
        # DB error route
        #
        temp_file = tempfile.TemporaryFile()
        temp_file.write(b'hogehoge')
        temp_file.seek(0)
        content_type = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
        file_data = {"import_file": (temp_file, "hoge.xlsx", content_type)}
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/jobs/users/bulk/delete",
            headers=request_parameters.request_headers(organization["user_id"]),
            content_type="multipart/form-data",
            data=file_data
        )

        assert response.status_code == 500, "DB error route"
        assert response.json["result"] == "500-38001"
        assert response.json["message"] == "Failed to register job", "DB error route"

    with test_common.requsts_mocker_default(), \
            test_common.pymysql_execute_raise_exception_mocker(queries_bl_notification.SQL_INSERT_PROCESS_QUEUE, Exception("DB Error Test")):
        #
        # DB error route
        #
        temp_file = tempfile.TemporaryFile()
        temp_file.write(b'hogehoge')
        temp_file.seek(0)
        content_type = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
        file_data = {"import_file": (temp_file, "hoge.xlsx", content_type)}
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/jobs/users/bulk/delete",
            headers=request_parameters.request_headers(organization["user_id"]),
            content_type="multipart/form-data",
            data=file_data
        )

        assert response.status_code == 500, "DB error route"
        assert response.json["result"] == "500-38002"
        assert response.json["message"] == "Failed to register processing queue", "DB error route"


def __fetch_jobs_user_file(organization_id):
    with closing(DBconnector().connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:
            cursor.execute("SELECT FILE_DATA FROM T_JOBS_USER_FILE ORDER BY CREATE_TIMESTAMP DESC LIMIT 1")
            row = cursor.fetchone()

    return row


def test_jobs_users_bulk_status(connexion_client):
    """jobs service api test

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)
    # workspace = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])

    with test_common.requsts_mocker_default():
        # get bulk_status
        # ワークスペース一覧が0件であることを確認
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/jobs/users/bulk/status",
            headers=request_parameters.request_headers(organization['user_id']))

        assert response.status_code == 200, "get bulk_status response code"
        assert len(response.json["data"]) == 0, "get bulk_status count"

    # ステータスデータ登録
    # Status data registration
    job_id = ulid.new().str
    message = "test message"
    language = "ja"
    with closing(DBconnector().connect_orgdb(organization['organization_id'])) as conn:

        parameter = {
            "job_id": job_id,
            "job_type": const.PROCESS_KIND_USER_IMPORT,
            "job_status": const.JOB_USER_COMP,
            "count_register": 1,
            "count_update": 2,
            "count_delete": 3,
            "success_register": 4,
            "success_update": 5,
            "success_delete": 6,
            "failed_register": 7,
            "failed_update": 8,
            "failed_delete": 9,
            "message": message,
            "language": language,
            "create_user": organization['user_id'],
            "last_update_user": organization['user_id'],
        }

        with conn.cursor() as cursor:
            cursor.execute(queries_test_jobs.SQL_INSERT_JOBS_USER, parameter)
            conn.commit()

    with test_common.requsts_mocker_default():

        # get bulk_status
        # 結果が1件であることを確認
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/jobs/users/bulk/status",
            headers=request_parameters.request_headers(organization['user_id']))

        assert response.status_code == 200, "get bulk_status response code"
        assert len(response.json["data"]) == 1, "get bulk_status count"

        response_data = response.json['data'][0]
        assert response_data['id'] == job_id, "created value check"
        assert response_data['job_type'] == const.PROCESS_KIND_USER_IMPORT, "created value check"
        assert response_data['job_status'] == const.JOB_USER_COMP, "created value check"
        assert response_data['count_register'] == 1, "created value check"
        assert response_data['count_update'] == 2, "created value check"
        assert response_data['count_delete'] == 3, "created value check"
        assert response_data['success_register'] == 4, "created value check"
        assert response_data['success_update'] == 5, "created value check"
        assert response_data['success_delete'] == 6, "created value check"
        assert response_data['failed_register'] == 7, "created value check"
        assert response_data['failed_update'] == 8, "created value check"
        assert response_data['failed_delete'] == 9, "created value check"
        assert response_data['message'] == message, "created value check"
        assert response_data['language'] == language, "created value check"
        assert response_data['create_user_id'] == organization['user_id'], "created value check"
        assert response_data['create_user_name'] == "admin admin", "created value check"

    ret_response = requests.models.Response()
    ret_response.status_code = 500
    ret_response.json = {"data": "internal"}

    with test_common.requsts_mocker_default(), \
            mock.patch.object(api_keycloak_tokens, 'service_account_get_token', return_value=ret_response):
        
        # get bulk_status
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/jobs/users/bulk/status",
            headers=request_parameters.request_headers(organization['user_id']))

        assert response.status_code == 401, "get bulk_status autholization eeror"

    ret_response = requests.models.Response()
    ret_response.status_code = 404
    ret_response.json = {"data": "no data"}

    with test_common.requsts_mocker_default(), \
            mock.patch.object(api_keycloak_users, 'user_get_by_id', return_value=ret_response):
        
        # get bulk_status
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/jobs/users/bulk/status",
            headers=request_parameters.request_headers(organization['user_id']))

        assert response.status_code == 200, "get bulk_status response code"
        assert len(response.json["data"]) == 1, "get bulk_status count"

        response_data = response.json['data'][0]
        assert response_data['create_user_name'] is None, "no user value check"

    ret_response = requests.models.Response()
    ret_response.status_code = 500
    ret_response.json = {"data": "internal"}

    with test_common.requsts_mocker_default(), \
            mock.patch.object(api_keycloak_users, 'user_get_by_id', return_value=ret_response):
        
        # get bulk_status
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/jobs/users/bulk/status",
            headers=request_parameters.request_headers(organization['user_id']))

        assert response.status_code == 500, "get bulk_status response code"
        assert response.json['result'] == "500-38003", "get bulk_status response code"

    # ステータスデータ登録
    # Status data registration
    job_id = ulid.new().str
    message = "test message"
    language = "ja"
    with closing(DBconnector().connect_orgdb(organization['organization_id'])) as conn:

        parameter = {
            "job_id": job_id,
            "job_type": const.PROCESS_KIND_USER_IMPORT,
            "job_status": const.JOB_USER_COMP,
            "count_register": 1,
            "count_update": 2,
            "count_delete": 3,
            "success_register": 4,
            "success_update": 5,
            "success_delete": 6,
            "failed_register": 7,
            "failed_update": 8,
            "failed_delete": 9,
            "message": message,
            "language": language,
            "create_user": organization['user_id'],
            "last_update_user": organization['user_id'],
        }

        with conn.cursor() as cursor:
            cursor.execute(queries_test_jobs.SQL_INSERT_JOBS_USER, parameter)
            conn.commit()

    with test_common.requsts_mocker_default():

        # get bulk_status
        # 結果が2件であることを確認
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/jobs/users/bulk/status",
            headers=request_parameters.request_headers(organization['user_id']))

        assert response.status_code == 200, "get bulk_status response code"
        assert len(response.json["data"]) == 2, "get bulk_status count"

