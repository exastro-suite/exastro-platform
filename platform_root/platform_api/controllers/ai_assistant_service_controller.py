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
AI Assistant Service Controller

AIアシスタントに関する操作
"""

import connexion
import copy
import inspect
import json
from contextlib import closing

from common_library.common import common, multi_lang, organization_options, validation
from common_library.common.db import DBconnector
from services.ai_assistant.conversation_service import (
    get_conversation_service,
    ConversationNotFound,
)
from services.ai_assistant.message_service import get_message_service
from services.users.ai_credential_service import CredentialNotFound
from services.users.lesson_service import (
    get_lesson_service,
    LessonLimitExceeded,
    AI_ASSISTANT_LESSONS_MAX_COUNT,
)

import globals

# AIアシスタント機能(ai_assistant driver)が有効な組織のみAIAssistantServiceのAPIを許可するデコレータ
# Decorator that only allows AIAssistantService APIs for organizations with the ai_assistant driver enabled
require_ai_assistant_driver = organization_options.require_ita_driver(
    "ai_assistant",
    "403-44001",
    "AIアシスタント機能が有効になっていません",
)

# 現時点でシステムとして利用可能なAIサービス一覧（固定値。他プロバイダー対応時にここへ追加する）
# List of AI services currently supported by the system (fixed; add to this when other providers are supported)
AVAILABLE_AI_SERVICES = [
    {
        "ai_service_id": "bedrock-cache",
        "ai_service_name": "Amazon Bedrock (Login Cache)",
        "description": "AWS Login Cacheを使用し、トークンを自動更新する認証方式",
        # credential_data入力フォームの定義。ここで定義したキー名でそのままcredential_dataに保存される
        # (例: apiKeyの値はcredential_data.apiKeyに入る)
        # Definition of the credential_data input form. Saved into credential_data verbatim under these key names
        # (e.g. the value of apiKey ends up in credential_data.apiKey)
        "settings": {
            "apiKey": {
                "title": "認証情報（Login Cache）",
                "type": "password",
                "required": True,
            },
        },
    },
    {
        "ai_service_id": "bedrock",
        "ai_service_name": "Amazon Bedrock",
        "description": "手動登録したアクセスキー等の固定Credentialを使用する認証方式",
        "settings": {
            "accessKeyId": {
                "title": "AWS Access Key ID",
                "type": "text",
                "required": True,
            },
            "secretAccessKey": {
                "title": "AWS Secret Access Key",
                "type": "password",
                "required": True,
            },
            "sessionToken": {
                "title": "AWS Session Token (optional for SSO)",
                "type": "password",
                "required": False,
            },
            "region": {
                "title": "AWS Region",
                "type": "text",
                "required": True,
            },
        },
    },
]

# AVAILABLE_AI_SERVICESのdescription/settings[].titleをmulti_lang.get_textで多言語化するための対応表。
# (service_id, "description") または (service_id, "settings", setting_key, "title") -> message_id
# multi_lang.get_textはリクエストコンテキスト(Languageヘッダー)が必要なため、モジュール読み込み時ではなく
# リクエスト処理時に_localized_ai_services()で差し替える
# Mapping used to localize AVAILABLE_AI_SERVICES' description/settings[].title via multi_lang.get_text.
# multi_lang.get_text requires an active request context (Language header), so the substitution happens
# at request time in _localized_ai_services(), not at module load time
_AI_SERVICE_TEXT_MESSAGE_IDS = {
    ("bedrock-cache", "description"): "000-44001",
    ("bedrock-cache", "settings", "apiKey", "title"): "000-44002",
    ("bedrock", "description"): "000-44003",
    ("bedrock", "settings", "accessKeyId", "title"): "000-44004",
    ("bedrock", "settings", "secretAccessKey", "title"): "000-44005",
    ("bedrock", "settings", "sessionToken", "title"): "000-44006",
    ("bedrock", "settings", "region", "title"): "000-44007",
}


def _localized_ai_services():
    """AVAILABLE_AI_SERVICESのdescription/settings[].titleをmulti_lang.get_textで多言語化したコピーを返す
    Return a copy of AVAILABLE_AI_SERVICES with description/settings[].title localized via multi_lang.get_text

    Returns:
        list[dict]
    """
    services = copy.deepcopy(AVAILABLE_AI_SERVICES)

    for service in services:
        service_id = service.get("ai_service_id")

        description_message_id = _AI_SERVICE_TEXT_MESSAGE_IDS.get((service_id, "description"))
        if description_message_id:
            service["description"] = multi_lang.get_text(description_message_id, service["description"])

        for setting_key, setting in service.get("settings", {}).items():
            title_message_id = _AI_SERVICE_TEXT_MESSAGE_IDS.get(
                (service_id, "settings", setting_key, "title")
            )
            if title_message_id:
                setting["title"] = multi_lang.get_text(title_message_id, setting["title"])

    return services


@common.platform_exception_handler
@require_ai_assistant_driver
def get_ai_services(organization_id):
    """
    システムとして利用可能なAIサービス一覧を取得

    :param organization_id:
    :type organization_id: str

    :rtype: dict
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    services = _localized_ai_services()

    return common.response_200_ok(
        {
            "ai_services": services,
            "count": len(services),
        }
    )


