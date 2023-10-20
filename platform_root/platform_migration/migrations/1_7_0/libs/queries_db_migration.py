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

CREATE_TABLES = [
    """
    -- 処理キュー / Process Queue
    CREATE TABLE IF NOT EXISTS T_PROCESS_QUEUE
    (
        PROCESS_ID                      VARCHAR(26) NOT NULL,                       -- 処理ID(主キー)
        PROCESS_KIND                    VARCHAR(36),                                -- 処理区分
        PROCESS_EXEC_ID                 VARCHAR(26),                                -- 各種情報と紐づけるキー値（通知ID等）
        ORGANIZATION_ID                 VARCHAR(36),                                -- オーガナイゼーションID
        WORKSPACE_ID                    VARCHAR(36),                                -- ワークスペースID
        LAST_UPDATE_TIMESTAMP           DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- 最終更新日時
        LAST_UPDATE_USER                VARCHAR(40),                                -- 最終更新者
        PRIMARY KEY(PROCESS_ID)
    )ENGINE = InnoDB, CHARSET = utf8mb4, COLLATE = utf8mb4_bin, ROW_FORMAT=COMPRESSED ,KEY_BLOCK_SIZE=8;
    """
]
