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
from libs import queries_notification


def test_notification_api(connexion_client):
    """notification service api test

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)
    workspace = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])

    with test_common.requsts_mocker_default():
        # Mail通知の追加
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/settings/notifications",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=[sample_data_mail('mail-01')])

        assert response.status_code == 200, "create notifications (kind = mail) response code"

        # Teams通知の追加
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/settings/notifications",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=[sample_data_teams('teams-01')])

        assert response.status_code == 200, "create notifications (kind = teams) response code"

        # Mail+Teams通知の追加
        request_json = [
            sample_data_mail('mix-mail-01'),
            sample_data_teams('mix-teams-01'),
            sample_data_mail('mix-mail-02'),
            sample_data_teams('mix-teams-02'),
        ]

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/settings/notifications",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=request_json)

        assert response.status_code == 200, "create notifications (kind = mix) response code"


def test_notifications_validate(connexion_client):
    """test validate notifications

    Args:
        connexion_client (_type_): _description_
    """
    #
    # validate body
    #
    # validate : different type
    validate = validation.validate_destinations(None)
    assert not validate.ok, "create notifications validate body : different type"

    # validate : no data
    validate = validation.validate_destinations([])
    assert not validate.ok, "create notifications validate body : len = 0"

    #
    # validate id
    #
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
    # validate : kind None
    validate = validation.validate_destination_kind(None)
    assert not validate.ok, "create notifications validate kind : None"
    # validate : kind other
    validate = validation.validate_destination_kind('other')
    assert not validate.ok, "create notifications validate kind : other"

    #
    # validate destination_informations
    #
    # validate informations None
    validate = validation.validate_destination_informations(
        const.DESTINATION_KIND_MAIL,
        None)
    assert not validate.ok, "create notifications validate informations None"

    # validate informations array len = 0
    validate = validation.validate_destination_informations(
        const.DESTINATION_KIND_MAIL,
        [])
    assert not validate.ok, "create notifications validate informations array len = 0"

    # validate informations mail array max
    validate = validation.validate_destination_informations(
        const.DESTINATION_KIND_MAIL,
        [sample_data_information_email() for i in range(const.max_destination_email)])
    assert validate.ok, "create notifications validate informations mail array max"

    # validate informations mail array max + 1
    validate = validation.validate_destination_informations(
        const.DESTINATION_KIND_MAIL,
        [sample_data_information_email() for i in range(const.max_destination_email + 1)])
    assert not validate.ok, "create notifications validate informations mail array max + 1"

    # validate informations address_header None
    validate = validation.validate_destination_informations(
        const.DESTINATION_KIND_MAIL,
        [sample_data_information_email({"address_header": None})])
    assert not validate.ok, "create notifications validate informations address_header None"

    # validate informations address_header other
    validate = validation.validate_destination_informations(
        const.DESTINATION_KIND_MAIL,
        [sample_data_information_email({"address_header": "other"})])
    assert not validate.ok, "create notifications validate informations address_header other"
    
    # validate informations mail None
    validate = validation.validate_destination_informations(
        const.DESTINATION_KIND_MAIL,
        [sample_data_information_email({"email": None})])
    assert not validate.ok, "create notifications validate informations mail None"

    # validate informations mail max length
    # ※maxlengthちょうどでvalidate成功するパターンが無いので実施しない

    # validate informations mail max length + 1
    validate = validation.validate_destination_informations(
        const.DESTINATION_KIND_MAIL,
        [sample_data_information_email({"email": "".ljust(const.length_destination_email + 1, "_")})])
    assert not validate.ok, "create notifications validate informations mail max length + 1"

    # validate informations mail format
    validate = validation.validate_destination_informations(
        const.DESTINATION_KIND_MAIL,
        [sample_data_information_email({"email": "dummy"})])
    assert not validate.ok, "create notifications validate informations mail format"

    # validate informations teams array max
    validate = validation.validate_destination_informations(
        const.DESTINATION_KIND_TEAMS,
        [sample_data_information_teams() for i in range(const.max_destination_teams_webhook)])
    assert validate.ok, "create notifications validate informations teams array max"

    # validate informations teams array max + 1
    validate = validation.validate_destination_informations(
        const.DESTINATION_KIND_TEAMS,
        [sample_data_information_teams() for i in range(const.max_destination_teams_webhook + 1)])
    assert not validate.ok, "create notifications validate informations teams array max + 1"

    # validate informations teams None
    validate = validation.validate_destination_informations(
        const.DESTINATION_KIND_TEAMS,
        [sample_data_information_teams({"webhook": None})])
    assert not validate.ok, "create notifications validate informations teams None"

    # validate informations teams max length
    validate = validation.validate_destination_informations(
        const.DESTINATION_KIND_TEAMS,
        [sample_data_information_teams({"webhook": "https://example.com/".ljust(const.length_destination_teams_webhook, "_")})])
    assert validate.ok, "create notifications validate informations teams max length"

    # validate informations teams max length + 1
    validate = validation.validate_destination_informations(
        const.DESTINATION_KIND_TEAMS,
        [sample_data_information_teams({"webhook": "https://example.com/".ljust(const.length_destination_teams_webhook + 1, "_")})])
    assert not validate.ok, "create notifications validate informations teams max length + 1"

    # validate informations teams format
    validate = validation.validate_destination_informations(
        const.DESTINATION_KIND_TEAMS,
        [sample_data_information_teams({"webhook": "dummy"})])
    assert not validate.ok, "create notifications validate informations teams format"

    #
    # validate conditions
    #
    # validate conditions undefined item
    validate = validation.validate_destination_conditions(sample_data_conditions({"dummy": "dummy"}))
    assert not validate.ok, "create notifications validate conditions undefined item"

    # validate conditions ita.event_type.new different type
    validate = validation.validate_destination_conditions(sample_data_conditions({"ita.event_type.new": "dummy"}))
    assert not validate.ok, "create notifications validate conditions ita.new different type"

    # validate conditions ita.event_type.evaluated different type
    validate = validation.validate_destination_conditions(sample_data_conditions({"ita.event_type.evaluated": "dummy"}))
    assert not validate.ok, "create notifications validate conditions ita.evaluated different type"

    # validate conditions ita.event_type.time_out different type
    validate = validation.validate_destination_conditions(sample_data_conditions({"ita.event_type.time_out": "dummy"}))
    assert not validate.ok, "create notifications validate conditions ita.time_out different type"

    # validate conditions ita.event_type.undetected different type
    validate = validation.validate_destination_conditions(sample_data_conditions({"ita.event_type.undetected": "dummy"}))
    assert not validate.ok, "create notifications validate conditions ita.undetected different type"


def test_settings_notification_create(connexion_client):
    """test settings_notification_create

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)
    workspace = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])

    with test_common.requsts_mocker_default():
        #
        # validate error route
        #
        # validate error body
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/settings/notifications",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=[])

        assert response.status_code == 400, "create notifications valide body response error route"
        
        # validate error id
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/settings/notifications",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=[sample_data_mail('_')])

        assert response.status_code == 400, "create notifications valide id response error route"

        # validate error name
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/settings/notifications",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=[sample_data_mail('name-test-01', {"name": "".ljust(const.length_destination_name + 1, "_")})])

        assert response.status_code == 400, "create notifications valide name response error route"

        # validate error kind
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/settings/notifications",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=[sample_data_mail('kind-test-01', {"kind": "other"})])

        assert response.status_code == 400, "create notifications valide kind response error route"

        # validate error destination_informations
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/settings/notifications",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=[sample_data_mail('informations-test-01', {"destination_informations": []})])

        assert response.status_code == 400, "create notifications valide informations response error route"

        # validate error conditions
        request_json = [sample_data_mail('conditions-test-01')]
        request_json[0]["conditions"]["dummy"] = "X"

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/settings/notifications",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=request_json)
        assert response.status_code == 400, "create notifications valide conditions response error route"

        #
        # already exists
        #
        # Mail通知の追加
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/settings/notifications",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=[sample_data_mail('mail-01')])

        assert response.status_code == 200, "create notifications (kind = mail) response code"

        # Mail通知の追加(alredy exists)
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/settings/notifications",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=[sample_data_mail('mail-01')])

        assert response.status_code == 400, "create notifications already exists"

    with test_common.requsts_mocker_default(), \
            test_common.pymysql_execute_raise_exception_mocker(queries_notification.SQL_INSERT_NOTIFICATION_DESTINATION, Exception("DB Error Test")):
        #
        # DB error route
        #
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/settings/notifications",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=[sample_data_mail('mail-db-error')])

        assert response.status_code == 500, "create notifications response code: db error"


