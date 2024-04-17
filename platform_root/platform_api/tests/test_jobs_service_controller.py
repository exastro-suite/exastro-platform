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
from common_library.common.db import DBconnector
from common_library.common.libs import queries_bl_jobs, queries_bl_notification

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
            f"/api/{organization['organization_id']}/platform/jobs/users/import",
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
            f"/api/{organization['organization_id']}/platform/jobs/users/import",
            headers=request_parameters.request_headers(organization["user_id"]),
            content_type="multipart/form-data",
            data=file_data
        )

        assert response.status_code == 500, "DB error route"
        assert response.json["result"] == "500-38001"
        assert response.json["message"] == "Failed to register job (job id:{0})", "DB error route"

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
            f"/api/{organization['organization_id']}/platform/jobs/users/import",
            headers=request_parameters.request_headers(organization["user_id"]),
            content_type="multipart/form-data",
            data=file_data
        )

        assert response.status_code == 500, "DB error route"
        assert response.json["result"] == "500-38002"
        assert response.json["message"] == "Failed to register processing queue (process id:{0})", "DB error route"


def __fetch_jobs_user_file(organization_id):
    with closing(DBconnector().connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:
            cursor.execute("SELECT FILE_DATA FROM T_JOBS_USER_FILE ORDER BY CREATE_TIMESTAMP DESC LIMIT 1")
            row = cursor.fetchone()

    return row
