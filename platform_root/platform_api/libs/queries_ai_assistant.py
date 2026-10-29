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
AI Assistant SQL Queries

AI Assistant機能で使用するSQLクエリ定義
"""

# ==================== Conversation ====================

SQL_SELECT_CONVERSATION = """
SELECT CONVERSATION_ID, AI_SERVICE_ID, MODEL_ID, PROMPT_PROFILE, TOOLS
FROM T_CHAT_CONVERSATION
WHERE CONVERSATION_ID = %(conversation_id)s AND USER_ID = %(user_id)s
"""

SQL_SELECT_CONVERSATION_FOR_CREATE = """
SELECT CONVERSATION_ID, PROMPT_PROFILE, AI_SERVICE_ID, MODEL_ID, TITLE, STATUS
FROM T_CHAT_CONVERSATION
WHERE CONVERSATION_ID = %(conversation_id)s
"""

SQL_INSERT_CONVERSATION = """
INSERT INTO T_CHAT_CONVERSATION
(
    CONVERSATION_ID, PROMPT_PROFILE, USER_ID, AI_SERVICE_ID, MODEL_ID, TOOLS,
    TITLE, STATUS, CURRENT_TOKEN_COUNT,
    CREATE_TIMESTAMP, CREATE_USER, LAST_UPDATE_TIMESTAMP, LAST_UPDATE_USER
)
VALUES (
    %(conversation_id)s, %(prompt_profile)s, %(user_id)s, %(ai_service_id)s, %(model_id)s, %(tools)s,
    %(title)s, 'active', 0,
    NOW(), %(user_id)s, NOW(), %(user_id)s
)
"""

SQL_LIST_CONVERSATIONS = """
SELECT
    c.CONVERSATION_ID, c.PROMPT_PROFILE, c.AI_SERVICE_ID, c.MODEL_ID, c.TITLE, c.STATUS,
    c.CURRENT_TOKEN_COUNT, c.CREATE_TIMESTAMP, c.LAST_UPDATE_TIMESTAMP,
    (
        SELECT JSON_LENGTH(m.CONTENTS)
        FROM T_CHAT_MESSAGE m
        WHERE m.CONVERSATION_ID = c.CONVERSATION_ID
        ORDER BY m.MESSAGE_SEQ DESC
        LIMIT 1
    ) AS MESSAGE_COUNT
FROM T_CHAT_CONVERSATION c
WHERE c.USER_ID = %(user_id)s
  AND c.PROMPT_PROFILE = %(prompt_profile)s
  AND (%(status)s IS NULL OR c.STATUS = %(status)s)
ORDER BY c.LAST_UPDATE_TIMESTAMP DESC
LIMIT %(limit)s OFFSET %(offset)s
"""

# LIMIT/OFFSETによる絞り込み前の、条件に合致する会話の総件数（ページネーションのtotal_count用）
# Total number of conversations matching the filter conditions before applying LIMIT/OFFSET (for the total_count field used in pagination)
SQL_COUNT_CONVERSATIONS = """
SELECT COUNT(*) AS total_count
FROM T_CHAT_CONVERSATION c
WHERE c.USER_ID = %(user_id)s
  AND c.PROMPT_PROFILE = %(prompt_profile)s
  AND (%(status)s IS NULL OR c.STATUS = %(status)s)
"""

SQL_UPDATE_CONVERSATION_TOKEN_COUNT = """
UPDATE T_CHAT_CONVERSATION
SET CURRENT_TOKEN_COUNT = CURRENT_TOKEN_COUNT + %(token_count)s,
    LAST_UPDATE_TIMESTAMP = NOW(),
    LAST_UPDATE_USER = %(user_id)s
