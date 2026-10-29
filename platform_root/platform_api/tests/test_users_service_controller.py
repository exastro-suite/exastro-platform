#   Copyright 2026 NEC Corporation
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

"""
users_service_controller.py の AIアシスタント関連エンドポイントのテスト

対象:
- GET  /api/{organization_id}/platform/ai-services
- POST/GET/PUT/DELETE /api/{organization_id}/platform/users/_current/{credential_type}/credentials
- POST /api/{organization_id}/platform/users/_current/{credential_type}/credentials/verify
- GET  /api/{organization_id}/platform/users/_current/{credential_type}/models
- GET/PUT /api/{organization_id}/platform/users/_current/{ai_service_id}/ai-preference
- GET/PUT /api/{organization_id}/platform/users/_current/ai-preference
"""

import json
from unittest import mock

import pymysql
from botocore.exceptions import ReadTimeoutError

from libs import queries_ai_assistant
from services.users.ai_credential_service import get_ai_credential_service
from tests.common import request_parameters, test_common
from tests.test_organization_service_controller import sample_data_organization_update


# ==================== テスト共通ヘルパー ====================

def _enable_ai_assistant(connexion_client, organization_id):
    """テスト用オーガナイゼーションでai_assistant driverを有効にする"""
    with test_common.requsts_mocker_default():
        response = connexion_client.put(
            f'/api/platform/organizations/{organization_id}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization_update())
        assert response.status_code == 200, "enable ai_assistant driver"


def _setup_org(connexion_client):
    """ai_assistant driverが有効なテスト用オーガナイゼーションを作成する"""
    organization = test_common.create_organization(connexion_client)
    _enable_ai_assistant(connexion_client, organization["organization_id"])
    return organization


def sample_data_bedrock_cache_credential(update={}):
    """bedrock-cache用のCredential登録・更新パラメータ"""
    return dict({
        "credential_name": "My Login Cache Credential",
        "credential_data": {
            "apiKey": json.dumps({
                "idToken": "dummy-id-token",
                "accessToken": "dummy-access-token",
                "refreshToken": "dummy-refresh-token",
                "region": "ap-northeast-1",
            }),
        },
        "notes": "test credential",
    }, **update)


def sample_data_bedrock_credential(update={}):
    """bedrock(手動Credential)用の登録・更新パラメータ"""
    return dict({
        "credential_name": "My Manual Credential",
        "credential_data": {
            "accessKeyId": "AKIAEXAMPLE",
            "secretAccessKey": "secret-access-key",
            "sessionToken": "session-token",
            "region": "ap-northeast-1",
        },
        "notes": "test credential",
    }, **update)


def _register_credential(connexion_client, organization_id, credential_type, json_parameter):
    with test_common.requsts_mocker_default():
        return connexion_client.post(
            f'/api/{organization_id}/platform/users/_current/{credential_type}/credentials',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=json_parameter)


# ==================== GET /ai-services ====================

def test_get_ai_services(connexion_client):
    """利用可能なAIサービス一覧を取得できる"""
    organization = _setup_org(connexion_client)

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/ai-services',
            content_type='application/json',
            headers=request_parameters.request_headers())

    assert response.status_code == 200, "get ai-services"
    data = response.json["data"]
    assert data["count"] == 2, "get ai-services : count"
    ai_service_ids = [s["ai_service_id"] for s in data["ai_services"]]
    assert ai_service_ids == ["bedrock-cache", "bedrock"], "get ai-services : ai_service_id list"
    for service in data["ai_services"]:
        assert "settings" in service, "get ai-services : settings exists"


def test_get_ai_services_driver_disabled(connexion_client):
    """ai_assistant driverが無効な場合は403"""
    organization = test_common.create_organization(connexion_client)

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/ai-services',
            content_type='application/json',
            headers=request_parameters.request_headers())

    assert response.status_code == 403, "ai_assistant driver disabled"
    assert response.json["result"] == "403-44001", "ai_assistant driver disabled"


# ==================== POST/GET/PUT/DELETE .../credentials ====================

def test_register_credential_bedrock_cache(connexion_client):
    """bedrock-cache Credentialを登録できる"""
    organization = _setup_org(connexion_client)

    response = _register_credential(
        connexion_client, organization["organization_id"], "bedrock-cache",
        sample_data_bedrock_cache_credential())

    assert response.status_code == 200, "register bedrock-cache credential"
    data = response.json["data"]
    assert data["credential_type"] == "bedrock-cache"
    assert data["status"] == "active"
    assert data["credential_id"], "credential_id is issued"


def test_register_credential_bedrock(connexion_client):
    """bedrock(手動Credential)を登録できる"""
    organization = _setup_org(connexion_client)

    response = _register_credential(
        connexion_client, organization["organization_id"], "bedrock",
        sample_data_bedrock_credential())

    assert response.status_code == 200, "register bedrock credential"
    assert response.json["data"]["credential_type"] == "bedrock"


def test_register_credential_validation_errors(connexion_client):
    """必須項目・サービス固有バリデーションのエラーを確認する"""
    organization = _setup_org(connexion_client)
    organization_id = organization["organization_id"]

    # credential_name未指定
    # 注: credential_nameはOpenAPIスキーマ上もrequired・type:stringのため、
    # キー省略やnullではconnexion自体のリクエストバリデーションで拒否されてしまい
    # (result キーを持たない別形式のエラーになる)、コントローラー側の400-25007に到達しない。
    # 空文字列はスキーマ上は妥当な文字列としてバリデーションを通過し、Python上はfalsyになるため、
    # コントローラー側のチェックに到達させることができる。
    response = _register_credential(
        connexion_client, organization_id, "bedrock-cache",
        sample_data_bedrock_cache_credential({"credential_name": ""}))
    assert response.status_code == 400, "credential_name is required"
    assert response.json["result"] == "400-25007", "credential_name is required"

    # credential_data未指定
    # 注: credential_nameと同様の理由で、空オブジェクトを使ってコントローラー側のチェックに到達させる
    response = _register_credential(
        connexion_client, organization_id, "bedrock-cache",
        sample_data_bedrock_cache_credential({"credential_data": {}}))
    assert response.status_code == 400, "credential_data is required"
    assert response.json["result"] == "400-25008", "credential_data is required"

    # bedrock-cache: apiKeyがidTokenを含まない
    response = _register_credential(
        connexion_client, organization_id, "bedrock-cache",
        sample_data_bedrock_cache_credential({"credential_data": {"apiKey": "not-json"}}))
    assert response.status_code == 400, "bedrock-cache apiKey invalid"
    assert response.json["result"] == "400-25009", "bedrock-cache apiKey invalid"

    # bedrock: regionが未指定
    response = _register_credential(
        connexion_client, organization_id, "bedrock",
        sample_data_bedrock_credential({
            "credential_data": {
                "accessKeyId": "AKIAEXAMPLE",
                "secretAccessKey": "secret",
            }
        }))
    assert response.status_code == 400, "bedrock region is required"
    assert response.json["result"] == "400-25016", "bedrock region is required"


