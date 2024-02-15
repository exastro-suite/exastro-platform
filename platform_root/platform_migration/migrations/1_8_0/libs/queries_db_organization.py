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
        FILE_DATA		                BLOB,                                       -- 一括登録Excelファイルデータ
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
        FILE_DATA		                BLOB,                                       -- 一括登録Excelファイルデータ
        CREATE_TIMESTAMP		        DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,    -- 作成日時
        PRIMARY KEY (RESULT_ID),
        INDEX IDX_FUNC_ID (JOB_ID)
    )ENGINE = InnoDB, CHARSET = utf8mb4, COLLATE = utf8mb4_bin, ROW_FORMAT=COMPRESSED ,KEY_BLOCK_SIZE=8;
    """
]
