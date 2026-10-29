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
Message Service

会話メッセージ（UI用）の管理
"""

import json
from contextlib import closing
from typing import Dict, List, Optional

import ulid
from common_library.common.db import DBconnector
from libs import queries_ai_assistant

import globals


class MessageService:
    """
    会話メッセージサービス
    """

    def create_message(
        self,
        organization_id: str,
        workspace_id: str,
        user_id: str,
        conversation_id: str,
        contents: List[Dict],
    ) -> Dict:
        """
        メッセージレコードを作成

        Args:
            organization_id: Organization ID
            workspace_id: Workspace ID
            user_id: User ID
            conversation_id: Conversation ID
            contents: コンテンツ（JSON配列全体 - role, content, _timestamp等を含む配列）

        Returns:
            作成したメッセージレコード
        """
        with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
            with closing(conn.cursor()) as cursor:
                # 次のSEQを取得
                cursor.execute(
                    queries_ai_assistant.SQL_GET_NEXT_MESSAGE_SEQ,
                    {"conversation_id": conversation_id},
                )
                result = cursor.fetchone()
                next_seq = result["next_seq"]

                # メッセージレコードを作成
                message_id = ulid.new().str
                contents_json = json.dumps(contents, ensure_ascii=False)

                cursor.execute(
                    queries_ai_assistant.SQL_INSERT_MESSAGE,
                    {
                        "message_id": message_id,
                        "conversation_id": conversation_id,
                        "message_seq": next_seq,
                        "contents": contents_json,
                        "user_id": user_id,
                    },
                )

                conn.commit()

                globals.logger.debug(
                    f"Created message: id={message_id}, conv={conversation_id}, "
                    f"seq={next_seq}"
                )

                return {
                    "message_id": message_id,
                    "conversation_id": conversation_id,
                    "message_seq": next_seq,
                    "contents": contents,
                }

    def get_latest_message(
        self,
        organization_id: str,
        workspace_id: str,
        conversation_id: str,
    ) -> Optional[List[Dict]]:
        """
        会話の最新のメッセージスナップショット（JSON配列全体）を取得

        /completionsエンドポイントが会話のやり取りを継続する際、
        直前までの全ターン（role, content, _timestamp等）を取得するために使う。

        Args:
            organization_id: Organization ID
            workspace_id: Workspace ID
            conversation_id: Conversation ID

        Returns:
            直近のcontents（JSON配列）。メッセージが存在しない場合はNone。
        """
        with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
            with closing(conn.cursor()) as cursor:
                cursor.execute(
                    queries_ai_assistant.SQL_SELECT_LATEST_MESSAGE,
                    {"conversation_id": conversation_id},
                )
                row = cursor.fetchone()

        if not row:
            return None

        try:
            return json.loads(row["CONTENTS"])
        except (json.JSONDecodeError, TypeError):
            # CONTENTSが破損している場合はエラーにせずNone扱いにし、新規会話と同様に空履歴から開始させる
            # If CONTENTS is corrupted, treat it as None instead of raising, so the conversation starts fresh with empty history
            return None

    def list_messages(
        self,
        organization_id: str,
        workspace_id: str,
        user_id: str,
        conversation_id: str,
        limit: int = 100,
        offset: int = 0,
    ) -> List[Dict]:
        """
        会話のメッセージ一覧を取得

        Args:
            organization_id: Organization ID
            workspace_id: Workspace ID
            user_id: User ID
            conversation_id: Conversation ID
            limit: 取得件数
            offset: オフセット（MESSAGE_SEQ基準）

        Returns:
            メッセージレコードのリスト（各レコードにJSON配列全体を含む）
        """
        with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
            with closing(conn.cursor()) as cursor:
                # 会話の存在確認とオーナーシップ確認
                cursor.execute(
                    queries_ai_assistant.SQL_SELECT_CONVERSATION_FOR_MESSAGE,
                    {"conversation_id": conversation_id, "user_id": user_id},
                )
                if not cursor.fetchone():
                    raise ValueError(
                        f"Conversation not found or access denied: {conversation_id}"
                    )

                # メッセージを取得
                cursor.execute(
                    queries_ai_assistant.SQL_LIST_MESSAGES,
                    {
                        "conversation_id": conversation_id,
                        "limit": limit,
                        "offset": offset,
                    },
                )

                messages = []
                for row in cursor.fetchall():
                    # CONTENTSをJSONとしてパース
                    try:
                        contents = json.loads(row["CONTENTS"])
                    except (json.JSONDecodeError, TypeError):
                        # 1件が破損していても一覧全体は返したいため、その要素だけ空配列にして続行する
                        # Even if one record is corrupted, keep returning the full list by substituting an empty array for that item only
                        contents = []

                    message_dict = {
                        "message_id": row["MESSAGE_ID"],
                        "conversation_id": row["CONVERSATION_ID"],
                        "message_seq": row["MESSAGE_SEQ"],
                        "contents": contents,
                        "created_at": row["CREATE_TIMESTAMP"].isoformat() if row["CREATE_TIMESTAMP"] else None,
                        "updated_at": row["LAST_UPDATE_TIMESTAMP"].isoformat() if row["LAST_UPDATE_TIMESTAMP"] else None,
                    }

                    messages.append(message_dict)

                globals.logger.debug(
                    f"Listed {len(messages)} messages: conv={conversation_id}"
                )

                return messages

    def replace_messages(
        self,
        organization_id: str,
        workspace_id: str,
        user_id: str,
        conversation_id: str,
        messages: List[List[Dict]],
    ) -> List[Dict]:
        """
        会話メッセージを全置き換え

        既存のT_CHAT_MESSAGEレコードを全て削除し、指定されたcontents配列群を
        新しいメッセージレコードとして登録し直す（GETで取得できる内容をそのまま置き換えるイメージ）。

        Args:
            organization_id: Organization ID
            workspace_id: Workspace ID
            user_id: User ID
            conversation_id: Conversation ID
            messages: 置き換え後のメッセージレコード一覧（各要素はcontents配列）

        Returns:
            置き換え後のメッセージレコードのリスト

        Raises:
            ValueError: 会話が見つからない
        """
        with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
            with closing(conn.cursor()) as cursor:
                # 会話の存在確認とオーナーシップ確認
                cursor.execute(
                    queries_ai_assistant.SQL_SELECT_CONVERSATION_FOR_MESSAGE,
                    {"conversation_id": conversation_id, "user_id": user_id},
                )
                if not cursor.fetchone():
                    raise ValueError(
                        f"Conversation not found or access denied: {conversation_id}"
                    )

                # 既存のメッセージを全削除してから置き換え後の内容を登録し直す
                cursor.execute(
                    queries_ai_assistant.SQL_DELETE_MESSAGES,
                    {"conversation_id": conversation_id},
                )

                results = []
                for index, contents in enumerate(messages, start=1):
                    message_id = ulid.new().str
                    contents_json = json.dumps(contents, ensure_ascii=False)

                    cursor.execute(
                        queries_ai_assistant.SQL_INSERT_MESSAGE,
                        {
                            "message_id": message_id,
                            "conversation_id": conversation_id,
                            "message_seq": index,
                            "contents": contents_json,
                            "user_id": user_id,
                        },
                    )

                    results.append({
                        "message_id": message_id,
                        "conversation_id": conversation_id,
                        "message_seq": index,
                        "contents": contents,
                    })

                conn.commit()

                globals.logger.debug(
                    f"Replaced messages: conv={conversation_id}, count={len(results)}"
                )

                return results

    def delete_messages(
        self,
        organization_id: str,
        workspace_id: str,
        user_id: str,
        conversation_id: str,
    ) -> int:
        """
        会話メッセージを全削除

        Args:
            organization_id: Organization ID
            workspace_id: Workspace ID
            user_id: User ID
            conversation_id: Conversation ID

        Returns:
            削除件数

        Raises:
            ValueError: 会話が見つからない
        """
        with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
            with closing(conn.cursor()) as cursor:
                # 会話の存在確認とオーナーシップ確認
                cursor.execute(
                    queries_ai_assistant.SQL_SELECT_CONVERSATION_FOR_MESSAGE,
                    {"conversation_id": conversation_id, "user_id": user_id},
                )
                if not cursor.fetchone():
                    raise ValueError(
                        f"Conversation not found or access denied: {conversation_id}"
                    )

                cursor.execute(
                    queries_ai_assistant.SQL_DELETE_MESSAGES,
                    {"conversation_id": conversation_id},
                )
                deleted_count = cursor.rowcount

                conn.commit()

                globals.logger.debug(
                    f"Deleted messages: conv={conversation_id}, count={deleted_count}"
                )

                return deleted_count


# シングルトンインスタンス
_service_instance = None


def get_message_service() -> MessageService:
    """
    MessageServiceのシングルトンインスタンスを取得

    Returns:
        MessageService
    """
    global _service_instance
    if _service_instance is None:
        _service_instance = MessageService()
    return _service_instance