def test_register_credential_duplicate(connexion_client):
    """同じcredential_typeへの2回目の登録は409(UK_USER_TYPE違反)"""
    organization = _setup_org(connexion_client)
    organization_id = organization["organization_id"]

    response = _register_credential(
        connexion_client, organization_id, "bedrock-cache",
        sample_data_bedrock_cache_credential())
    assert response.status_code == 200, "first registration succeeds"

    response = _register_credential(
        connexion_client, organization_id, "bedrock-cache",
        sample_data_bedrock_cache_credential())
    assert response.status_code == 409, "second registration is a conflict"
    assert response.json["result"] == "409-25002", "second registration is a conflict"


def test_register_credential_db_error(connexion_client):
    """DBエラー時は500"""
    organization = _setup_org(connexion_client)

    with test_common.pymysql_execute_raise_exception_mocker(
            queries_ai_assistant.SQL_INSERT_USER_CREDENTIAL, Exception("DB Error Test")):
        response = _register_credential(
            connexion_client, organization["organization_id"], "bedrock-cache",
            sample_data_bedrock_cache_credential())

    assert response.status_code == 500, "DB error on register"
    assert response.json["result"] == "500-25006", "DB error on register"


def test_get_credential_not_registered(connexion_client):
    """未登録のcredential_typeをGETすると404にならず全項目nullで200を返す"""
    organization = _setup_org(connexion_client)

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/users/_current/bedrock/credentials',
            content_type='application/json',
            headers=request_parameters.request_headers())

    assert response.status_code == 200, "get unregistered credential"
    data = response.json["data"]
    assert data["credential_id"] is None
    assert data["credential_type"] == "bedrock"
    assert data["credential_data_keys"] == []
    assert data["credential_data"] == {}


def test_get_credential_exception(connexion_client):
    """Credential取得で予期しない例外が発生した場合は500"""
    organization = _setup_org(connexion_client)
    organization_id = organization["organization_id"]

    ai_credential_service = mock.Mock()
    ai_credential_service.get_credential.side_effect = Exception("DB Error Test")

    with test_common.requsts_mocker_default(), mock.patch(
            "controllers.users_service_controller.get_ai_credential_service",
            return_value=ai_credential_service):
        response = connexion_client.get(
            f'/api/{organization_id}/platform/users/_current/bedrock/credentials',
            content_type='application/json',
            headers=request_parameters.request_headers())

    assert response.status_code == 500, "get credential unexpected exception"
    assert response.json["result"] == "500-25007", "get credential unexpected exception"


def test_get_credential_after_register(connexion_client):
    """登録済みCredentialを取得すると、passwordタイプ以外の項目のみ値が返る"""
    organization = _setup_org(connexion_client)
    organization_id = organization["organization_id"]

    response = _register_credential(
        connexion_client, organization_id, "bedrock",
        sample_data_bedrock_credential())
    assert response.status_code == 200, "register bedrock credential"

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization_id}/platform/users/_current/bedrock/credentials',
            content_type='application/json',
            headers=request_parameters.request_headers())

    assert response.status_code == 200, "get registered credential"
    data = response.json["data"]
    assert data["credential_type"] == "bedrock"
    assert data["status"] == "active"
    assert set(data["credential_data_keys"]) == {
        "accessKeyId", "secretAccessKey", "sessionToken", "region"
    }
    # accessKeyId/regionはtype:textのため値が返り、secretAccessKey/sessionTokenはtype:passwordのためマスクされる
    assert data["credential_data"]["accessKeyId"] == "AKIAEXAMPLE"
    assert data["credential_data"]["region"] == "ap-northeast-1"
    assert "secretAccessKey" not in data["credential_data"]
    assert "sessionToken" not in data["credential_data"]


def test_update_credential(connexion_client):
    """登録済みCredentialを更新できる。未登録の場合は404"""
    organization = _setup_org(connexion_client)
    organization_id = organization["organization_id"]

    response = _register_credential(
        connexion_client, organization_id, "bedrock-cache",
        sample_data_bedrock_cache_credential())
    assert response.status_code == 200, "register bedrock-cache credential"

    with test_common.requsts_mocker_default():
        response = connexion_client.put(
            f'/api/{organization_id}/platform/users/_current/bedrock-cache/credentials',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_bedrock_cache_credential({"credential_name": "Updated Name"}))

    assert response.status_code == 200, "update credential"
    assert response.json["data"]["credential_name"] == "Updated Name"

    # 未登録のcredential_typeを更新しようとすると404
    with test_common.requsts_mocker_default():
        response = connexion_client.put(
            f'/api/{organization_id}/platform/users/_current/bedrock/credentials',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_bedrock_credential())

    assert response.status_code == 404, "update unregistered credential"
    assert response.json["result"] == "404-25003", "update unregistered credential"


