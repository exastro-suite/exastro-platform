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
ai_assistant_service_controller.py の Conversation API のテスト

対象:
- POST   /api/{organization_id}/platform/workspaces/{workspace_id}/conversations
- GET    /api/{organization_id}/platform/workspaces/{workspace_id}/conversations
- PATCH  /api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}
- DELETE /api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}
- GET    /api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages
- POST   /api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages
- PUT    /api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages
- DELETE /api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages
- POST   /api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/completions
- POST   /api/{organization_id}/platform/workspaces/{workspace_id}/lessons
- GET    /api/{organization_id}/platform/workspaces/{workspace_id}/lessons
- PATCH  /api/{organization_id}/platform/workspaces/{workspace_id}/lessons
- GET    /api/{organization_id}/platform/workspaces/{workspace_id}/lessons/{lesson_id}
- PATCH  /api/{organization_id}/platform/workspaces/{workspace_id}/lessons/{lesson_id}
- DELETE /api/{organization_id}/platform/workspaces/{workspace_id}/lessons/{lesson_id}
"""

import json
import ulid
from contextlib import closing
from unittest import mock

import pytest
from botocore.exceptions import (
    ClientError,
    ConnectTimeoutError,
    EndpointConnectionError,
    ReadTimeoutError,
)

from common_library.common import const, validation
from common_library.common.db import DBconnector
from services.users.ai_credential_service import get_ai_credential_service
from services.users.lesson_service import get_lesson_service
from tests.common import request_parameters, test_common
from tests.test_organization_service_controller import sample_data_organization_update
from tests.test_users_service_controller import (
    sample_data_bedrock_cache_credential,
    sample_data_bedrock_credential,
)


# ==================== テスト共通ヘルパー ====================

def _setup_org_and_workspace(connexion_client):
    """ai_assistant driverが有効なオーガナイゼーションと、テスト用ワークスペースを作成する"""
    organization = test_common.create_organization(connexion_client)

    with test_common.requsts_mocker_default():
        response = connexion_client.put(
            f'/api/platform/organizations/{organization["organization_id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization_update())
        assert response.status_code == 200, "enable ai_assistant driver"

    workspace_id = (f"unittest-{ulid.new().str.lower()}")[0:const.length_workspace_id]
    test_common.create_workspace(
        connexion_client, organization["organization_id"], workspace_id, organization["user_id"])

    return organization["organization_id"], workspace_id, organization["user_id"]


def _register_bedrock_cache_credential(connexion_client, organization_id, user_id):
    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization_id}/platform/users/_current/bedrock-cache/credentials',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json=sample_data_bedrock_cache_credential())
    assert response.status_code == 200, "register bedrock-cache credential"


def sample_data_create_conversation(update={}):
    """会話作成用のリクエストパラメータ"""
    return dict({
        "title": "Bedrockとのチャット",
        "model_id": "anthropic.claude-3-5-sonnet-20240620-v1:0",
        "ai_service_id": "bedrock-cache",
    }, **update)


def _create_conversation_response(connexion_client, organization_id, workspace_id, user_id, json_parameter=None):
    with test_common.requsts_mocker_default():
        return connexion_client.post(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json=json_parameter if json_parameter is not None else sample_data_create_conversation())


def _create_conversation(connexion_client, organization_id, workspace_id, user_id, json_parameter=None):
    response = _create_conversation_response(connexion_client, organization_id, workspace_id, user_id, json_parameter)
    assert response.status_code == 200, "create conversation"
    return response.json["data"]["conversation_id"]


def _get_conversation_token_count(connexion_client, organization_id, workspace_id, user_id, conversation_id):
    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations',
            query_string={"prompt_profile": "LLMEditor"},
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))
    assert response.status_code == 200, "list conversations"
    matched = [c for c in response.json["data"]["conversations"] if c["conversation_id"] == conversation_id]
    assert len(matched) == 1, "conversation exists in list"
    return matched[0]["current_token_count"]


def _fake_invoke_model_response(input_tokens, output_tokens, text="Hello!", content=None,
                                stop_reason="end_turn", usage_extra=None):
    """Bedrock invoke_modelの戻り値を模した辞書を作成する

    Args:
        content: 応答contentブロック一覧(省略時はtextの1ブロック)
        usage_extra: usageへ追加するフィールド(cache_read_input_tokens等)
    """
    body = json.dumps({
        "content": content if content is not None else [{"type": "text", "text": text}],
        "stop_reason": stop_reason,
        "usage": {"input_tokens": input_tokens, "output_tokens": output_tokens, **(usage_extra or {})},
    }).encode()
    return {
        "ResponseMetadata": {"HTTPStatusCode": 200},
        "body": mock.Mock(read=mock.Mock(return_value=body)),
    }


def _mocked_bedrock_session(*invoke_model_responses):
    """create_bedrock_session_from_credential_dataの戻り値を模したモックを作成する

    Args:
        *invoke_model_responses: invoke_model呼び出しごとに順番に返す戻り値
    """
    fake_bedrock_client = mock.Mock()
    fake_bedrock_client.invoke_model.side_effect = list(invoke_model_responses)

    fake_aws_session = mock.Mock()
    fake_aws_session.get_bedrock_client.return_value = fake_bedrock_client
    # トークン更新なし(bedrock-cacheのcredential_data更新処理を素通りさせる)
    fake_aws_session.get_current_token.return_value = None
    return fake_aws_session


# ==================== POST/GET .../conversations ====================

def test_create_conversation_success(connexion_client):
    """会話を作成できる(tools指定・prompt_profile省略時のデフォルトも確認)"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)
    _register_bedrock_cache_credential(connexion_client, organization_id, user_id)

    tools = [{
        "name": "get_weather",
        "description": "指定した地域の現在の天気を取得する",
        "input_schema": {"type": "object", "properties": {"location": {"type": "string"}}, "required": ["location"]},
    }]

    response = _create_conversation_response(
        connexion_client, organization_id, workspace_id, user_id,
        sample_data_create_conversation({"tools": tools}))

    assert response.status_code == 200, "create conversation"
    data = response.json["data"]
    assert data["conversation_id"], "conversation_id is issued"
    assert data["prompt_profile"] == "LLMEditor", "prompt_profile defaults to LLMEditor"
    assert data["ai_service_id"] == "bedrock-cache"
    assert data["model_id"] == "anthropic.claude-3-5-sonnet-20240620-v1:0"
    assert data["tools"] == tools
    assert data["title"] == "Bedrockとのチャット"
    assert data["status"] == "active"


def test_create_conversation_validation_errors(connexion_client):
    """title・model_idの必須チェック・文字数チェックを確認する

    注: ai_service_idはOpenAPIスキーマ上`enum: [bedrock-cache, bedrock]`で制約されているため、
    空文字列・未知の値のいずれもconnexion自体のリクエストバリデーションで拒否され
    (resultキーを持たない別形式のエラーになる)、コントローラー側のvalidate_conversation_ai_service_id
    には到達できない。同様にtoolsも`type: array`固定のため、配列以外を渡す400-00002には到達できない。
    """
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    # title未指定(空文字列。キー省略やnullはスキーマのtype:stringにより先に拒否されるため空文字列を使う)
    response = _create_conversation_response(
        connexion_client, organization_id, workspace_id, user_id,
        sample_data_create_conversation({"title": ""}))
    assert response.status_code == 400, "title is required"
    assert response.json["result"] == "400-00011", "title is required"

    # titleの文字数超過
    response = _create_conversation_response(
        connexion_client, organization_id, workspace_id, user_id,
        sample_data_create_conversation({"title": "x" * (const.length_conversation_title + 1)}))
    assert response.status_code == 400, "title too long"
    assert response.json["result"] == "400-00012", "title too long"

    # model_id未指定
    response = _create_conversation_response(
        connexion_client, organization_id, workspace_id, user_id,
        sample_data_create_conversation({"model_id": ""}))
    assert response.status_code == 400, "model_id is required"
    assert response.json["result"] == "400-00011", "model_id is required"

    # model_idの文字数超過
    response = _create_conversation_response(
        connexion_client, organization_id, workspace_id, user_id,
        sample_data_create_conversation({"model_id": "x" * (const.length_conversation_model_id + 1)}))
    assert response.status_code == 400, "model_id too long"
    assert response.json["result"] == "400-00012", "model_id too long"


def test_create_conversation_credential_not_found(connexion_client):
    """指定したai_service_idのactiveなCredentialが未登録の場合は404"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)
    # bedrock(手動Credential)は未登録の状態でai_service_id=bedrockを指定する

    response = _create_conversation_response(
        connexion_client, organization_id, workspace_id, user_id,
        sample_data_create_conversation({"ai_service_id": "bedrock"}))

    assert response.status_code == 404, "credential not found for ai_service_id"
    assert response.json["result"] == "404-44001", "credential not found for ai_service_id"


def test_create_conversation_exception(connexion_client):
    """会話作成で予期しない例外が発生した場合は500"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)
    _register_bedrock_cache_credential(connexion_client, organization_id, user_id)

    conversation_service = mock.Mock()
    conversation_service.create_conversation.side_effect = Exception("DB Error Test")

    with mock.patch(
            "controllers.ai_assistant_service_controller.get_conversation_service",
            return_value=conversation_service):
        response = _create_conversation_response(connexion_client, organization_id, workspace_id, user_id)

    assert response.status_code == 500, "create conversation unexpected exception"
    assert response.json["result"] == "500-44008", "create conversation unexpected exception"


def test_create_conversation_driver_disabled(connexion_client):
    """ai_assistant driverが無効な場合は403"""
    organization = test_common.create_organization(connexion_client)
    organization_id = organization["organization_id"]
    workspace_id = (f"unittest-{ulid.new().str.lower()}")[0:const.length_workspace_id]
    test_common.create_workspace(connexion_client, organization_id, workspace_id, organization["user_id"])

    response = _create_conversation_response(connexion_client, organization_id, workspace_id, organization["user_id"])

    assert response.status_code == 403, "ai_assistant driver disabled"
    assert response.json["result"] == "403-44001", "ai_assistant driver disabled"


def test_list_conversations_filters(connexion_client):
    """status絞り込み・total_countがlimit/offset適用前の件数であることを確認する"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)
    _register_bedrock_cache_credential(connexion_client, organization_id, user_id)

    active_id = _create_conversation(connexion_client, organization_id, workspace_id, user_id)
    closed_id = _create_conversation(connexion_client, organization_id, workspace_id, user_id)

    with test_common.requsts_mocker_default():
        response = connexion_client.patch(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{closed_id}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"status": "closed"})
    assert response.status_code == 200, "close second conversation"

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations',
            query_string={"prompt_profile": "LLMEditor", "status": "active"},
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))

    assert response.status_code == 200, "list conversations filtered by status"
    data = response.json["data"]
    ids = [c["conversation_id"] for c in data["conversations"]]
    assert active_id in ids
    assert closed_id not in ids
    assert data["total_count"] == 1, "total_count reflects the status filter"


def test_list_conversations_exception(connexion_client):
    """会話一覧取得で予期しない例外が発生した場合は500"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    conversation_service = mock.Mock()
    conversation_service.list_conversations.side_effect = Exception("DB Error Test")

    with test_common.requsts_mocker_default(), mock.patch(
            "controllers.ai_assistant_service_controller.get_conversation_service",
            return_value=conversation_service):
        response = connexion_client.get(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations',
            query_string={"prompt_profile": "LLMEditor"},
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))

    assert response.status_code == 500, "list conversations unexpected exception"
    assert response.json["result"] == "500-44009", "list conversations unexpected exception"


def test_list_conversations_driver_disabled(connexion_client):
    """ai_assistant driverが無効な場合は403"""
    organization = test_common.create_organization(connexion_client)
    organization_id = organization["organization_id"]
    workspace_id = (f"unittest-{ulid.new().str.lower()}")[0:const.length_workspace_id]
    test_common.create_workspace(connexion_client, organization_id, workspace_id, organization["user_id"])

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations',
            query_string={"prompt_profile": "LLMEditor"},
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=organization["user_id"]))

    assert response.status_code == 403, "ai_assistant driver disabled"
    assert response.json["result"] == "403-44001", "ai_assistant driver disabled"


# ==================== PATCH/DELETE .../conversations/{conversation_id} ====================

def test_update_conversation_success(connexion_client):
    """title・statusをそれぞれ個別に部分更新できる(PATCH。指定しなかった項目は変更されない)"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)
    _register_bedrock_cache_credential(connexion_client, organization_id, user_id)
    conversation_id = _create_conversation(connexion_client, organization_id, workspace_id, user_id)

    with test_common.requsts_mocker_default():
        response = connexion_client.patch(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"title": "更新後のタイトル"})
    assert response.status_code == 200, "update title only"
    data = response.json["data"]
    assert data["title"] == "更新後のタイトル"
    assert data["status"] == "active", "status is unchanged"

    with test_common.requsts_mocker_default():
        response = connexion_client.patch(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"status": "closed"})
    assert response.status_code == 200, "update status only"
    data = response.json["data"]
    assert data["title"] == "更新後のタイトル", "title is unchanged"
    assert data["status"] == "closed"


def test_update_conversation_validation_errors(connexion_client):
    """titleの必須チェック・文字数チェックを確認する

    注: statusはOpenAPIスキーマ上`enum: [active, closed, archived]`で制約されており、これは
    validate_conversation_statusが検証するconst.CONVERSATION_STATUSESと完全に一致するため、
    未知の値はconnexion自体のリクエストバリデーションで拒否されコントローラー側のチェックには到達できない。
    """
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)
    _register_bedrock_cache_credential(connexion_client, organization_id, user_id)
    conversation_id = _create_conversation(connexion_client, organization_id, workspace_id, user_id)

    with test_common.requsts_mocker_default():
        response = connexion_client.patch(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"title": ""})
    assert response.status_code == 400, "title empty"
    assert response.json["result"] == "400-00011", "title empty"

    with test_common.requsts_mocker_default():
        response = connexion_client.patch(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"title": "x" * (const.length_conversation_title + 1)})
    assert response.status_code == 400, "title too long"
    assert response.json["result"] == "400-00012", "title too long"


def test_update_conversation_not_found(connexion_client):
    """存在しない会話を更新しようとすると404"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    with test_common.requsts_mocker_default():
        response = connexion_client.patch(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{ulid.new().str}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"title": "更新後のタイトル"})

    assert response.status_code == 404, "update non-existent conversation"
    assert response.json["result"] == "404-44007", "update non-existent conversation"


