#   Copyright 2024 NEC Corporation
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
FROM T_ORGANIZATION
"""

CREATE_TABLES = [
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
        REQUEST_BODY                    TEXT,                                       -- APIの呼び出し時のリクエストボディ
        REQUEST_FORM                    TEXT,                                       -- APIの呼び出し時のリクエストform
        REQUEST_FILES                   TEXT,                                       -- APIの呼び出し時のリクエストfiles
        STATUS_CODE                     VARCHAR(10),                                -- API呼び出し時のステータスコード
        NAME                            VARCHAR(10),                                -- audit固定
        MESSAGE                         TEXT,                                       -- 応答メッセージ
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
