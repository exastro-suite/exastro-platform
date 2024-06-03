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
    """
]
