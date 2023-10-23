import requests_mock
import os
import re


def test_organization_create(connexion_client):
    req_headers = {
        "User-id": "unittest-user01",
        "Roles": "",
        "Language": "en"
    }
    
    req_json = {
        "id": "unittest-org001",
        "name": "unittest-org01-name",
        "organization_managers": [
            {
                "username": "admin",
                "email": "admin@example.com",
                "firstName": "admin",
                "lastName": "admin",
                "credentials": [
                    {
                        "type": "password",
                        "value": "password",
                        "temporary": True
                    }
                ],
                "requiredActions": [
                    "UPDATE_PROFILE"
                ],
                "enabled": True
            }
        ],
        "options": {},
        "optionsIta": {}
    }
    with requests_mock.Mocker() as request_mocker:
        request_mocker.register_uri(
            requests_mock.ANY,
            re.compile(rf'^{os.environ["ITA_API_ADMIN_PROTOCOL"]}://{os.environ["ITA_API_ADMIN_HOST"]}:{os.environ["ITA_API_ADMIN_PORT"]}/'),
            status_code=200,
            json={"result": "000-00000", "message": ""})
        request_mocker.register_uri(
            requests_mock.ANY,
            re.compile(rf'^{os.environ["API_KEYCLOAK_PROTOCOL"]}://{os.environ["API_KEYCLOAK_HOST"]}:{os.environ["API_KEYCLOAK_PORT"]}/'),
            real_http=True)

        response = connexion_client.post('/api/platform/organizations', content_type='application/json', headers=req_headers, json=req_json)
        assert response.status_code == 200

