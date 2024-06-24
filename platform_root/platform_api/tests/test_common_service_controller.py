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
from tests.common import request_parameters, test_common
from common_library.common import const, validation


def test_settings_system_config_list(connexion_client):
    """test settings_system_config_list

    Args:
        connexion_client (_type_): _description_
    """

    with test_common.requsts_mocker_default():

        response = connexion_client.get(
            "/api/platform/settings/common",
            content_type='application/json',
            headers=request_parameters.request_headers("dummy-user"))

        assert response.status_code == 200


def test_settings_system_config_update(connexion_client):
    """test_settings_system_config_update

    Args:
        connexion_client (_type_): _description_
    """
    config_key = "platform.system.audit_log.download_exp_days"
    config_description = "test description"

    with test_common.requsts_mocker_default():
        config_value = "10"

        response = connexion_client.put(
            f"/api/platform/settings/common/{config_key}",
            content_type='application/json',
            headers=request_parameters.request_headers("dummy-user"),
            json={
                "value": config_value,
                "description": config_description
            }
        )

        assert response.status_code == 200

        # 変更されたか確認
        org_id = "org1"

        response = connexion_client.get(
            f"/api/{org_id}/platform/settings/common/{config_key}",
            content_type='application/json',
            headers=request_parameters.request_headers("dummy-user"))

        assert response.status_code == 200
        assert response.json['data']['key'] == config_key
        assert response.json['data']['value'] == config_value
        assert response.json['data']['description'] == config_description


def test_settings_system_config_update_error(connexion_client):
    """test_settings_system_config_update

    Args:
        connexion_client (_type_): _description_
    """
    config_key = "platform.system.audit_log.download_exp_days"
    config_description = "test description"

    with test_common.requsts_mocker_default():
        # validation error route
        response = connexion_client.put(
            f"/api/platform/settings/common/{config_key}",
            content_type='application/json',
            headers=request_parameters.request_headers("dummy-user"),
            json={
                "value": "",
                "description": config_description
            }
        )
        assert response.status_code == 400

        # validation error route
        response = connexion_client.put(
            f"/api/platform/settings/common/{config_key}",
            content_type='application/json',
            headers=request_parameters.request_headers("dummy-user"),
            json={
                "value": "9999",
                "description": "t".ljust(const.length_system_config_description + 1, "_")
            }
        )
        assert response.status_code == 400

        # not found error route
        response = connexion_client.put(
            f"/api/platform/settings/common/{config_key}-notfound",
            content_type='application/json',
            headers=request_parameters.request_headers("dummy-user"),
            json={
                "value": "9999",
                "description": config_description
            }
        )
        assert response.status_code == 404


def test_settings_system_config_get_for_organization_user(connexion_client):
    """test settings_system_config_get_for_organization_user

    Args:
        connexion_client (_type_): _description_
    """
    with test_common.requsts_mocker_default():
        org_id = "org1"

        # 正常系
        config_key = "platform.system.audit_log.download_exp_days"  # 存在するキー

        response = connexion_client.get(
            f"/api/{org_id}/platform/settings/common/{config_key}",
            content_type='application/json',
            headers=request_parameters.request_headers("dummy-user"))

        assert response.status_code == 200
        assert response.json['data']['key'] == config_key

        # 存在しないキーの取得
        config_key = "config_key.dummy-data"

        response = connexion_client.get(
            f"/api/{org_id}/platform/settings/common/{config_key}",
            content_type='application/json',
            headers=request_parameters.request_headers("dummy-user"))

        assert response.status_code == 404