@common.platform_exception_handler
@require_ai_assistant_driver
def create_conversation(body, organization_id, workspace_id):
    """
    会話を作成

    :param body:
    :type body: dict
    :param organization_id:
    :type organization_id: str
    :param workspace_id:
    :type workspace_id: str

    :rtype: dict
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    r = connexion.request
    user_id = r.headers.get("User-id")

    body = r.get_json()
    title = body.get("title")
    model_id = body.get("model_id")
    ai_service_id = body.get("ai_service_id")
    prompt_profile = body.get("prompt_profile", "LLMEditor")
    tools = body.get("tools")  # ツール定義（Anthropic tools形式の配列、任意）

    # バリデーション（共通のvalidationモジュールを使用）
    validate = validation.validate_conversation_title(title)
    if not validate.ok:
        return common.response_validation_error(validate)

    # completionsでmodel_idを省略した際のデフォルトとして使うため、会話作成時に必須とする
    # Required at conversation creation time, since it becomes the default used when model_id is omitted in completions
    validate = validation.validate_conversation_model_id(model_id)
    if not validate.ok:
        return common.response_validation_error(validate)

    # どのAIサービスを使うかを明確化するため必須とする（自動推定はしない）
    # Required to make explicit which AI service is used (no auto-detection)
    validate = validation.validate_conversation_ai_service_id(ai_service_id)
    if not validate.ok:
        return common.response_validation_error(validate)

    validate = validation.validate_conversation_tools(tools)
    if not validate.ok:
        return common.response_validation_error(validate)

    try:
        service = get_conversation_service()

        conversation_id = service.create_conversation(
            organization_id=organization_id,
            workspace_id=workspace_id,
            user_id=user_id,
            title=title,
            model_id=model_id,
            ai_service_id=ai_service_id,
            prompt_profile=prompt_profile,
            tools=tools,
        )

        # 作成された会話を取得してAI_SERVICE_ID/MODEL_ID/TOOLSを含む完全な情報を返す
        with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
            with closing(conn.cursor()) as cursor:
                cursor.execute(
                    """
                    SELECT CONVERSATION_ID, PROMPT_PROFILE, AI_SERVICE_ID, MODEL_ID, TOOLS, TITLE, STATUS
                    FROM T_CHAT_CONVERSATION
                    WHERE CONVERSATION_ID = %s
                    """,
                    (conversation_id,),
                )
                conversation = cursor.fetchone()

        globals.logger.debug(
            f"Conversation created: id={conversation_id}, "
            f"prompt_profile={prompt_profile}, ai_service={conversation['AI_SERVICE_ID']}, model={conversation['MODEL_ID']}, "
            f"org={organization_id}, workspace={workspace_id}, user={user_id}"
        )

        return common.response_200_ok(
            {
                "conversation_id": conversation_id,
                "prompt_profile": conversation["PROMPT_PROFILE"],
                "ai_service_id": conversation["AI_SERVICE_ID"],
                "model_id": conversation["MODEL_ID"],
                "tools": json.loads(conversation["TOOLS"]) if conversation["TOOLS"] else [],
                "title": title,
                "status": conversation["STATUS"],
            }
        )

    except CredentialNotFound:
        # 指定したai_service_idのactiveなCredentialが未登録
        # No active credential registered for the specified ai_service_id
        message_id = "404-44001"
        message = multi_lang.get_text(
            message_id,
            "指定したai_service_idのCredentialが登録されていません: {}",
            ai_service_id
        )
        raise common.NotFoundException(message_id=message_id, message=message)

    except Exception as e:
        globals.logger.error(f"Failed to create conversation: {e}", exc_info=True)
        message_id = "500-44008"
        message = multi_lang.get_text(
            message_id,
            "会話作成に失敗しました: {}",
            str(e)
        )
        raise common.InternalErrorException(message_id=message_id, message=message)


@common.platform_exception_handler
@require_ai_assistant_driver
def list_conversations(organization_id, workspace_id, prompt_profile, status=None, limit=50, offset=0):
    """
    会話一覧を取得

    :param organization_id:
    :type organization_id: str
    :param workspace_id:
    :type workspace_id: str
    :param prompt_profile:
    :type prompt_profile: str
    :param status:
    :type status: str
    :param limit:
    :type limit: int
    :param offset:
    :type offset: int

    :rtype: dict
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    r = connexion.request
    user_id = r.headers.get("User-id")

    try:
        service = get_conversation_service()

        conversations, total_count = service.list_conversations(
            organization_id=organization_id,
            workspace_id=workspace_id,
            user_id=user_id,
            prompt_profile=prompt_profile,
            status=status,
            limit=limit,
            offset=offset,
        )

        # レスポンス用に整形
        conversations_data = []
        for conv in conversations:
            conversations_data.append({
                "conversation_id": conv["CONVERSATION_ID"],
                "prompt_profile": conv["PROMPT_PROFILE"],
                "ai_service_id": conv["AI_SERVICE_ID"],
                "model_id": conv["MODEL_ID"],
                "title": conv["TITLE"],
                "status": conv["STATUS"],
                "current_token_count": conv["CURRENT_TOKEN_COUNT"] or 0,
                "message_count": conv.get("MESSAGE_COUNT", 0),
                "created_at": conv["CREATE_TIMESTAMP"].isoformat() if conv["CREATE_TIMESTAMP"] else None,
                "updated_at": conv["LAST_UPDATE_TIMESTAMP"].isoformat() if conv["LAST_UPDATE_TIMESTAMP"] else None,
            })

        return common.response_200_ok(
            {
                "conversations": conversations_data,
                "count": len(conversations_data),
                "total_count": total_count,
            }
        )

    except Exception as e:
        globals.logger.error(f"Failed to list conversations: {e}", exc_info=True)
        message_id = "500-44009"
        message = multi_lang.get_text(
            message_id,
            "会話一覧取得に失敗しました: {}",
            str(e)
        )
        raise common.InternalErrorException(message_id=message_id, message=message)