def test_update_conversation_exception(connexion_client):
    """会話更新で予期しない例外が発生した場合は500"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    conversation_service = mock.Mock()
    conversation_service.update_conversation.side_effect = Exception("DB Error Test")

    with test_common.requsts_mocker_default(), mock.patch(
            "controllers.ai_assistant_service_controller.get_conversation_service",
            return_value=conversation_service):
        response = connexion_client.patch(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{ulid.new().str}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"title": "更新後のタイトル"})

    assert response.status_code == 500, "update conversation unexpected exception"
    assert response.json["result"] == "500-44015", "update conversation unexpected exception"


def test_update_conversation_driver_disabled(connexion_client):
    """ai_assistant driverが無効な場合は403"""
    organization = test_common.create_organization(connexion_client)
    organization_id = organization["organization_id"]
    workspace_id = (f"unittest-{ulid.new().str.lower()}")[0:const.length_workspace_id]
    test_common.create_workspace(connexion_client, organization_id, workspace_id, organization["user_id"])

    with test_common.requsts_mocker_default():
        response = connexion_client.patch(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{ulid.new().str}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=organization["user_id"]),
            json={"title": "更新後のタイトル"})

    assert response.status_code == 403, "ai_assistant driver disabled"
    assert response.json["result"] == "403-44001", "ai_assistant driver disabled"


def test_delete_conversation_success(connexion_client):
    """会話を削除できる。紐づくメッセージ履歴も合わせて削除される(GET messagesが404になる)"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)
    _register_bedrock_cache_credential(connexion_client, organization_id, user_id)
    conversation_id = _create_conversation(connexion_client, organization_id, workspace_id, user_id)

    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"contents": [{"role": "user", "content": [{"type": "text", "text": "hi"}]}]})
    assert response.status_code == 200, "create message before delete"

    with test_common.requsts_mocker_default():
        response = connexion_client.delete(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))

    assert response.status_code == 200, "delete conversation"
    assert response.json["data"]["conversation_id"] == conversation_id

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))
    assert response.status_code == 404, "messages are gone along with the conversation"


def test_delete_conversation_not_found(connexion_client):
    """存在しない会話(または削除済みの会話)を削除しようとすると404"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    with test_common.requsts_mocker_default():
        response = connexion_client.delete(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{ulid.new().str}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))

    assert response.status_code == 404, "delete non-existent conversation"
    assert response.json["result"] == "404-44008", "delete non-existent conversation"


def test_delete_conversation_exception(connexion_client):
    """会話削除で予期しない例外が発生した場合は500"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    conversation_service = mock.Mock()
    conversation_service.delete_conversation.side_effect = Exception("DB Error Test")

    with test_common.requsts_mocker_default(), mock.patch(
            "controllers.ai_assistant_service_controller.get_conversation_service",
            return_value=conversation_service):
        response = connexion_client.delete(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{ulid.new().str}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))

    assert response.status_code == 500, "delete conversation unexpected exception"
    assert response.json["result"] == "500-44016", "delete conversation unexpected exception"


def test_delete_conversation_driver_disabled(connexion_client):
    """ai_assistant driverが無効な場合は403"""
    organization = test_common.create_organization(connexion_client)
    organization_id = organization["organization_id"]
    workspace_id = (f"unittest-{ulid.new().str.lower()}")[0:const.length_workspace_id]
    test_common.create_workspace(connexion_client, organization_id, workspace_id, organization["user_id"])

    with test_common.requsts_mocker_default():
        response = connexion_client.delete(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{ulid.new().str}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=organization["user_id"]))

    assert response.status_code == 403, "ai_assistant driver disabled"
    assert response.json["result"] == "403-44001", "ai_assistant driver disabled"


# ==================== GET/POST/PUT/DELETE .../conversations/{conversation_id}/messages ====================

def test_create_message_success(connexion_client):
    """会話メッセージ(スナップショット)を作成できる"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)
    _register_bedrock_cache_credential(connexion_client, organization_id, user_id)
    conversation_id = _create_conversation(connexion_client, organization_id, workspace_id, user_id)

    contents = [
        {"role": "user", "content": [{"type": "text", "text": "こんにちは"}], "_timestamp": "2026-01-01T00:00:00.000Z"},
        {"role": "assistant", "content": [{"type": "text", "text": "こんにちは！"}], "_timestamp": "2026-01-01T00:00:01.000Z"},
    ]

    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"contents": contents})

    assert response.status_code == 200, "create message"
    data = response.json["data"]
    assert data["conversation_id"] == conversation_id
    assert data["message_seq"] == 1
    assert data["contents"] == contents


def test_create_message_exception(connexion_client):
    """メッセージ作成で予期しない例外が発生した場合は500"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    message_service = mock.Mock()
    message_service.create_message.side_effect = Exception("DB Error Test")

    with test_common.requsts_mocker_default(), mock.patch(
            "controllers.ai_assistant_service_controller.get_message_service",
            return_value=message_service):
        response = connexion_client.post(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{ulid.new().str}/messages',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"contents": [{"role": "user", "content": [{"type": "text", "text": "hi"}]}]})

    assert response.status_code == 500, "create message unexpected exception"
    assert response.json["result"] == "500-44011", "create message unexpected exception"


def test_create_message_driver_disabled(connexion_client):
    """ai_assistant driverが無効な場合は403"""
    organization = test_common.create_organization(connexion_client)
    organization_id = organization["organization_id"]
    workspace_id = (f"unittest-{ulid.new().str.lower()}")[0:const.length_workspace_id]
    test_common.create_workspace(connexion_client, organization_id, workspace_id, organization["user_id"])

    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{ulid.new().str}/messages',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=organization["user_id"]),
            json={"contents": [{"role": "user", "content": [{"type": "text", "text": "hi"}]}]})

    assert response.status_code == 403, "ai_assistant driver disabled"
    assert response.json["result"] == "403-44001", "ai_assistant driver disabled"


def test_list_messages_success(connexion_client):
    """会話メッセージ一覧を取得できる"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)
    _register_bedrock_cache_credential(connexion_client, organization_id, user_id)
    conversation_id = _create_conversation(connexion_client, organization_id, workspace_id, user_id)

    contents = [{"role": "user", "content": [{"type": "text", "text": "hi"}]}]
    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"contents": contents})
    assert response.status_code == 200, "create message"

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))

    assert response.status_code == 200, "list messages"
    data = response.json["data"]
    assert data["conversation_id"] == conversation_id
    assert data["count"] == 1
    assert data["messages"][0]["contents"] == contents


def test_list_messages_not_found(connexion_client):
    """存在しない会話のメッセージ一覧を取得しようとすると404"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{ulid.new().str}/messages',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))

    assert response.status_code == 404, "list messages for non-existent conversation"
    assert response.json["result"] == "404-44004", "list messages for non-existent conversation"


def test_list_messages_exception(connexion_client):
    """メッセージ一覧取得で予期しない例外が発生した場合は500"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    message_service = mock.Mock()
    message_service.list_messages.side_effect = Exception("DB Error Test")

    with test_common.requsts_mocker_default(), mock.patch(
            "controllers.ai_assistant_service_controller.get_message_service",
            return_value=message_service):
        response = connexion_client.get(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{ulid.new().str}/messages',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))

    assert response.status_code == 500, "list messages unexpected exception"
    assert response.json["result"] == "500-44012", "list messages unexpected exception"


def test_list_messages_driver_disabled(connexion_client):
    """ai_assistant driverが無効な場合は403"""
    organization = test_common.create_organization(connexion_client)
    organization_id = organization["organization_id"]
    workspace_id = (f"unittest-{ulid.new().str.lower()}")[0:const.length_workspace_id]
    test_common.create_workspace(connexion_client, organization_id, workspace_id, organization["user_id"])

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{ulid.new().str}/messages',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=organization["user_id"]))

    assert response.status_code == 403, "ai_assistant driver disabled"
    assert response.json["result"] == "403-44001", "ai_assistant driver disabled"


def test_replace_messages_success(connexion_client):
    """会話メッセージを全置き換えできる(既存のメッセージは全て入れ替わる)"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)
    _register_bedrock_cache_credential(connexion_client, organization_id, user_id)
    conversation_id = _create_conversation(connexion_client, organization_id, workspace_id, user_id)

    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"contents": [{"role": "user", "content": [{"type": "text", "text": "before replace"}]}]})
    assert response.status_code == 200, "create message before replace"

    new_messages = [
        {"contents": [{"role": "user", "content": [{"type": "text", "text": "turn1"}]}]},
        {"contents": [{"role": "assistant", "content": [{"type": "text", "text": "turn2"}]}]},
    ]
    with test_common.requsts_mocker_default():
        response = connexion_client.put(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"messages": new_messages})

    assert response.status_code == 200, "replace messages"
    data = response.json["data"]
    assert data["count"] == 2
    assert [m["contents"] for m in data["messages"]] == [item["contents"] for item in new_messages]

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))
    assert response.status_code == 200, "list messages after replace"
    assert response.json["data"]["count"] == 2, "old message was replaced, not appended"


