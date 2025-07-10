#   Copyright 2023 NEC Corporation
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

import logging

logger = logging.getLogger(__name__)


def test_internal_settings_destination_get(connexion_client):
    """test settings_destination_get

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)
    workspace = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])
    setting_notifications = test_common.create_setting_notifications(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])

    logger.debug(f"setting_notifications:{setting_notifications}")

    with test_common.requsts_mocker_default():
        #
        # validate get id not found
        #
        response = connexion_client.get(
            f"/internal-api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/settings/notifications/not_id",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']))

        assert response.status_code == 404, "get notifications destination response error route"

        #
        # validate get normal
        #
        response = connexion_client.get(
            f"/internal-api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/settings/notifications/{setting_notifications[0]['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']))

        assert response.status_code == 200, "get notifications destination response OK route"


def test_internal_settings_notification_list(connexion_client):
    """test settings_notification_list

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)
    workspace = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])
    setting_notifications = test_common.create_setting_notifications(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])

    logger.debug(f"setting_notifications:{setting_notifications}")

    with test_common.requsts_mocker_default():
        #
        # validate get id not found
        #
        response = connexion_client.get(
            f"/internal-api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/settings/notifications",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']))

        assert response.status_code == 200, "get notifications destination list response OK route"
        assert len(response.json["data"]) == 3, "get notifications destination list"
        assert response.json["data"][0].get("id") == setting_notifications[0]['id'], "get notifications destination id check"

        #
        # validate get normal
        #
        response = connexion_client.get(
            f"/internal-api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/settings/notifications?event_type_true=ita.event_type.new",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']))

        assert response.status_code == 200, "get notifications destination list response OK route"
        assert len(response.json["data"]) == 3, "get notifications destination list"
        assert response.json["data"][0].get("conditions", {}).get("ita", {}).get("event_type", {}).get("new"), "get notifications destination id check"

        #
        # validate get normal
        #
        response = connexion_client.get(
            f"/internal-api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/settings/notifications?event_type_true=ita.event_type.new|ita.event_type.evaluated",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']))

        assert response.status_code == 200, "get notifications destination list response OK route"
        assert len(response.json["data"]) == 0, "get notifications destination list"

        #
        # validate get normal
        #
        response = connexion_client.get(
            f"/internal-api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/settings/notifications?event_type_true=ita.event_type.new&event_type_false=ita.event_type.evaluated",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']))

        assert response.status_code == 200, "get notifications destination list response OK route"
        assert len(response.json["data"]) == 3, "get notifications destination list"
        assert response.json["data"][0].get("conditions", {}).get("ita", {}).get("event_type", {}).get("new"), "get notifications destination id check"
        assert not response.json["data"][0].get("conditions", {}).get("ita", {}).get("event_type", {}).get("evaluated"), "get notifications destination id check"
