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

SQL_SELECT_WORKSPACE = """
    SELECT  *   FROM    T_WORKSPACE
    ;
"""

CREATE_TABLES = [
    """
    -- 通知先設定 / Setting Notification
    CREATE TABLE IF NOT EXISTS M_NOTIFICATION_DESTINATION
    (
        DESTINATION_ID	                VARCHAR(36) NOT NULL,	                        -- 通知先ID
        DESTINATION_NAME	            VARCHAR(255),	                                -- 通知先名
        DESTINATION_KIND	            VARCHAR(20),	                                -- 通知方法(Mail, Teams_WF, Teams, Webhook)
        DESTINATION_INFORMATIONS        LONGTEXT,	                                    -- 通知先(Webhook URL, email) (Json形式)
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
        INDEX IDX_CREATE_TIMESTAMP (CREATE_TIMESTAMP),
    )ENGINE = InnoDB, CHARSET = utf8mb4, COLLATE = utf8mb4_bin, ROW_FORMAT=COMPRESSED ,KEY_BLOCK_SIZE=8;
    """
]