@common.platform_exception_handler
@require_ai_assistant_driver
def update_conversation(body, conversation_id, organization_id, workspace_id):
    """
    会話を部分更新（PATCH。title/statusのうち指定された項目のみ更新する）

    :param body:
    :type body: dict
    :param conversation_id:
    :type conversation_id: str
    :param organization_id:
    :type organization_id: str
    :param workspace_id:
    :type workspace_id: str

    :rtype: dict
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    r = connexion.request
    user_id = r.headers.get("User-id")

    body = r.get_json()
    title = body.get("title")
    status = body.get("status")

    # バリデーション（共通のvalidationモジュールを使用。PATCHのため、指定された項目のみ検証する）
    # Validation (via the common validation module). Only validate the fields that were actually provided, since this is a PATCH
    if title is not None:
        validate = validation.validate_conversation_title(title)
        if not validate.ok:
            return common.response_validation_error(validate)

    if status is not None:
        validate = validation.validate_conversation_status(status)
        if not validate.ok:
            return common.response_validation_error(validate)

    try:
        service = get_conversation_service()

        updated = service.update_conversation(
            organization_id=organization_id,
            workspace_id=workspace_id,
            user_id=user_id,
            conversation_id=conversation_id,
            title=title,
            status=status,
        )

        globals.logger.debug(
            f"Conversation updated: id={conversation_id}, "
            f"org={organization_id}, workspace={workspace_id}, user={user_id}"
        )

        return common.response_200_ok(updated)

    except ConversationNotFound:
        message_id = "404-44007"
        message = multi_lang.get_text(
            message_id,
            "会話が見つかりません"
        )
        raise common.NotFoundException(message_id=message_id, message=message)

    except Exception as e:
        globals.logger.error(f"Failed to update conversation: {e}", exc_info=True)
        message_id = "500-44015"
        message = multi_lang.get_text(
            message_id,
            "会話の更新に失敗しました: {}",
            str(e)
        )
        raise common.InternalErrorException(message_id=message_id, message=message)


@common.platform_exception_handler
@require_ai_assistant_driver
def delete_conversation(conversation_id, organization_id, workspace_id):
    """
    会話を削除（紐づくメッセージ履歴も合わせて削除する）

    :param conversation_id:
    :type conversation_id: str
    :param organization_id:
    :type organization_id: str
    :param workspace_id:
    :type workspace_id: str

    :rtype: dict
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    r = connexion.request
    user_id = r.headers.get("User-id")

    try:
        service = get_conversation_service()

        service.delete_conversation(
            organization_id=organization_id,
            workspace_id=workspace_id,
            user_id=user_id,
            conversation_id=conversation_id,
        )

        globals.logger.debug(
            f"Conversation deleted: id={conversation_id}, "
            f"org={organization_id}, workspace={workspace_id}, user={user_id}"
        )

        return common.response_200_ok(
            {
                "conversation_id": conversation_id,
                "message": "Conversation deleted successfully",
            }
        )

    except ConversationNotFound:
        message_id = "404-44008"
        message = multi_lang.get_text(
            message_id,
            "会話が見つかりません"
        )
        raise common.NotFoundException(message_id=message_id, message=message)

    except Exception as e:
        globals.logger.error(f"Failed to delete conversation: {e}", exc_info=True)
        message_id = "500-44016"
        message = multi_lang.get_text(
            message_id,
            "会話の削除に失敗しました: {}",
            str(e)
        )
        raise common.InternalErrorException(message_id=message_id, message=message)


