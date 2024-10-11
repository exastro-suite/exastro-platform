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
import logging

from tests.common import request_parameters, test_common
from common_library.common import const, validation

logger = logging.getLogger(__name__)


def test_plan_item_list(connexion_client):
    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            '/api/platform/plans',
            headers=request_parameters.request_headers())

        assert response.status_code == 200


def test_plan_create(connexion_client):

    with test_common.requsts_mocker_default():

        new_plan_item = [
            {
                "id": "platform.max_10giga_byte",
                "informations": {
                    "description": "max test",
                    "max": 10737418240,
                    "default": 10737418240
                }
            }
        ]
        
        response = connexion_client.post(
            "/internal-api/platform/plan_items",
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=new_plan_item)

        response = connexion_client.get(
            "/api/platform/plan_items",
            headers=request_parameters.request_headers())

        # 取得したplan_items数分の登録情報を作成
        # Create registration information for the number of acquired plan_items
        plan_items_json = response.json["data"]
        plans = {
            "id": "test-plan",
            "name": "name of plan",
            "informations": {
                "description": "test plan description"
            },
            "limits": {}
        }
        logger.debug(f"{plan_items_json=}")
        for plan_item in plan_items_json:
            plans["limits"][plan_item["id"]] = plan_item["informations"]["max"]

        response = connexion_client.post(
            '/api/platform/plans',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=plans)

        assert response.status_code == 200, "register check"

        response = connexion_client.get(
            '/api/platform/plans',
            headers=request_parameters.request_headers())
        
        logger.debug(f"{response.json['data']=}")

        assert response.status_code == 200, "get check"

        exists_flag = False
        for data in response.json["data"]:
            if data["id"] == plans["id"]:
                exists_flag = True
                break
        
        assert exists_flag, "register content check"

        # 最大＋１でエラーになることをチェック
        # Check that an error occurs with a maximum of +1
        plans = {
            "id": "test-plan-error",
            "name": "name of plan",
            "informations": {
                "description": "test plan description"
            },
            "limits": {}
        }
        for plan_item in plan_items_json:
            plans["limits"][plan_item["id"]] = plan_item["informations"]["max"] + 1

        response = connexion_client.post(
            '/api/platform/plans',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=plans)

        assert response.status_code == 400, "maximum of +1 error"


def test_plan_validation(connexion_client):
    """test user validation

    Args:
        connexion_client (_type_): _description_
    """
    
    # 適応した試験項目分ずつ追加
    # Add adapted test items one by one
    
    validate = validation.validate_plan_limits({})
    assert not validate.ok
    
    validate = validation.validate_plan_limits({"test": "abc"})
    assert not validate.ok
    
    validate = validation.validate_plan_limits({"test": const.max_db_bigint_value})
    assert validate.ok

    validate = validation.validate_plan_limits({"test": const.max_db_bigint_value + 1})
    assert not validate.ok

    validate = validation.validate_plan_limits({"test": const.min_db_bigint_value - 1})
    assert not validate.ok