def sample_data_mail(id, update={}):
    """sample data mail setting

    Args:
        id (str): destination id
        update (dict, optional): update dict. Defaults to {}.

    Returns:
        dict: sample data
    """
    return dict(
        sample_data_mail_no_id(update),
        **{"id": id}
    )


def sample_data_mail_no_id(update={}):
    """sample data mail setting (no id field)

    Args:
        update (dict, optional): update dict. Defaults to {}.

    Returns:
        dict: sample data
    """
    return dict({
        "name": "name of mail destination",
        "kind": "Mail",
        "destination_informations": [{
            "address_header": "to",
            "email": "example@example.com",
        }],
        "conditions": {
            "ita.event_type.new": True,
            "ita.event_type.evaluated": False,
            "ita.event_type.time_out": True,
            "ita.event_type.undetected": False,
        }
    }, **update)


def sample_data_teams(id, update={}):
    """sample data teams setting

    Args:
        id (str): destination id
        update (dict, optional): update dict. Defaults to {}.

    Returns:
        dict: sample data
    """
    return dict(
        sample_data_teams_no_id(update),
        **{"id": id}
    )


def sample_data_teams_no_id(update={}):
    """sample data teams setting (no id field)

    Args:
        update (dict, optional): update dict. Defaults to {}.

    Returns:
        dict: sample data
    """
    return dict({
        "name": "name of teams destination",
        "kind": "Teams",
        "destination_informations": [{
            "webhook": "https://example.com/teams",
        }],
        "conditions": {
            "ita.event_type.new": True,
            "ita.event_type.evaluated": False,
            "ita.event_type.time_out": True,
            "ita.event_type.undetected": False,
        }
    }, **update)


def sample_data_information_email(update={}):
    """sample data (kind=email destination_informations row)

    Args:
        update (dict, optional): update dict. Defaults to {}.

    Returns:
        dict: sample data
    """
    return dict(sample_data_mail_no_id()["destination_informations"][0], **update)


def sample_data_information_teams(update={}):
    """sample data (kind=teams destination_informations row)

    Args:
        update (dict, optional): update dict. Defaults to {}.

    Returns:
        dict: sample data
    """
    return dict(sample_data_teams_no_id()["destination_informations"][0], **update)


def sample_data_conditions(update={}):
    """sample data (conditions)

    Args:
        update (dict, optional): update dict. Defaults to {}.

    Returns:
        dict: sample data
    """
    return dict(sample_data_mail_no_id()["conditions"], **update)
