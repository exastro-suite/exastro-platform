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

"""
AWS Session Manager with Token Auto-Refresh

aws login --remoteのキャッシュファイルの内容(Credentialとして登録しDBに保存したもの)を使用して、
自動的にトークンを更新しながらAWSサービスを利用する
"""

import base64
import json
import re
import os
from typing import Optional

import boto3
import botocore.session
from botocore.credentials import (
    LoginCredentialFetcher,
    RefreshableCredentials,
)
from botocore.utils import LoginTokenLoader

import globals


class AwsSessionFromToken:
    """
    AWS Login Token からセッションを作成し、自動更新するクラス
    """

    def __init__(
        self,
        token: dict,
        region: Optional[str] = None,
    ):
        """
        Args:
            token: DBから取得したトークン情報
            region: リージョン（省略時はトークンから自動取得）
        """
        self.token: dict = {}
        self._login_session_arn = None
        self._token_updated = False  # トークンが更新されたかのフラグ
        self._token_loader = None  # TokenLoader を保持

        login_session_arn = self._extract_login_session_arn(token)
        token_region = self._extract_login_region(token)
        self._login_session_arn = login_session_arn

        # regionパラメータが指定されていない場合はトークンから取得
        self.region = region if region else token_region

        token_loader = LoginTokenLoader(cache=self.token)
        token_loader.save_token(login_session_arn, token)
        self._token_loader = token_loader  # 後で使うために保持

        botocore_session = botocore.session.Session()

        fetcher = LoginCredentialFetcher(
            session_name=login_session_arn,
            token_loader=token_loader,
            client_creator=botocore_session.create_client,
        )

        cached = fetcher.load_cached_credentials()

        # トークン更新を検知するラッパー
        def refresh_and_mark():
            result = fetcher.refresh_credentials()
            self._token_updated = True  # フラグを立てる
            globals.logger.debug("AWS token refreshed")
            return result

        credentials = RefreshableCredentials(
            access_key=cached["access_key"],
            secret_key=cached["secret_key"],
            token=cached["token"],
            expiry_time=cached["expiry_time"]
            if not isinstance(cached["expiry_time"], str)
            else botocore.credentials._parse_if_needed(cached["expiry_time"]),
            method="login-auto-refresh",
            refresh_using=refresh_and_mark,
            account_id=cached["account_id"],
        )

        botocore_session._credentials = credentials
        botocore_session.set_config_variable("region", self.region)

        self._session = boto3.Session(botocore_session=botocore_session)

        globals.logger.debug(
            f"AWS Session initialized: region={self.region}, "
            f"session_arn={login_session_arn}"
        )

    def get_bedrock_client(self):
        """
        Bedrock Runtime クライアントを取得

        Returns:
            boto3.client: bedrock-runtime クライアント
        """
        from botocore.config import Config

        # 環境変数からタイムアウト・リトライ設定を読み取り
        read_timeout = int(os.getenv("AI_ASSISTANT_READ_TIMEOUT", "300"))
        connect_timeout = int(os.getenv("AI_ASSISTANT_CONNECT_TIMEOUT", "30"))
        max_attempts = int(os.getenv("AI_ASSISTANT_MAX_ATTEMPTS", "1"))

        return self._session.client(
            "bedrock-runtime",
            config=Config(
                read_timeout=read_timeout,
                connect_timeout=connect_timeout,
                retries={"max_attempts": max_attempts, "mode": "standard"},
            ),
        )

    def get_current_token(self) -> Optional[dict]:
        """
        メモリ内の最新トークンを取得（トークンが更新された場合のみ）

        Returns:
            dict: 最新のトークン情報（トークンが更新されていない場合はNone）

        Note:
            この関数を呼ぶと、内部の更新フラグがリセットされます。
            次回の refresh_credentials() が呼ばれるまで None を返します。
        """
        if not self._login_session_arn or not self._token_loader:
            return None

        # トークンが更新されていない場合は None を返す
        if not self._token_updated:
            return None

        # LoginTokenLoader を使ってトークンを取得
        try:
            token = self._token_loader.load_token(self._login_session_arn)
        except Exception as e:
            globals.logger.error(f"Failed to load refreshed token: {e}")
            token = None

        # フラグをリセット（次回の更新まで None を返す）
        self._token_updated = False

        return token

    def _extract_login_session_arn(self, token: dict) -> str:
        """idTokenのsubクレームからlogin_session ARNを取り出す"""
        claims = self._decode_id_token(token["idToken"])
        return claims["sub"]

    def _extract_login_region(self, token: dict) -> str:
        """idTokenのissクレーム(https://<region>.signin.aws.amazon.com/signin)からregionを取り出す"""
        claims = self._decode_id_token(token["idToken"])
        match = re.match(r"https://([a-z0-9-]+)\.signin\.aws\.amazon\.com", claims["iss"])
        if not match:
            raise ValueError(f"issからregionを抽出できません: {claims['iss']}")
        return match.group(1)

    def _decode_id_token(self, id_token: str) -> dict:
        """idToken(JWT)のペイロード部分を署名検証なしでデコード"""
        payload_b64 = id_token.split(".")[1]
        padded = payload_b64 + "=" * (-len(payload_b64) % 4)
        return json.loads(base64.urlsafe_b64decode(padded))


def create_bedrock_session_from_credential_data(
    credential_data: dict,
    region: Optional[str] = None,
) -> AwsSessionFromToken:
    """
    DBから取得したCredentialデータからBedrockセッションを作成

    Args:
        credential_data: AWS Login Cacheのキャッシュファイル内容そのもの（idToken等をトップレベルに持つ辞書）。
                        T_USER_CREDENTIAL.credential_dataは{"apiKey": "<この内容をJSON文字列化したもの>"}の形で
                        保存されているため、呼び出し側でjson.loads(credential.credential_data["apiKey"])して
                        展開した後の辞書をここへ渡すこと。
        region: リージョン

    Returns:
        AwsSessionFromToken: セッションオブジェクト

    Raises:
        ValueError: credential_dataにidTokenが含まれていない場合

    Note:
        トークンが自動更新された場合、メモリ内（aws_session.token）に保存されます。
        呼び出し側で aws_session.get_current_token() を使って最新トークンを取得し、
        update_last_used(credential_data={"apiKey": json.dumps(latest_token)}) でDBに保存してください
        （credential_dataはapiKeyへネストした形で保存する規約のため）。
    """
    if "idToken" not in credential_data:
        raise ValueError(
            "credential_data must contain 'idToken'. "
            "Make sure the data is from AWS Login Cache."
        )

    return AwsSessionFromToken(
        token=credential_data,
        region=region,
    )
