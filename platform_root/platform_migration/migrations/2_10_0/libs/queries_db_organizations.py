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

SQL_SELECT_ORGANIZATION_DB = """
SELECT *
FROM T_ORGANIZATION_DB
"""

# User Credential テーブル作成（オーガナイゼーション単位）
CREATE_TABLE_USER_CREDENTIAL = """
CREATE TABLE IF NOT EXISTS T_USER_CREDENTIAL
(
  CREDENTIAL_ID VARCHAR(36) NOT NULL COMMENT 'Credential ID (ULID)',
  USER_ID VARCHAR(256) NOT NULL COMMENT 'User ID',
  CREDENTIAL_TYPE VARCHAR(64) NOT NULL COMMENT 'Credentialタイプ: bedrock-cache, bedrock, openai, anthropic, vertex, azure-openai, etc.',
  CREDENTIAL_NAME VARCHAR(255) NOT NULL COMMENT 'Credential識別名 (ユーザーが設定)',
  ENCRYPTED_CREDENTIAL_DATA LONGTEXT NOT NULL COMMENT '暗号化されたCredentialデータ (JSON形式)',
  STATUS VARCHAR(32) NOT NULL DEFAULT 'active' COMMENT 'ステータス: active/expired/disabled',
  EXPIRES_AT DATETIME NULL COMMENT 'Credential有効期限 (該当する場合)',
  LAST_VALIDATED_AT DATETIME NULL COMMENT '最終検証日時',
  LAST_USED_AT DATETIME NULL COMMENT '最終使用日時',
  VALIDATION_ERROR TEXT NULL COMMENT '検証エラーメッセージ',
  NOTES TEXT NULL COMMENT '備考・メモ',
  CREATE_TIMESTAMP DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
  CREATE_USER VARCHAR(40) COMMENT '作成ユーザー',
  LAST_UPDATE_TIMESTAMP DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最終更新日時',
  LAST_UPDATE_USER VARCHAR(40) COMMENT '最終更新ユーザー',
  PRIMARY KEY (CREDENTIAL_ID),
  UNIQUE KEY UK_USER_TYPE (USER_ID, CREDENTIAL_TYPE)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='汎用Credential管理(credential_typeごとに1件のみ)'
"""

# User AI Preference テーブル作成（オーガナイゼーション単位）
CREATE_TABLE_USER_AI_PREFERENCE = """
CREATE TABLE IF NOT EXISTS T_USER_AI_PREFERENCE
(
  USER_ID VARCHAR(256) NOT NULL COMMENT 'User ID',
  AI_SERVICE_ID VARCHAR(64) NOT NULL COMMENT 'AIサービスID: bedrock-cache, bedrock, etc.(AIサービスごとに設定を持てるようキーの一部とする)',
  MODEL_ID VARCHAR(255) NOT NULL COMMENT 'デフォルトで使用するモデルID',
  MODEL_NAME VARCHAR(255) NULL COMMENT 'デフォルトモデルの表示名(PUT時にクライアントが渡した値をそのまま保存。未指定時はNULL)',
  PICKUP_MODEL_IDS LONGTEXT NOT NULL COMMENT 'UIで選択肢を絞り込むためのモデルID一覧 (JSON配列)',
  CREATE_TIMESTAMP DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
  CREATE_USER VARCHAR(40) COMMENT '作成ユーザー',
  LAST_UPDATE_TIMESTAMP DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最終更新日時',
  LAST_UPDATE_USER VARCHAR(40) COMMENT '最終更新ユーザー',
  PRIMARY KEY (USER_ID, AI_SERVICE_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='AIアシスタント ユーザー利用設定(AIサービスごと)'
"""

# User Current AI Service テーブル作成（オーガナイゼーション単位）
CREATE_TABLE_USER_CURRENT_AI_SERVICE = """
CREATE TABLE IF NOT EXISTS T_USER_CURRENT_AI_SERVICE
(
  USER_ID VARCHAR(256) NOT NULL COMMENT 'User ID',
  AI_SERVICE_ID VARCHAR(64) NOT NULL COMMENT '現在選択中のAIサービスID: bedrock-cache, bedrock, etc.',
  CREATE_TIMESTAMP DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
  CREATE_USER VARCHAR(40) COMMENT '作成ユーザー',
  LAST_UPDATE_TIMESTAMP DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最終更新日時',
  LAST_UPDATE_USER VARCHAR(40) COMMENT '最終更新ユーザー',
  PRIMARY KEY (USER_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='AIアシスタント ユーザーが現在選択中のAIサービス'
"""

# テーブル存在確認用
CHECK_TABLE_EXISTS = """
SELECT COUNT(*) as count
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = DATABASE()
AND TABLE_NAME = %s
"""
