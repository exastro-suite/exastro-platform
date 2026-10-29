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
services/ai_assistant/aws_session_manager.py の単体テスト

対象:
- AwsSessionFromToken (idTokenからのregion/login_session_arn抽出、Bedrockクライアント生成)
- create_bedrock_session_from_credential_data

conftest.pyのconnexion_clientフィクスチャがglobals.logger初期化を兼ねているため(globals.loggerは
それまでNoneで、本モジュールの各関数はglobals.logger.debug等を呼ぶ)、他のテストと同様に各テスト関数の
引数にconnexion_clientを含める(HTTPリクエストは行わないが、フィクスチャの初期化のためだけに使用する)。

呼び出し元(model_service.py・conversation_service.py)側のテストでは、この関数自体を常にモックしているため、
このファイルではモックせずに実装本体(JWTデコード・region抽出・botocore資格情報構築・boto3クライアント生成)を
直接実行して検証する。ネットワークアクセスが発生する実際のトークンリフレッシュ(refresh_using)までは
実行しない(有効期限を十分先にしたテストデータを使うことで、資格情報解決時の自動リフレッシュを避けている)。
"""

import base64
import json
from datetime import datetime, timedelta, timezone

import pytest
from unittest import mock

from botocore.credentials import LoginCredentialFetcher

from services.ai_assistant.aws_session_manager import (
    AwsSessionFromToken,
    create_bedrock_session_from_credential_data,
)


def _b64url(data: dict) -> str:
    raw = json.dumps(data).encode()
    return base64.urlsafe_b64encode(raw).rstrip(b"=").decode()


def _fake_id_token(sub="arn:aws:sts::123456789012:assumed-role/example/login", region="ap-northeast-1"):
    """署名検証なしでデコードされる前提の、テスト用の疑似JWT(idToken)を作成する"""
    header = _b64url({"alg": "none", "typ": "JWT"})
    payload = _b64url({"sub": sub, "iss": f"https://{region}.signin.aws.amazon.com/signin"})
    return f"{header}.{payload}.sig"


def _fake_login_cache_token(id_token=None, region="ap-northeast-1"):
    """AWS Login Cacheのキャッシュファイル形式を模したトークン辞書を作成する
    (LoginCredentialFetcherが要求するaccessToken/refreshToken/dpopKey/clientIdを含む)
    """
    far_future = (datetime.now(timezone.utc) + timedelta(days=365)).isoformat()
    return {
        "idToken": id_token if id_token is not None else _fake_id_token(region=region),
        "accessToken": {
            "accessKeyId": "AKIAEXAMPLE",
            "secretAccessKey": "secret-access-key",
            "sessionToken": "session-token",
            "expiresAt": far_future,
            "accountId": "123456789012",
        },
        "refreshToken": "refresh-token-value",
        "dpopKey": "dpop-key-value",
        "clientId": "client-id-value",
    }


def test_create_bedrock_session_from_credential_data_missing_id_token_raises(connexion_client):
    """credential_dataにidTokenが含まれていない場合はValueError"""
    with pytest.raises(ValueError, match="idToken"):
        create_bedrock_session_from_credential_data({"accessToken": {}, "refreshToken": "x"})


def test_aws_session_from_token_extracts_region_from_token(connexion_client):
    """regionを省略した場合、idTokenのissクレームからregionが抽出される"""
    token = _fake_login_cache_token(region="us-west-2")

    aws_session = create_bedrock_session_from_credential_data(credential_data=token, region=None)

    assert isinstance(aws_session, AwsSessionFromToken)
    assert aws_session.region == "us-west-2"


def test_aws_session_from_token_explicit_region_overrides_token(connexion_client):
    """regionを明示指定した場合、idToken由来のregionより優先される"""
    token = _fake_login_cache_token(region="us-west-2")

    aws_session = create_bedrock_session_from_credential_data(credential_data=token, region="ap-northeast-1")

    assert aws_session.region == "ap-northeast-1"


def test_aws_session_from_token_invalid_iss_raises_value_error(connexion_client):
    """idTokenのissがAWSのsignin URL形式でない場合、region抽出でValueErrorになる"""
    id_token = _fake_id_token()
    # issをAWSのsignin URL形式ではない値に差し替える
    header, _, signature = id_token.split(".")
    bad_payload = _b64url({"sub": "arn:example", "iss": "https://example.com/not-aws"})
    bad_id_token = f"{header}.{bad_payload}.{signature}"

    with pytest.raises(ValueError, match="iss"):
        create_bedrock_session_from_credential_data(
            credential_data=_fake_login_cache_token(id_token=bad_id_token), region=None)


def test_get_current_token_returns_none_before_refresh(connexion_client):
    """トークンがまだ自動更新されていない場合、get_current_token()はNoneを返す"""
    aws_session = create_bedrock_session_from_credential_data(
        credential_data=_fake_login_cache_token(), region=None)

    assert aws_session.get_current_token() is None


def test_get_bedrock_client_uses_default_timeout_settings(connexion_client, monkeypatch):
    """環境変数が未設定の場合、コード側の既定値(READ_TIMEOUT=300, CONNECT_TIMEOUT=30, MAX_ATTEMPTS=1)で
    クライアントを生成する(実行環境のENVに依存しないよう、環境変数を明示的に外して確認する)
    """
    for name in ("AI_ASSISTANT_READ_TIMEOUT", "AI_ASSISTANT_CONNECT_TIMEOUT", "AI_ASSISTANT_MAX_ATTEMPTS"):
        monkeypatch.delenv(name, raising=False)
    aws_session = create_bedrock_session_from_credential_data(
        credential_data=_fake_login_cache_token(region="ap-northeast-1"), region=None)

    client = aws_session.get_bedrock_client()

    assert client.meta.region_name == "ap-northeast-1"
    assert client.meta.config.read_timeout == 300
    assert client.meta.config.connect_timeout == 30
    # botocoreはretries={"max_attempts": N, "mode": "standard"}を、実際には
    # {"mode": "standard", "total_max_attempts": N+1}へ正規化して保持する
    assert client.meta.config.retries["mode"] == "standard"
    assert client.meta.config.retries["total_max_attempts"] == 2


# ==================== トークン自動更新(リフレッシュ)まわり ====================

def _refreshed_credentials():
    return {
        "access_key": "NEWAKIA", "secret_key": "new-secret", "token": "new-session-token",
        "expiry_time": "2099-01-01T00:00:00Z", "account_id": "123456789012",
    }


def test_refresh_callback_marks_token_updated(connexion_client):
    """botocoreが資格情報を更新(refresh_using)すると、トークン更新フラグが立ち、
    get_current_token()がメモリ上の最新トークンを1回だけ返す(返した後はフラグがリセットされNoneに戻る)
    """
    aws_session = create_bedrock_session_from_credential_data(
        credential_data=_fake_login_cache_token(), region=None)
    credentials = aws_session._session.get_credentials()

    with mock.patch.object(LoginCredentialFetcher, "refresh_credentials",
                           return_value=_refreshed_credentials()) as refresh:
        credentials._refresh_using()
    refresh.assert_called_once()

    token = aws_session.get_current_token()
    assert token is not None, "the refreshed token is returned once"
    assert token["idToken"] == _fake_login_cache_token()["idToken"]
    assert aws_session.get_current_token() is None, "flag is reset after reading"


def test_get_current_token_load_failure_returns_none(connexion_client):
    """更新フラグが立っていてもトークンの読み込みに失敗した場合はNoneを返し、フラグはリセットされる"""
    aws_session = create_bedrock_session_from_credential_data(
        credential_data=_fake_login_cache_token(), region=None)
    aws_session._token_updated = True

    with mock.patch.object(aws_session._token_loader, "load_token", side_effect=Exception("broken cache")):
        assert aws_session.get_current_token() is None
    assert aws_session._token_updated is False


def test_get_current_token_without_loader_returns_none(connexion_client):
    """login_session_arn/token_loaderが無い状態ではNoneを返す"""
    aws_session = create_bedrock_session_from_credential_data(
        credential_data=_fake_login_cache_token(), region=None)
    aws_session._token_updated = True
    aws_session._token_loader = None
    assert aws_session.get_current_token() is None


def test_session_uses_cached_access_token_credentials(connexion_client):
    """キャッシュのaccessTokenの内容がboto3セッションの資格情報として使われる"""
    aws_session = create_bedrock_session_from_credential_data(
        credential_data=_fake_login_cache_token(), region=None)
    credentials = aws_session._session.get_credentials()
    assert credentials.access_key == "AKIAEXAMPLE"
    assert credentials.secret_key == "secret-access-key"
    assert credentials.token == "session-token"
    assert credentials.method == "login-auto-refresh"


def test_get_bedrock_client_respects_env_overrides(connexion_client, monkeypatch):
    """タイムアウト・リトライ設定は環境変数で上書きできる"""
    monkeypatch.setenv("AI_ASSISTANT_READ_TIMEOUT", "45")
    monkeypatch.setenv("AI_ASSISTANT_CONNECT_TIMEOUT", "7")
    monkeypatch.setenv("AI_ASSISTANT_MAX_ATTEMPTS", "3")
    aws_session = create_bedrock_session_from_credential_data(
        credential_data=_fake_login_cache_token(), region=None)

    client = aws_session.get_bedrock_client()
    assert client.meta.config.read_timeout == 45
    assert client.meta.config.connect_timeout == 7
    assert client.meta.config.retries["total_max_attempts"] == 4
