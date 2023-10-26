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
import copy

import requests_mock
from tests.common import request_parameters, test_common

from common_library.common import const, validation


def test_notification_series_of_step(connexion_client):
    """一連の流れの確認

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)
    workspace = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])

    with requests_mock.Mocker() as requests_mocker:
        test_common.requsts_mocker_setting(requests_mocker)

        # Mail通知の追加
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/settings/notifications",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=[{"id": "mail-01", "name": "name of mail-01", "kind": "Mail", "informations": [{"mail": "example@example.com"}]}])

        assert response.status_code == 200, "create notifications (kind = mail) response code"

        # Mail通知の追加(alredy exists)
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/settings/notifications",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=[{"id": "mail-01", "name": "name of mail-01", "kind": "Mail", "informations": [{"mail": "example@example.com"}]}])

        assert response.status_code == 400, "create notifications already exists"

        # Teams通知の追加
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/settings/notifications",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=[{"id": "teams-01", "name": "name of teams-01", "kind": "Teams", "informations": [{"webhook": "https://example.com/dummy"}]}])

        assert response.status_code == 200, "create notifications (kind = teams) response code"

        # 複合パターンの追加
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/settings/notifications",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=[
                {"id": "mix1-mail-01", "name": "name of mix1-mail-01", "kind": "Mail",
                    "informations": [{"mail": "example@example.com"}]},
                {"id": "mix1-teams-01", "name": "name of mix1-teams-01", "kind": "Teams",
                    "informations": [{"webhook": "https://example.com/dummy"}]},
                {"id": "mix1-mail-02", "name": "name of mix1-mail-02", "kind": "Mail",
                    "informations": [{"mail": "example1@example.com"}, {"mail": "example2@example.com"}]},
                {"id": "mix1-teams-02", "name": "name of mix1-teams-02", "kind": "Teams",
                    "informations": [{"webhook": "https://example.com/dummy1"}, {"webhook": "https://example.com/dummy2"}]},
            ])

        assert response.status_code == 200, "create notifications (kind = mix) response code"


def test_settings_notification_create_validate(connexion_client):
    # validate checkにデータは不要のためダミーを使用する
    organization_id = 'org_dummy'
    workspace_id = 'ws_dummy'
    user_id = 'user_id_dummy'

    with requests_mock.Mocker() as requests_mocker:
        test_common.requsts_mocker_setting(requests_mocker)

        # テスト用json
        base_reqest_json = [
            {"id": "mail-01", "name": "name of mail-01", "kind": "Mail", "informations": [{"mail": "example@example.com"}]},
            {"id": "teams-01", "name": "name of teams-01", "kind": "Teams", "informations": [{"webhook": "https://example.com/dummy"}]},
        ]

        #
        # validate body
        #
        response = connexion_client.post(
            f"/api/{organization_id}/platform/workspaces/{workspace_id}/settings/notifications",
            content_type='application/json',
            headers=request_parameters.request_headers(user_id),
            json=[])

        assert response.status_code == 400, "create notifications valide body response error route"
        
        # validate : no data
        validate = validation.validate_destinations([])
        assert not validate.ok, "create notifications validate body : len = 0"
        
        #
        # validate id
        #

        # validate id: response error route
        request_json = copy.deepcopy(base_reqest_json)
        request_json[0]["id"] = "_"

        response = connexion_client.post(
            f"/api/{organization_id}/platform/workspaces/{workspace_id}/settings/notifications",
            content_type='application/json',
            headers=request_parameters.request_headers(user_id),
            json=request_json)

        assert response.status_code == 400, "create notifications valide id response error route"

        # validate : id = None
        validate = validation.validate_destination_id(None)
        assert not validate.ok, "create notifications validate id : None"

        # validate : id length
        validate = validation.validate_destination_id("t".ljust(const.length_destination_id, "_"))
        assert validate.ok, "create notifications validate id : max length"

        validate = validation.validate_destination_id("t".ljust(const.length_destination_id + 1, "_"))
        assert not validate.ok, "create notifications validate id : max length + 1"

        # validate : id char
        validate = validation.validate_destination_id("!")
        assert not validate.ok, "create notifications validate id : invalid char"

        # validate : id first char
        validate = validation.validate_destination_id("a_")
        assert validate.ok, "create notifications validate id : valid first char"

        validate = validation.validate_destination_id("_a")
        assert not validate.ok, "create notifications validate id : invalid first char"

        #
        # validate name
        #
        
        # validate name: response error route
        request_json = copy.deepcopy(base_reqest_json)
        request_json[1]["name"] = "".ljust(const.length_destination_name + 1, "_")

        response = connexion_client.post(
            f"/api/{organization_id}/platform/workspaces/{workspace_id}/settings/notifications",
            content_type='application/json',
            headers=request_parameters.request_headers(user_id),
            json=request_json)

        assert response.status_code == 400, "create notifications valide name response error route"

        # validate : name None
        validate = validation.validate_destination_name(None)
        assert not validate.ok, "create notifications validate name : None"

        # validate : name length
        validate = validation.validate_destination_name("t".ljust(const.length_destination_name, "_"))
        assert validate.ok, "create notifications validate name : max length"

        validate = validation.validate_destination_name("t".ljust(const.length_destination_name + 1, "_"))
        assert not validate.ok, "create notifications validate name : max length + 1"

        #
        # validate kind
        #
        request_json = copy.deepcopy(base_reqest_json)
        request_json[0]["kind"] = "other"

        response = connexion_client.post(
            f"/api/{organization_id}/platform/workspaces/{workspace_id}/settings/notifications",
            content_type='application/json',
            headers=request_parameters.request_headers(user_id),
            json=request_json)

        assert response.status_code == 400, "create notifications valide kind response error route"

        # validate : kind None
        validate = validation.validate_destination_kind(None)
        assert not validate.ok, "create notifications validate kind : None"

        #
        # validate informations
        #

        # validate informations: response error route
        request_json = copy.deepcopy(base_reqest_json)
        request_json[0]["informations"] = []

        response = connexion_client.post(
            f"/api/{organization_id}/platform/workspaces/{workspace_id}/settings/notifications",
            content_type='application/json',
            headers=request_parameters.request_headers(user_id),
            json=request_json)

        assert response.status_code == 400, "create notifications valide informations response error route"

        # validate informations mail array len = 0
        validate = validation.validate_destination_info(const.DESTINATION_KIND_MAIL, [])
        assert not validate.ok, "create notifications validate informations mail array len = 0"

        # validate informations mail array max
        validate = validation.validate_destination_info(const.DESTINATION_KIND_MAIL,
                                                        [{"mail": "example@example.com"}] * const.max_destination_email)
        assert validate.ok, "create notifications validate informations mail array max"

        # validate informations mail array max + 1
        validate = validation.validate_destination_info(const.DESTINATION_KIND_MAIL,
                                                        [{"mail": "example@example.com"}] * (const.max_destination_email + 1))
        assert not validate.ok, "create notifications validate informations mail array max + 1"

        # validate informations mail None
        validate = validation.validate_destination_info(const.DESTINATION_KIND_MAIL, [{"mail": None}])
        assert not validate.ok, "create notifications validate informations mail None"

        # validate informations mail max length
        # ※maxlengthちょうどでvalidate成功するパターンが無いので実施しない
        # validate = validation.validate_destination_info(const.DESTINATION_KIND_MAIL,
        #                                               [{"mail": "@example.com".rjust(const.length_destination_email, "a")}])
        # assert validate.ok, "create notifications validate informations mail max length"

        # validate informations mail max length + 1
        validate = validation.validate_destination_info(const.DESTINATION_KIND_MAIL, [{"mail": "".ljust(const.length_destination_email + 1, "_")}])
        assert not validate.ok, "create notifications validate informations mail max length + 1"

        # validate informations mail format
        validate = validation.validate_destination_info(const.DESTINATION_KIND_MAIL, [{"mail": "dummy"}])
        assert not validate.ok, "create notifications validate informations mail format"

        # validate informations teams array len = 0
        validate = validation.validate_destination_info(const.DESTINATION_KIND_TEAMS, [])
        assert not validate.ok, "create notifications validate informations teams array len = 0"

        # validate informations teams array max
        validate = validation.validate_destination_info(const.DESTINATION_KIND_TEAMS,
                                                        [{"webhook": "https://example.com/dummy"}] * const.max_destination_teams_webhook)
        assert validate.ok, "create notifications validate informations teams array max"

        # validate informations teams array max + 1
        validate = validation.validate_destination_info(const.DESTINATION_KIND_TEAMS,
                                                        [{"webhook": "https://example.com/dummy"}] * (const.max_destination_teams_webhook + 1))
        assert not validate.ok, "create notifications validate informations teams array max + 1"

        # validate informations teams None
        validate = validation.validate_destination_info(const.DESTINATION_KIND_TEAMS,
                                                        [{"webhook": None}])
        assert not validate.ok, "create notifications validate informations teams None"

        # validate informations teams max length
        validate = validation.validate_destination_info(const.DESTINATION_KIND_TEAMS,
                                                        [{"webhook": "https://example.com/".ljust(const.length_destination_teams_webhook, "_")}])
        assert validate.ok, "create notifications validate informations teams max length"

        # validate informations teams max length + 1
        validate = validation.validate_destination_info(const.DESTINATION_KIND_TEAMS,
                                                        [{"webhook": "https://example.com/".ljust(const.length_destination_teams_webhook + 1, "_")}])
        assert not validate.ok, "create notifications validate informations teams max length + 1"

        # validate informations teams format
        validate = validation.validate_destination_info(const.DESTINATION_KIND_TEAMS, [{"webhook": "dummy"}])
        assert not validate.ok, "create notifications validate informations teams format"