def test_replace_messages_not_found(connexion_client):
    """存在しない会話のメッセージを置き換えようとすると404"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    with test_common.requsts_mocker_default():
        response = connexion_client.put(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{ulid.new().str}/messages',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"messages": [{"contents": [{"role": "user", "content": [{"type": "text", "text": "hi"}]}]}]})

    assert response.status_code == 404, "replace messages for non-existent conversation"
    assert response.json["result"] == "404-44005", "replace messages for non-existent conversation"


def test_replace_messages_exception(connexion_client):
    """メッセージ置き換えで予期しない例外が発生した場合は500"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    message_service = mock.Mock()
    message_service.replace_messages.side_effect = Exception("DB Error Test")

    with test_common.requsts_mocker_default(), mock.patch(
            "controllers.ai_assistant_service_controller.get_message_service",
            return_value=message_service):
        response = connexion_client.put(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{ulid.new().str}/messages',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"messages": [{"contents": [{"role": "user", "content": [{"type": "text", "text": "hi"}]}]}]})

    assert response.status_code == 500, "replace messages unexpected exception"
    assert response.json["result"] == "500-44013", "replace messages unexpected exception"


def test_replace_messages_driver_disabled(connexion_client):
    """ai_assistant driverが無効な場合は403"""
    organization = test_common.create_organization(connexion_client)
    organization_id = organization["organization_id"]
    workspace_id = (f"unittest-{ulid.new().str.lower()}")[0:const.length_workspace_id]
    test_common.create_workspace(connexion_client, organization_id, workspace_id, organization["user_id"])

    with test_common.requsts_mocker_default():
        response = connexion_client.put(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{ulid.new().str}/messages',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=organization["user_id"]),
            json={"messages": [{"contents": [{"role": "user", "content": [{"type": "text", "text": "hi"}]}]}]})

    assert response.status_code == 403, "ai_assistant driver disabled"
    assert response.json["result"] == "403-44001", "ai_assistant driver disabled"


def test_delete_messages_success(connexion_client):
    """会話メッセージを全削除できる(削除件数を返す)"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)
    _register_bedrock_cache_credential(connexion_client, organization_id, user_id)
    conversation_id = _create_conversation(connexion_client, organization_id, workspace_id, user_id)

    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"contents": [{"role": "user", "content": [{"type": "text", "text": "hi"}]}]})
    assert response.status_code == 200, "create message before delete"

    with test_common.requsts_mocker_default():
        response = connexion_client.delete(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))

    assert response.status_code == 200, "delete messages"
    data = response.json["data"]
    assert data["conversation_id"] == conversation_id
    assert data["deleted_count"] == 1

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))
    assert response.json["data"]["count"] == 0, "messages are gone but conversation itself remains"


def test_delete_messages_not_found(connexion_client):
    """存在しない会話のメッセージを削除しようとすると404"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    with test_common.requsts_mocker_default():
        response = connexion_client.delete(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{ulid.new().str}/messages',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))

    assert response.status_code == 404, "delete messages for non-existent conversation"
    assert response.json["result"] == "404-44006", "delete messages for non-existent conversation"


def test_delete_messages_exception(connexion_client):
    """メッセージ削除で予期しない例外が発生した場合は500"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    message_service = mock.Mock()
    message_service.delete_messages.side_effect = Exception("DB Error Test")

    with test_common.requsts_mocker_default(), mock.patch(
            "controllers.ai_assistant_service_controller.get_message_service",
            return_value=message_service):
        response = connexion_client.delete(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{ulid.new().str}/messages',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))

    assert response.status_code == 500, "delete messages unexpected exception"
    assert response.json["result"] == "500-44014", "delete messages unexpected exception"


def test_delete_messages_driver_disabled(connexion_client):
    """ai_assistant driverが無効な場合は403"""
    organization = test_common.create_organization(connexion_client)
    organization_id = organization["organization_id"]
    workspace_id = (f"unittest-{ulid.new().str.lower()}")[0:const.length_workspace_id]
    test_common.create_workspace(connexion_client, organization_id, workspace_id, organization["user_id"])

    with test_common.requsts_mocker_default():
        response = connexion_client.delete(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{ulid.new().str}/messages',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=organization["user_id"]))

    assert response.status_code == 403, "ai_assistant driver disabled"
    assert response.json["result"] == "403-44001", "ai_assistant driver disabled"


# ==================== POST .../completions : トークン加算 ====================

def test_completions_token_count_accumulates_with_message(connexion_client):
    """messageを指定した問い合わせで、CURRENT_TOKEN_COUNTがinput+output分だけ加算される"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)
    _register_bedrock_cache_credential(connexion_client, organization_id, user_id)
    conversation_id = _create_conversation(connexion_client, organization_id, workspace_id, user_id)

    fake_session = _mocked_bedrock_session(_fake_invoke_model_response(10, 5))

    with test_common.requsts_mocker_default(), mock.patch(
            "services.ai_assistant.conversation_service.create_bedrock_session_from_credential_data",
            return_value=fake_session):
        response = connexion_client.post(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/completions',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"message": "こんにちは"})

    assert response.status_code == 200, "create completion with message"
    data = response.json["data"]
    assert data["saved"] is True, "message is persisted"
    assert data["usage"]["input_tokens"] == 10
    assert data["usage"]["output_tokens"] == 5

    token_count = _get_conversation_token_count(
        connexion_client, organization_id, workspace_id, user_id, conversation_id)
    assert token_count == 15, "token count reflects input+output of the first call"


def test_completions_token_count_accumulates_without_message(connexion_client):
    """messageを省略した問い合わせ(既存履歴のみでの再問い合わせ)でも、
    T_CHAT_MESSAGEへの保存は行われないが、CURRENT_TOKEN_COUNTは加算される
    (以前は保存時のみ加算されるバグがあり、この呼び出し分のトークンが漏れていた)
    """
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)
    _register_bedrock_cache_credential(connexion_client, organization_id, user_id)
    conversation_id = _create_conversation(connexion_client, organization_id, workspace_id, user_id)

    # 1回目: messageを指定して履歴を作る(input=10, output=5 -> 累積15)
    fake_session = _mocked_bedrock_session(
        _fake_invoke_model_response(10, 5),
        # 2回目: messageを省略した再問い合わせ(input=50, output=8 -> 累積73)
        # tool_result継続等を想定し、1回目より大きいトークン数にしている
        _fake_invoke_model_response(50, 8),
    )

    with test_common.requsts_mocker_default(), mock.patch(
            "services.ai_assistant.conversation_service.create_bedrock_session_from_credential_data",
            return_value=fake_session):
        response = connexion_client.post(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/completions',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"message": "こんにちは"})
        assert response.status_code == 200, "create completion with message"

        # messageを省略して再問い合わせ(結果は保存されない)
        response = connexion_client.post(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/completions',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={})

    assert response.status_code == 200, "create completion without message"
    data = response.json["data"]
    assert data["saved"] is False, "message-omitted call is not persisted"
    assert data["message_id"] is None
    assert data["usage"]["input_tokens"] == 50
    assert data["usage"]["output_tokens"] == 8

    token_count = _get_conversation_token_count(
        connexion_client, organization_id, workspace_id, user_id, conversation_id)
    assert token_count == 15 + 58, (
        "token count accumulates the message-omitted call's usage too, "
        "even though nothing was persisted to T_CHAT_MESSAGE"
    )


# ==================== POST .../completions : その他の分岐 ====================

def test_completions_no_message_no_history(connexion_client):
    """messageを省略し、かつ会話に既存履歴も無い場合は400(問い合わせ不可)"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)
    _register_bedrock_cache_credential(connexion_client, organization_id, user_id)
    conversation_id = _create_conversation(connexion_client, organization_id, workspace_id, user_id)

    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/completions',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={})

    assert response.status_code == 400, "no message and no history"
    assert response.json["result"] == "400-45001", "no message and no history"
    assert response.json["message"] == "message is not specified and the conversation has no existing history"


def test_completions_no_message_no_user_turn_after_regenerate(connexion_client):
    """messageを省略し、既存履歴の唯一のターンがassistantの場合、それを取り除いた結果
    問い合わせ可能なuserターンが残らないため400になる(replace_messagesで人為的にこの状態を作る)
    """
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)
    _register_bedrock_cache_credential(connexion_client, organization_id, user_id)
    conversation_id = _create_conversation(connexion_client, organization_id, workspace_id, user_id)

    with test_common.requsts_mocker_default():
        response = connexion_client.put(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"messages": [
                {"contents": [{"role": "assistant", "content": [{"type": "text", "text": "assistant-only"}]}]},
            ]})
    assert response.status_code == 200, "seed history with an assistant-only turn"

    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/completions',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={})

    assert response.status_code == 400, "no user turn remains after dropping the trailing assistant turn"
    assert response.json["result"] == "400-45002", "no user turn remains after dropping the trailing assistant turn"
    assert response.json["message"] == (
        "message is not specified and there is no user message left to query in the conversation")


def test_completions_conversation_not_found(connexion_client):
    """存在しない会話に対してcompletionsを呼ぶと404"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{ulid.new().str}/completions',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"message": "こんにちは"})

    assert response.status_code == 404, "completions for non-existent conversation"
    assert response.json["result"] == "404-44002", "completions for non-existent conversation"


def test_completions_exception(connexion_client):
    """AI応答生成で予期しない例外が発生した場合は500"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    conversation_service = mock.Mock()
    conversation_service.create_completion.side_effect = Exception("Unexpected Error Test")

    with test_common.requsts_mocker_default(), mock.patch(
            "controllers.ai_assistant_service_controller.get_conversation_service",
            return_value=conversation_service):
        response = connexion_client.post(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{ulid.new().str}/completions',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"message": "こんにちは"})

    assert response.status_code == 500, "create completion unexpected exception"
    assert response.json["result"] == "500-44010", "create completion unexpected exception"


def test_completions_driver_disabled(connexion_client):
    """ai_assistant driverが無効な場合は403"""
    organization = test_common.create_organization(connexion_client)
    organization_id = organization["organization_id"]
    workspace_id = (f"unittest-{ulid.new().str.lower()}")[0:const.length_workspace_id]
    test_common.create_workspace(connexion_client, organization_id, workspace_id, organization["user_id"])

    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{ulid.new().str}/completions',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=organization["user_id"]),
            json={"message": "こんにちは"})

    assert response.status_code == 403, "ai_assistant driver disabled"
    assert response.json["result"] == "403-44001", "ai_assistant driver disabled"


# ==================== POST/GET/PATCH .../lessons ====================

def sample_data_create_lesson(update={}):
    """学習事項作成用のリクエストパラメータ"""
    return dict({
        "lesson": "本番環境への反映前に、必ずdry-run実行で差分を確認すること",
        "category": "Ansible",
        "prompt_profile": "LLMEditor",
        "priority": 8,
        "enabled": True,
        "conversation_id": "conv-001",
    }, **update)


def _create_lesson_response(connexion_client, organization_id, workspace_id, user_id, json_parameter=None):
    with test_common.requsts_mocker_default():
        return connexion_client.post(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json=json_parameter if json_parameter is not None else sample_data_create_lesson())


def _create_lesson(connexion_client, organization_id, workspace_id, user_id, json_parameter=None):
    response = _create_lesson_response(connexion_client, organization_id, workspace_id, user_id, json_parameter)
    assert response.status_code == 200, "create lesson"
    return response.json["data"]["lesson_id"]


def test_create_lesson_success(connexion_client):
    """学習事項を作成できる(category/priority/enabled/conversation_idを指定した場合)"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    response = _create_lesson_response(connexion_client, organization_id, workspace_id, user_id)

    assert response.status_code == 200, "create lesson"
    data = response.json["data"]
    assert data["lesson_id"], "lesson_id is issued"
    assert data["lesson"] == "本番環境への反映前に、必ずdry-run実行で差分を確認すること"
    assert data["category"] == "Ansible"
    assert data["prompt_profile"] == "LLMEditor"
    assert data["priority"] == 8
    assert data["enabled"] is True
    assert data["conversation_id"] == "conv-001"


def test_create_lesson_defaults(connexion_client):
    """category/priority/enabled/conversation_idを省略した場合、priority=5・enabled=trueになる
    (prompt_profileは必須のため省略できない)
    """
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    response = _create_lesson_response(
        connexion_client, organization_id, workspace_id, user_id,
        {"lesson": "テストのみの環境変更は必ずレビューを通すこと", "prompt_profile": "LLMEditor"})

    assert response.status_code == 200, "create lesson with defaults"
    data = response.json["data"]
    assert data["priority"] == 5, "priority defaults to 5"
    assert data["enabled"] is True, "enabled defaults to true"
    assert data["category"] is None
    assert data["conversation_id"] is None


def test_create_lesson_validation_errors(connexion_client):
    """lessonの必須チェック・文字数チェック、categoryの文字数チェックを確認する

    注: priorityはOpenAPIスキーマ上`minimum: 1, maximum: 10`で制約されており、これは
    validate_lesson_priorityが検証するconst.LESSON_PRIORITY_MIN/MAXと完全に一致するため、
    範囲外の値はconnexion自体のリクエストバリデーションで拒否されコントローラー側のチェックには到達できない。
    prompt_profileも同様の理由(必須・enum: [LLMEditor, AgenticAI]をOpenAPIスキーマ側で完全に制約)で、
    validate_lesson_prompt_profileの必須チェック・値チェックはいずれもHTTP経由では到達不可能
    (直接呼び出しでのユニットテストはtest_validate_lesson_prompt_profile_directを参照)。
    """
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    response = _create_lesson_response(
        connexion_client, organization_id, workspace_id, user_id,
        sample_data_create_lesson({"lesson": ""}))
    assert response.status_code == 400, "lesson is required"
    assert response.json["result"] == "400-00011", "lesson is required"

    response = _create_lesson_response(
        connexion_client, organization_id, workspace_id, user_id,
        sample_data_create_lesson({"lesson": "x" * (const.length_lesson_content + 1)}))
    assert response.status_code == 400, "lesson too long"
    assert response.json["result"] == "400-00012", "lesson too long"

    response = _create_lesson_response(
        connexion_client, organization_id, workspace_id, user_id,
        sample_data_create_lesson({"category": "x" * (const.length_lesson_category + 1)}))
    assert response.status_code == 400, "category too long"
    assert response.json["result"] == "400-00012", "category too long"


def test_validate_lesson_prompt_profile_direct(connexion_client):
    """validate_lesson_prompt_profileを直接呼び出して検証する

    POST/GET /lessonsのprompt_profileはOpenAPIスキーマ側で必須・enum: [LLMEditor, AgenticAI]と
    完全に制約されているため、HTTP経由ではこの関数の必須チェック・値チェックのいずれにも到達できない
    (connexion自体のリクエストバリデーションで先に拒否される)。そのため関数を直接呼び出して確認する。
    """
    assert validation.validate_lesson_prompt_profile(None).ok is False
    assert validation.validate_lesson_prompt_profile("").ok is False
    assert validation.validate_lesson_prompt_profile("NotAValidProfile").ok is False
    assert validation.validate_lesson_prompt_profile("Lessons").ok is False, "Lessons is not an allowed lesson prompt_profile"
    assert validation.validate_lesson_prompt_profile("GenerateTitle").ok is False
    assert validation.validate_lesson_prompt_profile("LLMEditor").ok is True
    assert validation.validate_lesson_prompt_profile("AgenticAI").ok is True


def test_create_lesson_limit_exceeded(connexion_client):
    """このユーザー・このWorkspaceの登録件数が上限に達している場合は400
    (AI_ASSISTANT_LESSONS_MAX_COUNTを一時的に小さい値に差し替えてテストを高速化する)
    """
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    with mock.patch("services.users.lesson_service.AI_ASSISTANT_LESSONS_MAX_COUNT", 2):
        _create_lesson(connexion_client, organization_id, workspace_id, user_id)
        _create_lesson(connexion_client, organization_id, workspace_id, user_id)

        response = _create_lesson_response(connexion_client, organization_id, workspace_id, user_id)

    assert response.status_code == 400, "lesson count limit exceeded"
    assert response.json["result"] == "400-00022", "lesson count limit exceeded"


def test_create_lesson_exception(connexion_client):
    """学習事項作成で予期しない例外が発生した場合は500"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    lesson_service = mock.Mock()
    lesson_service.create_lesson.side_effect = Exception("DB Error Test")

    with mock.patch(
            "controllers.ai_assistant_service_controller.get_lesson_service",
            return_value=lesson_service):
        response = _create_lesson_response(connexion_client, organization_id, workspace_id, user_id)

    assert response.status_code == 500, "create lesson unexpected exception"
    assert response.json["result"] == "500-44017", "create lesson unexpected exception"


def test_create_lesson_driver_disabled(connexion_client):
    """ai_assistant driverが無効な場合は403"""
    organization = test_common.create_organization(connexion_client)
    organization_id = organization["organization_id"]
    workspace_id = (f"unittest-{ulid.new().str.lower()}")[0:const.length_workspace_id]
    test_common.create_workspace(connexion_client, organization_id, workspace_id, organization["user_id"])

    response = _create_lesson_response(connexion_client, organization_id, workspace_id, organization["user_id"])

    assert response.status_code == 403, "ai_assistant driver disabled"
    assert response.json["result"] == "403-44001", "ai_assistant driver disabled"


def test_list_lessons_filters(connexion_client):
    """enabled・categoryでの絞り込み、total_countがlimit/offset適用前の件数であることを確認する"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    ansible_id = _create_lesson(
        connexion_client, organization_id, workspace_id, user_id,
        sample_data_create_lesson({"category": "Ansible", "enabled": True}))
    terraform_id = _create_lesson(
        connexion_client, organization_id, workspace_id, user_id,
        sample_data_create_lesson({"category": "Terraform", "enabled": False}))

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons',
            query_string={"prompt_profile": "LLMEditor", "category": "Ansible"},
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))

    assert response.status_code == 200, "list lessons filtered by category"
    data = response.json["data"]
    ids = [lesson["lesson_id"] for lesson in data["lessons"]]
    assert ansible_id in ids
    assert terraform_id not in ids
    assert data["total_count"] == 1, "total_count reflects the category filter"

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons',
            query_string={"prompt_profile": "LLMEditor", "enabled": "false"},
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))

    assert response.status_code == 200, "list lessons filtered by enabled"
    ids = [lesson["lesson_id"] for lesson in response.json["data"]["lessons"]]
    assert terraform_id in ids
    assert ansible_id not in ids


def test_list_lessons_exception(connexion_client):
    """学習事項一覧取得で予期しない例外が発生した場合は500"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    lesson_service = mock.Mock()
    lesson_service.list_lessons.side_effect = Exception("DB Error Test")

    with test_common.requsts_mocker_default(), mock.patch(
            "controllers.ai_assistant_service_controller.get_lesson_service",
            return_value=lesson_service):
        response = connexion_client.get(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons',
            query_string={"prompt_profile": "LLMEditor"},
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))

    assert response.status_code == 500, "list lessons unexpected exception"
    assert response.json["result"] == "500-44018", "list lessons unexpected exception"


def test_list_lessons_driver_disabled(connexion_client):
    """ai_assistant driverが無効な場合は403"""
    organization = test_common.create_organization(connexion_client)
    organization_id = organization["organization_id"]
    workspace_id = (f"unittest-{ulid.new().str.lower()}")[0:const.length_workspace_id]
    test_common.create_workspace(connexion_client, organization_id, workspace_id, organization["user_id"])

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons',
            query_string={"prompt_profile": "LLMEditor"},
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=organization["user_id"]))

    assert response.status_code == 403, "ai_assistant driver disabled"
    assert response.json["result"] == "403-44001", "ai_assistant driver disabled"


def test_list_lessons_missing_prompt_profile_rejected(connexion_client):
    """prompt_profileは必須のため、省略すると400になる(OpenAPIスキーマ側での拒否。理由は
    test_create_lesson_missing_prompt_profile_rejectedと同様)
    """
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))

    assert response.status_code == 400, "prompt_profile is required"


def test_list_lessons_invalid_prompt_profile_rejected(connexion_client):
    """prompt_profileはenum: [LLMEditor, AgenticAI]に制限されているため、それ以外の値を指定すると400になる"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    for invalid_value in ("Lessons", "GenerateTitle", "NotAValidProfile"):
        with test_common.requsts_mocker_default():
            response = connexion_client.get(
                f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons',
                query_string={"prompt_profile": invalid_value},
                content_type='application/json',
                headers=request_parameters.request_headers(user_id=user_id))
        assert response.status_code == 400, f"prompt_profile={invalid_value} is rejected"