@common.platform_exception_handler
@require_ai_assistant_driver
def create_completion(body, conversation_id, organization_id, workspace_id):
    """
    AI応答を生成（会話を1ターン進める）

    :param body:
    :type body: dict
    :param conversation_id:
    :type conversation_id: str
    :param organization_id:
    :type organization_id: str
    :param workspace_id:
    :type workspace_id: str

    :rtype: dict
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    r = connexion.request
    user_id = r.headers.get("User-id")

    body = r.get_json()
    # message省略時は、会話の既存履歴(T_CHAT_MESSAGE)のみでAIに問い合わせる（結果は保存しない）
    message_text = body.get("message")
    ai_service_id = body.get("ai_service_id")  # メッセージ固有のAIサービスID（任意、会話のデフォルトをオーバーライド）
    model_id = body.get("model_id")  # メッセージ固有のモデルID（任意、省略時は会話作成時に保存したデフォルトを使用）
    menu_id = body.get("menu_id")  # ITA画面ID（任意）

    try:
        service = get_conversation_service()

        # ユーザー言語を取得 (platform-authが設定するLanguageヘッダー(ログイン画面で選択した言語: ja/en)から)
        # Determine the user's language from the Language header set by platform-auth (language selected on the login screen: ja/en)
        language = (connexion.request.headers.get('Language') or '').lower()
        user_language = {'ja': 'jp', 'en': 'en'}.get(language)

        globals.logger.debug(
            f"User language detected: {user_language} (Language: {language}), "
            f"ai_service_id: {ai_service_id}, menu_id: {menu_id}"
        )

        result = service.create_completion(
            organization_id=organization_id,
            workspace_id=workspace_id,
            user_id=user_id,
            conversation_id=conversation_id,
            message_text=message_text,
            ai_service_id=ai_service_id,
            model_id=model_id,
            user_language=user_language,
            menu_id=menu_id,
        )

        globals.logger.debug(
            f"Completion created: conv={conversation_id}, "
            f"workspace={workspace_id}, "
            f"saved={result['saved']}, "
            f"message_id={result['message_id']}, "
            f"user_seq={result['user_message_seq']}, "
            f"assistant_seq={result['assistant_message_seq']}"
        )

        return common.response_200_ok(result)

    except ConversationNotFound:
        message_id = "404-44002"
        message = multi_lang.get_text(
            message_id,
            "会話が見つかりません"
        )
        raise common.NotFoundException(message_id=message_id, message=message)

    except common.NotFoundException:
        # サービス層で判定した404（使用するai_service_idのCredentialが未登録等）を500に潰さずそのまま伝播させる
        # Re-raise 404s detected in the service layer (e.g. no credential registered for the ai_service_id in use) instead of collapsing them into 500
        raise

    except common.BadRequestException:
        # サービス層で判定したバリデーションエラー（message省略時の会話状態チェック等）を500に潰さずそのまま伝播させる
        # Re-raise validation errors detected in the service layer (e.g. conversation-state checks when message is omitted) instead of collapsing them into 500
        raise

    except common.OtherException:
        # AIサービスが返した実際のHTTPステータスコードを500に潰さずそのまま伝播させる（呼び出し元でリトライ判断に使うため）
        # Re-raise the actual HTTP status code returned by the AI service instead of collapsing it into 500 (the caller uses it for retry decisions)
        raise

    except Exception as e:
        globals.logger.error(f"Failed to create completion: {e}", exc_info=True)
        message_id = "500-44010"
        message = multi_lang.get_text(
            message_id,
            "AI応答の生成に失敗しました: {}",
            str(e)
        )
        raise common.InternalErrorException(message_id=message_id, message=message)


@common.platform_exception_handler
@require_ai_assistant_driver
def create_message(conversation_id, organization_id, workspace_id):
    """
    会話メッセージを作成

    Args:
        conversation_id: Conversation ID
        organization_id: Organization ID
        workspace_id: Workspace ID

    Returns:
        作成したメッセージレコード
    """
    globals.logger.info(f"### func:create_message")

    user_id = connexion.request.headers.get('User-Id')
    body = connexion.request.get_json()

    # バリデーション（共通のvalidationモジュールを使用）：contentsフィールド（JSON配列）が必須
    validate = validation.validate_message_contents(body.get('contents'))
    if not validate.ok:
        return common.response_validation_error(validate)

    try:
        service = get_message_service()

        result = service.create_message(
            organization_id=organization_id,
            workspace_id=workspace_id,
            user_id=user_id,
            conversation_id=conversation_id,
            contents=body['contents'],
        )

        globals.logger.debug(
            f"Message created: conv={conversation_id}, "
            f"message_id={result['message_id']}, "
            f"seq={result['message_seq']}"
        )

        return common.response_200_ok(result)

    except ValueError as e:
        message_id = "404-44003"
        message = multi_lang.get_text(
            message_id,
            "会話が見つかりません: {0}",
            conversation_id,
        )
        raise common.NotFoundException(message_id=message_id, message=message) from e

    except Exception as e:
        globals.logger.error(f"Failed to create message: {e}", exc_info=True)
        message_id = "500-44011"
        message = multi_lang.get_text(
            message_id,
            "メッセージ作成に失敗しました: {}",
            str(e)
        )
        raise common.InternalErrorException(message_id=message_id, message=message)


@common.platform_exception_handler
@require_ai_assistant_driver
def list_messages(conversation_id, organization_id, workspace_id, limit=100, offset=0):
    """
    会話メッセージ一覧を取得

    Args:
        conversation_id: Conversation ID
        organization_id: Organization ID
        workspace_id: Workspace ID
        limit: 取得件数
        offset: オフセット

    Returns:
        メッセージ一覧
    """
    globals.logger.info(f"### func:list_messages")

    user_id = connexion.request.headers.get('User-Id')

    try:
        service = get_message_service()

        messages = service.list_messages(
            organization_id=organization_id,
            workspace_id=workspace_id,
            user_id=user_id,
            conversation_id=conversation_id,
            limit=limit,
            offset=offset,
        )

        globals.logger.debug(
            f"Listed {len(messages)} messages: conv={conversation_id}"
        )

        return common.response_200_ok({
            "messages": messages,
            "count": len(messages),
            "conversation_id": conversation_id,
        })

    except ValueError as e:
        message_id = "404-44004"
        message = multi_lang.get_text(
            message_id,
            "会話が見つかりません: {0}",
            conversation_id,
        )
        raise common.NotFoundException(message_id=message_id, message=message) from e

    except Exception as e:
        globals.logger.error(f"Failed to list messages: {e}", exc_info=True)
        message_id = "500-44012"
        message = multi_lang.get_text(
            message_id,
            "メッセージ一覧取得に失敗しました: {}",
            str(e)
        )
        raise common.InternalErrorException(message_id=message_id, message=message)


@common.platform_exception_handler
@require_ai_assistant_driver
def replace_messages(conversation_id, organization_id, workspace_id):
    """
    会話メッセージを全置き換え

    GETで取得できる内容をそのまま置き換えるイメージ。既存のメッセージは全て削除され、
    リクエストで指定した内容に入れ替わる。

    Args:
        conversation_id: Conversation ID
        organization_id: Organization ID
        workspace_id: Workspace ID

    Returns:
        置き換え後のメッセージ一覧
    """
    globals.logger.info(f"### func:replace_messages")

    user_id = connexion.request.headers.get('User-Id')
    body = connexion.request.get_json()

    # バリデーション（共通のvalidationモジュールを使用）：messagesフィールド（JSON配列）が必須。
    # 各要素はcontentsキーを持つオブジェクトである必要がある（GETのレスポンス形式に合わせる）
    # Each element of messages must be an object with a contents key (matches the GET response shape)
    validate = validation.validate_messages(body.get('messages'))
    if not validate.ok:
        return common.response_validation_error(validate)

    # 各要素のcontents（JSON配列）を取り出す
    # Extract each element's contents (JSON array)
    contents_list = [item['contents'] for item in body['messages']]

    try:
        service = get_message_service()

        messages = service.replace_messages(
            organization_id=organization_id,
            workspace_id=workspace_id,
            user_id=user_id,
            conversation_id=conversation_id,
            messages=contents_list,
        )

        globals.logger.debug(
            f"Replaced messages: conv={conversation_id}, count={len(messages)}"
        )

        return common.response_200_ok({
            "messages": messages,
            "count": len(messages),
            "conversation_id": conversation_id,
        })

    except ValueError as e:
        message_id = "404-44005"
        message = multi_lang.get_text(
            message_id,
            "会話が見つかりません: {0}",
            conversation_id,
        )
        raise common.NotFoundException(message_id=message_id, message=message) from e

    except Exception as e:
        globals.logger.error(f"Failed to replace messages: {e}", exc_info=True)
        message_id = "500-44013"
        message = multi_lang.get_text(
            message_id,
            "メッセージの置き換えに失敗しました: {}",
            str(e)
        )
        raise common.InternalErrorException(message_id=message_id, message=message)


@common.platform_exception_handler
@require_ai_assistant_driver
def delete_messages(conversation_id, organization_id, workspace_id):
    """
    会話メッセージを全削除

    Args:
        conversation_id: Conversation ID
        organization_id: Organization ID
        workspace_id: Workspace ID

    Returns:
        削除結果
    """
    globals.logger.info(f"### func:delete_messages")

    user_id = connexion.request.headers.get('User-Id')

    try:
        service = get_message_service()

        deleted_count = service.delete_messages(
            organization_id=organization_id,
            workspace_id=workspace_id,
            user_id=user_id,
            conversation_id=conversation_id,
        )

        globals.logger.debug(
            f"Deleted messages: conv={conversation_id}, count={deleted_count}"
        )

        return common.response_200_ok({
            "conversation_id": conversation_id,
            "deleted_count": deleted_count,
        })

    except ValueError as e:
        message_id = "404-44006"
        message = multi_lang.get_text(
            message_id,
            "会話が見つかりません: {0}",
            conversation_id,
        )
        raise common.NotFoundException(message_id=message_id, message=message) from e

    except Exception as e:
        globals.logger.error(f"Failed to delete messages: {e}", exc_info=True)
        message_id = "500-44014"
        message = multi_lang.get_text(
            message_id,
            "メッセージの削除に失敗しました: {}",
            str(e)
        )
        raise common.InternalErrorException(message_id=message_id, message=message)


def _lesson_response(lesson):
    """LessonをAPIレスポンス用のdictに変換する"""
    return {
        "lesson_id": lesson.lesson_id,
        "lesson": lesson.lesson,
        "category": lesson.category,
        "prompt_profile": lesson.prompt_profile,
        "priority": lesson.priority,
        "enabled": lesson.enabled,
        "conversation_id": lesson.conversation_id,
        "created_at": lesson.created_at,
        "updated_at": lesson.updated_at,
    }


@common.platform_exception_handler
@require_ai_assistant_driver
def create_lesson(body, organization_id, workspace_id):
    """
    学習事項を作成

    :param body:
    :type body: dict
    :param organization_id:
    :type organization_id: str
    :param workspace_id:
    :type workspace_id: str

    :rtype: dict
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    r = connexion.request
    user_id = r.headers.get("User-id")

    body = r.get_json()
    lesson = body.get("lesson")
    category = body.get("category")
    prompt_profile = body.get("prompt_profile")
    priority = body.get("priority")
    enabled = body.get("enabled")
    conversation_id = body.get("conversation_id")

    # バリデーション（共通のvalidationモジュールを使用）
    validate = validation.validate_lesson_content(lesson)
    if not validate.ok:
        return common.response_validation_error(validate)

    validate = validation.validate_lesson_prompt_profile(prompt_profile)
    if not validate.ok:
        return common.response_validation_error(validate)

    if category is not None:
        validate = validation.validate_lesson_category(category)
        if not validate.ok:
            return common.response_validation_error(validate)

    if priority is not None:
        validate = validation.validate_lesson_priority(priority)
        if not validate.ok:
            return common.response_validation_error(validate)

    if priority is None:
        priority = 5
    if enabled is None:
        enabled = True

    try:
        lesson_obj = get_lesson_service().create_lesson(
            organization_id=organization_id,
            workspace_id=workspace_id,
            user_id=user_id,
            lesson=lesson,
            category=category,
            prompt_profile=prompt_profile,
            priority=priority,
            enabled=enabled,
            conversation_id=conversation_id,
        )

        globals.logger.debug(
            f"Lesson created: id={lesson_obj.lesson_id}, org={organization_id}, workspace={workspace_id}, user={user_id}"
        )

        return common.response_200_ok(_lesson_response(lesson_obj))

    except LessonLimitExceeded:
        message_id = "400-00022"
        message = multi_lang.get_text(
            message_id,
            "{0}の上限数({1})を超えるため、新しい{0}は作成できません。",
            multi_lang.get_text('000-00236', "学習事項"),
            AI_ASSISTANT_LESSONS_MAX_COUNT,
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    except Exception as e:
        globals.logger.error(f"Failed to create lesson: {e}", exc_info=True)
        message_id = "500-44017"
        message = multi_lang.get_text(
            message_id, "学習事項の登録に失敗しました: {}", str(e)
        )
        raise common.InternalErrorException(message_id=message_id, message=message)


@common.platform_exception_handler
@require_ai_assistant_driver
def list_lessons(organization_id, workspace_id, prompt_profile, enabled=None, category=None, limit=50, offset=0):
    """
    学習事項一覧を取得

    :param organization_id:
    :type organization_id: str
    :param workspace_id:
    :type workspace_id: str
    :param prompt_profile:
    :type prompt_profile: str
    :param enabled:
    :type enabled: bool
    :param category:
    :type category: str
    :param limit:
    :type limit: int
    :param offset:
    :type offset: int

    :rtype: dict
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    r = connexion.request
    user_id = r.headers.get("User-id")

    # バリデーション（共通のvalidationモジュールを使用。GETのため必須項目のみ検証する）
    validate = validation.validate_lesson_prompt_profile(prompt_profile)
    if not validate.ok:
        return common.response_validation_error(validate)

    try:
        lessons, total_count = get_lesson_service().list_lessons(
            organization_id=organization_id,
            workspace_id=workspace_id,
            user_id=user_id,
            enabled=enabled,
            category=category,
            prompt_profile=prompt_profile,
            limit=limit,
            offset=offset,
        )

        return common.response_200_ok(
            {
                "lessons": [_lesson_response(lesson) for lesson in lessons],
                "count": len(lessons),
                "total_count": total_count,
            }
        )

    except Exception as e:
        globals.logger.error(f"Failed to list lessons: {e}", exc_info=True)
        message_id = "500-44018"
        message = multi_lang.get_text(
            message_id, "学習事項一覧の取得に失敗しました: {}", str(e)
        )
        raise common.InternalErrorException(message_id=message_id, message=message)


@common.platform_exception_handler
@require_ai_assistant_driver
def get_lesson(lesson_id, organization_id, workspace_id):
    """
    学習事項を取得

    :param lesson_id:
    :type lesson_id: str
    :param organization_id:
    :type organization_id: str
    :param workspace_id:
    :type workspace_id: str

    :rtype: dict
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    r = connexion.request
    user_id = r.headers.get("User-id")

    try:
        lesson_obj = get_lesson_service().get_lesson(
            organization_id=organization_id,
            workspace_id=workspace_id,
            user_id=user_id,
            lesson_id=lesson_id,
        )

        if lesson_obj is None:
            message_id = "404-44009"
            message = multi_lang.get_text(message_id, "学習事項が見つかりません")
            raise common.NotFoundException(message_id=message_id, message=message)

        return common.response_200_ok(_lesson_response(lesson_obj))

    except common.NotFoundException:
        raise

    except Exception as e:
        globals.logger.error(f"Failed to get lesson: {e}", exc_info=True)
        message_id = "500-44019"
        message = multi_lang.get_text(
            message_id, "学習事項の取得に失敗しました: {}", str(e)
        )
        raise common.InternalErrorException(message_id=message_id, message=message)


@common.platform_exception_handler
@require_ai_assistant_driver
def update_lesson(body, lesson_id, organization_id, workspace_id):
    """
    学習事項を部分更新（PATCH。指定された項目のみ更新する）

    :param body:
    :type body: dict
    :param lesson_id:
    :type lesson_id: str
    :param organization_id:
    :type organization_id: str
    :param workspace_id:
    :type workspace_id: str

    :rtype: dict
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    r = connexion.request
    user_id = r.headers.get("User-id")

    body = r.get_json()
    lesson = body.get("lesson")
    category = body.get("category")
    prompt_profile = body.get("prompt_profile")
    priority = body.get("priority")
    enabled = body.get("enabled")

    # バリデーション（共通のvalidationモジュールを使用。PATCHのため、指定された項目のみ検証する）
    # Validation (via the common validation module). Only validate the fields that were actually provided, since this is a PATCH
    if lesson is not None:
        validate = validation.validate_lesson_content(lesson)
        if not validate.ok:
            return common.response_validation_error(validate)

    if category is not None:
        validate = validation.validate_lesson_category(category)
        if not validate.ok:
            return common.response_validation_error(validate)

    if priority is not None:
        validate = validation.validate_lesson_priority(priority)
        if not validate.ok:
            return common.response_validation_error(validate)

    try:
        lesson_obj = get_lesson_service().update_lesson(
            organization_id=organization_id,
            workspace_id=workspace_id,
            user_id=user_id,
            lesson_id=lesson_id,
            lesson=lesson,
            category=category,
            prompt_profile=prompt_profile,
            priority=priority,
            enabled=enabled,
        )

        if lesson_obj is None:
            message_id = "404-44010"
            message = multi_lang.get_text(message_id, "学習事項が見つかりません")
            raise common.NotFoundException(message_id=message_id, message=message)

        globals.logger.debug(
            f"Lesson updated: id={lesson_id}, org={organization_id}, workspace={workspace_id}, user={user_id}"
        )

        return common.response_200_ok(_lesson_response(lesson_obj))

    except common.NotFoundException:
        raise

    except Exception as e:
        globals.logger.error(f"Failed to update lesson: {e}", exc_info=True)
        message_id = "500-44020"
        message = multi_lang.get_text(
            message_id, "学習事項の更新に失敗しました: {}", str(e)
        )
        raise common.InternalErrorException(message_id=message_id, message=message)


@common.platform_exception_handler
@require_ai_assistant_driver
def bulk_update_lessons(body, organization_id, workspace_id):
    """
    複数の学習事項の有効/無効フラグを一括更新（PATCH /lessons）

    :param body:
    :type body: dict
    :param organization_id:
    :type organization_id: str
    :param workspace_id:
    :type workspace_id: str

    :rtype: dict
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    r = connexion.request
    user_id = r.headers.get("User-id")

    body = r.get_json()
    lessons = body.get("lessons")

    # バリデーション（共通のvalidationモジュールを使用。要素ごとに異なるenabledを指定できる）
    validate = validation.validate_lesson_bulk_items(lessons)
    if not validate.ok:
        return common.response_validation_error(validate)

    try:
        updated_count = get_lesson_service().bulk_update_enabled(
            organization_id=organization_id,
            workspace_id=workspace_id,
            user_id=user_id,
            lessons=lessons,
        )

        globals.logger.debug(
            f"Lessons bulk updated: org={organization_id}, workspace={workspace_id}, user={user_id}, "
            f"requested={len(lessons)}, updated={updated_count}"
        )

        return common.response_200_ok({"updated_count": updated_count})

    except Exception as e:
        globals.logger.error(f"Failed to bulk update lessons: {e}", exc_info=True)
        message_id = "500-44021"
        message = multi_lang.get_text(
            message_id, "学習事項の一括更新に失敗しました: {}", str(e)
        )
        raise common.InternalErrorException(message_id=message_id, message=message)


@common.platform_exception_handler
@require_ai_assistant_driver
def delete_lesson(lesson_id, organization_id, workspace_id):
    """
    学習事項を削除

    :param lesson_id:
    :type lesson_id: str
    :param organization_id:
    :type organization_id: str
    :param workspace_id:
    :type workspace_id: str

    :rtype: dict
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    r = connexion.request
    user_id = r.headers.get("User-id")

    try:
        deleted = get_lesson_service().delete_lesson(
            organization_id=organization_id,
            workspace_id=workspace_id,
            user_id=user_id,
            lesson_id=lesson_id,
        )

        if not deleted:
            message_id = "404-44011"
            message = multi_lang.get_text(message_id, "学習事項が見つかりません")
            raise common.NotFoundException(message_id=message_id, message=message)

        globals.logger.debug(
            f"Lesson deleted: id={lesson_id}, org={organization_id}, workspace={workspace_id}, user={user_id}"
        )

        return common.response_200_ok(
            {
                "lesson_id": lesson_id,
                "message": "Lesson deleted successfully",
            }
        )

    except common.NotFoundException:
        raise

    except Exception as e:
        globals.logger.error(f"Failed to delete lesson: {e}", exc_info=True)
        message_id = "500-44022"
        message = multi_lang.get_text(
            message_id, "学習事項の削除に失敗しました: {}", str(e)
        )
        raise common.InternalErrorException(message_id=message_id, message=message)
