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
from tests.common import request_parameters, test_common
from common_library.common import const, validation

import logging

logger = logging.getLogger(__name__)


def test_plan_item_create(connexion_client):

    new_plan_item_1 = [
        {
            "id": "platform.max_int_plus_1",
            "informations": {
                "description": "max test",
                "max": 2147483648,
                "default": 2147483648
            }
        }
    ]

    new_plan_item_2 = [
        {
            "id": "platform.max_10giga_byte",
            "informations": {
                "description": "max test",
                "max": 10737418240,
                "default": 10737418240
            }
        }
    ]

    logger.debug(f"{new_plan_item_1=}")
    logger.debug(f"{new_plan_item_2=}")

    with test_common.requsts_mocker_default():
        #
        # normal add test
        #
        # normal add test
        response = connexion_client.post(
            "/internal-api/platform/plan_items",
            content_type='application/json',
            headers=request_parameters.request_headers("dummy"),
            json=new_plan_item_1)

        assert response.status_code == 200, "new plan items success"

        #
        # validate get normal
        #
        response = connexion_client.get(
            f"/internal-api/platform/plan_items/{new_plan_item_1[0]['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers("dummy"))

        assert response.status_code == 200, "get resuponse ok"
        assert response.json["data"].get("informations").get("default") == new_plan_item_1[0]['informations']['default'], "get values check"
        assert response.json["data"].get("informations").get("max") == new_plan_item_1[0]['informations']['max'], "get values check"

        #
        # normal add test (10GB)
        #
        # normal add test (10GB)
        response = connexion_client.post(
            "/internal-api/platform/plan_items",
            content_type='application/json',
            headers=request_parameters.request_headers("dummy"),
            json=new_plan_item_2)

        assert response.status_code == 200, "new plan items success"

        #
        # validate get normal
        #
        response = connexion_client.get(
            f"/internal-api/platform/plan_items/{new_plan_item_2[0]['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers("dummy"))

        assert response.status_code == 200, "get resuponse ok"
        assert response.json["data"].get("informations").get("default") == new_plan_item_2[0]['informations']['default'], "get values check"
        assert response.json["data"].get("informations").get("max") == new_plan_item_2[0]['informations']['max'], "get values check"


def test_plan_item_validation(connexion_client):
    """test user validation

    Args:
        connexion_client (_type_): _description_
    """
    
    # 適応した試験項目分ずつ追加
    # Add adapted test items one by one
    
    validate = validation.validate_plan_item_default(None, None)
    assert not validate.ok
    
    validate = validation.validate_plan_item_default(const.max_db_bigint_value, const.max_db_bigint_value)
    assert validate.ok
    
    validate = validation.validate_plan_item_default(const.min_db_bigint_value - 1, const.max_db_bigint_value + 1)
    assert not validate.ok
    
    validate = validation.validate_plan_item_default(const.max_db_bigint_value + 1, const.max_db_bigint_value + 1)
    assert not validate.ok
    
    validate = validation.validate_plan_item_default(const.max_db_bigint_value, const.max_db_bigint_value - 1)
    assert not validate.ok