def test_bulk_update_lessons_success(connexion_client):
    """複数の学習事項の有効/無効を、要素ごとに異なる値で一括更新できる(混在した状態を1回で反映)"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    # MySQL(pymysql)のUPDATEのrowcountは、WHERE条件に一致した行数ではなく実際に値が変化した行数を
    # 返す(CLIENT_FOUND_ROWSフラグを使っていないため)。そのため、更新後と同じenabled値を初期値に
    # 設定してしまうと「一致したが変化しなかった行」としてカウントされず、updated_countがずれる。
    # 両方とも実際に値が変化するように、更新前の状態を更新後と逆にしておく。
    lesson_id_1 = _create_lesson(
        connexion_client, organization_id, workspace_id, user_id,
        sample_data_create_lesson({"enabled": False}))
    lesson_id_2 = _create_lesson(
        connexion_client, organization_id, workspace_id, user_id,
        sample_data_create_lesson({"enabled": True}))

    with test_common.requsts_mocker_default():
        response = connexion_client.patch(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"lessons": [
                {"lesson_id": lesson_id_1, "enabled": True},
                {"lesson_id": lesson_id_2, "enabled": False},
            ]})

    assert response.status_code == 200, "bulk update lessons"
    assert response.json["data"]["updated_count"] == 2

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons/{lesson_id_1}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))
    assert response.json["data"]["enabled"] is True, "lesson_id_1 is enabled"

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons/{lesson_id_2}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))
    assert response.json["data"]["enabled"] is False, "lesson_id_2 is disabled"


def test_bulk_update_lessons_nonexistent_id_not_counted(connexion_client):
    """存在しないlesson_idが含まれる場合、そのIDは更新されず件数に反映されない(エラーにはならない)"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    lesson_id = _create_lesson(
        connexion_client, organization_id, workspace_id, user_id,
        sample_data_create_lesson({"enabled": False}))

    with test_common.requsts_mocker_default():
        response = connexion_client.patch(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"lessons": [
                {"lesson_id": lesson_id, "enabled": True},
                {"lesson_id": ulid.new().str, "enabled": True},
            ]})

    assert response.status_code == 200, "bulk update lessons with a non-existent id"
    assert response.json["data"]["updated_count"] == 1, "only the existing lesson is counted"


def test_bulk_update_lessons_validation_error(connexion_client):
    """lessons[].lesson_idが空文字列の場合は400

    注: lessonsの必須・配列チェック(minItems:1含む)、および各要素のlesson_id/enabledの必須・型チェックは、
    OpenAPIスキーマ側でも同様に制約されているため、それらはconnexion自体のリクエストバリデーションで
    拒否されコントローラー側のチェックには到達できない。到達できるのは、スキーマ上は妥当な文字列だが
    Python上はfalsyになるlesson_id=""のケースのみ。
    """
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    with test_common.requsts_mocker_default():
        response = connexion_client.patch(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"lessons": [{"lesson_id": "", "enabled": True}]})

    assert response.status_code == 400, "lesson_id is empty"
    assert response.json["result"] == "400-00002", "lesson_id is empty"


def test_bulk_update_lessons_exception(connexion_client):
    """学習事項の一括更新で予期しない例外が発生した場合は500"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    lesson_service = mock.Mock()
    lesson_service.bulk_update_enabled.side_effect = Exception("DB Error Test")

    with test_common.requsts_mocker_default(), mock.patch(
            "controllers.ai_assistant_service_controller.get_lesson_service",
            return_value=lesson_service):
        response = connexion_client.patch(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"lessons": [{"lesson_id": ulid.new().str, "enabled": True}]})

    assert response.status_code == 500, "bulk update lessons unexpected exception"
    assert response.json["result"] == "500-44021", "bulk update lessons unexpected exception"


def test_bulk_update_lessons_driver_disabled(connexion_client):
    """ai_assistant driverが無効な場合は403"""
    organization = test_common.create_organization(connexion_client)
    organization_id = organization["organization_id"]
    workspace_id = (f"unittest-{ulid.new().str.lower()}")[0:const.length_workspace_id]
    test_common.create_workspace(connexion_client, organization_id, workspace_id, organization["user_id"])

    with test_common.requsts_mocker_default():
        response = connexion_client.patch(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=organization["user_id"]),
            json={"lessons": [{"lesson_id": ulid.new().str, "enabled": True}]})

    assert response.status_code == 403, "ai_assistant driver disabled"
    assert response.json["result"] == "403-44001", "ai_assistant driver disabled"


# ==================== GET/PATCH/DELETE .../lessons/{lesson_id} ====================

def test_get_lesson_success(connexion_client):
    """学習事項を1件取得できる"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)
    lesson_id = _create_lesson(connexion_client, organization_id, workspace_id, user_id)

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons/{lesson_id}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))

    assert response.status_code == 200, "get lesson"
    assert response.json["data"]["lesson_id"] == lesson_id


def test_get_lesson_not_found(connexion_client):
    """存在しない学習事項を取得しようとすると404"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons/{ulid.new().str}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))

    assert response.status_code == 404, "get non-existent lesson"
    assert response.json["result"] == "404-44009", "get non-existent lesson"


def test_get_lesson_exception(connexion_client):
    """学習事項取得で予期しない例外が発生した場合は500"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    lesson_service = mock.Mock()
    lesson_service.get_lesson.side_effect = Exception("DB Error Test")

    with test_common.requsts_mocker_default(), mock.patch(
            "controllers.ai_assistant_service_controller.get_lesson_service",
            return_value=lesson_service):
        response = connexion_client.get(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons/{ulid.new().str}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))

    assert response.status_code == 500, "get lesson unexpected exception"
    assert response.json["result"] == "500-44019", "get lesson unexpected exception"


def test_get_lesson_driver_disabled(connexion_client):
    """ai_assistant driverが無効な場合は403"""
    organization = test_common.create_organization(connexion_client)
    organization_id = organization["organization_id"]
    workspace_id = (f"unittest-{ulid.new().str.lower()}")[0:const.length_workspace_id]
    test_common.create_workspace(connexion_client, organization_id, workspace_id, organization["user_id"])

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons/{ulid.new().str}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=organization["user_id"]))

    assert response.status_code == 403, "ai_assistant driver disabled"
    assert response.json["result"] == "403-44001", "ai_assistant driver disabled"


def test_update_lesson_success(connexion_client):
    """lesson・category・priority・enabledをそれぞれ個別に部分更新できる(PATCH。指定しなかった項目は変更されない)"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)
    lesson_id = _create_lesson(connexion_client, organization_id, workspace_id, user_id)

    with test_common.requsts_mocker_default():
        response = connexion_client.patch(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons/{lesson_id}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"enabled": False})
    assert response.status_code == 200, "update enabled only"
    data = response.json["data"]
    assert data["enabled"] is False
    assert data["lesson"] == "本番環境への反映前に、必ずdry-run実行で差分を確認すること", "lesson is unchanged"
    assert data["priority"] == 8, "priority is unchanged"

    with test_common.requsts_mocker_default():
        response = connexion_client.patch(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons/{lesson_id}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"lesson": "更新後の学習事項", "priority": 3})
    assert response.status_code == 200, "update lesson and priority"
    data = response.json["data"]
    assert data["lesson"] == "更新後の学習事項"
    assert data["priority"] == 3
    assert data["enabled"] is False, "enabled is unchanged from the previous update"


def test_update_lesson_validation_errors(connexion_client):
    """lessonの必須チェック・文字数チェック、categoryの文字数チェックを確認する

    注: priorityの範囲外チェックはOpenAPIスキーマの`minimum`/`maximum`と完全に一致するため、
    create_lessonと同様の理由でconnexion側で先に拒否され到達不可。
    """
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)
    lesson_id = _create_lesson(connexion_client, organization_id, workspace_id, user_id)

    with test_common.requsts_mocker_default():
        response = connexion_client.patch(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons/{lesson_id}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"lesson": ""})
    assert response.status_code == 400, "lesson empty"
    assert response.json["result"] == "400-00011", "lesson empty"

    with test_common.requsts_mocker_default():
        response = connexion_client.patch(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons/{lesson_id}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"lesson": "x" * (const.length_lesson_content + 1)})
    assert response.status_code == 400, "lesson too long"
    assert response.json["result"] == "400-00012", "lesson too long"

    with test_common.requsts_mocker_default():
        response = connexion_client.patch(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons/{lesson_id}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"category": "x" * (const.length_lesson_category + 1)})
    assert response.status_code == 400, "category too long"
    assert response.json["result"] == "400-00012", "category too long"


def test_update_lesson_not_found(connexion_client):
    """存在しない学習事項を更新しようとすると404"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    with test_common.requsts_mocker_default():
        response = connexion_client.patch(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons/{ulid.new().str}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"enabled": False})

    assert response.status_code == 404, "update non-existent lesson"
    assert response.json["result"] == "404-44010", "update non-existent lesson"


def test_update_lesson_exception(connexion_client):
    """学習事項更新で予期しない例外が発生した場合は500"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    lesson_service = mock.Mock()
    lesson_service.update_lesson.side_effect = Exception("DB Error Test")

    with test_common.requsts_mocker_default(), mock.patch(
            "controllers.ai_assistant_service_controller.get_lesson_service",
            return_value=lesson_service):
        response = connexion_client.patch(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons/{ulid.new().str}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"enabled": False})

    assert response.status_code == 500, "update lesson unexpected exception"
    assert response.json["result"] == "500-44020", "update lesson unexpected exception"


def test_update_lesson_driver_disabled(connexion_client):
    """ai_assistant driverが無効な場合は403"""
    organization = test_common.create_organization(connexion_client)
    organization_id = organization["organization_id"]
    workspace_id = (f"unittest-{ulid.new().str.lower()}")[0:const.length_workspace_id]
    test_common.create_workspace(connexion_client, organization_id, workspace_id, organization["user_id"])

    with test_common.requsts_mocker_default():
        response = connexion_client.patch(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons/{ulid.new().str}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=organization["user_id"]),
            json={"enabled": False})

    assert response.status_code == 403, "ai_assistant driver disabled"
    assert response.json["result"] == "403-44001", "ai_assistant driver disabled"


# ==================== 学習事項のprompt_profile ====================

def test_create_lesson_with_prompt_profile(connexion_client):
    """prompt_profileを指定して学習事項を作成でき、レスポンス・GETに反映される"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    response = _create_lesson_response(
        connexion_client, organization_id, workspace_id, user_id,
        sample_data_create_lesson({"prompt_profile": "LLMEditor"}))
    assert response.status_code == 200, "create lesson with prompt_profile"
    lesson_id = response.json["data"]["lesson_id"]
    assert response.json["data"]["prompt_profile"] == "LLMEditor"

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons/{lesson_id}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))
    assert response.json["data"]["prompt_profile"] == "LLMEditor"


def test_create_lesson_missing_prompt_profile_rejected(connexion_client):
    """prompt_profileは必須のため、省略すると400になる(全プロファイル共通(null)の学習事項は
    もはやPOST経由では作成できない。OpenAPIスキーマ側でrequired・enum: [LLMEditor, AgenticAI]と
    完全に制約されているため、connexion自体のリクエストバリデーションで拒否され、resultキーを
    持たない別形式のエラーになる。そのためここではstatus_code==400のみを確認する)
    """
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    body = sample_data_create_lesson()
    del body["prompt_profile"]
    response = _create_lesson_response(connexion_client, organization_id, workspace_id, user_id, body)
    assert response.status_code == 400, "prompt_profile is required"


def test_create_lesson_invalid_prompt_profile_rejected(connexion_client):
    """prompt_profileはenum: [LLMEditor, AgenticAI]に制限されているため、それ以外の値(Lessons/GenerateTitile
    や任意の未知の値)を指定すると400になる(OpenAPIスキーマ側での拒否。理由は上のテストと同様)
    """
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    for invalid_value in ("Lessons", "GenerateTitle", "NotAValidProfile"):
        response = _create_lesson_response(
            connexion_client, organization_id, workspace_id, user_id,
            sample_data_create_lesson({"prompt_profile": invalid_value}))
        assert response.status_code == 400, f"prompt_profile={invalid_value} is rejected"


def test_update_lesson_prompt_profile(connexion_client):
    """PATCHでprompt_profileを変更できる"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)
    lesson_id = _create_lesson(connexion_client, organization_id, workspace_id, user_id)

    with test_common.requsts_mocker_default():
        response = connexion_client.patch(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons/{lesson_id}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"prompt_profile": "AgenticAI"})
    assert response.status_code == 200, "update prompt_profile"
    assert response.json["data"]["prompt_profile"] == "AgenticAI"


def test_list_lessons_filter_by_prompt_profile(connexion_client):
    """prompt_profileで絞り込める。未設定(全プロファイル共通)の学習事項はこのフィルターの対象外になる

    全プロファイル共通(prompt_profile=None)の学習事項は、POST /lessonsではprompt_profileが必須のため
    もはやAPI経由では作成できない(レガシーデータとしてのみ存在しうる)。ここではLessonServiceを直接
    呼び出すことで、そのレガシーな状態を模擬する。
    """
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    llmeditor_id = _create_lesson(
        connexion_client, organization_id, workspace_id, user_id,
        sample_data_create_lesson({"prompt_profile": "LLMEditor"}))
    agenticai_id = _create_lesson(
        connexion_client, organization_id, workspace_id, user_id,
        sample_data_create_lesson({"prompt_profile": "AgenticAI"}))
    universal_lesson = get_lesson_service().create_lesson(
        organization_id=organization_id, workspace_id=workspace_id, user_id=user_id,
        lesson="全プロファイル共通のレガシー学習事項", prompt_profile=None)
    universal_id = universal_lesson.lesson_id

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons',
            query_string={"prompt_profile": "LLMEditor"},
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))

    assert response.status_code == 200, "list lessons filtered by prompt_profile"
    ids = [lesson["lesson_id"] for lesson in response.json["data"]["lessons"]]
    assert ids == [llmeditor_id], (
        "only the exact prompt_profile match is returned; "
        "the universal (no prompt_profile) lesson is excluded by this filter"
    )
    assert agenticai_id not in ids
    assert universal_id not in ids


def test_completions_lessons_injection_respects_prompt_profile(connexion_client):
    """会話のprompt_profileに一致する学習事項と、prompt_profile未設定(全プロファイル共通)の学習事項のみが
    システムプロンプトへ注入され、他のprompt_profile向けの学習事項は注入されないことを確認する
    """
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)
    _register_bedrock_cache_credential(connexion_client, organization_id, user_id)

    # LLMEditor向け(注入されるべき)
    _create_lesson(
        connexion_client, organization_id, workspace_id, user_id,
        sample_data_create_lesson({
            "lesson": "LLMEDITOR_ONLY_LESSON_MARKER", "prompt_profile": "LLMEditor", "enabled": True,
        }))
    # AgenticAI向け(注入されないべき)
    _create_lesson(
        connexion_client, organization_id, workspace_id, user_id,
        sample_data_create_lesson({
            "lesson": "AGENTICAI_ONLY_LESSON_MARKER", "prompt_profile": "AgenticAI", "enabled": True,
        }))
    # 全プロファイル共通(注入されるべき)。POST /lessonsではprompt_profileが必須のため、
    # レガシーなnullデータを模擬してLessonServiceを直接呼び出す
    get_lesson_service().create_lesson(
        organization_id=organization_id, workspace_id=workspace_id, user_id=user_id,
        lesson="UNIVERSAL_LESSON_MARKER", prompt_profile=None, enabled=True)

    # 会話のprompt_profileはデフォルト(LLMEditor)
    conversation_id = _create_conversation(connexion_client, organization_id, workspace_id, user_id)

    fake_session = _mocked_bedrock_session(_fake_invoke_model_response(10, 5))
    with test_common.requsts_mocker_default(), mock.patch(
            "services.ai_assistant.conversation_service.create_bedrock_session_from_credential_data",
            return_value=fake_session):
        response = connexion_client.post(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/completions',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"message": "こんにちは"})

    assert response.status_code == 200, "create completion"

    sent_body = json.loads(fake_session.get_bedrock_client.return_value.invoke_model.call_args.kwargs["body"])
    system_text = sent_body["system"][0]["text"]
    assert "LLMEDITOR_ONLY_LESSON_MARKER" in system_text, "matching prompt_profile lesson is injected"
    assert "UNIVERSAL_LESSON_MARKER" in system_text, "lesson with no prompt_profile is injected regardless"
    assert "AGENTICAI_ONLY_LESSON_MARKER" not in system_text, "lesson tagged for a different prompt_profile is not injected"


def test_completions_no_lessons_injected_for_generatetitle_profile(connexion_client):
    """GenerateTitle会話では、学習事項が(全プロファイル共通のものも含めて)一切注入されない"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)
    _register_bedrock_cache_credential(connexion_client, organization_id, user_id)

    # POST /lessonsではprompt_profileが必須のため、レガシーなnullデータを模擬してLessonServiceを直接呼び出す
    get_lesson_service().create_lesson(
        organization_id=organization_id, workspace_id=workspace_id, user_id=user_id,
        lesson="UNIVERSAL_LESSON_MARKER", prompt_profile=None, enabled=True)

    conversation_id = _create_conversation(
        connexion_client, organization_id, workspace_id, user_id,
        sample_data_create_conversation({"prompt_profile": "GenerateTitle"}))

    fake_session = _mocked_bedrock_session(_fake_invoke_model_response(10, 5))
    with test_common.requsts_mocker_default(), mock.patch(
            "services.ai_assistant.conversation_service.create_bedrock_session_from_credential_data",
            return_value=fake_session):
        response = connexion_client.post(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/completions',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"message": "タイトルを生成して"})

    assert response.status_code == 200, "create completion for GenerateTitle conversation"

    sent_body = json.loads(fake_session.get_bedrock_client.return_value.invoke_model.call_args.kwargs["body"])
    # このプロファイルではlessonsセクション自体が付加されないため、systemが無い、またはmarkerを含まないことを確認する
    system_text = sent_body.get("system")
    if system_text:
        assert "UNIVERSAL_LESSON_MARKER" not in system_text[0]["text"]


def test_delete_lesson_success(connexion_client):
    """学習事項を削除できる"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)
    lesson_id = _create_lesson(connexion_client, organization_id, workspace_id, user_id)

    with test_common.requsts_mocker_default():
        response = connexion_client.delete(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons/{lesson_id}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))

    assert response.status_code == 200, "delete lesson"
    assert response.json["data"]["lesson_id"] == lesson_id

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons/{lesson_id}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))
    assert response.status_code == 404, "lesson is gone after deletion"


def test_delete_lesson_not_found(connexion_client):
    """存在しない(または削除済みの)学習事項を削除しようとすると404"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    with test_common.requsts_mocker_default():
        response = connexion_client.delete(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons/{ulid.new().str}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))

    assert response.status_code == 404, "delete non-existent lesson"
    assert response.json["result"] == "404-44011", "delete non-existent lesson"