def test_update_credential_validation_errors(connexion_client):
    """PUTでも登録時と同様のバリデーションが行われることを確認する(先に登録している必要はない。
    バリデーションはservice.update_credential呼び出し・存在チェックより前に行われるため)"""
    organization = _setup_org(connexion_client)
    organization_id = organization["organization_id"]

    def _put(credential_type, json_parameter):
        with test_common.requsts_mocker_default():
            return connexion_client.put(
                f'/api/{organization_id}/platform/users/_current/{credential_type}/credentials',
                content_type='application/json',
                headers=request_parameters.request_headers(),
                json=json_parameter)

    response = _put("bedrock-cache", sample_data_bedrock_cache_credential({"credential_name": ""}))
    assert response.status_code == 400, "credential_name is required"
    assert response.json["result"] == "400-25007", "credential_name is required"

    response = _put("bedrock-cache", sample_data_bedrock_cache_credential({"credential_data": {}}))
    assert response.status_code == 400, "credential_data is required"
    assert response.json["result"] == "400-25008", "credential_data is required"

    response = _put("bedrock-cache", sample_data_bedrock_cache_credential({"credential_data": {"apiKey": "not-json"}}))
    assert response.status_code == 400, "bedrock-cache apiKey invalid"
    assert response.json["result"] == "400-25009", "bedrock-cache apiKey invalid"

    response = _put("bedrock", sample_data_bedrock_credential({
        "credential_data": {"accessKeyId": "AKIAEXAMPLE", "secretAccessKey": "secret"}
    }))
    assert response.status_code == 400, "bedrock region is required"
    assert response.json["result"] == "400-25016", "bedrock region is required"


def test_update_credential_exception(connexion_client):
    """更新処理で予期しない例外が発生した場合は500"""
    organization = _setup_org(connexion_client)
    organization_id = organization["organization_id"]

    ai_credential_service = mock.Mock()
    ai_credential_service.update_credential.side_effect = Exception("DB Error Test")

    with test_common.requsts_mocker_default(), mock.patch(
            "controllers.users_service_controller.get_ai_credential_service",
            return_value=ai_credential_service):
        response = connexion_client.put(
            f'/api/{organization_id}/platform/users/_current/bedrock-cache/credentials',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_bedrock_cache_credential())

    assert response.status_code == 500, "update credential unexpected exception"
    assert response.json["result"] == "500-25009", "update credential unexpected exception"


def test_delete_credential(connexion_client):
    """Credential削除時に、あわせてai-preference・現在選択中のAIサービスも解除される"""
    organization = _setup_org(connexion_client)
    organization_id = organization["organization_id"]

    response = _register_credential(
        connexion_client, organization_id, "bedrock-cache",
        sample_data_bedrock_cache_credential())
    assert response.status_code == 200, "register bedrock-cache credential"

    # このAIサービスを現在選択中の状態にしておく
    with test_common.requsts_mocker_default():
        response = connexion_client.put(
            f'/api/{organization_id}/platform/users/_current/ai-preference',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json={"ai_service_id": "bedrock-cache"})
    assert response.status_code == 200, "set current ai-preference"

    with test_common.requsts_mocker_default():
        response = connexion_client.delete(
            f'/api/{organization_id}/platform/users/_current/bedrock-cache/credentials',
            content_type='application/json',
            headers=request_parameters.request_headers())

    assert response.status_code == 200, "delete credential"
    data = response.json["data"]
    assert data["credential_type"] == "bedrock-cache"
    assert data["current_ai_service_cleared"] is True, "current ai service is cleared"

    # 削除済みのcredential_typeを再度削除しようとすると404
    with test_common.requsts_mocker_default():
        response = connexion_client.delete(
            f'/api/{organization_id}/platform/users/_current/bedrock-cache/credentials',
            content_type='application/json',
            headers=request_parameters.request_headers())

    assert response.status_code == 404, "delete already-deleted credential"
    assert response.json["result"] == "404-25002", "delete already-deleted credential"


def test_delete_credential_exception(connexion_client):
    """削除処理で予期しない例外が発生した場合は500"""
    organization = _setup_org(connexion_client)
    organization_id = organization["organization_id"]

    ai_credential_service = mock.Mock()
    ai_credential_service.delete_credential.side_effect = Exception("DB Error Test")

    with test_common.requsts_mocker_default(), mock.patch(
            "controllers.users_service_controller.get_ai_credential_service",
            return_value=ai_credential_service):
        response = connexion_client.delete(
            f'/api/{organization_id}/platform/users/_current/bedrock-cache/credentials',
            content_type='application/json',
            headers=request_parameters.request_headers())

    assert response.status_code == 500, "delete credential unexpected exception"
    assert response.json["result"] == "500-25008", "delete credential unexpected exception"


# ==================== POST .../credentials/verify ====================

def test_verify_credential_bedrock(connexion_client):
    """bedrock CredentialをSTS get_caller_identityで検証する(boto3をモック)"""
    organization = _setup_org(connexion_client)
    organization_id = organization["organization_id"]

    response = _register_credential(
        connexion_client, organization_id, "bedrock",
        sample_data_bedrock_credential())
    assert response.status_code == 200, "register bedrock credential"

    sts_client = mock.Mock()
    sts_client.get_caller_identity.return_value = {
        "Account": "123456789012",
        "UserId": "AIDAEXAMPLE",
        "Arn": "arn:aws:iam::123456789012:user/example",
    }
    session = mock.Mock()
    session.client.return_value = sts_client

    with test_common.requsts_mocker_default(), mock.patch("boto3.Session", return_value=session):
        response = connexion_client.post(
            f'/api/{organization_id}/platform/users/_current/bedrock/credentials/verify',
            content_type='application/json',
            headers=request_parameters.request_headers())

    assert response.status_code == 200, "verify bedrock credential"
    data = response.json["data"]
    assert data["valid"] is True
    assert data["account_id"] == "123456789012"
    assert data["user_id"] == "AIDAEXAMPLE"


def test_verify_credential_bedrock_cache(connexion_client):
    """bedrock-cache Credentialを検証する(aws_session_managerをモック)"""
    organization = _setup_org(connexion_client)
    organization_id = organization["organization_id"]

    response = _register_credential(
        connexion_client, organization_id, "bedrock-cache",
        sample_data_bedrock_cache_credential())
    assert response.status_code == 200, "register bedrock-cache credential"

    sts_client = mock.Mock()
    sts_client.get_caller_identity.return_value = {
        "Account": "123456789012",
        "UserId": "AIDAEXAMPLE",
        "Arn": "arn:aws:iam::123456789012:user/example",
    }
    aws_session = mock.Mock()
    aws_session._session.client.return_value = sts_client

    with test_common.requsts_mocker_default(), mock.patch(
            "services.ai_assistant.aws_session_manager.create_bedrock_session_from_credential_data",
            return_value=aws_session):
        response = connexion_client.post(
            f'/api/{organization_id}/platform/users/_current/bedrock-cache/credentials/verify',
            content_type='application/json',
            headers=request_parameters.request_headers())

    assert response.status_code == 200, "verify bedrock-cache credential"
    data = response.json["data"]
    assert data["valid"] is True
    assert data["account_id"] == "123456789012"


