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

SQL_ORGANIZATION_CREATE_TABLES = [
    """
    CREATE TABLE T_ORGANIZATION_PRIVATE
    (
        ID INT NOT NULL,
        INFORMATIONS JSON NOT NULL,
        CREATE_TIMESTAMP DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
        CREATE_USER VARCHAR(40),
        LAST_UPDATE_TIMESTAMP DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        LAST_UPDATE_USER VARCHAR(40),
        PRIMARY KEY (ID)
    )
    """,
    """
    CREATE TABLE T_WORKSPACE
    (
        WORKSPACE_ID VARCHAR(36) NOT NULL,
        WORKSPACE_NAME VARCHAR(255) NOT NULL,
        INFORMATIONS JSON NOT NULL,
        CREATE_TIMESTAMP DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
        CREATE_USER VARCHAR(40),
        LAST_UPDATE_TIMESTAMP DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        LAST_UPDATE_USER VARCHAR(40),
        PRIMARY KEY (WORKSPACE_ID)
    )
    """,
    """
    CREATE TABLE T_REFRESH_TOKEN
    (
        USER_ID VARCHAR(40) NOT NULL,
        SESSION_ID VARCHAR(40) NOT NULL,
        EXPIRE_TIMESTAMP DATETIME NULL,
        CREATE_TIMESTAMP DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
        CREATE_USER VARCHAR(40),
        LAST_UPDATE_TIMESTAMP DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        LAST_UPDATE_USER VARCHAR(40),
        PRIMARY KEY (USER_ID, SESSION_ID)
    )
    """,
    """
    -- メールサーバー設定 / Setting mail server
    CREATE TABLE IF NOT EXISTS M_SMTP_SERVER
    (
        SMTP_ID		                    VARCHAR(36) NOT NULL,                       -- 送信サーバーID
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
        LAST_UPDATE_USER		        VARCHAR(40),                                -- 最終更新者
        PRIMARY KEY (SMTP_ID)
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

SQL_INSERT_ORGANIZATION_DBINFO = """
INSERT INTO T_ORGANIZATION_DB (ORGANIZATION_ID, DB_HOST, DB_PORT, DB_DATABASE, DB_USER, DB_PASSWORD, CREATE_USER, LAST_UPDATE_USER)
VALUES (%(organization_id)s, %(db_host)s, %(db_port)s, %(db_database)s, %(db_user)s, %(db_password)s, %(create_user)s, %(last_update_user)s)
"""

SQL_DELETE_ORGANIZATION_DBINFO = """
DELETE FROM T_ORGANIZATION_DB WHERE ORGANIZATION_ID = %(organization_id)s
"""

SQL_WORKSPACE_CREATE_TABLES = [
    """
    -- 通知先設定 / Setting Notification
    CREATE TABLE IF NOT EXISTS M_NOTIFICATION_DESTINATION
    (
        DESTINATION_ID	                VARCHAR(36) NOT NULL,	                        -- 通知先ID
        DESTINATION_NAME	            VARCHAR(255),	                                -- 通知先名
        DESTINATION_KIND	            VARCHAR(20),	                                -- 通知方法(Mail, Teams, Webhook)
        DESTINATION_INFORMATIONS	    LONGTEXT,	                                    -- 通知先(Webhook URL, email) (Json形式)
        CONDITIONS                      LONGTEXT,	                                    -- 通知条件 (Json形式)
        CREATE_TIMESTAMP	            DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,    -- 作成日時
        CREATE_USER	                    VARCHAR(40),	                                -- 作成者
        LAST_UPDATE_TIMESTAMP	        DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,    -- 最終更新日時
        LAST_UPDATE_USER	            VARCHAR(40),	                                -- 最終更新者
        PRIMARY KEY (DESTINATION_ID)
    )ENGINE = InnoDB, CHARSET = utf8mb4, COLLATE = utf8mb4_bin, ROW_FORMAT=COMPRESSED ,KEY_BLOCK_SIZE=8;
    """,
    """
    -- 通知メッセージ / notification message
    CREATE TABLE IF NOT EXISTS T_NOTIFICATION_MESSAGE
    (
        NOTIFICATION_ID	                VARCHAR(26) NOT NULL,	                        -- 通知ID ※ULID
        DESTINATION_ID	                VARCHAR(36),	                                -- 通知先ID
        DESTINATION_NAME	            VARCHAR(255),	                                -- 通知先名
        DESTINATION_KIND	            VARCHAR(20),	                                -- 通知方法(Mail, Teams, Webhook)
        DESTINATION_INFORMATIONS        LONGTEXT,	                                    -- 通知先(Webhook URL, email) (Json形式) ※暗号化
        CONDITIONS                      LONGTEXT,	                                    -- 通知条件 (Json形式)
        FUNC_ID	                        VARCHAR(100),	                                -- 機能ID (メニューID等）
        FUNC_INFORMATIONS	            LONGTEXT,	                                    -- 機能詳細情報(Json形式)
        MESSAGE_INFORMATIONS	        LONGTEXT,	                                    -- 通知メッセージ(Json形式)
        NOTIFICATION_STATUS	            VARCHAR(40),	                                -- 通知結果：Unsent(未送信)、Successful(送信成功)、Failed(送信失敗)
        NOTIFICATION_TIMESTAMP	        DATETIME,	                                    -- 送信日時
        CREATE_TIMESTAMP	            DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,	-- 作成日時
        CREATE_USER	                    VARCHAR(40),	                                -- 作成者
        LAST_UPDATE_TIMESTAMP	        DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,	-- 最終更新日時
        LAST_UPDATE_USER	            VARCHAR(40),	                                -- 最終更新者
        PRIMARY KEY (NOTIFICATION_ID),
        INDEX IDX_FUNC_ID (FUNC_ID, CREATE_TIMESTAMP),
        INDEX IDX_CREATE_TIMESTAMP (CREATE_TIMESTAMP)
    )ENGINE = InnoDB, CHARSET = utf8mb4, COLLATE = utf8mb4_bin, ROW_FORMAT=COMPRESSED ,KEY_BLOCK_SIZE=8;
    """
]

SQL_INSERT_WORKSPACE_DBINFO = """
INSERT INTO T_WORKSPACE_DB (ORGANIZATION_ID, WORKSPACE_ID, DB_HOST, DB_PORT, DB_DATABASE,
                            DB_USER, DB_PASSWORD, CREATE_USER, LAST_UPDATE_USER)
VALUES (%(organization_id)s, %(workspace_id)s, %(db_host)s, %(db_port)s, %(db_database)s,
                            %(db_user)s, %(db_password)s, %(create_user)s, %(last_update_user)s)
"""

SQL_DELETE_WORKSPACE_DBINFO = """
DELETE FROM T_WORKSPACE_DB
WHERE ORGANIZATION_ID = %(organization_id)s
AND WORKSPACE_ID = %(workspace_id)s
"""