WHERE CONVERSATION_ID = %(conversation_id)s
"""

# PATCH用。所有者チェックと、部分更新前の現在値(TITLE/STATUS)取得を兼ねる
# Used for PATCH: doubles as an ownership check and fetches the current TITLE/STATUS before the partial update
SQL_SELECT_CONVERSATION_FOR_PATCH = """
SELECT CONVERSATION_ID, TITLE, STATUS
FROM T_CHAT_CONVERSATION
WHERE CONVERSATION_ID = %(conversation_id)s AND USER_ID = %(user_id)s
"""

# PATCH(部分更新)。title/statusは指定された項目のみ更新し、未指定(NULL)の項目は現在値を維持する
# PATCH (partial update). Only the fields provided are updated; unspecified (NULL) fields keep their current value
SQL_UPDATE_CONVERSATION = """
UPDATE T_CHAT_CONVERSATION
SET TITLE = COALESCE(%(title)s, TITLE),
    STATUS = COALESCE(%(status)s, STATUS),
    LAST_UPDATE_TIMESTAMP = NOW(),
    LAST_UPDATE_USER = %(user_id)s
WHERE CONVERSATION_ID = %(conversation_id)s AND USER_ID = %(user_id)s
"""

# 会話削除。所有者チェックを兼ねるため、削除件数(rowcount)で存在確認する
# Delete the conversation. Doubles as an ownership check via the DELETE's rowcount
SQL_DELETE_CONVERSATION = """
DELETE FROM T_CHAT_CONVERSATION
WHERE CONVERSATION_ID = %(conversation_id)s AND USER_ID = %(user_id)s
"""

# ==================== Message ====================

SQL_GET_NEXT_MESSAGE_SEQ = """
SELECT COALESCE(MAX(MESSAGE_SEQ), 0) + 1 AS next_seq
FROM T_CHAT_MESSAGE
WHERE CONVERSATION_ID = %(conversation_id)s
"""

SQL_INSERT_MESSAGE = """
INSERT INTO T_CHAT_MESSAGE
(
    MESSAGE_ID, CONVERSATION_ID, MESSAGE_SEQ,
    CONTENTS,
    CREATE_TIMESTAMP, CREATE_USER,
    LAST_UPDATE_TIMESTAMP, LAST_UPDATE_USER
)
VALUES (
    %(message_id)s, %(conversation_id)s, %(message_seq)s,
    %(contents)s,
    NOW(), %(user_id)s,
    NOW(), %(user_id)s
)
"""

SQL_DELETE_MESSAGES = """
DELETE FROM T_CHAT_MESSAGE
WHERE CONVERSATION_ID = %(conversation_id)s
"""

SQL_SELECT_CONVERSATION_FOR_MESSAGE = """
SELECT CONVERSATION_ID
FROM T_CHAT_CONVERSATION
WHERE CONVERSATION_ID = %(conversation_id)s AND USER_ID = %(user_id)s
"""

SQL_SELECT_LATEST_MESSAGE = """
SELECT MESSAGE_ID, MESSAGE_SEQ, CONTENTS, LAST_UPDATE_TIMESTAMP
FROM T_CHAT_MESSAGE
WHERE CONVERSATION_ID = %(conversation_id)s
ORDER BY MESSAGE_SEQ DESC
LIMIT 1
"""

SQL_LIST_MESSAGES = """
SELECT
    MESSAGE_ID, CONVERSATION_ID, MESSAGE_SEQ,
    CONTENTS,
    CREATE_TIMESTAMP, LAST_UPDATE_TIMESTAMP
FROM T_CHAT_MESSAGE
WHERE CONVERSATION_ID = %(conversation_id)s
ORDER BY MESSAGE_SEQ ASC
LIMIT %(limit)s OFFSET %(offset)s
"""

# ==================== AI Credential ====================

# credential_typeごとに1件のみ(UK_USER_TYPE)なので、ステータスを問わず常に0〜1件を返す
# There is at most one row per credential_type (UK_USER_TYPE), so this always returns 0 or 1 rows regardless of status
SQL_SELECT_USER_CREDENTIAL_BY_TYPE = """
SELECT
    CREDENTIAL_ID, CREDENTIAL_TYPE, CREDENTIAL_NAME,
    ENCRYPTED_CREDENTIAL_DATA,
    STATUS, EXPIRES_AT, LAST_USED_AT
FROM T_USER_CREDENTIAL
WHERE USER_ID = %(user_id)s
  AND CREDENTIAL_TYPE = %(credential_type)s