def test_verify_credential_bedrock_failure(connexion_client):
    """bedrock: STS呼び出しが失敗した場合でも200でvalid:falseを返す(検証失敗は例外にしない)"""
    organization = _setup_org(connexion_client)
    organization_id = organization["organization_id"]

    response = _register_credential(
        connexion_client, organization_id, "bedrock",
        sample_data_bedrock_credential())
    assert response.status_code == 200, "register bedrock credential"

    session = mock.Mock()
    session.client.side_effect = Exception("STS call failed")

    with test_common.requsts_mocker_default(), mock.patch("boto3.Session", return_value=session):
        response = connexion_client.post(
            f'/api/{organization_id}/platform/users/_current/bedrock/credentials/verify',
            content_type='application/json',
            headers=request_parameters.request_headers())

    assert response.status_code == 200, "verify bedrock credential (STS failure still returns 200)"
    data = response.json["data"]
    assert data["valid"] is False
    assert "STS call failed" in data["message"]


def test_verify_credential_bedrock_cache_missing_fields(connexion_client):
    """bedrock-cache: apiKeyにidTokenはあるがaccessToken/refreshTokenが無い場合、
    verifyはvalid:falseを返す(登録時のバリデーションはidTokenの有無のみを見ているため、
    このケース自体は登録に成功する)"""
    organization = _setup_org(connexion_client)
    organization_id = organization["organization_id"]

    response = _register_credential(
        connexion_client, organization_id, "bedrock-cache",
        sample_data_bedrock_cache_credential({
            "credential_data": {"apiKey": json.dumps({"idToken": "dummy-id-token"})},
        }))
    assert response.status_code == 200, "register bedrock-cache credential with minimal apiKey"

    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization_id}/platform/users/_current/bedrock-cache/credentials/verify',
            content_type='application/json',
            headers=request_parameters.request_headers())

    assert response.status_code == 200, "verify bedrock-cache credential (still 200)"
    data = response.json["data"]
    assert data["valid"] is False
    assert "Missing required fields" in data["message"]


def test_verify_credential_bedrock_cache_exception(connexion_client):
    """bedrock-cache: セッション作成やSTS呼び出しで例外が発生した場合でも200でvalid:falseを返す"""
    organization = _setup_org(connexion_client)
    organization_id = organization["organization_id"]

    response = _register_credential(
        connexion_client, organization_id, "bedrock-cache",
        sample_data_bedrock_cache_credential())
    assert response.status_code == 200, "register bedrock-cache credential"

    with test_common.requsts_mocker_default(), mock.patch(
            "services.ai_assistant.aws_session_manager.create_bedrock_session_from_credential_data",
            side_effect=Exception("session creation failed")):
        response = connexion_client.post(
            f'/api/{organization_id}/platform/users/_current/bedrock-cache/credentials/verify',
            content_type='application/json',
            headers=request_parameters.request_headers())

    assert response.status_code == 200, "verify bedrock-cache credential (exception still returns 200)"
    data = response.json["data"]
    assert data["valid"] is False
    assert "session creation failed" in data["message"]


def test_verify_credential_exception(connexion_client):
    """Credential取得で予期しない例外が発生した場合は500(_verify_by_serviceの検証失敗とは異なり、
    この場合はサービス層の例外がそのまま外側のexceptに到達する)"""
    organization = _setup_org(connexion_client)
    organization_id = organization["organization_id"]

    response = _register_credential(
        connexion_client, organization_id, "bedrock",
        sample_data_bedrock_credential())
    assert response.status_code == 200, "register bedrock credential"

    ai_credential_service = mock.Mock()
    ai_credential_service.get_credential.side_effect = Exception("DB Error Test")

    with test_common.requsts_mocker_default(), mock.patch(
            "controllers.users_service_controller.get_ai_credential_service",
            return_value=ai_credential_service):
        response = connexion_client.post(
            f'/api/{organization_id}/platform/users/_current/bedrock/credentials/verify',
            content_type='application/json',
            headers=request_parameters.request_headers())

    assert response.status_code == 500, "verify credential unexpected exception"
    assert response.json["result"] == "500-25010", "verify credential unexpected exception"


def test_verify_credential_not_found(connexion_client):
    """未登録のcredential_typeを検証しようとすると404"""
    organization = _setup_org(connexion_client)

    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/users/_current/bedrock/credentials/verify',
            content_type='application/json',
            headers=request_parameters.request_headers())

    assert response.status_code == 404, "verify unregistered credential"
    assert response.json["result"] == "404-25004", "verify unregistered credential"


# ==================== GET .../models ====================

def test_list_models(connexion_client):
    """使用可能なモデル一覧を取得する(ModelServiceをモック)"""
    organization = _setup_org(connexion_client)
    organization_id = organization["organization_id"]

    response = _register_credential(
        connexion_client, organization_id, "bedrock-cache",
        sample_data_bedrock_cache_credential())
    assert response.status_code == 200, "register bedrock-cache credential"

    fake_models = [
        {
            "id": "anthropic.claude-3-5-sonnet-20240620-v1:0",
            "name": "Claude 3.5 Sonnet",
            "description": "",
            "type": "inference-profile",
            "status": "ACTIVE",
        }
    ]
    model_service = mock.Mock()
    model_service.get_bedrock_models.return_value = fake_models

    with test_common.requsts_mocker_default(), mock.patch(
            "controllers.users_service_controller.get_model_service",
            return_value=model_service):
        response = connexion_client.get(
            f'/api/{organization_id}/platform/users/_current/bedrock-cache/models',
            content_type='application/json',
            headers=request_parameters.request_headers())

    assert response.status_code == 200, "list models"
    data = response.json["data"]
    assert data["count"] == 1
    assert data["credential_type"] == "bedrock-cache"
    assert data["models"] == fake_models


