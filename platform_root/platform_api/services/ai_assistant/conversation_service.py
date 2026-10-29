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
Conversation Service

チャット会話管理サービス

会話のやり取りは1ターンずつの個別レコードではなく、T_CHAT_MESSAGEに
JSON配列（1会話分のターン一覧）としてスナップショット保存する。
配列内の各ターンの構造はフロントエンド(ai_assistant_client.js / amazon_bedrock.js)が
扱う履歴配列と同じ形式（role, content[], _timestamp, _thinkingMs, _model）に揃えている。
"""

import json
import os
import re
import time
from datetime import datetime, timezone
from typing import Optional, List, Dict
from contextlib import closing
import ulid
from botocore.exceptions import (
    ClientError,
    BotoCoreError,
    ConnectTimeoutError,
    ReadTimeoutError,
)

from common_library.common.db import DBconnector
from common_library.common import common, multi_lang
from libs import queries_ai_assistant
from services.users.ai_credential_service import (
    get_ai_credential_service,
    CredentialNotFound,
)
from services.ai_assistant.aws_session_manager import (
    create_bedrock_session_from_credential_data,
)
from services.ai_assistant.message_service import get_message_service

import globals

# Bedrock応答生成時のデフォルト最大トークン数(環境変数で上書き可能)
# Default max_tokens for Bedrock response generation (overridable via env var)
AI_ASSISTANT_MAX_TOKENS_DEFAULT = int(os.getenv("AI_ASSISTANT_MAX_TOKENS_DEFAULT", "20480"))

# max_tokensがモデルの上限を超えた場合の自動リトライ回数(環境変数で上書き可能)
# Number of automatic retries when max_tokens exceeds the model's limit (overridable via env var)
AI_ASSISTANT_MAX_TOKENS_RETRY_COUNT = int(os.getenv("AI_ASSISTANT_MAX_TOKENS_RETRY_COUNT", "3"))

# 学習事項をシステムプロンプトへ注入する際の最大件数(環境変数で上書き可能)
# Maximum number of lessons to inject into the system prompt (overridable via env var)
AI_ASSISTANT_LESSONS_MAX_ITEMS = int(os.getenv("AI_ASSISTANT_LESSONS_MAX_ITEMS", "20"))

# 学習事項セクション全体の最大文字数(環境変数で上書き可能)
# Max character length of the lessons section as a whole (overridable via env var)
AI_ASSISTANT_LESSONS_MAX_CHARS = int(os.getenv("AI_ASSISTANT_LESSONS_MAX_CHARS", "6000"))


class ConversationNotFound(Exception):
    """会話が見つからない"""
    pass


def _extract_max_tokens_limit(message: str) -> Optional[int]:
    """
    BedrockのValidationExceptionのメッセージから、モデルのmaxTokens上限を抽出する

    Extract the model's maxTokens limit from a Bedrock ValidationException message

    Args:
        message: エラーメッセージ

    Returns:
        Optional[int]: 上限値(見つからない場合はNone)
    """
    m = re.search(r"model limit of (\d+)", message or "")
    return int(m.group(1)) if m else None


def _now_iso() -> str:
    """UTCの現在時刻をISO8601(Z終端)で返す（フロントエンドの_timestampと同じ形式）"""
    return datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%S.%f")[:-3] + "Z"


# 学習事項を注入しないprompt_profile(学習事項抽出・タイトル生成専用の裏側の会話。既存の学習事項を
# 前提知識として混ぜる必要が無い、あるいは混ぜると目的と噛み合わない)
# prompt_profiles that never get lessons injected (behind-the-scenes conversations for extracting lessons
# or generating a title; injecting existing lessons as background knowledge doesn't apply or fits poorly here)
_PROMPT_PROFILES_WITHOUT_LESSONS = ("Lessons", "GenerateTitle")


def _build_lessons_prompt_section(organization_id: str, workspace_id: str, user_id: str, prompt_profile: str) -> str:
    """
    ユーザーの有効な学習事項からシステムプロンプトへ追記するセクションを構築する

    過去の会話から学習した失敗・教訓・注意点を、重要度(priority)の高い順・更新日時の新しい順に列挙する。
    対象prompt_profileが未設定(全プロファイル共通)の学習事項に加え、引数のprompt_profileに一致する
    学習事項のみを対象にする。prompt_profileが_PROMPT_PROFILES_WITHOUT_LESSONSに該当する場合や、
    学習事項が無い場合は空文字列を返す。
    """
    if prompt_profile in _PROMPT_PROFILES_WITHOUT_LESSONS:
        return ""

    from services.users.lesson_service import get_lesson_service

    lessons = get_lesson_service().get_enabled_lessons_for_prompt(
        organization_id=organization_id,
        workspace_id=workspace_id,
        user_id=user_id,
        prompt_profile=prompt_profile,
        limit=AI_ASSISTANT_LESSONS_MAX_ITEMS,
    )
    if not lessons:
        return ""

    lines = [
        "",
        "",
        "# 過去セッションからの学習事項（前提知識）",
        "以下は過去の会話で判明した失敗・教訓・注意点です。同種の作業では同じ失敗を繰り返さないよう考慮してください。",
        "ただし現在の依頼と無関係な項目は、無理に適用しないでください。",
        "",
    ]
    for item in lessons:
        category = item.category if item.category else "その他"
        lines.append(f"- [優先度:{item.priority}][{category}] {item.lesson}")
    section = "\n".join(lines)

    if len(section) > AI_ASSISTANT_LESSONS_MAX_CHARS:
        section = section[:AI_ASSISTANT_LESSONS_MAX_CHARS] + "\n（以下省略）"

    return section


class ConversationService:
    """
    Conversation Service

    チャット会話の作成・一覧・メッセージ送受信を管理
    """

    def create_conversation(
        self,
        organization_id: str,
        workspace_id: str,
        user_id: str,
        title: str,
        model_id: str,
        ai_service_id: str,
        prompt_profile: str = "LLMEditor",
        tools: Optional[List[Dict]] = None,
    ) -> str:
        """
        会話を作成

        Args:
            organization_id: Organization ID (DB接続用、テーブルには保存しない)
            workspace_id: Workspace ID (DB接続用、テーブルには保存しない)
            user_id: User ID
            title: 会話タイトル
            model_id: 会話のデフォルトモデルID（completionsでmodel_id省略時に使用）
            ai_service_id: 使用するAIサービスID（bedrock-cache/bedrock。指定したサービスのactiveなCredentialが必要）
            prompt_profile: プロンプトプロファイル（AgenticAI/LLMEditor - システムプロンプト切り替え用）
            tools: ツール定義（Anthropic tools形式の配列。省略時はツール未使用の会話になる）

        Returns:
            str: Conversation ID

        Raises:
            CredentialNotFound: 指定したai_service_idのactiveなCredentialが登録されていない
        """
        # 指定されたai_service_id（credential_type）にactiveなCredentialが登録されているか確認する
        # (自動推定はせず、呼び出し側が明示したサービスのCredentialが必要)
        # Verify that an active credential is registered for the specified ai_service_id (credential_type)
        # (no auto-detection; the caller-specified service must have a matching credential)
        get_ai_credential_service().get_active_credential(
            organization_id=organization_id,
            user_id=user_id,
            credential_type=ai_service_id,
        )

        conversation_id = ulid.new().str

        with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
            with closing(conn.cursor()) as cursor:
                cursor.execute(
                    queries_ai_assistant.SQL_INSERT_CONVERSATION,
                    {
                        "conversation_id": conversation_id,
                        "prompt_profile": prompt_profile,
                        "user_id": user_id,
                        "ai_service_id": ai_service_id,
                        "model_id": model_id,
                        "tools": json.dumps(tools) if tools else None,
                        "title": title,
                    },
                )
                conn.commit()

        globals.logger.debug(
            f"Conversation created: id={conversation_id}, "
            f"org={organization_id}, workspace={workspace_id}, user={user_id}, "
            f"prompt_profile={prompt_profile}, ai_service={ai_service_id}, model={model_id}, title={title}"
        )

        return conversation_id

    def list_conversations(
        self,
        organization_id: str,
        workspace_id: str,
        user_id: str,
        prompt_profile: str,
        status: Optional[str] = None,
        limit: int = 50,
        offset: int = 0,
    ) -> tuple[List[Dict], int]:
        """
        会話一覧を取得

        Args:
            organization_id: Organization ID (DB接続用、テーブルには保存しない)
            workspace_id: Workspace ID (DB接続用、テーブルには保存しない)
            user_id: User ID
            prompt_profile: プロンプトプロファイル（会話一覧は常にこの値で絞り込む）
            status: ステータスフィルター (オプション)
            limit: 取得件数
            offset: オフセット

        Returns:
            tuple[List[Dict], int]: (会話一覧, LIMIT/OFFSET適用前の総件数)
        """
        with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
            with closing(conn.cursor()) as cursor:
                cursor.execute(
                    queries_ai_assistant.SQL_LIST_CONVERSATIONS,
                    {
                        "user_id": user_id,
                        "prompt_profile": prompt_profile,
                        "status": status,
                        "limit": limit,
                        "offset": offset,
                    },
                )
                conversations = cursor.fetchall()

                cursor.execute(
                    queries_ai_assistant.SQL_COUNT_CONVERSATIONS,
                    {
                        "user_id": user_id,
                        "prompt_profile": prompt_profile,
                        "status": status,
                    },
                )
                total_count = cursor.fetchone()["total_count"]

        globals.logger.debug(
            f"Listed {len(conversations)} conversations (total_count={total_count}): "
            f"org={organization_id}, user={user_id}, prompt_profile={prompt_profile}"
        )

        return conversations, total_count

    def update_conversation(
        self,
        organization_id: str,
        workspace_id: str,
        user_id: str,
        conversation_id: str,
        title: Optional[str] = None,
        status: Optional[str] = None,
    ) -> Dict:
        """
        会話を部分更新（PATCH。title/statusのうち指定された項目のみ更新する）

        Args:
            organization_id: Organization ID (DB接続用、テーブルには保存しない)
            workspace_id: Workspace ID (DB接続用、テーブルには保存しない)
            user_id: User ID
            conversation_id: Conversation ID
            title: 変更後の会話タイトル (省略時は変更しない)
            status: 変更後のステータス (active/closed/archived。省略時は変更しない)

        Returns:
            Dict: 更新後の{conversation_id, title, status}

        Raises:
            ConversationNotFound: 会話が見つからない
        """
        with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
            with closing(conn.cursor()) as cursor:
                cursor.execute(
                    queries_ai_assistant.SQL_SELECT_CONVERSATION_FOR_PATCH,
                    {"conversation_id": conversation_id, "user_id": user_id},
                )
                conversation = cursor.fetchone()

                if not conversation:
                    raise ConversationNotFound(
                        f"Conversation not found: id={conversation_id}, user={user_id}"
                    )

                cursor.execute(
                    queries_ai_assistant.SQL_UPDATE_CONVERSATION,
                    {
                        "conversation_id": conversation_id,
                        "user_id": user_id,
                        "title": title,
                        "status": status,
                    },
                )
                conn.commit()

        globals.logger.debug(
            f"Conversation updated: id={conversation_id}, user={user_id}, "
            f"title={title}, status={status}"
        )

        # COALESCEで更新した内容をDBへ再度問い合わせずに反映する（未指定の項目は更新前の値を維持）
        # Reflect the COALESCE-based update without re-querying the DB (fields not specified keep their prior value)
        return {
            "conversation_id": conversation_id,
            "title": title if title is not None else conversation["TITLE"],
            "status": status if status is not None else conversation["STATUS"],
        }

    def delete_conversation(
        self,
        organization_id: str,
        workspace_id: str,
        user_id: str,
        conversation_id: str,
    ) -> None:
        """
        会話を削除（紐づくT_CHAT_MESSAGEも合わせて削除する）

        Args:
            organization_id: Organization ID (DB接続用、テーブルには保存しない)
            workspace_id: Workspace ID (DB接続用、テーブルには保存しない)
            user_id: User ID
            conversation_id: Conversation ID

        Raises:
            ConversationNotFound: 会話が見つからない
        """
        with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
            with closing(conn.cursor()) as cursor:
                cursor.execute(
                    queries_ai_assistant.SQL_DELETE_MESSAGES,
                    {"conversation_id": conversation_id},
                )
                cursor.execute(
                    queries_ai_assistant.SQL_DELETE_CONVERSATION,
                    {"conversation_id": conversation_id, "user_id": user_id},
                )
                deleted = cursor.rowcount > 0
                conn.commit()

        if not deleted:
            raise ConversationNotFound(
                f"Conversation not found: id={conversation_id}, user={user_id}"
            )

        globals.logger.debug(
            f"Conversation deleted: id={conversation_id}, user={user_id}"
        )

    def create_completion(
        self,
        organization_id: str,
        workspace_id: str,
        user_id: str,
        conversation_id: str,
        message_text: str = None,
        ai_service_id: str = None,
        model_id: str = None,
        user_language: str = None,
        menu_id: str = None,
    ) -> Dict:
        """
        メッセージを送信してAI応答を取得

        会話全体(直前までの全ターン)はT_CHAT_MESSAGEの最新スナップショットから取得し、
        ユーザーターン・アシスタントターンを追記した配列を新しいスナップショットとして
        T_CHAT_MESSAGEに保存する。

        message_textを省略した場合は、T_CHAT_MESSAGEの既存内容のみでAIに問い合わせる
        （新規ユーザーターンは追加しない）。この場合、応答結果はT_CHAT_MESSAGEに保存せず、
        会話のトークン数も更新しない（問い合わせ結果を確認するだけの用途）。

        Args:
            organization_id: Organization ID (DB接続用、テーブルには保存しない)
            workspace_id: Workspace ID (DB接続用、テーブルには保存しない)
            user_id: User ID
            conversation_id: Conversation ID
            message_text: ユーザーメッセージ (省略可。省略時は既存履歴のみで問い合わせ、結果を保存しない)
            ai_service_id: AIサービスID (メッセージ固有、Noneの場合は会話のデフォルトを使用)
            model_id: AIモデルID (メッセージ固有、Noneの場合は会話のデフォルトを使用)
            user_language: ユーザー言語 (jp, en, None)
            menu_id: メニューID (ITA画面ID、任意)

        Returns:
            Dict: 送信結果

        Raises:
            ConversationNotFound: 会話が見つからない
        """
        # message_textの有無で「新規発言して保存する」か「既存履歴のみで問い合わせて保存しない」かの動作が分岐する
        # Whether message_text is provided branches behavior: "post a new message and save" vs. "query using only existing history without saving"
        has_new_message = bool(message_text)
        with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
            with closing(conn.cursor()) as cursor:
                # 会話の存在確認とAI_SERVICE_ID、PROMPT_PROFILEの取得
                cursor.execute(
                    queries_ai_assistant.SQL_SELECT_CONVERSATION,
                    {"conversation_id": conversation_id, "user_id": user_id},
                )
                conversation = cursor.fetchone()

                if not conversation:
                    raise ConversationNotFound(
                        f"Conversation not found: id={conversation_id}, user={user_id}"
                    )

                # AIサービスIDの決定：メッセージで指定されていればそれを使用、なければ会話のデフォルト
                conversation_default_ai_service_id = conversation["AI_SERVICE_ID"]
                effective_ai_service_id = ai_service_id if ai_service_id else conversation_default_ai_service_id
                # モデルIDの決定：メッセージで指定されていればそれを使用、なければ会話作成時に保存したデフォルトを使用
                # Determine the model ID: use the message-specific value if given, otherwise the default saved when the conversation was created
                conversation_default_model_id = conversation["MODEL_ID"]
                effective_model_id = model_id if model_id else conversation_default_model_id
                prompt_profile = conversation["PROMPT_PROFILE"]
                # ツール定義（Anthropic tools形式）。会話作成時に指定されていなければNone(ツール未使用)
                # Tool definitions (Anthropic tools format). None (no tools) unless specified at conversation creation
                tools = json.loads(conversation["TOOLS"]) if conversation["TOOLS"] else None

        # 直前までの会話ターン一覧を取得（無ければ新規会話として空配列から開始）
        messages = get_message_service().get_latest_message(
            organization_id=organization_id,
            workspace_id=workspace_id,
            conversation_id=conversation_id,
        ) or []

        # LLMに渡すターン一覧（保存対象のmessagesとは別に持つ）
        # ・message指定時: messagesにユーザーターンを追記したものをそのまま使う
        # ・message省略時: 履歴の最後がassistantターンで終わっている場合、Anthropic Messages APIは
        #   assistantターンで終わる会話を受け付けない（"assistant message prefill"未対応で、
        #   必ずuserターンで終える必要がある）ため、直前のassistant応答を一時的に取り除いて
        #   （＝再生成）その手前のuserターンまでで問い合わせる。取り除いた結果は保存しない。
        llm_input_messages = messages

        if has_new_message:
            # ユーザーターンを追記
            # Append the new user turn
            user_turn = {
                "role": "user",
                "content": [{"type": "text", "text": message_text}],
                "_timestamp": _now_iso(),
            }
            # 会話のデフォルトと異なるAIサービスが指定された場合のみ記録する（オーバーライドの記録）
            # Record the override only when the specified AI service differs from the conversation's default
            if ai_service_id and ai_service_id != conversation_default_ai_service_id:
                user_turn["_service"] = ai_service_id
            messages.append(user_turn)
            llm_input_messages = messages
        elif not messages:
            # 新規メッセージも既存履歴も無い場合は問い合わせ不可
            # Cannot query when there is neither a new message nor any existing history
            message_id = "400-45001"
            raise common.BadRequestException(
                message_id=message_id,
                message=multi_lang.get_text(message_id, "messageが未指定で、会話に既存の履歴もありません"),
            )
        elif messages[-1].get("role") == "assistant":
            # 直前のassistant応答を一時的に取り除き、再生成（結果は保存しない）
            # Temporarily drop the trailing assistant turn and regenerate the response (the result is not saved)
            llm_input_messages = messages[:-1]
            if not llm_input_messages:
                # assistantターンを除いた結果userターンも残らない＝問い合わせ可能な発言が無いため400エラー
                # No user turn remains after removing the assistant turn, i.e. nothing to query, so raise a 400 error
                message_id = "400-45002"
                raise common.BadRequestException(
                    message_id=message_id,
                    message=multi_lang.get_text(
                        message_id, "messageが未指定で、会話に問い合わせ可能なユーザーメッセージがありません"
                    ),
                )

        # Bedrockを呼び出し
        try:
            # effective_ai_service_idで認証方式を判定
            credential_service = None
            credential = None
            aws_session = None

            if effective_ai_service_id == "bedrock-cache":
                # AWS Login Cache方式（DBから取得、自動トークン更新）
                # AWS login cache method (retrieved from the DB, with automatic token refresh)
                globals.logger.debug("Using AWS login cache credential for Bedrock authentication")

                credential_service = get_ai_credential_service()
                credential = credential_service.get_active_credential(
                    organization_id=organization_id,
                    user_id=user_id,
                    credential_type=effective_ai_service_id,
                )

                # credential_data.apiKeyにキャッシュファイル全体のJSON文字列が入っているので展開する
                # credential_data.apiKey holds the entire cache-file content as a JSON string, so unwrap it
                cache_data = json.loads(credential.credential_data["apiKey"])
                region = cache_data.get("region")
                aws_session = create_bedrock_session_from_credential_data(
                    credential_data=cache_data,
                    region=region,
                )
                bedrock_client = aws_session.get_bedrock_client()

            elif effective_ai_service_id == "bedrock":
                # 手動Credential方式（固定トークン）
                # Manual credential method (fixed/static token)
                globals.logger.debug("Using manual credential for Bedrock authentication")

                credential_service = get_ai_credential_service()
                credential = credential_service.get_active_credential(
                    organization_id=organization_id,
                    user_id=user_id,
                    credential_type=effective_ai_service_id,
                )

                import boto3
                from botocore.config import Config

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
                    "bedrock-runtime",
                    config=Config(
                        read_timeout=read_timeout,
                        connect_timeout=connect_timeout,
                        retries={"max_attempts": max_attempts, "mode": "standard"},
                    ),
                )

            else:
                # bedrock-cache/bedrock以外のai_service_idは現時点で未対応（将来、他AIプロバイダー対応時に分岐を追加）
                # Any ai_service_id other than bedrock-cache/bedrock is currently unsupported (add a branch here when other AI providers are supported)
                raise ValueError(f"Unsupported ai_service_id for Bedrock: {effective_ai_service_id}")

            # システムプロンプトを読み込み
            from services.ai_assistant.system_prompt_loader import (
                load_system_prompt,
                load_menu_prompt,
            )

            try:
                system_prompt = load_system_prompt(prompt_profile, user_language)
                globals.logger.debug(
                    f"Loaded system prompt for prompt_profile={prompt_profile}, "
                    f"user_language={user_language}: {len(system_prompt)} chars"
                )
            except FileNotFoundError as e:
                globals.logger.warning(f"System prompt not found: {e}. Using empty prompt.")
                system_prompt = None

            # 過去セッションからの学習事項をシステムプロンプトに追記する
            # Append lessons learned from past sessions to the system prompt
            lessons_section = _build_lessons_prompt_section(organization_id, workspace_id, user_id, prompt_profile)
            if lessons_section:
                system_prompt = (system_prompt or "") + lessons_section

            # menu_idが指定されている場合は追加プロンプトを読み込み
            # Load the additional prompt only when menu_id is specified
            if menu_id:
                try:
                    menu_prompt = load_menu_prompt(menu_id, user_language)
                    if menu_prompt:
                        if system_prompt:
                            system_prompt = f"{system_prompt}\n\n{menu_prompt}"
                        else:
                            system_prompt = menu_prompt
                        globals.logger.debug(
                            f"Loaded and appended menu prompt for menu_id={menu_id}: "
                            f"{len(menu_prompt)} chars, total={len(system_prompt)} chars"
                        )
                except Exception as e:
                    globals.logger.warning(
                        f"Failed to load menu prompt for menu_id={menu_id}: {e}"
                    )

            # 会話メッセージ（ユーザーターン追記済み、または再生成用に末尾assistantを除いたもの）
            # からInvokeModel(Anthropic Messages API形式)用messagesを構築する。
            # 各ターンの"_"始まりのキー（_timestamp/_thinkingMs/_model/_service等、内部管理用メタデータ）はAPIに送らず、
            # それ以外（contentブロック内の"type"キーを含む）はai_assistant_client.js / amazon_bedrock.jsと同様にそのまま渡す
            # Build messages for InvokeModel (Anthropic Messages API format) from the conversation turns.
            # Strip keys starting with "_" (internal metadata such as _timestamp/_thinkingMs/_model/_service) from each turn;
            # pass everything else through as-is (including the "type" key inside content blocks), matching ai_assistant_client.js / amazon_bedrock.js
            bedrock_messages = [
                {k: v for k, v in turn.items() if not k.startswith("_")}
                for turn in llm_input_messages
                if turn.get("content")
            ]

            # Prompt Caching: 最新のターンより前の履歴があれば、その直前のターン(=最新ターンを除いた
            # 履歴全体)の最後のcontentブロックにcache_controlを付与する。ターンが増えるたびに境界が
            # 1つずつ後ろへずれていくため、そのターンまでの履歴プレフィックスはキャッシュヒットし、
            # 新規追加分のみが実際に処理される。DBへ保存するmessages本体は変更しないよう、
            # bedrock_messages側でのみ新しいdict/listを作って付与する(元のturnやcontentブロックは変更しない)。
            # Prompt caching: if there is history before the newest turn, attach cache_control to the last
            # content block of the turn immediately preceding it (i.e. all history except the newest turn).
            # The boundary shifts forward by one turn each time, so the prefix up to that point hits the
            # cache and only the newly added content is processed fresh. Only bedrock_messages (not the
            # messages persisted to the DB) is touched; new dicts/lists are created instead of mutating originals.
            if len(bedrock_messages) >= 2:
                cache_boundary_content = list(bedrock_messages[-2].get("content") or [])
                if cache_boundary_content:
                    cache_boundary_content[-1] = {
                        **cache_boundary_content[-1],
                        "cache_control": {"type": "ephemeral"},
                    }
                    bedrock_messages[-2] = {**bedrock_messages[-2], "content": cache_boundary_content}

            # Anthropic Messages API(Bedrock InvokeModel経由)のリクエストボディ。amazon_bedrock.jsのthis.modelと同じ形式に揃えている
            # Anthropic Messages API request body (via Bedrock InvokeModel), matching the same shape as amazon_bedrock.js's this.model
            request_body = {
                "anthropic_version": "bedrock-2023-05-31",
                "max_tokens": AI_ASSISTANT_MAX_TOKENS_DEFAULT,
                "messages": bedrock_messages,
            }
            if system_prompt:
                # Prompt Caching: systemプロンプト(学習事項の注入分含む)は会話中ほぼ不変のため、
                # 文字列ではなくcontentブロック配列形式にしてcache_controlを付与する
                # (両形式ともAnthropic Messages APIで受理されるが、cache_controlの付与には配列形式が必要)
                # Prompt caching: the system prompt (including injected lessons) rarely changes within a
                # conversation, so use the content-block array form (instead of a plain string) with
                # cache_control attached (both forms are accepted by the Anthropic Messages API, but
                # cache_control requires the array form)
                request_body["system"] = [
                    {"type": "text", "text": system_prompt, "cache_control": {"type": "ephemeral"}}
                ]
            # 会話作成時にtoolsが指定されている場合のみ付与する（amazon_bedrock.jsのthis.model.tools/tool_choiceと同様）
            # Only attach tools when specified at conversation creation (matching this.model.tools/tool_choice in amazon_bedrock.js)
            if tools:
                request_body["tools"] = tools
                request_body["tool_choice"] = {"type": "auto"}
                # Prompt Caching: キャッシュのプレフィックス順序はtools→system→messagesで固定されているため、
                # system側にcache_controlを付与していればtoolsも同じキャッシュ範囲に含まれ、ここで別途
                # 付与する必要はない(むしろキャッシュ書き込みポイントが分かれ、無駄なcache creationが増える)。
                # system_promptが無い場合のみ、tools自体をキャッシュ対象にするフォールバックとして付与する。
                # Prompt caching: the cache prefix order is fixed as tools -> system -> messages, so attaching
                # cache_control on the system block already covers tools in the same cached range; attaching
                # it separately here would only split the cache into extra write points for no benefit.
                # Only fall back to marking tools itself when there is no system_prompt to carry the breakpoint.
                if not system_prompt:
                    cached_tools = [dict(tool) for tool in tools]
                    cached_tools[-1] = {**cached_tools[-1], "cache_control": {"type": "ephemeral"}}
                    request_body["tools"] = cached_tools

            # max_tokensがモデルの実際の上限を超えるとBedrockはValidationExceptionを返す。
            # エラーメッセージから実際の上限値("model limit of {N}")を抽出できた場合は、
            # その値に差し替えて最大AI_ASSISTANT_MAX_TOKENS_RETRY_COUNT回まで自動的に再試行する。
            # リトライを使い切ってもmax_tokensエラーが解消しない場合は、max_tokensの値を含めてエラーを返す。
            # If max_tokens exceeds the model's actual limit, Bedrock returns a ValidationException.
            # When the actual limit ("model limit of {N}") can be extracted from the error message,
            # substitute it and retry automatically, up to AI_ASSISTANT_MAX_TOKENS_RETRY_COUNT times.
            # If the max_tokens error persists after exhausting all retries, return an error that includes the max_tokens value.
            current_max_tokens = request_body["max_tokens"]
            max_tokens_retry_count = 0
            while True:
                request_body["max_tokens"] = current_max_tokens
                try:
                    request_start = time.monotonic()
                    raw_response = bedrock_client.invoke_model(
                        modelId=effective_model_id,
                        body=json.dumps(request_body),
                        contentType="application/json",
                        accept="application/json",
                    )
                    thinking_ms = round((time.monotonic() - request_start) * 1000)
                    break
                except ClientError as e:
                    error_info = e.response.get("Error", {})
                    error_code = error_info.get("Code", "")
                    error_message = error_info.get("Message", str(e))
                    limit = (
                        _extract_max_tokens_limit(error_message)
                        if error_code == "ValidationException"
                        else None
                    )
                    if limit is None:
                        # max_tokens以外のエラーは外側のexcept ClientErrorへそのまま伝播する
                        # Errors unrelated to max_tokens propagate to the outer except ClientError as-is
                        raise

                    if max_tokens_retry_count >= AI_ASSISTANT_MAX_TOKENS_RETRY_COUNT:
                        globals.logger.error(
                            f"max_tokens validation error persisted after {max_tokens_retry_count} retries "
                            f"(last attempted max_tokens={current_max_tokens}, model limit={limit})"
                        )
                        status_code = e.response.get("ResponseMetadata", {}).get("HTTPStatusCode", 400)
                        message_id = "500-45002"
                        raise common.OtherException(
                            status_code=status_code,
                            data={
                                "max_tokens": current_max_tokens,
                                "model_max_tokens_limit": limit,
                                "retry_count": max_tokens_retry_count,
                            },
                            # message_idは追跡用に固定値とする(実際に呼び出し元へ返すHTTPステータスはstatus_codeでAIサービスの実値をそのまま伝播する)
                            # Keep message_id fixed for traceability (the actual HTTP status returned to the caller still propagates the AI service's real status via status_code)
                            message_id=message_id,
                            message=multi_lang.get_text(
                                message_id,
                                "max_tokensがモデルの上限を超えています(要求値: {0}, モデル上限: {1}, リトライ回数: {2})",
                                current_max_tokens,
                                limit,
                                max_tokens_retry_count,
                            ),
                        ) from e

                    max_tokens_retry_count += 1
                    globals.logger.warning(
                        f"max_tokens({current_max_tokens}) exceeds model limit; "
                        f"retrying with max_tokens={limit} "
                        f"({max_tokens_retry_count}/{AI_ASSISTANT_MAX_TOKENS_RETRY_COUNT})"
                    )
                    current_max_tokens = limit

            # AIサービスが返したHTTPステータスコードをそのまま呼び出し元に返す
            # （ai_assistant_client.js / amazon_bedrock.jsのfetchWithRetryと同様、
            # 呼び出し側でステータスコードに基づくリトライ判断ができるようにするため。
            # 将来的にBedrock以外のAIサービスに対応した場合も同じキーで返せるよう汎用名にしている）
            ai_status_code = raw_response.get("ResponseMetadata", {}).get("HTTPStatusCode")

            response = json.loads(raw_response["body"].read())

            # 応答のcontentブロック一覧（text/tool_use/thinking等）。toolsを渡した場合、モデルはtool_useブロックで応答することがあるため、
            # 保存・返却するcontentはtext以外のブロックも含めて丸ごと保持する（textのみ抜き出すと呼び出し側でtool呼び出しが消えてしまう）
            # The response's content blocks (text/tool_use/thinking, etc.). When tools are passed, the model may respond with a tool_use block,
            # so keep all blocks (not just text) when saving/returning content — extracting only text would silently drop tool calls.
            response_content_blocks = response.get("content", [])
            # stop_reasonが"tool_use"の場合、呼び出し元はtool_useブロックを見て後続のtool実行を行う想定
            # When stop_reason is "tool_use", the caller is expected to inspect the tool_use block(s) and run the corresponding tool
            stop_reason = response.get("stop_reason")
            input_tokens = response["usage"]["input_tokens"]
            output_tokens = response["usage"]["output_tokens"]
            # Prompt Cachingが有効な場合にBedrockが追加で返すusageフィールド。キャッシュ書き込み/ヒットが
            # 発生していない場合は含まれないため、呼び出し元での確認用にget(...,0)でデフォルト0にしておく
            # Additional usage fields Bedrock returns when Prompt Caching is active. Absent when no cache
            # write/read occurred, so default to 0 for the caller's visibility into whether caching took effect
            cache_creation_input_tokens = response["usage"].get("cache_creation_input_tokens", 0)
            cache_read_input_tokens = response["usage"].get("cache_read_input_tokens", 0)

            # トークン数は「新規発言を保存したか」とは無関係に、Bedrock呼び出しが成功して
            # usageを取得できた時点で常に加算する。message省略時の問い合わせ(既存履歴のみでの
            # 再問い合わせ・tool_result継続・添付ファイルのみのターン等)でも実際にトークンは
            # 消費されているため、保存の有無で加算をスキップすると累積値が実際の消費量より
            # 過小になる(特にtool_result継続は入力トークンが大きく、影響が大きい)。
            # Token counts are accumulated whenever Bedrock returns usage, independent of whether
            # a new message was persisted. Even message-omitted calls (re-querying existing history,
            # tool_result continuations, attachment-only turns, etc.) consume real tokens, so skipping
            # the update based on persistence would under-count the cumulative total (tool_result
            # continuations in particular tend to have large input token counts).
            with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
                with closing(conn.cursor()) as cursor:
                    cursor.execute(
                        queries_ai_assistant.SQL_UPDATE_CONVERSATION_TOKEN_COUNT,
                        {
                            "token_count": input_tokens + output_tokens,
                            "user_id": user_id,
                            "conversation_id": conversation_id,
                        },
                    )
                    conn.commit()

            if has_new_message:
                # 新規発言がある場合のみ、応答をT_CHAT_MESSAGEに保存する
                # Only when there is a new user message do we save the response to T_CHAT_MESSAGE
                # アシスタントターンを追記
                assistant_turn = {
                    "role": "assistant",
                    "content": response_content_blocks,
                    "_timestamp": _now_iso(),
                    "_thinkingMs": thinking_ms,
                    "_model": effective_model_id,
                }
                messages.append(assistant_turn)

                # 新しいスナップショットとしてT_CHAT_MESSAGEへ保存
                saved = get_message_service().create_message(
                    organization_id=organization_id,
                    workspace_id=workspace_id,
                    user_id=user_id,
                    conversation_id=conversation_id,
                    contents=messages,
                )

                total_turns = len(messages)
                saved_message_id = saved["message_id"]
                user_message_seq = total_turns - 1
                assistant_message_seq = total_turns

                globals.logger.debug(
                    f"Message sent and response received: "
                    f"conv={conversation_id}, message_id={saved_message_id}, "
                    f"user_seq={user_message_seq}, assistant_seq={assistant_message_seq}, "
                    f"tokens={input_tokens}+{output_tokens}, "
                    f"cache_read={cache_read_input_tokens}, cache_creation={cache_creation_input_tokens}"
                )
            else:
                # messageを指定しない問い合わせ：既存履歴のみで応答を取得し、保存は行わない
                # Query without a message: get the response using only existing history, and do not persist it
                saved_message_id = None
                user_message_seq = None
                assistant_message_seq = None

                globals.logger.debug(
                    f"Completion generated without persisting (no message provided): "
                    f"conv={conversation_id}, tokens={input_tokens}+{output_tokens}, "
                    f"cache_read={cache_read_input_tokens}, cache_creation={cache_creation_input_tokens}"
                )

            # 最終使用日時とトークン更新（Bedrock呼び出し後）
            if credential_service and credential:
                # bedrock-cache方式のみ呼び出し中に自動更新されたトークンをDBへ書き戻す（bedrock方式は固定トークンのため対象外）
                # Only the bedrock-cache method writes the auto-refreshed token back to the DB (not applicable to the fixed-token bedrock method)
                if effective_ai_service_id == "bedrock-cache" and aws_session:
                    latest_token = aws_session.get_current_token()
                    if latest_token:
                        # credential_dataは{"apiKey": "<キャッシュファイルJSON文字列>"}の形で保存するので、更新後のトークンも同じ形にラップする
                        # credential_data is stored as {"apiKey": "<cache-file JSON string>"}, so wrap the refreshed token the same way
                        credential_service.update_last_used(
                            organization_id=organization_id,
                            credential_id=credential.credential_id,
                            credential_data={"apiKey": json.dumps(latest_token)}
                        )
                    else:
                        # トークンが更新されていない（取得できない）場合は最終使用日時のみ更新
                        # If no refreshed token is available, update only the last-used timestamp
                        credential_service.update_last_used(
                            organization_id=organization_id,
                            credential_id=credential.credential_id
                        )
                else:
                    credential_service.update_last_used(
                        organization_id=organization_id,
                        credential_id=credential.credential_id
                    )

            return {
                "conversation_id": conversation_id,
                "message_id": saved_message_id,
                "user_message_seq": user_message_seq,
                "assistant_message_seq": assistant_message_seq,
                "content": response_content_blocks,
                "stop_reason": stop_reason,
                "saved": has_new_message,
                "ai_status_code": ai_status_code,
                "usage": {
                    "input_tokens": input_tokens,
                    "output_tokens": output_tokens,
                    "total_tokens": input_tokens + output_tokens,
                    "cache_creation_input_tokens": cache_creation_input_tokens,
                    "cache_read_input_tokens": cache_read_input_tokens,
                },
            }

        except ClientError as e:
            # BedrockがHTTPエラーとして返したステータスコードを400/500等にまとめず、そのまま呼び出し元に伝播する（JS版のリトライ判断に合わせる）
            # Propagate the HTTP status code Bedrock returned as-is to the caller instead of collapsing it into 400/500 (matches the JS client's retry logic)
            response_metadata = e.response.get("ResponseMetadata", {})
            status_code = response_metadata.get("HTTPStatusCode", 500)
            error_info = e.response.get("Error", {})
            error_code = error_info.get("Code", "Unknown")
            error_message = error_info.get("Message", str(e))
            globals.logger.error(
                f"Bedrock ClientError: status={status_code}, code={error_code}, message={error_message}"
            )
            message_id = "500-45001"
            raise common.OtherException(
                status_code=status_code,
                # message_idは追跡用に固定値とする(実際に呼び出し元へ返すHTTPステータスはstatus_codeでAIサービスの実値をそのまま伝播する)
                # Keep message_id fixed for traceability (the actual HTTP status returned to the caller still propagates the AI service's real status via status_code)
                message_id=message_id,
                message=multi_lang.get_text(message_id, "AIサービスAPIエラー ({0}): {1}", error_code, error_message),
            ) from e

        except (ReadTimeoutError, ConnectTimeoutError) as e:
            # HTTPステータスが存在しないネットワークタイムアウトのため、上流(AIサービス)のタイムアウトを表す504として返す
            # (408はクライアント側の送信遅延を表し、ブラウザがリクエストを自動で再送してしまうため使わない)
            # No HTTP status exists for a network-level timeout, so return 504 (upstream AI service timeout)
            # (408 means the client was too slow to send, and browsers automatically resend the request, so it is not used)
            globals.logger.error(f"Bedrock request timeout: {e}")
            message_id = "504-45001"
            raise common.OtherException(
                status_code=504,
                message_id=message_id,
                message=multi_lang.get_text(message_id, "AIサービスへのリクエストがタイムアウトしました: {0}", str(e)),
            ) from e

        except BotoCoreError as e:
            # Bedrock自体からのHTTPステータスコードが得られないその他の接続エラー（DNS失敗等）は503として返す
            # Other connection-level errors with no HTTP status code from Bedrock itself (e.g. DNS failure) are returned as 503
            globals.logger.error(f"Bedrock request failed (connection error): {e}")
            message_id = "503-45001"
            raise common.OtherException(
                status_code=503,
                message_id=message_id,
                message=multi_lang.get_text(message_id, "AIサービスへの接続に失敗しました: {0}", str(e)),
            ) from e

        except CredentialNotFound as e:
            # 使用するai_service_idのactiveなCredentialが無い(会話作成後に削除された等)ため404で返す
            # No active credential for the ai_service_id in use (e.g. deleted after the conversation was created), so return 404
            globals.logger.error(f"Credential not found: {e}")
            message_id = "404-45001"
            raise common.NotFoundException(
                message_id=message_id,
                message=multi_lang.get_text(
                    message_id, "指定したai_service_idのCredentialが登録されていません: {0}", effective_ai_service_id
                ),
            ) from e

        except Exception as e:
            globals.logger.error(f"Failed to call Bedrock: {e}", exc_info=True)
            raise


# グローバルインスタンス
_global_conversation_service = ConversationService()


def get_conversation_service() -> ConversationService:
    """
    グローバルConversationServiceを取得

    Returns:
        ConversationService: インスタンス
    """
    return _global_conversation_service
