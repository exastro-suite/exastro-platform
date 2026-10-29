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
AI Credential Service

汎用AIサービスのCredential管理（Bedrock, OpenAI, Anthropic, etc.）
"""

import json
from typing import Optional, Dict, Any
from dataclasses import dataclass
from contextlib import closing
from datetime import datetime
import ulid
import pymysql

from common_library.common.db import DBconnector
from common_library.common import encrypt
from libs import queries_ai_assistant

import globals


@dataclass
class AiCredential:
    """AI Service Credential"""
    credential_id: str
    credential_type: str
    credential_name: str
    credential_data: Dict[str, Any]  # JSON形式のCredentialデータ
    status: str
    expires_at: Optional[datetime] = None
    last_used_at: Optional[datetime] = None


class CredentialNotFound(Exception):
    """Credentialが見つからない"""
    pass


class CredentialAlreadyExists(Exception):
    """このcredential_typeには既にCredentialが登録済み(1credential_typeにつき1件のみ)"""
    pass


class AiCredentialService:
    """
    AI Credential Service

    汎用AIサービスのCredential管理
    """

    def register_credential(
        self,
        organization_id: str,
        user_id: str,
        credential_type: str,
        credential_name: str,
        credential_data: Dict[str, Any],
        notes: Optional[str] = None,
    ) -> str:
        """
        Credentialを登録

        Args:
            organization_id: Organization ID (DB接続用、テーブルには保存しない)
            user_id: User ID
            credential_type: AIサービスID (bedrock, openai, anthropic, etc.)
            credential_name: Credential名
            credential_data: Credentialデータ（JSON形式）
            notes: 備考

        Returns:
            credential_id: 登録されたCredential ID
        """
        credential_id = ulid.new().str

        # Credentialデータを暗号化
        credential_json = json.dumps(credential_data)
        encrypted_data = encrypt.encrypt_str(credential_json)

        with closing(DBconnector().connect_orgdb(organization_id)) as conn:
            with closing(conn.cursor()) as cursor:
                try:
                    cursor.execute(
                        queries_ai_assistant.SQL_INSERT_USER_CREDENTIAL,
                        {
                            "credential_id": credential_id,
                            "user_id": user_id,
                            "credential_type": credential_type,
                            "credential_name": credential_name,
                            "encrypted_credential_data": encrypted_data,
                            # EXPIRES_ATは入力項目として受け付けない(常にNULL。カラム自体は残す)
                            # EXPIRES_AT is not accepted as an input field (always NULL; the column itself is kept)
                            "expires_at": None,
                            "notes": notes,
                        },
                    )
                except pymysql.err.IntegrityError:
                    # UK_USER_TYPE(USER_ID, CREDENTIAL_TYPE)違反＝このcredential_typeは既に登録済み
                    # UK_USER_TYPE(USER_ID, CREDENTIAL_TYPE) violation = a credential is already registered for this credential_type
                    raise CredentialAlreadyExists(
                        f"Credential already registered: service={credential_type}, user={user_id}"
                    )
                conn.commit()

        globals.logger.debug(
            f"AI Credential registered: id={credential_id}, "
            f"service={credential_type}, user={user_id}"
        )

        return credential_id

    def get_credential(
        self,
        organization_id: str,
        user_id: str,
        credential_type: str,
    ) -> AiCredential:
        """
        Credentialを取得（ステータスを問わない。1credential_typeにつき1件のみのため常に0〜1件）

        Args:
            organization_id: Organization ID (DB接続用、テーブルには保存しない)
            user_id: User ID
            credential_type: AIサービスID

        Returns:
            AiCredential

        Raises:
            CredentialNotFound: Credentialが見つからない
        """
        with closing(DBconnector().connect_orgdb(organization_id)) as conn:
            with closing(conn.cursor()) as cursor:
                cursor.execute(
                    queries_ai_assistant.SQL_SELECT_USER_CREDENTIAL_BY_TYPE,
                    {
                        "user_id": user_id,
                        "credential_type": credential_type,
                    },
                )
                row = cursor.fetchone()

                if not row:
                    raise CredentialNotFound(
                        f"Credential not found: service={credential_type}, "
                        f"user={user_id}"
                    )

                return self._row_to_credential(row)

    def get_active_credential(
        self,
        organization_id: str,
        user_id: str,
        credential_type: str,
    ) -> AiCredential:
        """
        activeなCredentialを取得（Bedrock呼び出し等の内部用途。disabled/expiredな場合は見つからない扱い）

        Args:
            organization_id: Organization ID (DB接続用、テーブルには保存しない)
            user_id: User ID
            credential_type: AIサービスID

        Returns:
            AiCredential

        Raises:
            CredentialNotFound: activeなCredentialが見つからない
        """
        with closing(DBconnector().connect_orgdb(organization_id)) as conn:
            with closing(conn.cursor()) as cursor:
                cursor.execute(
                    queries_ai_assistant.SQL_SELECT_USER_ACTIVE_CREDENTIAL_BY_SERVICE,
                    {
                        "user_id": user_id,
                        "credential_type": credential_type,
                    },
                )
                row = cursor.fetchone()

                if not row:
                    raise CredentialNotFound(
                        f"Active credential not found: service={credential_type}, "
                        f"user={user_id}"
                    )

                return self._row_to_credential(row)

    @staticmethod
    def _row_to_credential(row: Dict) -> AiCredential:
        # Credentialデータを復号化
        encrypted_data = row["ENCRYPTED_CREDENTIAL_DATA"]
        decrypted_json = encrypt.decrypt_str(encrypted_data)
        credential_data = json.loads(decrypted_json)

        return AiCredential(
            credential_id=row["CREDENTIAL_ID"],
            credential_type=row["CREDENTIAL_TYPE"],
            credential_name=row["CREDENTIAL_NAME"],
            credential_data=credential_data,
            status=row["STATUS"],
            expires_at=row["EXPIRES_AT"],
            last_used_at=row["LAST_USED_AT"],
        )

    def delete_credential(
        self,
        organization_id: str,
        user_id: str,
        credential_type: str,
    ) -> bool:
        """
        Credentialを削除

        Args:
            organization_id: Organization ID (DB接続用、テーブルには保存しない)
            user_id: User ID
            credential_type: AIサービスID

        Returns:
            削除成功したかどうか
        """
        with closing(DBconnector().connect_orgdb(organization_id)) as conn:
            with closing(conn.cursor()) as cursor:
                cursor.execute(
                    queries_ai_assistant.SQL_DELETE_USER_CREDENTIAL,
                    {
                        "user_id": user_id,
                        "credential_type": credential_type,
                    },
                )
                deleted = cursor.rowcount > 0
                conn.commit()

        if deleted:
            globals.logger.debug(
                f"AI Credential deleted: service={credential_type}, user={user_id}"
            )

        return deleted

    def update_credential(
        self,
        organization_id: str,
        user_id: str,
        credential_type: str,
        credential_name: Optional[str] = None,
        credential_data: Optional[Dict] = None,
        notes: Optional[str] = None,
    ) -> bool:
        """
        Credentialを更新（全体更新。1credential_typeにつき1件のみのためcredential_idは不要）

        Args:
            organization_id: Organization ID (DB接続用、テーブルには保存しない)
            user_id: User ID
            credential_type: Credentialタイプ
            credential_name: Credential名（必須）
            credential_data: Credentialデータ（必須）
            notes: 備考（任意）

        Returns:
            更新成功したかどうか
        """
        with closing(DBconnector().connect_orgdb(organization_id)) as conn:
            with closing(conn.cursor()) as cursor:
                # 更新するフィールドを動的に構築
                update_fields = []
                params = []

                if credential_name is not None:
                    update_fields.append("CREDENTIAL_NAME = %s")
                    params.append(credential_name)

                if credential_data is not None:
                    # Credentialデータを暗号化
                    credential_json = json.dumps(credential_data)
                    encrypted_data = encrypt.encrypt_str(credential_json)
                    update_fields.append("ENCRYPTED_CREDENTIAL_DATA = %s")
                    params.append(encrypted_data)

                if notes is not None:
                    update_fields.append("NOTES = %s")
                    params.append(notes)

                # 共通の更新フィールド
                update_fields.append("LAST_UPDATE_TIMESTAMP = NOW(6)")
                update_fields.append("LAST_UPDATE_USER = %s")
                params.append(user_id)

                # WHERE句のパラメータ
                params.extend([user_id, credential_type])

                query = f"""
                    UPDATE T_USER_CREDENTIAL
                    SET {', '.join(update_fields)}
                    WHERE USER_ID = %s
                      AND CREDENTIAL_TYPE = %s
                """

                cursor.execute(query, params)
                updated = cursor.rowcount > 0
                conn.commit()

        if updated:
            globals.logger.debug(
                f"Credential updated: type={credential_type}, user={user_id}, "
                f"fields={[k.split('=')[0].strip() for k in update_fields if '=' in k]}"
            )

        return updated

    def update_last_used(
        self,
        organization_id: str,
        credential_id: str,
        credential_data: Optional[dict] = None,
    ) -> None:
        """
        最終使用日時を更新（オプションでCredentialデータも更新）

        Args:
            organization_id: Organization ID (DB接続用、テーブルには保存しない)
            credential_id: Credential ID
            credential_data: 更新するCredentialデータ（Noneの場合は最終使用日時のみ更新）
                           bedrock-cacheの場合、トークン自動更新後の最新データを渡す
        """
        with closing(DBconnector().connect_orgdb(organization_id)) as conn:
            with closing(conn.cursor()) as cursor:
                if credential_data:
                    # Credentialデータと最終使用日時を更新
                    encrypted_data = encrypt.encrypt_str(json.dumps(credential_data))

                    cursor.execute(
                        queries_ai_assistant.SQL_UPDATE_CREDENTIAL_DATA_AND_LAST_USED,
                        {
                            "encrypted_credential_data": encrypted_data,
                            "credential_id": credential_id,
                        },
                    )

                    globals.logger.debug(
                        f"Updated credential data and last_used: credential_id={credential_id}"
                    )
                else:
                    # 最終使用日時のみ更新
                    cursor.execute(
                        queries_ai_assistant.SQL_UPDATE_CREDENTIAL_LAST_USED,
                        {"credential_id": credential_id},
                    )

                    globals.logger.debug(
                        f"Updated last_used only: credential_id={credential_id}"
                    )

                conn.commit()


# シングルトンインスタンス
_service_instance: Optional[AiCredentialService] = None


def get_ai_credential_service() -> AiCredentialService:
    """
    AI Credential Serviceのシングルトンインスタンスを取得

    Returns:
        AiCredentialService
    """
    global _service_instance
    if _service_instance is None:
        _service_instance = AiCredentialService()
    return _service_instance