"""

SQL_SELECT_USER_ACTIVE_CREDENTIAL_BY_SERVICE = """
SELECT
    CREDENTIAL_ID, CREDENTIAL_TYPE, CREDENTIAL_NAME,
    ENCRYPTED_CREDENTIAL_DATA,
    STATUS, EXPIRES_AT, LAST_USED_AT
FROM T_USER_CREDENTIAL
WHERE USER_ID = %(user_id)s
  AND CREDENTIAL_TYPE = %(credential_type)s
  AND STATUS = 'active'
ORDER BY CREATE_TIMESTAMP DESC
LIMIT 1
"""

SQL_INSERT_USER_CREDENTIAL = """
INSERT INTO T_USER_CREDENTIAL
(
    CREDENTIAL_ID, USER_ID,
    CREDENTIAL_TYPE, CREDENTIAL_NAME,
    ENCRYPTED_CREDENTIAL_DATA,
    STATUS, EXPIRES_AT, NOTES,
    CREATE_TIMESTAMP, CREATE_USER,
    LAST_UPDATE_TIMESTAMP, LAST_UPDATE_USER
)
VALUES (
    %(credential_id)s, %(user_id)s,
    %(credential_type)s, %(credential_name)s,
    %(encrypted_credential_data)s,
    'active', %(expires_at)s, %(notes)s,
    NOW(), %(user_id)s,
    NOW(), %(user_id)s
)
"""

SQL_UPDATE_CREDENTIAL_LAST_USED = """
UPDATE T_USER_CREDENTIAL
SET LAST_USED_AT = NOW(),
    LAST_UPDATE_TIMESTAMP = NOW()
WHERE CREDENTIAL_ID = %(credential_id)s
"""

SQL_UPDATE_CREDENTIAL_DATA_AND_LAST_USED = """
UPDATE T_USER_CREDENTIAL
SET ENCRYPTED_CREDENTIAL_DATA = %(encrypted_credential_data)s,
    LAST_USED_AT = NOW(),
    LAST_UPDATE_TIMESTAMP = NOW()
WHERE CREDENTIAL_ID = %(credential_id)s
"""

SQL_DELETE_USER_CREDENTIAL = """
DELETE FROM T_USER_CREDENTIAL
WHERE USER_ID = %(user_id)s
  AND CREDENTIAL_TYPE = %(credential_type)s
"""

# ==================== AI Preference ====================

SQL_SELECT_USER_AI_PREFERENCE = """
SELECT MODEL_ID, MODEL_NAME, PICKUP_MODEL_IDS, CREATE_TIMESTAMP, LAST_UPDATE_TIMESTAMP
FROM T_USER_AI_PREFERENCE
WHERE USER_ID = %(user_id)s AND AI_SERVICE_ID = %(ai_service_id)s
"""

# 行が存在すればUPDATE、無ければINSERTを1クエリで行う（PUTの全置換をアトミックに実現するため）
# Performs UPDATE if the row exists, otherwise INSERT, in a single query (keeps the PUT's full-replace semantics atomic)
SQL_UPSERT_USER_AI_PREFERENCE = """
INSERT INTO T_USER_AI_PREFERENCE
(
    USER_ID, AI_SERVICE_ID, MODEL_ID, MODEL_NAME, PICKUP_MODEL_IDS,
    CREATE_TIMESTAMP, CREATE_USER, LAST_UPDATE_TIMESTAMP, LAST_UPDATE_USER
)
VALUES (
    %(user_id)s, %(ai_service_id)s, %(model_id)s, %(model_name)s, %(pickup_model_ids)s,
    NOW(), %(user_id)s, NOW(), %(user_id)s
)
ON DUPLICATE KEY UPDATE
    MODEL_ID = %(model_id)s,
    MODEL_NAME = %(model_name)s,
    PICKUP_MODEL_IDS = %(pickup_model_ids)s,
    LAST_UPDATE_TIMESTAMP = NOW(),
    LAST_UPDATE_USER = %(user_id)s