def test_list_models_unsupported_service(connexion_client):
    """bedrock-cache/bedrock以外のcredential_typeは400"""
    organization = _setup_org(connexion_client)

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/users/_current/openai/models',
            content_type='application/json',
            headers=request_parameters.request_headers())

    # credential_typeのenum自体がbedrock-cache/bedrockのみのため、openaiはOpenAPIレベルでも400になる
    assert response.status_code == 400, "unsupported service for model list"


def test_list_models_credential_not_found(connexion_client):
    """Credential未登録の場合は404"""
    organization = _setup_org(connexion_client)

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/users/_current/bedrock/models',
            content_type='application/json',
            headers=request_parameters.request_headers())

    assert response.status_code == 404, "list models without credential"
    assert response.json["result"] == "404-25005", "list models without credential"


def test_list_models_driver_disabled(connexion_client):
    """ai_assistant driverが無効な場合は403"""
    organization = test_common.create_organization(connexion_client)

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/users/_current/bedrock-cache/models',
            content_type='application/json',
            headers=request_parameters.request_headers())

    assert response.status_code == 403, "ai_assistant driver disabled"
    assert response.json["result"] == "403-25001", "ai_assistant driver disabled"


def test_list_models_exception(connexion_client):
    """モデル一覧取得で予期しない例外が発生した場合は500"""
    organization = _setup_org(connexion_client)
    organization_id = organization["organization_id"]

    response = _register_credential(
        connexion_client, organization_id, "bedrock-cache",
        sample_data_bedrock_cache_credential())
    assert response.status_code == 200, "register bedrock-cache credential"

    model_service = mock.Mock()
    model_service.get_bedrock_models.side_effect = Exception("boom")

    with test_common.requsts_mocker_default(), mock.patch(
            "controllers.users_service_controller.get_model_service",
            return_value=model_service):
        response = connexion_client.get(
            f'/api/{organization_id}/platform/users/_current/bedrock-cache/models',
            content_type='application/json',
            headers=request_parameters.request_headers())

    assert response.status_code == 500, "list models unexpected exception"
    assert response.json["result"] == "500-25011", "list models unexpected exception"


def _inference_profile_summaries():
    """list_inference_profilesの模擬レスポンス

    4件のプロファイルを含む。model_service.pyの絞り込みロジック(status、Anthropic以外除外、EOL除外)を
    通した結果、"profile-claude-current"のみが残るように意図的に設計している。
    """
    return {
        "inferenceProfileSummaries": [
            {
                "inferenceProfileId": "profile-claude-current",
                "inferenceProfileName": "Claude (Current)",
                "status": "ACTIVE",
                "type": "SYSTEM_DEFINED",
                "models": [{
                    "modelArn": "arn:aws:bedrock:ap-northeast-1::foundation-model/anthropic.claude-3-5-sonnet-20240620-v1:0"
                }],
            },
            {
                # EOL: 参照している基礎モデルがACTIVE一覧に含まれない
                "inferenceProfileId": "profile-claude-eol",
                "inferenceProfileName": "Claude (EOL)",
                "status": "ACTIVE",
                "type": "SYSTEM_DEFINED",
                "models": [{
                    "modelArn": "arn:aws:bedrock:ap-northeast-1::foundation-model/anthropic.claude-old-eol-v1:0"
                }],
            },
            {
                # Anthropic以外は除外
                "inferenceProfileId": "profile-nova",
                "inferenceProfileName": "Nova Pro",
                "status": "ACTIVE",
                "type": "SYSTEM_DEFINED",
                "models": [{
                    "modelArn": "arn:aws:bedrock:ap-northeast-1::foundation-model/amazon.nova-pro-v1:0"
                }],
            },
            {
                # ACTIVE以外は除外
                "inferenceProfileId": "profile-claude-disabled",
                "inferenceProfileName": "Claude (Disabled)",
                "status": "DISABLED",
                "type": "SYSTEM_DEFINED",
                "models": [{
                    "modelArn": "arn:aws:bedrock:ap-northeast-1::foundation-model/anthropic.claude-3-5-sonnet-20240620-v1:0"
                }],
            },
        ]
    }


def _foundation_model_summaries():
    """list_foundation_modelsの模擬レスポンス(EOLフィルタリング用のACTIVEモデル一覧)"""
    return {
        "modelSummaries": [
            {
                "modelId": "anthropic.claude-3-5-sonnet-20240620-v1:0",
                "modelLifecycle": {"status": "ACTIVE"},
            },
            {
                "modelId": "anthropic.claude-old-eol-v1:0",
                "modelLifecycle": {"status": "LEGACY"},
            },
            {
                "modelId": "amazon.nova-pro-v1:0",
                "modelLifecycle": {"status": "ACTIVE"},
            },
        ]
    }


