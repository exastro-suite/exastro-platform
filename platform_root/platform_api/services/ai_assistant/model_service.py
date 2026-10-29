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
Model Service

AIサービスの使用可能なモデル一覧を取得
"""

import json
import os
from typing import List, Dict
import boto3
from botocore.config import Config
from botocore.exceptions import ReadTimeoutError

from common_library.common import common
from services.users.ai_credential_service import (
    get_ai_credential_service,
    CredentialNotFound,
)
from services.ai_assistant.aws_session_manager import (
    create_bedrock_session_from_credential_data,
)

import globals


class ModelService:
    """
    Model Service

    AIサービスの使用可能なモデル一覧を取得
    """

    def _get_active_foundation_model_ids(self, bedrock_client) -> set | None:
        """
        ACTIVE な基礎モデル ID を取得（EOL フィルタリング用）

        Args:
            bedrock_client: Bedrock client

        Returns:
            set | None: ACTIVE なモデル ID の集合（取得失敗時は None）
        """
        try:
            response = bedrock_client.list_foundation_models()
        except Exception as e:
            globals.logger.warning(
                f"list_foundation_models failed; skip EOL filtering: {e}"
            )
            return None

        active = set()
        for m in response.get("modelSummaries", []):
            lifecycle = (m.get("modelLifecycle") or {}).get("status")
            if lifecycle and lifecycle != "ACTIVE":
                continue
            model_id = m.get("modelId")
            if model_id:
                active.add(model_id)

        globals.logger.debug(f"Found {len(active)} ACTIVE foundation models")
        return active

    def _model_id_from_arn(self, arn: str) -> str | None:
        """
        ARN から modelId を抽出

        Args:
            arn: モデル ARN

        Returns:
            str | None: モデル ID
        """
        if not arn:
            return None
        return arn.rsplit("/", 1)[-1]

    def _is_profile_usable(
        self, profile: dict, active_model_ids: set | None
    ) -> bool:
        """
        推論プロファイルが利用可能か判定

        Args:
            profile: 推論プロファイル
            active_model_ids: ACTIVE なモデル ID の集合（None の場合はチェックスキップ）

        Returns:
            bool: 利用可能なら True
        """
        # ステータスチェック
        if profile.get("status") != "ACTIVE":
            return False

        # EOL チェック不可の場合は許可
        if active_model_ids is None:
            return True

        # 参照先モデルが全て ACTIVE か確認
        for model in profile.get("models", []):
            arn = model.get("modelArn")
            if arn:
                model_id = self._model_id_from_arn(arn)
                if model_id not in active_model_ids:
                    globals.logger.info(
                        f"Exclude inference profile {profile.get('inferenceProfileId')} "
                        f"(EOL model: {model_id})"
                    )
                    return False

        return True

    def get_bedrock_models(
        self,
        organization_id: str,
        user_id: str,
        credential_type: str,
    ) -> List[Dict]:
        """
        Bedrockの使用可能なモデル一覧を取得

        Args:
            organization_id: Organization ID
            user_id: User ID
            credential_type: Credentialタイプ (bedrock-cache または bedrock)

        Returns:
            モデル一覧
        """
        try:
            credential_service = get_ai_credential_service()
            credential = credential_service.get_active_credential(
                organization_id=organization_id,
                user_id=user_id,
                credential_type=credential_type,
            )

            # 変数を外側で定義
            aws_session = None

            # Bedrock clientを作成
            if credential_type == "bedrock-cache":
                # AWS Login Cache使用（credential_data.apiKeyにキャッシュファイル全体のJSON文字列が入っている）
                # Use AWS Login Cache (credential_data.apiKey holds the entire cache-file content as a JSON string)
                try:
                    cache_data = json.loads(credential.credential_data.get("apiKey") or "")
                except (TypeError, ValueError):
                    cache_data = None

                if not isinstance(cache_data, dict) or "idToken" not in cache_data:
                    globals.logger.error(
                        f"credential_data.apiKey does not contain a valid cache JSON with idToken. "
                        f"Keys found: {list(credential.credential_data.keys())}"
                    )
                    raise ValueError(
                        "AWS Login Cache credential is missing idToken. "
                        "Please re-register with the full cache file content."
                    )

                region = cache_data.get("region")
                aws_session = create_bedrock_session_from_credential_data(
                    credential_data=cache_data,
                    region=region,
                )
                bedrock_client = aws_session._session.client("bedrock")
            else:
                # 手動Credential使用
                # 環境変数からタイムアウト・リトライ設定を読み取り
                read_timeout = int(os.getenv("AI_ASSISTANT_READ_TIMEOUT", "300"))
                connect_timeout = int(os.getenv("AI_ASSISTANT_CONNECT_TIMEOUT", "30"))
                max_attempts = int(os.getenv("AI_ASSISTANT_MAX_ATTEMPTS", "1"))

                credential_data = credential.credential_data
                session = boto3.Session(
                    aws_access_key_id=credential_data.get("accessKeyId"),
                    aws_secret_access_key=credential_data.get("secretAccessKey"),
                    aws_session_token=credential_data.get("sessionToken"),
                    region_name=credential_data.get("region"),
                )
                bedrock_client = session.client(
                    "bedrock",
                    config=Config(
                        read_timeout=read_timeout,
                        connect_timeout=connect_timeout,
                        retries={"max_attempts": max_attempts, "mode": "standard"},
                    ),
                )

            # EOL フィルタリング用に基礎モデル一覧を取得
            active_model_ids = self._get_active_foundation_model_ids(bedrock_client)

            # list_inference_profiles を呼び出し
            response = bedrock_client.list_inference_profiles()

            # モデルリストを整形
            model_list = []
            if "inferenceProfileSummaries" in response:
                for item in response["inferenceProfileSummaries"]:
                    # EOL チェック
                    if not self._is_profile_usable(item, active_model_ids):
                        continue

                    # Anthropicのモデルのみフィルタリング
                    models = item.get("models", [])
                    is_anthropic = any(
                        "anthropic" in model.get("modelArn", "").lower()
                        for model in models
                    )

                    if not is_anthropic:
                        continue

                    # モデル情報を整形
                    model_id = item.get("inferenceProfileId")
                    model_name = item.get("inferenceProfileName", model_id)
                    status = item.get("status", "UNKNOWN")
                    profile_type = item.get("type", "UNKNOWN")

                    model_list.append({
                        "id": model_id,
                        "name": model_name,
                        "description": f"Type: {profile_type} | Status: {status}",
                        "type": profile_type,
                        "status": status,
                        "models": models,
                    })

            globals.logger.debug(
                f"Retrieved {len(model_list)} Bedrock models for "
                f"service={credential_type}, org={organization_id}, user={user_id}"
            )

            # 最終使用日時とトークン更新（Bedrock呼び出し後）
            if credential_type == "bedrock-cache" and aws_session:
                # bedrock-cacheの場合、トークンが自動更新されている可能性がある
                latest_token = aws_session.get_current_token()
                if latest_token:
                    # トークンが更新された場合、Credentialデータも一緒に保存
                    # credential_dataは{"apiKey": "<キャッシュファイルJSON文字列>"}の形で保存するので、更新後のトークンも同じ形にラップする
                    credential_service.update_last_used(
                        organization_id=organization_id,
                        credential_id=credential.credential_id,
                        credential_data={"apiKey": json.dumps(latest_token)}
                    )
                else:
                    # トークンは更新されていないが、LAST_USED_ATは更新
                    credential_service.update_last_used(
                        organization_id=organization_id,
                        credential_id=credential.credential_id
                    )
            else:
                # bedrock（固定トークン）の場合、LAST_USED_ATのみ更新
                credential_service.update_last_used(
                    organization_id=organization_id,
                    credential_id=credential.credential_id
                )

            return model_list

        except ReadTimeoutError as e:
            # タイムアウト → InternalError
            globals.logger.error(f"Bedrock request timeout: {e}")
            message_id = "500-46001"
            message = f"モデル一覧取得がタイムアウトしました: {str(e)}"
            raise common.InternalErrorException(
                message_id=message_id, message=message
            ) from e

        except CredentialNotFound as e:
            globals.logger.error(f"Credential not found: {e}")
            raise

        except Exception as e:
            globals.logger.error(f"Failed to get Bedrock models: {e}", exc_info=True)
            raise


# シングルトンインスタンス
_service_instance = None


def get_model_service() -> ModelService:
    """
    Model Serviceのシングルトンインスタンスを取得

    Returns:
        ModelService
    """
    global _service_instance
    if _service_instance is None:
        _service_instance = ModelService()
    return _service_instance
