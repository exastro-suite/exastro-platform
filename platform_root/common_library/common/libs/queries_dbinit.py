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
        SMTP_HOST		                VARCHAR(1024),                              -- 送信サーバーのホスト
        SMTP_PORT		                INT,                                        -- 送信サーバーのポート番号
        SEND_FROM		                VARCHAR(255),                               -- 送信元のメールアドレス
        SEND_NAME		                VARCHAR(100),                               -- 送信元の表示名
        REPLY_TO		                VARCHAR(255),                               -- 返信先のメールアドレス
        REPLY_NAME		                VARCHAR(100),                               -- 返信先の表示名
        ENVELOPE_FROM		            VARCHAR(255),                               -- 差出人のメールアドレス
        SSL_ENABLE		                BOOLEAN DEFAULT 0,                          -- SSL有無（既定：FALSE）
        START_TLS_ENABLE		        BOOLEAN DEFAULT 0,                          -- StartTLS有無（既定：FALSE）
        AUTHENTICATION_ENABLE		    BOOLEAN DEFAULT 0,                          -- 認証有無（既定：FALSE）
        AUTHENTICATION_USER		        VARCHAR(255),                               -- 認証ユーザー
        AUTHENTICATION_PASSWORD		    VARCHAR(1024),                              -- 認証パスワード（暗号化）
        CREATE_TIMESTAMP		        DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,    -- 作成日時
        CREATE_USER		                VARCHAR(40),                                -- 作成者
        LAST_UPDATE_TIMESTAMP		    DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,    -- 最終更新日時
        LAST_UPDATE_USER		        VARCHAR(40),                                -- 最終更新者
        PRIMARY KEY (SMTP_ID)
    )ENGINE = InnoDB, CHARSET = utf8mb4, COLLATE = utf8mb4_bin, ROW_FORMAT=COMPRESSED ,KEY_BLOCK_SIZE=8;
    """,
    """
    -- ユーザー一括登録ジョブ管理 / User bulk registration job management
    CREATE TABLE IF NOT EXISTS T_JOBS_USER
    (
        JOB_ID		                    VARCHAR(26) NOT NULL,                       -- ジョブID
        JOB_TYPE		                VARCHAR(36),                                -- ジョブ種類
        JOB_STATUS		                VARCHAR(36),                                -- ジョブステータス
        COUNT_REGISTER	                INT,	                                    -- 登録対象件数
        COUNT_UPDATE	                INT,	                                    -- 更新対象件数
        COUNT_DELETE	                INT,	                                    -- 削除対象件数
        SUCCESS_REGISTER	            INT,	                                    -- 登録成功件数
        SUCCESS_UPDATE	                INT,	                                    -- 更新成功件数
        SUCCESS_DELETE	                INT,	                                    -- 削除成功件数
        FAILED_REGISTER             	INT,	                                    -- 登録失敗件数
        FAILED_UPDATE	                INT,                                        -- 更新失敗件数
        FAILED_DELETE	                INT,	                                    -- 削除失敗件数
        MESSAGE 	                    TEXT,	                                    -- 処理結果メッセージ
        LANGUAGE	                    VARCHAR(36),                                -- 依頼者の言語
        CREATE_TIMESTAMP		        DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,    -- 作成日時
        CREATE_USER		                VARCHAR(40),                                -- 作成者
        LAST_UPDATE_TIMESTAMP		    DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,    -- 最終更新日時
        LAST_UPDATE_USER		        VARCHAR(40),                                -- 最終更新者
        PRIMARY KEY (JOB_ID)
    )ENGINE = InnoDB, CHARSET = utf8mb4, COLLATE = utf8mb4_bin, ROW_FORMAT=COMPRESSED ,KEY_BLOCK_SIZE=8;
    """,
    """
    -- ユーザー一括登録Excelファイル管理 / Bulk user registration Excel file management
    CREATE TABLE IF NOT EXISTS T_JOBS_USER_FILE
    (
        FILE_ID		                    VARCHAR(26) NOT NULL,                       -- ファイルID
        JOB_ID		                    VARCHAR(26) NOT NULL,                       -- ジョブID
        FILE_DATA		                LONGBLOB,                                   -- 一括登録Excelファイルデータ
        CREATE_TIMESTAMP		        DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,    -- 作成日時
        CREATE_USER		                VARCHAR(40),                                -- 作成者
        LAST_UPDATE_TIMESTAMP		    DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,    -- 最終更新日時
        LAST_UPDATE_USER		        VARCHAR(40),                                -- 最終更新者
        PRIMARY KEY (FILE_ID),
        INDEX IDX_FUNC_ID (JOB_ID)
    )ENGINE = InnoDB, CHARSET = utf8mb4, COLLATE = utf8mb4_bin, ROW_FORMAT=COMPRESSED ,KEY_BLOCK_SIZE=8;
    """,
    """
    -- ユーザー一括登録結果ファイル管理 / User bulk registration result file management
    CREATE TABLE IF NOT EXISTS T_JOBS_USER_RESULT
    (
        RESULT_ID		                VARCHAR(26) NOT NULL,                       -- 結果ID
        JOB_ID		                    VARCHAR(26) NOT NULL,                       -- ジョブID
        FILE_DATA		                LONGBLOB,                                   -- 一括登録Excelファイルデータ
        CREATE_TIMESTAMP		        DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,    -- 作成日時
        PRIMARY KEY (RESULT_ID),
        INDEX IDX_FUNC_ID (JOB_ID)
    )ENGINE = InnoDB, CHARSET = utf8mb4, COLLATE = utf8mb4_bin, ROW_FORMAT=COMPRESSED ,KEY_BLOCK_SIZE=8;
    """,
    """
    -- ユーザー一覧出力ジョブ管理 / User list output job management
    CREATE TABLE IF NOT EXISTS T_JOBS_USER_EXPORT
    (
        JOB_ID		                    VARCHAR(26) NOT NULL,                       -- ジョブID
        JOB_TYPE		                VARCHAR(36),                                -- ジョブ種類
        JOB_STATUS		                VARCHAR(36),                                -- ジョブステータス
        QUERY_STRINGS	                VARCHAR(4000),	                            -- 抽出条件
        COUNT_EXPORT	                INT,	                                    -- 出力対象件数
        MESSAGE 	                    TEXT,	                                    -- 処理結果メッセージ
        LANGUAGE	                    VARCHAR(36),                                -- 依頼者の言語
        CREATE_TIMESTAMP		        DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,    -- 作成日時
        CREATE_USER		                VARCHAR(40),                                -- 作成者
        LAST_UPDATE_TIMESTAMP		    DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,    -- 最終更新日時
        LAST_UPDATE_USER		        VARCHAR(40),                                -- 最終更新者
        PRIMARY KEY (JOB_ID)
    )ENGINE = InnoDB, CHARSET = utf8mb4, COLLATE = utf8mb4_bin, ROW_FORMAT=COMPRESSED ,KEY_BLOCK_SIZE=8;
    """,
    """
    -- ユーザー一覧出力Excelファイル管理 / User list output Excel file management
    CREATE TABLE IF NOT EXISTS T_JOBS_USER_FILE_EXPORT
    (
        FILE_ID		                    VARCHAR(26) NOT NULL,                       -- ファイルID
        JOB_ID		                    VARCHAR(26) NOT NULL,                       -- ジョブID
        FILE_DATA		                LONGBLOB,                                   -- ユーザー一覧Excelファイルデータ
        CREATE_TIMESTAMP		        DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,    -- 作成日時
        CREATE_USER		                VARCHAR(40),                                -- 作成者
        LAST_UPDATE_TIMESTAMP		    DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,    -- 最終更新日時
        LAST_UPDATE_USER		        VARCHAR(40),                                -- 最終更新者
        PRIMARY KEY (FILE_ID),
        INDEX IDX_FUNC_ID (JOB_ID)
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
    """,
    """
    -- 監査ログ / Audit log
    CREATE TABLE IF NOT EXISTS T_AUDIT_LOG
    (
        ID                              INT NOT NULL AUTO_INCREMENT,
        TS                              DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,    -- イベント呼び出し日時
        USER_ID                         VARCHAR(40),                                -- ユーザーID
        USERNAME                        VARCHAR(255),                               -- ユーザー名
        ORG_ID                          VARCHAR(36),                                -- オーガナイゼーションID
        WS_ID                           VARCHAR(36),                                -- ワークスペースID
        LEVEL                           VARCHAR(10),                                -- メッセージレベル
        FULL_PATH                       VARCHAR(255),                               -- 呼び出されたエンドポイントとパラメータ
        ACCESS_ROUTE                    VARCHAR(255),                               -- アクセスルートのIPアドレス
        REMOTE_ADDR                     VARCHAR(40),                                -- リモートアクセスのIPアドレス
        REQUEST_HEADERS                 TEXT,                                       -- APIが呼び出された際のリクエストヘッダー
        REQUEST_USER_HEADERS            TEXT,                                       -- APIを呼び出す際のリクエストヘッダー
        REQUEST_BODY                    LONGTEXT,                                   -- APIの呼び出し時のリクエストボディ
        REQUEST_FORM                    LONGTEXT,                                   -- APIの呼び出し時のリクエストform
        REQUEST_FILES                   TEXT,                                       -- APIの呼び出し時のリクエストfiles
        STATUS_CODE                     VARCHAR(10),                                -- API呼び出し時のステータスコード
        NAME                            VARCHAR(10),                                -- audit固定
        MESSAGE                         LONGTEXT,                                   -- 応答メッセージ
        MESSAGE_ID                      VARCHAR(10),                                -- APIの応答メッセージID
        MESSAGE_TEXT                    TEXT,                                       -- APIの応答メッセージ
        STACK_INFO                      TEXT,                                       -- APIエラー時のスタック情報
        PROCESS                         VARCHAR(40),                                -- プロセスID
        LOG_TS                          DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,    -- ログの出力日時
        USERID                          VARCHAR(40),                                -- プロセス処理ユーザーID
        METHOD                          VARCHAR(10),                                -- API呼び出し時のmethod
        CONTENT_TYPE                    VARCHAR(255),                               -- API呼び出し時のメディアタイプ
        CREATE_TIMESTAMP                DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,    -- 作成日時
        CREATE_USER                     VARCHAR(40),                                -- 作成者
        LAST_UPDATE_TIMESTAMP           DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,    -- 最終更新日時
        LAST_UPDATE_USER                VARCHAR(40),                                -- 最終更新者
        PRIMARY KEY (ID),
        INDEX IDX_TS (TS)
    )ENGINE = InnoDB, CHARSET = utf8mb4, COLLATE = utf8mb4_bin, ROW_FORMAT=COMPRESSED ,KEY_BLOCK_SIZE=8;
    """,
    """
    -- 監査ログ出力ジョブ管理 / Audit log output job management
    CREATE TABLE IF NOT EXISTS T_JOBS_AUDIT_LOG
    (
        JOB_ID                          VARCHAR(26) NOT NULL,                       -- ジョブID
        JOB_TYPE                        VARCHAR(36),                                -- ジョブ種類
        JOB_STATUS                      VARCHAR(36),                                -- ジョブステータス
        CONDITIONS                      TEXT,                                       -- 抽出条件
        COUNT_EXPORT                    INT,                                        -- 出力対象件数
        MESSAGE                         TEXT,                                       -- 処理結果メッセージ
        LANGUAGE                        VARCHAR(36),                                -- 依頼者の言語
        CREATE_TIMESTAMP                DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,    -- 作成日時
        CREATE_USER                     VARCHAR(40),                                -- 作成者
        LAST_UPDATE_TIMESTAMP           DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,    -- 最終更新日時
        LAST_UPDATE_USER                VARCHAR(40),                                -- 最終更新者
        PRIMARY KEY (JOB_ID)
    )ENGINE = InnoDB, CHARSET = utf8mb4, COLLATE = utf8mb4_bin, ROW_FORMAT=COMPRESSED ,KEY_BLOCK_SIZE=8;
    """,
    """
    -- 監査ログ出力ファイル管理 / Audit log output file management
    CREATE TABLE IF NOT EXISTS T_JOBS_AUDIT_LOG_FILE
    (
        FILE_ID                         VARCHAR(26) NOT NULL,                       -- ファイルID
        JOB_ID                          VARCHAR(26) NOT NULL,                       -- ジョブID
        FILE_DATA                       LONGBLOB,                                   -- ファイルデータ
        CREATE_TIMESTAMP                DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,    -- 作成日時
        CREATE_USER                     VARCHAR(40),                                -- 作成者
        LAST_UPDATE_TIMESTAMP           DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,    -- 最終更新日時
        LAST_UPDATE_USER                VARCHAR(40),                                -- 最終更新者
        PRIMARY KEY (FILE_ID),
        INDEX IDX_FUNC_ID (JOB_ID)
    )ENGINE = InnoDB, CHARSET = utf8mb4, COLLATE = utf8mb4_bin, ROW_FORMAT=COMPRESSED ,KEY_BLOCK_SIZE=8;
    """,
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
        DESTINATION_KIND	            VARCHAR(20),	                                -- 通知方法(Mail, Teams_WF, Teams, Webhook)
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
        DESTINATION_KIND	            VARCHAR(20),	                                -- 通知方法(Mail, Teams_WF, Teams, Webhook)
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
