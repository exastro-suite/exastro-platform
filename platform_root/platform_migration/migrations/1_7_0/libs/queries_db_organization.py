#   Copyright 2023 NEC Corporation
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
    SELECT  *   FROM    T_ORGANIZATION_DB
    ;
"""

CREATE_TABLES = [
    """
    -- メールサーバー設定 / Setting mail server
    CREATE TABLE IF NOT EXISTS M_SMTP_SERVER
    (
        SMTP_PORT		                INT,                                        -- 送信サーバーのポート番号
        SEND_FROM		                VARCHAR(255),                               -- 送信元のメールアドレス
        SEND_NAME		                VARCHAR(100),                               -- 送信元の表示名
        REPLAY_TO		                VARCHAR(255),                               -- 返信先のメールアドレス
        REPLAY_NAME		                VARCHAR(100),                               -- 返信先の表示名
        ENVELOPE_FROM		            VARCHAR(255),                               -- 差出人のメールアドレス
        SSL_ENABLE		                BOOLEAN DEFAULT 0,                          -- SSL有無（既定：FALSE）
        START_TLS_ENABLE		        BOOLEAN DEFAULT 0,                          -- StartTLS有無（既定：FALSE）
        AUTHENTICATION_ENABLE		    BOOLEAN DEFAULT 0,                          -- 認証有無（既定：FALSE）
        AUTHENTICATION_USER		        VARCHAR(255),                               -- 認証ユーザー
        AUTHENTICATION_PASSWORD		    VARCHAR(255),                               -- 認証パスワード（暗号化）
        CREATE_TIMESTAMP		        DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,    -- 作成日時
        CREATE_USER		                VARCHAR(40),                                -- 作成者
        LAST_UPDATE_TIMESTAMP		    DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,    -- 最終更新日時
        LAST_UPDATE_USER		        VARCHAR(40)                                 -- 最終更新者
    )ENGINE = InnoDB, CHARSET = utf8mb4, COLLATE = utf8mb4_bin, ROW_FORMAT=COMPRESSED ,KEY_BLOCK_SIZE=8;
    """,
    """
    -- ワークスペースDB管理情報 / workspace database management infomation
    CREATE TABLE IF NOT EXISTS T_WORKSPACE_DB
    (
        ORGANIZATION_ID                 VARCHAR(36) NOT NULL,
        WORKSPACE_ID                    VARCHAR(36) NOT NULL,
        DB_HOST                         VARCHAR(255),
        DB_PORT                         INT,
        DB_DATABASE                     VARCHAR(255),
        DB_USER                         VARCHAR(255),
        DB_PASSWORD                     VARCHAR(255),
        CREATE_TIMESTAMP                DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
        CREATE_USER                     VARCHAR(40),
        LAST_UPDATE_TIMESTAMP           DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        LAST_UPDATE_USER                VARCHAR(40),
        PRIMARY KEY (ORGANIZATION_ID, WORKSPACE_ID)
    )ENGINE = InnoDB, CHARSET = utf8mb4, COLLATE = utf8mb4_bin, ROW_FORMAT=COMPRESSED ,KEY_BLOCK_SIZE=8;
    """
]

SQL_UPDATE_T_PLAN_ITEM = """
    UPDATE `T_PLAN_ITEM` SET `INFORMATIONS` = JSON_SET(`INFORMATIONS`, '$.description', 'Maximum number of roles for organization default')
        WHERE (`LIMIT_ID` = 'platform.roles');
    UPDATE `T_PLAN_ITEM` SET `INFORMATIONS` = JSON_SET(`INFORMATIONS`, '$.description', 'Maximum number of users for organization default')
        WHERE (`LIMIT_ID` = 'platform.users');
    UPDATE `T_PLAN_ITEM` SET `INFORMATIONS` = JSON_SET(`INFORMATIONS`, '$.description', 'Maximum number of workspaces for organization default')
        WHERE (`LIMIT_ID` = 'platform.workspaces');
"""