def test_list_models_bedrock_cache_filters_and_refreshes_token(connexion_client):
    """bedrock-cache: model_service.pyの実装(boto3呼び出し以降)を実際に通し、
    ステータス・Anthropic限定・EOLでの絞り込みと、取得後のトークン更新(apiKey上書き)・LAST_USED_AT更新を確認する

    boto3自体はモックしないが、create_bedrock_session_from_credential_data(AWSへの実接続が発生する部分)は
    model_service.py内で使われている名前(model_service.create_bedrock_session_from_credential_data)をモックする。
    それより後段のフィルタリング・整形ロジックは実装をそのまま実行する。
    """
    organization = _setup_org(connexion_client)
    organization_id = organization["organization_id"]

    response = _register_credential(
        connexion_client, organization_id, "bedrock-cache",
        sample_data_bedrock_cache_credential())
    assert response.status_code == 200, "register bedrock-cache credential"

    fake_bedrock_client = mock.Mock()
    fake_bedrock_client.list_foundation_models.return_value = _foundation_model_summaries()
    fake_bedrock_client.list_inference_profiles.return_value = _inference_profile_summaries()

    fake_aws_session = mock.Mock()
    fake_aws_session._session.client.return_value = fake_bedrock_client
    new_token = {
        "idToken": "new-id-token", "accessToken": "new-access-token",
        "refreshToken": "new-refresh-token", "region": "ap-northeast-1",
    }
    fake_aws_session.get_current_token.return_value = new_token

    with test_common.requsts_mocker_default(), mock.patch(
            "services.ai_assistant.model_service.create_bedrock_session_from_credential_data",
            return_value=fake_aws_session):
        response = connexion_client.get(
            f'/api/{organization_id}/platform/users/_current/bedrock-cache/models',
            content_type='application/json',
            headers=request_parameters.request_headers())

    assert response.status_code == 200, "list bedrock-cache models"
    data = response.json["data"]
    assert data["count"] == 1, "only the current ACTIVE Anthropic non-EOL profile remains"
    assert data["models"][0]["id"] == "profile-claude-current"
    assert data["models"][0]["name"] == "Claude (Current)"
    fake_bedrock_client.list_inference_profiles.assert_called_once()

    # トークンが自動更新された場合、credential_data.apiKeyへ新しいキャッシュ内容が上書き保存され、
    # LAST_USED_ATも更新される(_visible_credential_dataでマスクされるため、実サービスを直接呼んで確認する)
    credential = get_ai_credential_service().get_credential(
        organization_id=organization_id, user_id="unittest-user01", credential_type="bedrock-cache")
    assert json.loads(credential.credential_data["apiKey"]) == new_token, "apiKey is overwritten with the refreshed token"
    assert credential.last_used_at is not None, "last_used_at is updated"


def test_list_models_bedrock_manual_filters(connexion_client):
    """bedrock(手動Credential): boto3.Sessionをモックし、model_service.pyの絞り込みロジックを実際に通す"""
    organization = _setup_org(connexion_client)
    organization_id = organization["organization_id"]

    response = _register_credential(
        connexion_client, organization_id, "bedrock",
        sample_data_bedrock_credential())
    assert response.status_code == 200, "register bedrock credential"

    fake_bedrock_client = mock.Mock()
    fake_bedrock_client.list_foundation_models.return_value = _foundation_model_summaries()
    fake_bedrock_client.list_inference_profiles.return_value = _inference_profile_summaries()

    fake_session = mock.Mock()
    fake_session.client.return_value = fake_bedrock_client

    with test_common.requsts_mocker_default(), mock.patch(
            "boto3.Session",
            return_value=fake_session):
        response = connexion_client.get(
            f'/api/{organization_id}/platform/users/_current/bedrock/models',
            content_type='application/json',
            headers=request_parameters.request_headers())

    assert response.status_code == 200, "list bedrock models"
    data = response.json["data"]
    assert data["count"] == 1
    assert data["models"][0]["id"] == "profile-claude-current"

    # bedrock(固定トークン)の場合、apiKeyという概念は無いためLAST_USED_ATのみ更新される
    credential = get_ai_credential_service().get_credential(
        organization_id=organization_id, user_id="unittest-user01", credential_type="bedrock")
    assert credential.last_used_at is not None, "last_used_at is updated"


def test_list_models_eol_lookup_fails_skips_filter(connexion_client):
    """list_foundation_modelsが失敗した場合、EOLフィルタリングをスキップして(エラーにせず)継続する"""
    organization = _setup_org(connexion_client)
    organization_id = organization["organization_id"]

    response = _register_credential(
        connexion_client, organization_id, "bedrock-cache",
        sample_data_bedrock_cache_credential())
    assert response.status_code == 200, "register bedrock-cache credential"

    fake_bedrock_client = mock.Mock()
    fake_bedrock_client.list_foundation_models.side_effect = Exception("control plane unavailable")
    fake_bedrock_client.list_inference_profiles.return_value = _inference_profile_summaries()

    fake_aws_session = mock.Mock()
    fake_aws_session._session.client.return_value = fake_bedrock_client
    fake_aws_session.get_current_token.return_value = None

    with test_common.requsts_mocker_default(), mock.patch(
            "services.ai_assistant.model_service.create_bedrock_session_from_credential_data",
            return_value=fake_aws_session):
        response = connexion_client.get(
            f'/api/{organization_id}/platform/users/_current/bedrock-cache/models',
            content_type='application/json',
            headers=request_parameters.request_headers())

    assert response.status_code == 200, "list models still succeeds when EOL lookup fails"
    data = response.json["data"]
    # EOLチェックをスキップするため、EOLモデルを参照しているプロファイルも残る
    # (ACTIVE・Anthropicの条件は依然満たす必要がある。profile-claude-current, profile-claude-eolの2件)
    ids = [m["id"] for m in data["models"]]
    assert set(ids) == {"profile-claude-current", "profile-claude-eol"}, (
        "EOL filtering is skipped when list_foundation_models fails, "
        "but status/Anthropic-only filtering still applies"
    )


def test_list_models_read_timeout(connexion_client):
    """list_inference_profiles呼び出しがタイムアウトした場合は500

    注: model_service.get_bedrock_models内ではReadTimeoutError用に専用のmessage_id(500-46001)で
    common.InternalErrorExceptionを発生させているが、これもExceptionのサブクラスであるため、
    controller(list_models)側のexcept Exceptionで再度捕捉され、500-25011で上書きされる。
    そのため最終的なHTTPレスポンスのresultは500-25011になる(model_service.py自体の
    ReadTimeoutError分岐のカバレッジを確認する目的のテスト)。
    """
    organization = _setup_org(connexion_client)
    organization_id = organization["organization_id"]

    response = _register_credential(
        connexion_client, organization_id, "bedrock-cache",
        sample_data_bedrock_cache_credential())
    assert response.status_code == 200, "register bedrock-cache credential"

    fake_bedrock_client = mock.Mock()
    fake_bedrock_client.list_foundation_models.return_value = _foundation_model_summaries()
    fake_bedrock_client.list_inference_profiles.side_effect = ReadTimeoutError(
        endpoint_url="https://bedrock.ap-northeast-1.amazonaws.com")

    fake_aws_session = mock.Mock()
    fake_aws_session._session.client.return_value = fake_bedrock_client

    with test_common.requsts_mocker_default(), mock.patch(
            "services.ai_assistant.model_service.create_bedrock_session_from_credential_data",
            return_value=fake_aws_session):
        response = connexion_client.get(
            f'/api/{organization_id}/platform/users/_current/bedrock-cache/models',
            content_type='application/json',
            headers=request_parameters.request_headers())

    assert response.status_code == 500, "list models read timeout"
    assert response.json["result"] == "500-25011", "list models read timeout"