def test_delete_lesson_exception(connexion_client):
    """学習事項削除で予期しない例外が発生した場合は500"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)

    lesson_service = mock.Mock()
    lesson_service.delete_lesson.side_effect = Exception("DB Error Test")

    with test_common.requsts_mocker_default(), mock.patch(
            "controllers.ai_assistant_service_controller.get_lesson_service",
            return_value=lesson_service):
        response = connexion_client.delete(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons/{ulid.new().str}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))

    assert response.status_code == 500, "delete lesson unexpected exception"
    assert response.json["result"] == "500-44022", "delete lesson unexpected exception"


def test_delete_lesson_driver_disabled(connexion_client):
    """ai_assistant driverが無効な場合は403"""
    organization = test_common.create_organization(connexion_client)
    organization_id = organization["organization_id"]
    workspace_id = (f"unittest-{ulid.new().str.lower()}")[0:const.length_workspace_id]
    test_common.create_workspace(connexion_client, organization_id, workspace_id, organization["user_id"])

    with test_common.requsts_mocker_default():
        response = connexion_client.delete(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons/{ulid.new().str}',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=organization["user_id"]))

    assert response.status_code == 403, "ai_assistant driver disabled"
    assert response.json["result"] == "403-44001", "ai_assistant driver disabled"


# ==================== POST .../completions : 追加テスト用ヘルパー ====================

_COMPLETION_TARGET = "services.ai_assistant.conversation_service.create_bedrock_session_from_credential_data"


def _setup_chat(connexion_client, conversation_update=None):
    """bedrock-cache Credential登録済みのOrganization/Workspaceと会話を作成する"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)
    _register_bedrock_cache_credential(connexion_client, organization_id, user_id)
    conversation_id = _create_conversation(
        connexion_client, organization_id, workspace_id, user_id,
        sample_data_create_conversation(conversation_update or {}))
    return organization_id, workspace_id, user_id, conversation_id


def _post_completion(connexion_client, organization_id, workspace_id, user_id, conversation_id, body,
                     extra_headers=None):
    headers = request_parameters.request_headers(user_id=user_id)
    headers.update(extra_headers or {})
    return connexion_client.post(
        f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/completions',
        content_type='application/json',
        headers=headers,
        json=body)


def _sent_bodies(fake_session):
    """invoke_modelへ実際に送られたリクエストボディ(dict)を呼び出し順に返す"""
    client = fake_session.get_bedrock_client.return_value
    return [json.loads(c.kwargs["body"]) for c in client.invoke_model.call_args_list]


def _client_error(code, message, status_code):
    return ClientError(
        {"Error": {"Code": code, "Message": message}, "ResponseMetadata": {"HTTPStatusCode": status_code}},
        "InvokeModel")


def _list_message_contents(connexion_client, organization_id, workspace_id, user_id, conversation_id):
    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))
    assert response.status_code == 200, "list messages"
    return [m["contents"] for m in response.json["data"]["messages"]]


# ==================== POST .../completions : Prompt Caching ====================

def test_completions_prompt_caching_system_block(connexion_client):
    """systemプロンプトはcontentブロック配列形式で送られ、cache_control(ephemeral)が付与される"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    fake_session = _mocked_bedrock_session(_fake_invoke_model_response(10, 5))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        response = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id, {"message": "こんにちは"})
    assert response.status_code == 200

    sent = _sent_bodies(fake_session)[0]
    assert isinstance(sent["system"], list), "system is sent as a content-block array"
    assert len(sent["system"]) == 1
    assert sent["system"][0]["type"] == "text"
    assert sent["system"][0]["text"], "system text is not empty"
    assert sent["system"][0]["cache_control"] == {"type": "ephemeral"}


def test_completions_prompt_caching_first_turn_has_no_history_breakpoint(connexion_client):
    """会話の最初のターン(messagesが1件のみ)では、履歴側にcache_controlは付与されない"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    fake_session = _mocked_bedrock_session(_fake_invoke_model_response(10, 5))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        response = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id, {"message": "こんにちは"})
    assert response.status_code == 200

    sent = _sent_bodies(fake_session)[0]
    assert len(sent["messages"]) == 1
    assert "cache_control" not in json.dumps(sent["messages"]), "no history breakpoint on the first turn"


def test_completions_prompt_caching_history_breakpoint(connexion_client):
    """2ターン目以降、最新ターンの直前のメッセージの最後のcontentブロックにcache_controlが付与され、
    それ以外のメッセージには付与されない。DBへ保存される履歴にはcache_controlが混入しない
    """
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    fake_session = _mocked_bedrock_session(
        _fake_invoke_model_response(10, 5, text="1回目の応答"),
        _fake_invoke_model_response(20, 5, text="2回目の応答"),
    )
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        assert _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id,
            {"message": "1回目"}).status_code == 200
        assert _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id,
            {"message": "2回目"}).status_code == 200

    messages = _sent_bodies(fake_session)[1]["messages"]
    assert [m["role"] for m in messages] == ["user", "assistant", "user"]
    assert messages[-2]["content"][-1]["cache_control"] == {"type": "ephemeral"}, "breakpoint on the turn before the newest"
    assert "cache_control" not in json.dumps(messages[0]), "older turns are not marked"
    assert "cache_control" not in json.dumps(messages[-1]), "the newest turn is not marked"

    stored = _list_message_contents(connexion_client, organization_id, workspace_id, user_id, conversation_id)
    assert "cache_control" not in json.dumps(stored, ensure_ascii=False), "cache_control is not persisted to the DB"


def test_completions_prompt_caching_tools_not_marked_when_system_present(connexion_client):
    """systemプロンプトがある場合、tools側にはcache_controlを付けない(tools→system→messagesの順で
    system側のbreakpointがtoolsもカバーするため)。toolsとtool_choiceはそのまま送られる
    """
    tools = [
        {"name": "tool_a", "description": "a", "input_schema": {"type": "object", "properties": {}}},
        {"name": "tool_b", "description": "b", "input_schema": {"type": "object", "properties": {}}},
    ]
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client, {"tools": tools})

    fake_session = _mocked_bedrock_session(_fake_invoke_model_response(10, 5))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        response = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id, {"message": "こんにちは"})
    assert response.status_code == 200

    sent = _sent_bodies(fake_session)[0]
    assert sent["tools"] == tools, "tools are sent unchanged (no cache_control)"
    assert sent["tool_choice"] == {"type": "auto"}
    assert sent["system"][0]["cache_control"] == {"type": "ephemeral"}


def test_completions_prompt_caching_tools_marked_when_no_system(connexion_client):
    """systemプロンプトが無い場合(プロンプトファイル未検出・学習事項無し)は、systemを送らず、
    フォールバックとして最後のtool定義にのみcache_controlを付与する
    """
    tools = [
        {"name": "tool_a", "description": "a", "input_schema": {"type": "object", "properties": {}}},
        {"name": "tool_b", "description": "b", "input_schema": {"type": "object", "properties": {}}},
    ]
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client, {"tools": tools})

    fake_session = _mocked_bedrock_session(_fake_invoke_model_response(10, 5))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session), \
            mock.patch("services.ai_assistant.system_prompt_loader.load_system_prompt",
                       side_effect=FileNotFoundError("no prompt")):
        response = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id, {"message": "こんにちは"})
    assert response.status_code == 200, "a missing system prompt file falls back to no system prompt"

    sent = _sent_bodies(fake_session)[0]
    assert "system" not in sent
    assert "cache_control" not in sent["tools"][0]
    assert sent["tools"][-1]["cache_control"] == {"type": "ephemeral"}
    assert sent["tools"][-1]["name"] == "tool_b"


def test_completions_usage_includes_cache_tokens(connexion_client):
    """Bedrockのusageに含まれるcache_read_input_tokens/cache_creation_input_tokensがレスポンスへ転記される"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    fake_session = _mocked_bedrock_session(_fake_invoke_model_response(
        10, 5, usage_extra={"cache_read_input_tokens": 1200, "cache_creation_input_tokens": 300}))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        response = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id, {"message": "こんにちは"})

    assert response.status_code == 200
    usage = response.json["data"]["usage"]
    assert usage["cache_read_input_tokens"] == 1200
    assert usage["cache_creation_input_tokens"] == 300
    assert usage["total_tokens"] == 15, "total_tokens stays input+output (cache tokens are reported separately)"


def test_completions_usage_cache_tokens_default_zero(connexion_client):
    """Bedrockのusageにキャッシュ関連フィールドが無い場合は0を返す"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    fake_session = _mocked_bedrock_session(_fake_invoke_model_response(10, 5))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        response = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id, {"message": "こんにちは"})

    assert response.status_code == 200
    usage = response.json["data"]["usage"]
    assert usage["cache_read_input_tokens"] == 0
    assert usage["cache_creation_input_tokens"] == 0


# ==================== POST .../completions : max_tokens自動リトライ ====================

def test_completions_max_tokens_retry_succeeds(connexion_client):
    """max_tokensがモデル上限を超えるValidationExceptionの場合、エラーメッセージの上限値に差し替えて再試行し成功する"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    fake_session = _mocked_bedrock_session(
        _client_error("ValidationException",
                      "max_tokens: 20480 > 8192, which is the model limit of 8192", 400),
        _fake_invoke_model_response(10, 5),
    )
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        response = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id, {"message": "こんにちは"})

    assert response.status_code == 200, "retry with the extracted limit succeeds"
    bodies = _sent_bodies(fake_session)
    assert len(bodies) == 2
    assert bodies[0]["max_tokens"] == 20480, "first attempt uses AI_ASSISTANT_MAX_TOKENS_DEFAULT"
    assert bodies[1]["max_tokens"] == 8192, "retry uses the model limit from the error message"
    assert response.json["data"]["saved"] is True


def test_completions_max_tokens_retry_exhausted(connexion_client):
    """リトライ回数(AI_ASSISTANT_MAX_TOKENS_RETRY_COUNT)を使い切ってもmax_tokensエラーが続く場合、
    500-45002でmax_tokens等の値をdataに含めて返す(HTTPステータスはAIサービスの実値)。トークン数は加算されない
    """
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    fake_session = _mocked_bedrock_session(
        _client_error("ValidationException", "which is the model limit of 8192", 400),
        _client_error("ValidationException", "which is the model limit of 4096", 400),
    )
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session), \
            mock.patch("services.ai_assistant.conversation_service.AI_ASSISTANT_MAX_TOKENS_RETRY_COUNT", 1):
        response = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id, {"message": "こんにちは"})

    assert response.status_code == 400, "the AI service's actual HTTP status is propagated"
    assert response.json["result"] == "500-45002"
    assert response.json["data"] == {"max_tokens": 8192, "model_max_tokens_limit": 4096, "retry_count": 1}
    assert response.json["message"] == (
        "max_tokens exceeds the model limit (requested: 8192, model limit: 4096, retry count: 1)")
    assert len(_sent_bodies(fake_session)) == 2, "no further retries after the limit"
    assert _get_conversation_token_count(
        connexion_client, organization_id, workspace_id, user_id, conversation_id) == 0, "failed calls add no tokens"
    assert _list_message_contents(
        connexion_client, organization_id, workspace_id, user_id, conversation_id) == [], "nothing is persisted"


def test_completions_validation_exception_without_limit_not_retried(connexion_client):
    """上限値を抽出できないValidationExceptionはリトライせず、500-45001でそのまま返す"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    fake_session = _mocked_bedrock_session(
        _client_error("ValidationException", "messages: roles must alternate", 400))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        response = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id, {"message": "こんにちは"})

    assert response.status_code == 400
    assert response.json["result"] == "500-45001"
    assert "ValidationException" in response.json["message"]
    assert len(_sent_bodies(fake_session)) == 1, "not retried"


# ==================== POST .../completions : Bedrockエラーの伝播 ====================

