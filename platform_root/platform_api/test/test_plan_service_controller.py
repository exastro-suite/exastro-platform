
def test_plan_list(connexion_client):
    req_headers = {
        "User-id": "unittest-user01",
        "Roles": "",
        "Language": "en"
    }

    response = connexion_client.get('/api/platform/plans', headers=req_headers)
    assert response.status_code == 200