# ==================== GET/PUT .../{ai_service_id}/ai-preference ====================

def test_ai_preference_get_before_save(connexion_client):
    """一度も保存していない場合は404にせず、空の設定を返す"""
    organization = _setup_org(connexion_client)

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/users/_current/bedrock-cache/ai-preference',
            content_type='application/json',
            headers=request_parameters.request_headers())

    assert response.status_code == 200, "get ai-preference before save"
    data = response.json["data"]
    assert data["ai_service_id"] == "bedrock-cache"
    assert data["model_id"] is None
    assert data["model_name"] is None
    assert data["pickup_model_ids"] == []


def test_ai_preference_put_and_get(connexion_client):
    """AI利用設定を保存し、取得できる(全置換)"""
    organization = _setup_org(connexion_client)
    organization_id = organization["organization_id"]

    put_json = {
        "model_id": "anthropic.claude-3-5-sonnet-20240620-v1:0",
        "model_name": "Claude 3.5 Sonnet",
        "pickup_model_ids": [
            {"id": "anthropic.claude-3-5-sonnet-20240620-v1:0", "name": "Claude 3.5 Sonnet"},
            {"id": "global.anthropic.claude-sonnet-5", "name": "Claude Sonnet 5"},
        ],
    }

    with test_common.requsts_mocker_default():
        response = connexion_client.put(
            f'/api/{organization_id}/platform/users/_current/bedrock-cache/ai-preference',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=put_json)

    assert response.status_code == 200, "put ai-preference"
    data = response.json["data"]
    assert data["model_id"] == put_json["model_id"]
    assert data["model_name"] == put_json["model_name"]
    assert data["pickup_model_ids"] == put_json["pickup_model_ids"]

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization_id}/platform/users/_current/bedrock-cache/ai-preference',
            content_type='application/json',
            headers=request_parameters.request_headers())

    assert response.status_code == 200, "get ai-preference after save"
    assert response.json["data"]["model_id"] == put_json["model_id"]


def test_ai_preference_put_validation_errors(connexion_client):
    """model_id必須・pickup_model_idsの形式チェックを確認する"""
    organization = _setup_org(connexion_client)
    organization_id = organization["organization_id"]

    # 注: model_idはOpenAPIスキーマ上もrequired・type:stringのため、キー省略やnullでは
    # connexion自体のリクエストバリデーションで拒否され(resultキーを持たない別形式のエラーになり)、
    # コントローラー側の400-25011に到達しない。空文字列はスキーマ上妥当な文字列としてバリデーションを
    # 通過し、Python上はfalsyになるため、コントローラー側のチェックに到達させることができる。
    with test_common.requsts_mocker_default():
        response = connexion_client.put(
            f'/api/{organization_id}/platform/users/_current/bedrock-cache/ai-preference',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json={"model_id": "", "pickup_model_ids": []})
    assert response.status_code == 400, "model_id is required"
    assert response.json["result"] == "400-25011", "model_id is required"

    # 注: pickup_model_idsの各要素もスキーマ上required: [id]のため、id自体を省略するとconnexion側で
    # 拒否される。id: "" (空文字列)ならスキーマは通過し、コントローラー側のitem.get("id")チェックに到達する
    with test_common.requsts_mocker_default():
        response = connexion_client.put(
            f'/api/{organization_id}/platform/users/_current/bedrock-cache/ai-preference',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json={"model_id": "m1", "pickup_model_ids": [{"id": "", "name": "no id here"}]})
    assert response.status_code == 400, "pickup_model_ids element without id"
    assert response.json["result"] == "400-25013", "pickup_model_ids element without id"

    # 注: pickup_model_idsがJSON配列でない場合の400-25012は、OpenAPIスキーマ上も
    # pickup_model_idsがtype: arrayで固定されているため、配列以外の値はconnexion自体の
    # リクエストバリデーションで拒否されてしまい(resultキーを持たない別形式のエラーになる)、
    # コントローラー側のチェックに到達できない(ai_service_idのenumと同種の理由で到達不可)。


def test_ai_preference_driver_disabled(connexion_client):
    """ai_assistant driverが無効な場合は403(GET/PUTいずれも)"""
    organization = test_common.create_organization(connexion_client)
    organization_id = organization["organization_id"]

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization_id}/platform/users/_current/bedrock-cache/ai-preference',
            content_type='application/json',
            headers=request_parameters.request_headers())
    assert response.status_code == 403, "get ai-preference : driver disabled"
    assert response.json["result"] == "403-25001", "get ai-preference : driver disabled"

    with test_common.requsts_mocker_default():
        response = connexion_client.put(
            f'/api/{organization_id}/platform/users/_current/bedrock-cache/ai-preference',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json={"model_id": "m1"})
    assert response.status_code == 403, "put ai-preference : driver disabled"
    assert response.json["result"] == "403-25001", "put ai-preference : driver disabled"


def test_ai_preference_get_exception(connexion_client):
    """AI利用設定の取得で予期しない例外が発生した場合は500"""
    organization = _setup_org(connexion_client)
    organization_id = organization["organization_id"]

    ai_preference_service = mock.Mock()
    ai_preference_service.get_preference.side_effect = Exception("DB Error Test")

    with test_common.requsts_mocker_default(), mock.patch(
            "controllers.users_service_controller.get_ai_preference_service",
            return_value=ai_preference_service):
        response = connexion_client.get(
            f'/api/{organization_id}/platform/users/_current/bedrock-cache/ai-preference',
            content_type='application/json',
            headers=request_parameters.request_headers())

    assert response.status_code == 500, "get ai-preference unexpected exception"
    assert response.json["result"] == "500-25012", "get ai-preference unexpected exception"