def test_completions_client_error_status_propagated(connexion_client):
    """BedrockのClientError(例: 429 ThrottlingException)は、HTTPステータスをそのまま500-45001で返す"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    fake_session = _mocked_bedrock_session(_client_error("ThrottlingException", "Too many requests", 429))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        response = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id, {"message": "こんにちは"})

    assert response.status_code == 429, "status code from Bedrock is propagated (used for retry decisions)"
    assert response.json["result"] == "500-45001"
    assert "ThrottlingException" in response.json["message"]
    assert response.json["message"] == "AI service API error (ThrottlingException): Too many requests"


def test_completions_client_error_503_propagated(connexion_client):
    """5xx系のClientError(例: 503 ServiceUnavailableException)もそのまま伝播する"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    fake_session = _mocked_bedrock_session(_client_error("ServiceUnavailableException", "unavailable", 503))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        response = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id, {"message": "こんにちは"})

    assert response.status_code == 503
    assert response.json["result"] == "500-45001"


def test_completions_read_timeout_returns_504(connexion_client):
    """読み取りタイムアウト(ReadTimeoutError)は504-45001で返す(408はブラウザが自動で再送してしまうため使わない)"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    fake_session = _mocked_bedrock_session(
        ReadTimeoutError(endpoint_url="https://bedrock-runtime.ap-northeast-1.amazonaws.com"))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        response = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id, {"message": "こんにちは"})

    assert response.status_code == 504
    assert response.json["result"] == "504-45001"
    assert response.json["message"].startswith("The request to the AI service timed out: ")
    assert "bedrock-runtime.ap-northeast-1.amazonaws.com" in response.json["message"]


def test_completions_connect_timeout_returns_504(connexion_client):
    """接続タイムアウト(ConnectTimeoutError)も504-45001で返す"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    fake_session = _mocked_bedrock_session(
        ConnectTimeoutError(endpoint_url="https://bedrock-runtime.ap-northeast-1.amazonaws.com"))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        response = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id, {"message": "こんにちは"})

    assert response.status_code == 504
    assert response.json["result"] == "504-45001"


def test_completions_connection_error_returns_503(connexion_client):
    """HTTPステータスの得られない接続エラー(BotoCoreError系。例: EndpointConnectionError)は503-45001で返す"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    fake_session = _mocked_bedrock_session(
        EndpointConnectionError(endpoint_url="https://bedrock-runtime.ap-northeast-1.amazonaws.com"))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        response = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id, {"message": "こんにちは"})

    assert response.status_code == 503
    assert response.json["result"] == "503-45001"
    assert response.json["message"].startswith("Failed to connect to the AI service: ")


def test_completions_error_does_not_persist_or_count(connexion_client):
    """Bedrock呼び出しが失敗した場合、ユーザーターンは保存されず、トークン数も加算されない"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    fake_session = _mocked_bedrock_session(_client_error("ThrottlingException", "Too many requests", 429))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        response = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id, {"message": "こんにちは"})
    assert response.status_code == 429

    assert _list_message_contents(connexion_client, organization_id, workspace_id, user_id, conversation_id) == []
    assert _get_conversation_token_count(
        connexion_client, organization_id, workspace_id, user_id, conversation_id) == 0


def test_completions_credential_deleted_after_conversation_created(connexion_client):
    """会話作成後にCredentialが削除された場合、completionsは404(404-45001)になる"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    with test_common.requsts_mocker_default():
        response = connexion_client.delete(
            f'/api/{organization_id}/platform/users/_current/bedrock-cache/credentials',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))
    assert response.status_code == 200, "delete credential"

    with test_common.requsts_mocker_default():
        response = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id, {"message": "こんにちは"})

    assert response.status_code == 404
    assert response.json["result"] == "404-45001"
    assert response.json["message"] == "No credential registered for the specified ai_service_id: bedrock-cache"


# ==================== POST .../completions : bedrock(手動Credential)方式 ====================

def _fake_boto3_session(*invoke_model_responses):
    """boto3.Sessionの戻り値を模したモック(session.client("bedrock-runtime")がfake clientを返す)"""
    fake_client = mock.Mock()
    fake_client.invoke_model.side_effect = list(invoke_model_responses)
    fake_session = mock.Mock()
    fake_session.client.return_value = fake_client
    return fake_session, fake_client


def test_completions_bedrock_manual_credential(connexion_client, monkeypatch):
    """bedrock(手動Credential)方式の会話では、登録済みのアクセスキー・regionでboto3.Sessionを生成して呼び出す
    (タイムアウトはコード側の既定値を確認するため、実行環境のENVを外しておく)
    """
    for name in ("AI_ASSISTANT_READ_TIMEOUT", "AI_ASSISTANT_CONNECT_TIMEOUT", "AI_ASSISTANT_MAX_ATTEMPTS"):
        monkeypatch.delenv(name, raising=False)
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)
    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization_id}/platform/users/_current/bedrock/credentials',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json=sample_data_bedrock_credential())
    assert response.status_code == 200, "register bedrock credential"
    conversation_id = _create_conversation(
        connexion_client, organization_id, workspace_id, user_id,
        sample_data_create_conversation({"ai_service_id": "bedrock"}))

    fake_session, fake_client = _fake_boto3_session(_fake_invoke_model_response(10, 5))
    with test_common.requsts_mocker_default(), mock.patch("boto3.Session", return_value=fake_session) as session_cls:
        response = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id, {"message": "こんにちは"})

    assert response.status_code == 200, "completion via manual bedrock credential"
    assert response.json["data"]["saved"] is True
    session_cls.assert_called_once_with(
        aws_access_key_id="AKIAEXAMPLE",
        aws_secret_access_key="secret-access-key",
        aws_session_token="session-token",
        region_name="ap-northeast-1",
    )
    assert fake_session.client.call_args.args[0] == "bedrock-runtime"
    config = fake_session.client.call_args.kwargs["config"]
    assert config.read_timeout == 300, "AI_ASSISTANT_READ_TIMEOUT default"
    assert config.connect_timeout == 30, "AI_ASSISTANT_CONNECT_TIMEOUT default"
    assert fake_client.invoke_model.call_args.kwargs["modelId"] == "anthropic.claude-3-5-sonnet-20240620-v1:0"

    credential = get_ai_credential_service().get_credential(
        organization_id=organization_id, user_id=user_id, credential_type="bedrock")
    assert credential.last_used_at is not None, "last_used_at is updated"


def test_completions_ai_service_id_override(connexion_client):
    """completionsでai_service_idを指定すると会話のデフォルトを上書きし、ユーザーターンに_serviceが記録される"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)
    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization_id}/platform/users/_current/bedrock/credentials',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json=sample_data_bedrock_credential())
    assert response.status_code == 200, "register bedrock credential"

    fake_session, fake_client = _fake_boto3_session(_fake_invoke_model_response(10, 5))
    cache_session = _mocked_bedrock_session()
    with test_common.requsts_mocker_default(), \
            mock.patch("boto3.Session", return_value=fake_session), \
            mock.patch(_COMPLETION_TARGET, return_value=cache_session) as cache_factory:
        response = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id,
            {"message": "こんにちは", "ai_service_id": "bedrock"})

    assert response.status_code == 200
    assert fake_client.invoke_model.called, "the overriding bedrock (manual) path is used"
    cache_factory.assert_not_called()

    stored = _list_message_contents(connexion_client, organization_id, workspace_id, user_id, conversation_id)[-1]
    assert stored[0]["role"] == "user"
    assert stored[0]["_service"] == "bedrock", "the override is recorded on the user turn"
    sent = json.loads(fake_client.invoke_model.call_args.kwargs["body"])
    assert "_service" not in sent["messages"][0], "internal '_' metadata is not sent to Bedrock"


def test_completions_same_ai_service_id_not_recorded(connexion_client):
    """会話のデフォルトと同じai_service_idを指定した場合は、_serviceを記録しない"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    fake_session = _mocked_bedrock_session(_fake_invoke_model_response(10, 5))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        response = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id,
            {"message": "こんにちは", "ai_service_id": "bedrock-cache"})
    assert response.status_code == 200

    stored = _list_message_contents(connexion_client, organization_id, workspace_id, user_id, conversation_id)[-1]
    assert "_service" not in stored[0]


def test_completions_model_id_override(connexion_client):
    """completionsでmodel_idを指定すると会話のデフォルトモデルを上書きし、アシスタントターンの_modelに記録される"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    fake_session = _mocked_bedrock_session(_fake_invoke_model_response(10, 5))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        response = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id,
            {"message": "こんにちは", "model_id": "global.anthropic.claude-sonnet-5"})
    assert response.status_code == 200

    client = fake_session.get_bedrock_client.return_value
    assert client.invoke_model.call_args.kwargs["modelId"] == "global.anthropic.claude-sonnet-5"
    stored = _list_message_contents(connexion_client, organization_id, workspace_id, user_id, conversation_id)[-1]
    assert stored[-1]["role"] == "assistant"
    assert stored[-1]["_model"] == "global.anthropic.claude-sonnet-5"
    assert isinstance(stored[-1]["_thinkingMs"], int)


# ==================== POST .../completions : bedrock-cacheのトークン書き戻し ====================

def test_completions_bedrock_cache_refreshed_token_written_back(connexion_client):
    """Bedrock呼び出し中にトークンが自動更新された場合、credential_data.apiKeyへ最新のトークンが書き戻される"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    new_token = {
        "idToken": "refreshed-id-token", "accessToken": "refreshed-access-token",
        "refreshToken": "refreshed-refresh-token", "region": "ap-northeast-1",
    }
    fake_session = _mocked_bedrock_session(_fake_invoke_model_response(10, 5))
    fake_session.get_current_token.return_value = new_token
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session) as factory:
        response = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id, {"message": "こんにちは"})
    assert response.status_code == 200

    # 登録済みのapiKey(JSON文字列)を展開した内容と、そのregionでセッションが作られている
    registered = json.loads(sample_data_bedrock_cache_credential()["credential_data"]["apiKey"])
    assert factory.call_args.kwargs["credential_data"] == registered
    assert factory.call_args.kwargs["region"] == "ap-northeast-1"

    credential = get_ai_credential_service().get_credential(
        organization_id=organization_id, user_id=user_id, credential_type="bedrock-cache")
    assert json.loads(credential.credential_data["apiKey"]) == new_token, "refreshed token is written back"
    assert credential.last_used_at is not None


def test_completions_bedrock_cache_no_refresh_keeps_token(connexion_client):
    """トークンが更新されなかった場合は、credential_dataは変更されず最終使用日時のみ更新される"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    fake_session = _mocked_bedrock_session(_fake_invoke_model_response(10, 5))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        response = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id, {"message": "こんにちは"})
    assert response.status_code == 200

    credential = get_ai_credential_service().get_credential(
        organization_id=organization_id, user_id=user_id, credential_type="bedrock-cache")
    assert credential.credential_data["apiKey"] == sample_data_bedrock_cache_credential()["credential_data"]["apiKey"]
    assert credential.last_used_at is not None


# ==================== POST .../completions : 応答内容・履歴の扱い ====================

def test_completions_tool_use_response_preserved(connexion_client):
    """tool_useブロックを含む応答は、text以外のブロックも含めてそのまま返却・保存され、stop_reasonも返る"""
    tools = [{"name": "search-docs", "description": "d", "input_schema": {"type": "object", "properties": {}}}]
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client, {"tools": tools})

    content = [
        {"type": "text", "text": "確認します。"},
        {"type": "tool_use", "id": "toolu_01ABC", "name": "search-docs", "input": {"query": "example"}},
    ]
    fake_session = _mocked_bedrock_session(
        _fake_invoke_model_response(10, 5, content=content, stop_reason="tool_use"))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        response = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id, {"message": "調べて"})

    assert response.status_code == 200
    data = response.json["data"]
    assert data["content"] == content
    assert data["stop_reason"] == "tool_use"
    assert data["ai_status_code"] == 200
    stored = _list_message_contents(connexion_client, organization_id, workspace_id, user_id, conversation_id)[-1]
    assert stored[-1]["content"] == content, "tool_use block is persisted as-is"


def test_completions_response_seq_numbers(connexion_client):
    """保存時はuser_message_seq/assistant_message_seqがスナップショット内の順序番号(1始まり)で返る"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    fake_session = _mocked_bedrock_session(
        _fake_invoke_model_response(10, 5), _fake_invoke_model_response(10, 5))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        first = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id, {"message": "1回目"})
        second = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id, {"message": "2回目"})

    assert (first.json["data"]["user_message_seq"], first.json["data"]["assistant_message_seq"]) == (1, 2)
    assert (second.json["data"]["user_message_seq"], second.json["data"]["assistant_message_seq"]) == (3, 4)
    assert first.json["data"]["message_id"] != second.json["data"]["message_id"], "each call saves a new snapshot"


def test_completions_regenerate_drops_trailing_assistant(connexion_client):
    """messageを省略し、履歴がassistantターンで終わっている場合は、そのassistantターンを除いて問い合わせる(再生成)"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    fake_session = _mocked_bedrock_session(
        _fake_invoke_model_response(10, 5, text="最初の応答"),
        _fake_invoke_model_response(10, 5, text="再生成された応答"),
    )
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        assert _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id,
            {"message": "こんにちは"}).status_code == 200
        response = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id, {})

    assert response.status_code == 200
    assert response.json["data"]["content"][0]["text"] == "再生成された応答"
    assert response.json["data"]["saved"] is False
    assert response.json["data"]["user_message_seq"] is None
    assert response.json["data"]["assistant_message_seq"] is None

    regenerate_body = _sent_bodies(fake_session)[1]
    assert [m["role"] for m in regenerate_body["messages"]] == ["user"], "trailing assistant turn is dropped"

    stored = _list_message_contents(connexion_client, organization_id, workspace_id, user_id, conversation_id)
    assert len(stored) == 1, "regeneration does not save a new snapshot"
    assert stored[0][-1]["content"][0]["text"] == "最初の応答", "the stored history is unchanged"


