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
from common_library.common.libs import queries_bl_health_check

import logging

logger = logging.getLogger(__name__)


def test_internal_healthcheck_api(connexion_client):
    """internal health check api test

    Args:
        connexion_client (_type_): _description_
    """
    # organization = test_common.create_organization(connexion_client)
    # workspace = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])

    with test_common.requsts_mocker_default():
        # health check liveness
        response = connexion_client.get(
            "/internal-api/health-check/liveness",
            content_type='application/json',
            headers=request_parameters.request_headers("dummy_user_id"))

        assert response.status_code == 200, "internal health check response code"

        # health check readness
        response = connexion_client.get(
            "/internal-api/health-check/readness",
            content_type='application/json',
            headers=request_parameters.request_headers("dummy_user_id"))

        assert response.status_code == 200, "internal health check response code"

    with test_common.requsts_mocker_default(), \
            test_common.pymysql_execute_raise_exception_mocker(queries_bl_health_check.SQL_QUERY_HEALTH_CHECK, Exception("DB Error Test")):
        #
        # DB error route
        #
        # health check liveness
        response = connexion_client.get(
            "/internal-api/health-check/liveness",
            content_type='application/json',
            headers=request_parameters.request_headers("dummy_user_id"))

        assert response.status_code == 500, "DB error route"
        assert response.json["result"] == "500-39001"
        assert response.json["message"] == "Health check failed."

        # health check readness
        response = connexion_client.get(
            "/internal-api/health-check/readness",
            content_type='application/json',
            headers=request_parameters.request_headers("dummy_user_id"))

        assert response.status_code == 500, "DB error route"
        assert response.json["result"] == "500-39001"
        assert response.json["message"] == "Health check failed."
