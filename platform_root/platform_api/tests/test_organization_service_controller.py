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
from tests.common import request_parameters, test_common


def test_organization_series_of_step(connexion_client):
    with requests_mock.Mocker() as requests_mocker:
        test_common.requsts_mocker_setting(requests_mocker)
        response = connexion_client.post(
            '/api/platform/organizations',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=request_parameters.create_organization())

        assert response.status_code == 200, "create organization response code"