"""

# Credentialを削除したAIサービスの設定を残さないために使用する（未保存でも0件削除で成功扱いになる）
# Used to avoid leaving settings for an AI service whose credential was deleted (deleting 0 rows is not an error)
SQL_DELETE_USER_AI_PREFERENCE = """
DELETE FROM T_USER_AI_PREFERENCE
WHERE USER_ID = %(user_id)s AND AI_SERVICE_ID = %(ai_service_id)s
"""

# ==================== Current AI Service ====================

# 現在選択中のAIサービスと、そのサービスのai-preference(モデル情報)をまとめて取得する
# Fetches the currently selected AI service along with that service's ai-preference (model info) in one query
SQL_SELECT_USER_CURRENT_AI_SERVICE = """
SELECT c.AI_SERVICE_ID, p.MODEL_ID, p.MODEL_NAME
FROM T_USER_CURRENT_AI_SERVICE c
LEFT JOIN T_USER_AI_PREFERENCE p
    ON p.USER_ID = c.USER_ID AND p.AI_SERVICE_ID = c.AI_SERVICE_ID
WHERE c.USER_ID = %(user_id)s
"""

# 行が存在すればUPDATE、無ければINSERTを1クエリで行う（PUTの「無ければ追加」をアトミックに実現するため）
# Performs UPDATE if the row exists, otherwise INSERT, in a single query (keeps the PUT's create-or-replace semantics atomic)
SQL_UPSERT_USER_CURRENT_AI_SERVICE = """
INSERT INTO T_USER_CURRENT_AI_SERVICE
(
    USER_ID, AI_SERVICE_ID,
    CREATE_TIMESTAMP, CREATE_USER, LAST_UPDATE_TIMESTAMP, LAST_UPDATE_USER
)
VALUES (
    %(user_id)s, %(ai_service_id)s,
    NOW(), %(user_id)s, NOW(), %(user_id)s
)
ON DUPLICATE KEY UPDATE
    AI_SERVICE_ID = %(ai_service_id)s,
    LAST_UPDATE_TIMESTAMP = NOW(),
    LAST_UPDATE_USER = %(user_id)s
