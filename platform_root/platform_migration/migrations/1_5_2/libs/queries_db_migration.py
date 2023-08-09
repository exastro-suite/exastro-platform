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
    -- メンテナンスモード設定値管理
    CREATE TABLE IF NOT EXISTS T_MAINTENANCE_MODE
    (
        MAINTENANCE_ID                  VARCHAR(40),                                -- 主キー
        MODE_NAME                       VARCHAR(255),                               -- メンテナンスモード名
        SETTING_VALUE                   VARCHAR(255),                               -- 設定値
        LAST_UPDATE_TIMESTAMP           DATETIME(6),                                -- 最終更新日時
        LAST_UPDATE_USER                VARCHAR(40),                                -- 最終更新者
        PRIMARY KEY(MAINTENANCE_ID)
    )ENGINE = InnoDB, CHARSET = utf8mb4, COLLATE = utf8mb4_bin, ROW_FORMAT=COMPRESSED ,KEY_BLOCK_SIZE=8;
    """
]

SETTING_DATAS = [
    """
    INSERT IGNORE INTO `T_MAINTENANCE_MODE`
        (`MAINTENANCE_ID`, `MODE_NAME`, `SETTING_VALUE`,`LAST_UPDATE_TIMESTAMP`, `LAST_UPDATE_USER`)
    VALUES
        ('1', 'BACKYARD_EXECUTE_STOP', '0', CURRENT_TIMESTAMP, null);
    """,
    """
    INSERT IGNORE INTO `T_MAINTENANCE_MODE`
        (`MAINTENANCE_ID`, `MODE_NAME`, `SETTING_VALUE`,`LAST_UPDATE_TIMESTAMP`, `LAST_UPDATE_USER`)
    VALUES
        ('2', 'DATA_UPDATE_STOP', '0', CURRENT_TIMESTAMP, null);
    """
]