def test_completions_no_message_with_trailing_user_turn(connexion_client):
    """messageを省略し、履歴がuserターンで終わっている場合(例: tool_result追記後)は、履歴をそのまま送る"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    history = [
        {"role": "user", "content": [{"type": "text", "text": "調べて"}]},
        {"role": "assistant", "content": [
            {"type": "tool_use", "id": "toolu_01", "name": "search-docs", "input": {"query": "x"}}]},
        {"role": "user", "content": [
            {"type": "tool_result", "tool_use_id": "toolu_01", "content": "結果"}], "_timestamp": "2026-01-01T00:00:00.000Z"},
    ]
    with test_common.requsts_mocker_default():
        response = connexion_client.put(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"messages": [{"contents": history}]})
    assert response.status_code == 200, "seed history ending with a tool_result user turn"

    fake_session = _mocked_bedrock_session(_fake_invoke_model_response(30, 5))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        response = _post_completion(connexion_client, organization_id, workspace_id, user_id, conversation_id, {})
    assert response.status_code == 200

    sent_messages = _sent_bodies(fake_session)[0]["messages"]
    assert [m["role"] for m in sent_messages] == ["user", "assistant", "user"]
    assert sent_messages[-1]["content"][0]["type"] == "tool_result"
    assert "_timestamp" not in sent_messages[-1], "internal '_' metadata is stripped"


def test_completions_turns_without_content_are_skipped(connexion_client):
    """contentが空のターンはBedrockへ送らない"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    history = [
        {"role": "user", "content": [{"type": "text", "text": "こんにちは"}]},
        {"role": "assistant", "content": []},
        {"role": "user", "content": [{"type": "text", "text": "続けて"}]},
    ]
    with test_common.requsts_mocker_default():
        response = connexion_client.put(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"messages": [{"contents": history}]})
    assert response.status_code == 200

    fake_session = _mocked_bedrock_session(_fake_invoke_model_response(10, 5))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        response = _post_completion(connexion_client, organization_id, workspace_id, user_id, conversation_id, {})
    assert response.status_code == 200

    sent_messages = _sent_bodies(fake_session)[0]["messages"]
    assert len(sent_messages) == 2, "the empty-content turn is not sent"


def test_completions_uses_latest_snapshot_only(connexion_client):
    """複数のスナップショットがある場合、最新(MESSAGE_SEQ最大)のものを履歴として使う"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    for text in ("古いスナップショット", "最新スナップショット"):
        with test_common.requsts_mocker_default():
            response = connexion_client.post(
                f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages',
                content_type='application/json',
                headers=request_parameters.request_headers(user_id=user_id),
                json={"contents": [{"role": "user", "content": [{"type": "text", "text": text}]}]})
        assert response.status_code == 200

    fake_session = _mocked_bedrock_session(_fake_invoke_model_response(10, 5))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        response = _post_completion(connexion_client, organization_id, workspace_id, user_id, conversation_id, {})
    assert response.status_code == 200

    sent_messages = _sent_bodies(fake_session)[0]["messages"]
    assert len(sent_messages) == 1
    assert sent_messages[0]["content"][0]["text"] == "最新スナップショット"


def test_completions_other_users_conversation_not_found(connexion_client):
    """他ユーザーの会話に対してcompletionsを呼ぶと404(所有者チェック)"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    with test_common.requsts_mocker_default():
        response = _post_completion(
            connexion_client, organization_id, workspace_id, "another-user-id", conversation_id,
            {"message": "こんにちは"})

    assert response.status_code == 404
    assert response.json["result"] == "404-44002"


# ==================== POST .../completions : 言語判定・menu_id ====================

def test_completions_language_detection(connexion_client):
    """Languageヘッダーからユーザー言語を判定してシステムプロンプトを読み込む(ja→jp、en→en、それ以外→None)
    Accept-Language(ブラウザ設定)は判定に使用しない"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    cases = [
        ({"Language": "ja"}, "jp"),
        ({"Language": "en"}, "en"),
        ({"Language": "EN"}, "en"),
        ({"Language": "en", "Accept-Language": "ja-JP,ja;q=0.9"}, "en"),
        ({"Language": "ja", "Accept-Language": "en-US,en;q=0.9"}, "jp"),
        ({"Language": "fr"}, None),
        ({"Language": "", "Accept-Language": "ja-JP,ja;q=0.9"}, None),
        ({"Language": ""}, None),
    ]
    for headers, expected_language in cases:
        fake_session = _mocked_bedrock_session(_fake_invoke_model_response(10, 5))
        with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session), \
                mock.patch("services.ai_assistant.system_prompt_loader.load_system_prompt",
                           return_value="SYSTEM_PROMPT_MARKER") as loader:
            response = _post_completion(
                connexion_client, organization_id, workspace_id, user_id, conversation_id,
                {"message": "こんにちは"}, extra_headers=headers)
        assert response.status_code == 200, f"headers={headers}"
        loader.assert_called_once_with("LLMEditor", expected_language)
        assert _sent_bodies(fake_session)[0]["system"][0]["text"].startswith("SYSTEM_PROMPT_MARKER")


def test_completions_prompt_profile_selects_system_prompt(connexion_client):
    """会話のprompt_profileに応じたシステムプロンプトが読み込まれる"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(
        connexion_client, {"prompt_profile": "AgenticAI"})

    fake_session = _mocked_bedrock_session(_fake_invoke_model_response(10, 5))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session), \
            mock.patch("services.ai_assistant.system_prompt_loader.load_system_prompt",
                       return_value="AGENTIC_PROMPT") as loader:
        response = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id, {"message": "こんにちは"})
    assert response.status_code == 200
    assert loader.call_args.args[0] == "AgenticAI"


def test_completions_menu_prompt_appended(connexion_client):
    """menu_idを指定すると、メニュー固有プロンプトがシステムプロンプトの後ろに追記される"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    fake_session = _mocked_bedrock_session(_fake_invoke_model_response(10, 5))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session), \
            mock.patch("services.ai_assistant.system_prompt_loader.load_system_prompt", return_value="BASE_PROMPT"), \
            mock.patch("services.ai_assistant.system_prompt_loader.load_menu_prompt",
                       return_value="MENU_PROMPT") as menu_loader:
        response = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id,
            {"message": "こんにちは", "menu_id": "menu_001"}, extra_headers={"Language": "ja"})
    assert response.status_code == 200

    menu_loader.assert_called_once_with("menu_001", "jp")
    assert _sent_bodies(fake_session)[0]["system"][0]["text"] == "BASE_PROMPT\n\nMENU_PROMPT"


def test_completions_menu_prompt_only_when_no_system_prompt(connexion_client):
    """システムプロンプトが無い場合は、メニュー固有プロンプトのみがsystemになる"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    fake_session = _mocked_bedrock_session(_fake_invoke_model_response(10, 5))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session), \
            mock.patch("services.ai_assistant.system_prompt_loader.load_system_prompt",
                       side_effect=FileNotFoundError("no prompt")), \
            mock.patch("services.ai_assistant.system_prompt_loader.load_menu_prompt", return_value="MENU_PROMPT"):
        response = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id,
            {"message": "こんにちは", "menu_id": "menu_001"})
    assert response.status_code == 200
    assert _sent_bodies(fake_session)[0]["system"][0]["text"] == "MENU_PROMPT"


def test_completions_menu_prompt_not_found_is_ignored(connexion_client):
    """menu_idに対応するプロンプトファイルが無い場合は、何も追記せず続行する"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    fake_session = _mocked_bedrock_session(_fake_invoke_model_response(10, 5))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session), \
            mock.patch("services.ai_assistant.system_prompt_loader.load_system_prompt", return_value="BASE_PROMPT"):
        response = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id,
            {"message": "こんにちは", "menu_id": "no_such_menu_id"})
    assert response.status_code == 200
    assert _sent_bodies(fake_session)[0]["system"][0]["text"] == "BASE_PROMPT"


def test_completions_menu_prompt_error_is_ignored(connexion_client):
    """メニュー固有プロンプトの読み込みで例外が発生しても、エラーにせずベースのプロンプトのみで続行する"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    fake_session = _mocked_bedrock_session(_fake_invoke_model_response(10, 5))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session), \
            mock.patch("services.ai_assistant.system_prompt_loader.load_system_prompt", return_value="BASE_PROMPT"), \
            mock.patch("services.ai_assistant.system_prompt_loader.load_menu_prompt",
                       side_effect=OSError("read error")):
        response = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id,
            {"message": "こんにちは", "menu_id": "menu_001"})
    assert response.status_code == 200
    assert _sent_bodies(fake_session)[0]["system"][0]["text"] == "BASE_PROMPT"


def test_completions_real_menu_prompt_file(connexion_client):
    """実際のプロンプトファイル(prompts/menu/menu_001_jp.md)がシステムプロンプトへ追記される"""
    from services.ai_assistant.system_prompt_loader import SystemPromptLoader

    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)
    expected_menu_prompt = SystemPromptLoader().load_menu_prompt("menu_001", "jp")
    assert expected_menu_prompt, "prompts/menu/menu_001_jp.md exists"

    fake_session = _mocked_bedrock_session(_fake_invoke_model_response(10, 5))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        response = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id,
            {"message": "こんにちは", "menu_id": "menu_001"}, extra_headers={"Language": "ja"})
    assert response.status_code == 200
    assert _sent_bodies(fake_session)[0]["system"][0]["text"].endswith(expected_menu_prompt)


# ==================== POST .../completions : 学習事項の注入(追加) ====================

def _lesson_marker_in_system(fake_session, marker):
    system = _sent_bodies(fake_session)[0].get("system")
    return bool(system) and marker in system[0]["text"]


def test_completions_disabled_lesson_not_injected(connexion_client):
    """enabled=falseの学習事項はシステムプロンプトへ注入されない"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)
    _create_lesson(connexion_client, organization_id, workspace_id, user_id,
                   sample_data_create_lesson({"lesson": "ENABLED_MARKER", "enabled": True}))
    _create_lesson(connexion_client, organization_id, workspace_id, user_id,
                   sample_data_create_lesson({"lesson": "DISABLED_MARKER", "enabled": False}))

    fake_session = _mocked_bedrock_session(_fake_invoke_model_response(10, 5))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        assert _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id,
            {"message": "こんにちは"}).status_code == 200

    assert _lesson_marker_in_system(fake_session, "ENABLED_MARKER")
    assert not _lesson_marker_in_system(fake_session, "DISABLED_MARKER")


def test_completions_lesson_disabled_by_bulk_update_not_injected(connexion_client):
    """一括更新で無効化した学習事項は、以降のcompletionsで注入されなくなる"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)
    lesson_id = _create_lesson(connexion_client, organization_id, workspace_id, user_id,
                               sample_data_create_lesson({"lesson": "TOGGLED_MARKER", "enabled": True}))
    with test_common.requsts_mocker_default():
        response = connexion_client.patch(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/lessons',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"lessons": [{"lesson_id": lesson_id, "enabled": False}]})
    assert response.status_code == 200

    fake_session = _mocked_bedrock_session(_fake_invoke_model_response(10, 5))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        assert _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id,
            {"message": "こんにちは"}).status_code == 200
    assert not _lesson_marker_in_system(fake_session, "TOGGLED_MARKER")


def test_completions_lessons_injected_in_priority_order_with_format(connexion_client):
    """学習事項は優先度の高い順に「- [優先度:N][分類] 内容」形式で列挙され、分類未設定は「その他」になる"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)
    _create_lesson(connexion_client, organization_id, workspace_id, user_id,
                   sample_data_create_lesson({"lesson": "LOW_MARKER", "priority": 2, "category": "Ansible"}))
    _create_lesson(connexion_client, organization_id, workspace_id, user_id,
                   sample_data_create_lesson({"lesson": "HIGH_MARKER", "priority": 9, "category": None}))

    fake_session = _mocked_bedrock_session(_fake_invoke_model_response(10, 5))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        assert _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id,
            {"message": "こんにちは"}).status_code == 200

    system_text = _sent_bodies(fake_session)[0]["system"][0]["text"]
    assert "# 過去セッションからの学習事項（前提知識）" in system_text
    assert "- [優先度:9][その他] HIGH_MARKER" in system_text
    assert "- [優先度:2][Ansible] LOW_MARKER" in system_text
    assert system_text.index("HIGH_MARKER") < system_text.index("LOW_MARKER"), "higher priority first"


def test_completions_lessons_max_items(connexion_client):
    """注入される学習事項はAI_ASSISTANT_LESSONS_MAX_ITEMS件まで(優先度の高いものから)"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)
    _create_lesson(connexion_client, organization_id, workspace_id, user_id,
                   sample_data_create_lesson({"lesson": "TOP_MARKER", "priority": 10}))
    _create_lesson(connexion_client, organization_id, workspace_id, user_id,
                   sample_data_create_lesson({"lesson": "SECOND_MARKER", "priority": 5}))

    fake_session = _mocked_bedrock_session(_fake_invoke_model_response(10, 5))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session), \
            mock.patch("services.ai_assistant.conversation_service.AI_ASSISTANT_LESSONS_MAX_ITEMS", 1):
        assert _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id,
            {"message": "こんにちは"}).status_code == 200

    assert _lesson_marker_in_system(fake_session, "TOP_MARKER")
    assert not _lesson_marker_in_system(fake_session, "SECOND_MARKER")


def test_completions_lessons_max_chars_truncated(connexion_client):
    """学習事項セクションがAI_ASSISTANT_LESSONS_MAX_CHARSを超える場合は切り詰めて「（以下省略）」を付ける"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)
    _create_lesson(connexion_client, organization_id, workspace_id, user_id,
                   sample_data_create_lesson({"lesson": "L" * 1000 + "TAIL_MARKER"}))

    fake_session = _mocked_bedrock_session(_fake_invoke_model_response(10, 5))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session), \
            mock.patch("services.ai_assistant.system_prompt_loader.load_system_prompt", return_value="BASE"), \
            mock.patch("services.ai_assistant.conversation_service.AI_ASSISTANT_LESSONS_MAX_CHARS", 300):
        assert _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id,
            {"message": "こんにちは"}).status_code == 200

    system_text = _sent_bodies(fake_session)[0]["system"][0]["text"]
    assert system_text.endswith("\n（以下省略）")
    assert "TAIL_MARKER" not in system_text
    assert len(system_text) == len("BASE") + 300 + len("\n（以下省略）")


def test_completions_agenticai_lessons_only(connexion_client):
    """AgenticAI会話にはAgenticAI向けの学習事項のみが注入され、LLMEditor向けは注入されない"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(
        connexion_client, {"prompt_profile": "AgenticAI"})
    _create_lesson(connexion_client, organization_id, workspace_id, user_id,
                   sample_data_create_lesson({"lesson": "AGENTIC_MARKER", "prompt_profile": "AgenticAI"}))
    _create_lesson(connexion_client, organization_id, workspace_id, user_id,
                   sample_data_create_lesson({"lesson": "EDITOR_MARKER", "prompt_profile": "LLMEditor"}))

    fake_session = _mocked_bedrock_session(_fake_invoke_model_response(10, 5))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        assert _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id,
            {"message": "こんにちは"}).status_code == 200

    assert _lesson_marker_in_system(fake_session, "AGENTIC_MARKER")
    assert not _lesson_marker_in_system(fake_session, "EDITOR_MARKER")