"""

# 使用中のAIサービスのCredentialが削除されたときに、選択中の状態を未選択へ戻すために使用する。
# AI_SERVICE_IDも条件に含めて、選択していない別のAIサービスを削除しても選択中の状態は変えない。
# Used to clear the selection when the credential of the currently selected AI service is deleted.
# AI_SERVICE_ID is part of the condition so that deleting a different (not selected) AI service leaves the selection as is.
SQL_DELETE_USER_CURRENT_AI_SERVICE = """
DELETE FROM T_USER_CURRENT_AI_SERVICE
WHERE USER_ID = %(user_id)s AND AI_SERVICE_ID = %(ai_service_id)s
"""

# ==================== Lesson ====================

SQL_INSERT_LESSON = """
INSERT INTO T_USER_LESSON
(
    LESSON_ID, USER_ID, LESSON, CATEGORY, PROMPT_PROFILE, PRIORITY, ENABLED, CONVERSATION_ID,
    CREATE_TIMESTAMP, CREATE_USER, LAST_UPDATE_TIMESTAMP, LAST_UPDATE_USER
)
VALUES (
    %(lesson_id)s, %(user_id)s, %(lesson)s, %(category)s, %(prompt_profile)s, %(priority)s, %(enabled)s, %(conversation_id)s,
    NOW(), %(user_id)s, NOW(), %(user_id)s
)
"""

# 所有者チェックをWHERE条件に含める
# Ownership check is folded into the WHERE condition
SQL_SELECT_LESSON = """
SELECT LESSON_ID, USER_ID, LESSON, CATEGORY, PROMPT_PROFILE, PRIORITY, ENABLED, CONVERSATION_ID, CREATE_TIMESTAMP, LAST_UPDATE_TIMESTAMP
FROM T_USER_LESSON
WHERE LESSON_ID = %(lesson_id)s AND USER_ID = %(user_id)s
"""

# ENABLED/CATEGORY/PROMPT_PROFILEによる絞り込みは任意のため、固定のWHERE句のみを定義する。
# サービス層がこの句の後ろに " AND ENABLED = %(enabled)s" / " AND CATEGORY = %(category)s" /
# " AND PROMPT_PROFILE = %(prompt_profile)s" を必要に応じて連結し、
# 最後にSQL_LIST_LESSONS_ORDER_LIMITを連結して完成させる
# Filtering by ENABLED/CATEGORY/PROMPT_PROFILE is optional, so this defines only the fixed WHERE clause.
# The service layer appends " AND ENABLED = %(enabled)s" / " AND CATEGORY = %(category)s" /
# " AND PROMPT_PROFILE = %(prompt_profile)s" as needed, then appends SQL_LIST_LESSONS_ORDER_LIMIT to complete the query
SQL_LIST_LESSONS = """
SELECT LESSON_ID, USER_ID, LESSON, CATEGORY, PROMPT_PROFILE, PRIORITY, ENABLED, CONVERSATION_ID, CREATE_TIMESTAMP, LAST_UPDATE_TIMESTAMP
FROM T_USER_LESSON
WHERE USER_ID = %(user_id)s
"""

# SQL_LIST_LESSONS（および任意のAND句）の後ろに連結して使用する
# Appended after SQL_LIST_LESSONS (plus any optional AND clauses)
SQL_LIST_LESSONS_ORDER_LIMIT = """
ORDER BY PRIORITY DESC, LAST_UPDATE_TIMESTAMP DESC
LIMIT %(limit)s OFFSET %(offset)s
"""

# LIMIT/OFFSETによる絞り込み前の、条件に合致する学習事項の総件数（ページネーションのtotal_count用）
# SQL_LIST_LESSONSと同様、任意のAND句をサービス層が連結する
# Total number of lessons matching the filter conditions before applying LIMIT/OFFSET (for the total_count field used in pagination)
# The service layer appends the same optional AND clauses as SQL_LIST_LESSONS
SQL_COUNT_LESSONS = """
SELECT COUNT(*) AS total_count
FROM T_USER_LESSON
WHERE USER_ID = %(user_id)s
"""

# PATCH(部分更新)。lesson/category/prompt_profile/priority/enabledは指定された項目のみ更新し、
# 未指定(NULL)の項目は現在値を維持する
# PATCH (partial update). Only the fields provided are updated; unspecified (NULL) fields keep their current value
SQL_UPDATE_LESSON = """
UPDATE T_USER_LESSON
SET LESSON = COALESCE(%(lesson)s, LESSON),
    CATEGORY = COALESCE(%(category)s, CATEGORY),
    PROMPT_PROFILE = COALESCE(%(prompt_profile)s, PROMPT_PROFILE),
    PRIORITY = COALESCE(%(priority)s, PRIORITY),
    ENABLED = COALESCE(%(enabled)s, ENABLED),
    LAST_UPDATE_TIMESTAMP = NOW(),
    LAST_UPDATE_USER = %(user_id)s
WHERE LESSON_ID = %(lesson_id)s AND USER_ID = %(user_id)s
"""

SQL_DELETE_LESSON = """
DELETE FROM T_USER_LESSON
WHERE LESSON_ID = %(lesson_id)s AND USER_ID = %(user_id)s
"""

# 有効な学習事項を優先度の高い順・更新日時の新しい順に取得する。AIアシスタントのシステムプロンプトへの注入に使用する。
# PROMPT_PROFILEが未設定(NULL)の学習事項は全プロファイル共通として扱い、指定されたprompt_profileにも含める
# Fetches enabled lessons ordered by highest priority, then most recently updated. Used to inject lessons into the
# AI assistant's system prompt. Lessons with no PROMPT_PROFILE (NULL) are treated as applying to all profiles and
# are included regardless of the requested prompt_profile
SQL_SELECT_ENABLED_LESSONS_FOR_PROMPT = """
SELECT LESSON, CATEGORY, PRIORITY
FROM T_USER_LESSON
WHERE USER_ID = %(user_id)s AND ENABLED = 1
  AND (PROMPT_PROFILE IS NULL OR PROMPT_PROFILE = %(prompt_profile)s)
ORDER BY PRIORITY DESC, LAST_UPDATE_TIMESTAMP DESC
LIMIT %(limit)s
"""