def test_ai_preference_put_exception(connexion_client):
    """AI利用設定の保存で予期しない例外が発生した場合は500"""
    organization = _setup_org(connexion_client)
    organization_id = organization["organization_id"]

    ai_preference_service = mock.Mock()
    ai_preference_service.save_preference.side_effect = Exception("DB Error Test")

    with test_common.requsts_mocker_default(), mock.patch(
            "controllers.users_service_controller.get_ai_preference_service",
            return_value=ai_preference_service):
        response = connexion_client.put(
            f'/api/{organization_id}/platform/users/_current/bedrock-cache/ai-preference',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json={"model_id": "m1"})

    assert response.status_code == 500, "put ai-preference unexpected exception"
    assert response.json["result"] == "500-25013", "put ai-preference unexpected exception"


# ==================== GET/PUT .../ai-preference (現在選択中) ====================

def test_current_ai_preference_get_before_save(connexion_client):
    """一度も保存していない場合は404にせず、全項目nullで返す"""
    organization = _setup_org(connexion_client)

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/users/_current/ai-preference',
            content_type='application/json',
            headers=request_parameters.request_headers())

    assert response.status_code == 200, "get current ai-preference before save"
    data = response.json["data"]
    assert data["ai_service_id"] is None
    assert data["model_id"] is None


def test_current_ai_preference_put_and_get(connexion_client):
    """現在選択中のAIサービスを保存し、model_id/model_nameはai-preference側から参照される"""
    organization = _setup_org(connexion_client)
    organization_id = organization["organization_id"]

    # 先にbedrock-cache向けのai-preferenceを保存しておく
    with test_common.requsts_mocker_default():
        response = connexion_client.put(
            f'/api/{organization_id}/platform/users/_current/bedrock-cache/ai-preference',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json={"model_id": "anthropic.claude-3-5-sonnet-20240620-v1:0", "model_name": "Claude 3.5 Sonnet"})
    assert response.status_code == 200, "put ai-preference"

    with test_common.requsts_mocker_default():
        response = connexion_client.put(
            f'/api/{organization_id}/platform/users/_current/ai-preference',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json={"ai_service_id": "bedrock-cache"})

    assert response.status_code == 200, "put current ai-preference"
    data = response.json["data"]
    assert data["ai_service_id"] == "bedrock-cache"
    assert data["model_id"] == "anthropic.claude-3-5-sonnet-20240620-v1:0"
    assert data["model_name"] == "Claude 3.5 Sonnet"

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization_id}/platform/users/_current/ai-preference',
            content_type='application/json',
            headers=request_parameters.request_headers())

    assert response.status_code == 200, "get current ai-preference after save"
    assert response.json["data"]["ai_service_id"] == "bedrock-cache"


def test_current_ai_preference_put_validation_errors(connexion_client):
    """ai_service_id必須・値の妥当性チェックを確認する

    注: このエンドポイントのai_service_idはOpenAPIスキーマ上`enum: [bedrock-cache, bedrock]`で
    制約されており、これはコントローラー内の_get_ai_service_name()が検証対象とするAVAILABLE_AI_SERVICES
    の値と完全に一致する。そのため、キー省略・空文字列・未知の値のいずれも、コントローラー自身の
    400-25014/400-25015に到達する前にconnexion自体のリクエストバリデーションで拒否される
    (resultキーを持たない別形式のエラーになるため、message_idまでは検証できない)。
    ここでは「400で拒否されること」自体を確認する。
    """
    organization = _setup_org(connexion_client)
    organization_id = organization["organization_id"]

    with test_common.requsts_mocker_default():
        response = connexion_client.put(
            f'/api/{organization_id}/platform/users/_current/ai-preference',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json={})
    assert response.status_code == 400, "ai_service_id is required"

    with test_common.requsts_mocker_default():
        response = connexion_client.put(
            f'/api/{organization_id}/platform/users/_current/ai-preference',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json={"ai_service_id": "not-a-real-service"})
    assert response.status_code == 400, "ai_service_id is invalid"


def test_current_ai_preference_driver_disabled(connexion_client):
    """ai_assistant driverが無効な場合は403(GET/PUTいずれも)"""
    organization = test_common.create_organization(connexion_client)
    organization_id = organization["organization_id"]

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization_id}/platform/users/_current/ai-preference',
            content_type='application/json',
            headers=request_parameters.request_headers())
    assert response.status_code == 403, "get current ai-preference : driver disabled"
    assert response.json["result"] == "403-25001", "get current ai-preference : driver disabled"

    with test_common.requsts_mocker_default():
        response = connexion_client.put(
            f'/api/{organization_id}/platform/users/_current/ai-preference',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json={"ai_service_id": "bedrock-cache"})
    assert response.status_code == 403, "put current ai-preference : driver disabled"
    assert response.json["result"] == "403-25001", "put current ai-preference : driver disabled"


def test_current_ai_preference_get_exception(connexion_client):
    """現在選択中のAIサービスの取得で予期しない例外が発生した場合は500"""
    organization = _setup_org(connexion_client)
    organization_id = organization["organization_id"]

    current_ai_service_service = mock.Mock()
    current_ai_service_service.get_current.side_effect = Exception("DB Error Test")

    with test_common.requsts_mocker_default(), mock.patch(
            "controllers.users_service_controller.get_current_ai_service_service",
            return_value=current_ai_service_service):
        response = connexion_client.get(
            f'/api/{organization_id}/platform/users/_current/ai-preference',
            content_type='application/json',
            headers=request_parameters.request_headers())

    assert response.status_code == 500, "get current ai-preference unexpected exception"
    assert response.json["result"] == "500-25014", "get current ai-preference unexpected exception"


def test_current_ai_preference_put_exception(connexion_client):
    """現在選択中のAIサービスの保存で予期しない例外が発生した場合は500"""
    organization = _setup_org(connexion_client)
    organization_id = organization["organization_id"]

    current_ai_service_service = mock.Mock()
    current_ai_service_service.set_current.side_effect = Exception("DB Error Test")

    with test_common.requsts_mocker_default(), mock.patch(
            "controllers.users_service_controller.get_current_ai_service_service",
            return_value=current_ai_service_service):
        response = connexion_client.put(
            f'/api/{organization_id}/platform/users/_current/ai-preference',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json={"ai_service_id": "bedrock-cache"})

    assert response.status_code == 500, "put current ai-preference unexpected exception"
    assert response.json["result"] == "500-25015", "put current ai-preference unexpected exception"