def test_completions_no_lessons_injected_for_lessons_profile(connexion_client):
    """Lessons会話(学習事項抽出用)では学習事項が一切注入されない"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(
        connexion_client, {"prompt_profile": "Lessons"})
    _create_lesson(connexion_client, organization_id, workspace_id, user_id,
                   sample_data_create_lesson({"lesson": "EDITOR_MARKER", "prompt_profile": "LLMEditor"}))
    get_lesson_service().create_lesson(
        organization_id=organization_id, workspace_id=workspace_id, user_id=user_id,
        lesson="UNIVERSAL_MARKER", prompt_profile=None)

    fake_session = _mocked_bedrock_session(_fake_invoke_model_response(10, 5))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        assert _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id,
            {"message": "この会話から学習事項を抽出して"}).status_code == 200

    assert not _lesson_marker_in_system(fake_session, "EDITOR_MARKER")
    assert not _lesson_marker_in_system(fake_session, "UNIVERSAL_MARKER")
    assert not _lesson_marker_in_system(fake_session, "過去セッションからの学習事項")


def test_completions_lessons_scoped_to_workspace(connexion_client):
    """他のWorkspaceに登録した学習事項は注入されない(ワークスペース横断での注入は行わない)"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    other_workspace_id = (f"unittest-{ulid.new().str.lower()}")[0:const.length_workspace_id]
    test_common.create_workspace(connexion_client, organization_id, other_workspace_id, user_id)
    _create_lesson(connexion_client, organization_id, other_workspace_id, user_id,
                   sample_data_create_lesson({"lesson": "OTHER_WORKSPACE_MARKER"}))
    _create_lesson(connexion_client, organization_id, workspace_id, user_id,
                   sample_data_create_lesson({"lesson": "THIS_WORKSPACE_MARKER"}))

    fake_session = _mocked_bedrock_session(_fake_invoke_model_response(10, 5))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        assert _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id,
            {"message": "こんにちは"}).status_code == 200

    assert _lesson_marker_in_system(fake_session, "THIS_WORKSPACE_MARKER")
    assert not _lesson_marker_in_system(fake_session, "OTHER_WORKSPACE_MARKER")


def test_completions_other_users_lessons_not_injected(connexion_client):
    """同じWorkspaceでも他ユーザーの学習事項は注入されない"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)
    get_lesson_service().create_lesson(
        organization_id=organization_id, workspace_id=workspace_id, user_id="another-user-id",
        lesson="OTHER_USER_MARKER", prompt_profile="LLMEditor")

    fake_session = _mocked_bedrock_session(_fake_invoke_model_response(10, 5))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        assert _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id,
            {"message": "こんにちは"}).status_code == 200

    assert not _lesson_marker_in_system(fake_session, "OTHER_USER_MARKER")


# ==================== message_service : 破損データ・ページング ====================

def _corrupt_all_message_contents(organization_id, workspace_id, conversation_id, value="{not-json"):
    """T_CHAT_MESSAGE.CONTENTSを不正なJSONに書き換える(破損データの模擬)"""
    with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
        with closing(conn.cursor()) as cursor:
            cursor.execute(
                "UPDATE T_CHAT_MESSAGE SET CONTENTS = %(value)s WHERE CONVERSATION_ID = %(conversation_id)s",
                {"value": value, "conversation_id": conversation_id})
        conn.commit()


def test_list_messages_corrupted_contents_returns_empty_list(connexion_client):
    """CONTENTSが破損している要素は、一覧全体をエラーにせずその要素のcontentsのみ空配列で返す"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)
    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"contents": [{"role": "user", "content": [{"type": "text", "text": "hi"}]}]})
    assert response.status_code == 200

    _corrupt_all_message_contents(organization_id, workspace_id, conversation_id)

    assert _list_message_contents(
        connexion_client, organization_id, workspace_id, user_id, conversation_id) == [[]]


def test_completions_corrupted_history_starts_fresh(connexion_client):
    """最新スナップショットのCONTENTSが破損している場合は、空の履歴として新規会話と同様に扱う"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)
    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"contents": [{"role": "user", "content": [{"type": "text", "text": "old"}]}]})
    assert response.status_code == 200
    _corrupt_all_message_contents(organization_id, workspace_id, conversation_id)

    fake_session = _mocked_bedrock_session(_fake_invoke_model_response(10, 5))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        response = _post_completion(
            connexion_client, organization_id, workspace_id, user_id, conversation_id, {"message": "こんにちは"})
    assert response.status_code == 200

    sent_messages = _sent_bodies(fake_session)[0]["messages"]
    assert len(sent_messages) == 1, "corrupted history is treated as empty"
    assert sent_messages[0]["content"][0]["text"] == "こんにちは"


def test_completions_corrupted_history_without_message_is_400(connexion_client):
    """履歴が破損していてmessageも省略した場合は、既存履歴が無い扱いとなり400(400-45001)"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)
    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"contents": [{"role": "user", "content": [{"type": "text", "text": "old"}]}]})
    assert response.status_code == 200
    _corrupt_all_message_contents(organization_id, workspace_id, conversation_id)

    with test_common.requsts_mocker_default():
        response = _post_completion(connexion_client, organization_id, workspace_id, user_id, conversation_id, {})
    assert response.status_code == 400
    assert response.json["result"] == "400-45001"


def test_list_messages_limit_offset(connexion_client):
    """limit/offsetでメッセージ一覧をページングできる(MESSAGE_SEQ昇順)"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)
    for i in range(1, 4):
        with test_common.requsts_mocker_default():
            response = connexion_client.post(
                f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages',
                content_type='application/json',
                headers=request_parameters.request_headers(user_id=user_id),
                json={"contents": [{"role": "user", "content": [{"type": "text", "text": f"msg{i}"}]}]})
        assert response.status_code == 200
        assert response.json["data"]["message_seq"] == i, "message_seq is assigned sequentially"

    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages',
            query_string={"limit": 1, "offset": 1},
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id))
    assert response.status_code == 200
    data = response.json["data"]
    assert data["count"] == 1
    assert data["messages"][0]["message_seq"] == 2
    assert data["messages"][0]["contents"][0]["content"][0]["text"] == "msg2"


def test_messages_other_users_conversation_not_found(connexion_client):
    """他ユーザーの会話のメッセージは、一覧取得・置き換え・削除のいずれも404(所有者チェック)"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)
    base = f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages'
    headers = request_parameters.request_headers(user_id="another-user-id")

    with test_common.requsts_mocker_default():
        response = connexion_client.get(base, content_type='application/json', headers=headers)
    assert response.status_code == 404
    assert response.json["result"] == "404-44004"

    with test_common.requsts_mocker_default():
        response = connexion_client.put(
            base, content_type='application/json', headers=headers,
            json={"messages": [{"contents": [{"role": "user", "content": [{"type": "text", "text": "x"}]}]}]})
    assert response.status_code == 404
    assert response.json["result"] == "404-44005"

    with test_common.requsts_mocker_default():
        response = connexion_client.delete(base, content_type='application/json', headers=headers)
    assert response.status_code == 404
    assert response.json["result"] == "404-44006"


def test_replace_messages_with_empty_list(connexion_client):
    """messagesに空配列を指定すると、既存のメッセージが全て削除された状態になる"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)
    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"contents": [{"role": "user", "content": [{"type": "text", "text": "hi"}]}]})
    assert response.status_code == 200

    with test_common.requsts_mocker_default():
        response = connexion_client.put(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json={"messages": []})
    assert response.status_code == 200
    assert response.json["data"]["count"] == 0
    assert _list_message_contents(connexion_client, organization_id, workspace_id, user_id, conversation_id) == []


# ==================== POST .../completions : エラーメッセージの多言語化 ====================

def _ja_headers(user_id):
    return request_parameters.request_headers(user_id=user_id, language="ja")


def _post_completion_ja(connexion_client, organization_id, workspace_id, user_id, conversation_id, body):
    return connexion_client.post(
        f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/completions',
        content_type='application/json', headers=_ja_headers(user_id), json=body)


def test_completions_error_messages_japanese(connexion_client):
    """Languageヘッダーがjaの場合、completionsのエラーメッセージは日本語(原文)で返る
    (common_resources/ja/language.pyにはテキストを登録しない方針のため、multi_lang.get_textの原文が使われる)
    """
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    # 400-45001: message省略かつ履歴なし
    with test_common.requsts_mocker_default():
        response = _post_completion_ja(connexion_client, organization_id, workspace_id, user_id, conversation_id, {})
    assert response.status_code == 400
    assert response.json["result"] == "400-45001"
    assert response.json["message"] == "messageが未指定で、会話に既存の履歴もありません"

    # 500-45001: ClientError
    fake_session = _mocked_bedrock_session(_client_error("ThrottlingException", "Too many requests", 429))
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
        response = _post_completion_ja(
            connexion_client, organization_id, workspace_id, user_id, conversation_id, {"message": "こんにちは"})
    assert response.status_code == 429
    assert response.json["message"] == "AIサービスAPIエラー (ThrottlingException): Too many requests"

    # 500-45002: max_tokensリトライ上限超過
    fake_session = _mocked_bedrock_session(
        _client_error("ValidationException", "which is the model limit of 8192", 400),
        _client_error("ValidationException", "which is the model limit of 4096", 400),
    )
    with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session), \
            mock.patch("services.ai_assistant.conversation_service.AI_ASSISTANT_MAX_TOKENS_RETRY_COUNT", 1):
        response = _post_completion_ja(
            connexion_client, organization_id, workspace_id, user_id, conversation_id, {"message": "こんにちは"})
    assert response.json["result"] == "500-45002"
    assert response.json["message"] == "max_tokensがモデルの上限を超えています(要求値: 8192, モデル上限: 4096, リトライ回数: 1)"

    # 504-45001 / 503-45001
    for error, expected_prefix in (
        (ReadTimeoutError(endpoint_url="https://example.com"), "AIサービスへのリクエストがタイムアウトしました: "),
        (EndpointConnectionError(endpoint_url="https://example.com"), "AIサービスへの接続に失敗しました: "),
    ):
        fake_session = _mocked_bedrock_session(error)
        with test_common.requsts_mocker_default(), mock.patch(_COMPLETION_TARGET, return_value=fake_session):
            response = _post_completion_ja(
                connexion_client, organization_id, workspace_id, user_id, conversation_id, {"message": "こんにちは"})
        assert response.json["message"].startswith(expected_prefix), response.json["message"]


def test_completions_error_message_japanese_no_user_turn(connexion_client):
    """400-45002も、Languageヘッダーがjaの場合は日本語(原文)で返る"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)
    with test_common.requsts_mocker_default():
        response = connexion_client.put(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages',
            content_type='application/json', headers=_ja_headers(user_id),
            json={"messages": [{"contents": [{"role": "assistant", "content": [{"type": "text", "text": "x"}]}]}]})
    assert response.status_code == 200

    with test_common.requsts_mocker_default():
        response = _post_completion_ja(connexion_client, organization_id, workspace_id, user_id, conversation_id, {})
    assert response.status_code == 400
    assert response.json["result"] == "400-45002"
    assert response.json["message"] == "messageが未指定で、会話に問い合わせ可能なユーザーメッセージがありません"


def test_completions_credential_not_found_message_japanese(connexion_client):
    """Credential未登録(404-45001)も、Languageヘッダーがjaの場合は日本語(原文)で返る"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)
    with test_common.requsts_mocker_default():
        response = connexion_client.delete(
            f'/api/{organization_id}/platform/users/_current/bedrock-cache/credentials',
            content_type='application/json', headers=_ja_headers(user_id))
    assert response.status_code == 200

    with test_common.requsts_mocker_default():
        response = _post_completion_ja(
            connexion_client, organization_id, workspace_id, user_id, conversation_id, {"message": "こんにちは"})
    assert response.status_code == 404
    assert response.json["result"] == "404-45001"
    assert response.json["message"] == "指定したai_service_idのCredentialが登録されていません: bedrock-cache"


# ==================== messages系 : 404メッセージの多言語化 ====================


_MESSAGE_API_404_CASES = [
    # (HTTPメソッド, message_serviceのメソッド名, リクエストボディ, 期待するmessage_id)
    ("post", "create_message",
     {"contents": [{"role": "user", "content": [{"type": "text", "text": "hi"}]}]}, "404-44003"),
    ("get", "list_messages", None, "404-44004"),
    ("put", "replace_messages",
     {"messages": [{"contents": [{"role": "user", "content": [{"type": "text", "text": "hi"}]}]}]}, "404-44005"),
    ("delete", "delete_messages", None, "404-44006"),
]


def _call_messages_api(connexion_client, method, organization_id, workspace_id, conversation_id, headers, body):
    url = f'/api/{organization_id}/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages'
    kwargs = {"content_type": "application/json", "headers": headers}
    if body is not None:
        kwargs["json"] = body
    return getattr(connexion_client, method)(url, **kwargs)


@pytest.mark.parametrize("method, service_method, body, expected_message_id", _MESSAGE_API_404_CASES)
def test_messages_api_not_found_message_english(connexion_client, method, service_method, body, expected_message_id):
    """messages系APIの404メッセージは、例外文ではなく会話IDを埋め込んだ英語文で返る
    (サービス層がValueErrorを送出するケースをモックで再現する。create_messageはサービス層に存在チェックが
    無いためHTTP経由では到達しないが、このモックで分岐を確認する)
    """
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)
    conversation_id = ulid.new().str

    message_service = mock.Mock()
    getattr(message_service, service_method).side_effect = ValueError(
        f"Conversation not found or access denied: {conversation_id}")
    with test_common.requsts_mocker_default(), mock.patch(
            "controllers.ai_assistant_service_controller.get_message_service", return_value=message_service):
        response = _call_messages_api(
            connexion_client, method, organization_id, workspace_id, conversation_id,
            request_parameters.request_headers(user_id=user_id), body)

    assert response.status_code == 404
    assert response.json["result"] == expected_message_id
    assert response.json["message"] == f"Conversation not found: {conversation_id}", \
        "only the conversation id is embedded (not the raw exception text)"


@pytest.mark.parametrize("method, service_method, body, expected_message_id", _MESSAGE_API_404_CASES)
def test_messages_api_not_found_message_japanese(connexion_client, method, service_method, body, expected_message_id):
    """Languageヘッダーがjaの場合、messages系APIの404メッセージは日本語(原文)で返る"""
    organization_id, workspace_id, user_id = _setup_org_and_workspace(connexion_client)
    conversation_id = ulid.new().str

    message_service = mock.Mock()
    getattr(message_service, service_method).side_effect = ValueError("not found")
    with test_common.requsts_mocker_default(), mock.patch(
            "controllers.ai_assistant_service_controller.get_message_service", return_value=message_service):
        response = _call_messages_api(
            connexion_client, method, organization_id, workspace_id, conversation_id,
            request_parameters.request_headers(user_id=user_id, language="ja"), body)

    assert response.status_code == 404
    assert response.json["result"] == expected_message_id
    assert response.json["message"] == f"会話が見つかりません: {conversation_id}"


def test_messages_api_real_not_found_message(connexion_client):
    """モックなし(実際のDB)でも、他ユーザーの会話に対する一覧取得の404メッセージに会話IDが入る"""
    organization_id, workspace_id, user_id, conversation_id = _setup_chat(connexion_client)

    with test_common.requsts_mocker_default():
        response = _call_messages_api(
            connexion_client, "get", organization_id, workspace_id, conversation_id,
            request_parameters.request_headers(user_id="another-user-id"), None)

    assert response.status_code == 404
    assert response.json["result"] == "404-44004"
    assert response.json["message"] == f"Conversation not found: {conversation_id}"
