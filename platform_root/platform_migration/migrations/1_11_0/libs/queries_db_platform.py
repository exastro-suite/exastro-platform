#   Copyright 2025 NEC Corporation
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

ALTER_T_PROCESS_QUEUE = """
ALTER TABLE T_PROCESS_QUEUE
    ADD COLUMN  BATCH_GROUP_KEY         VARCHAR(4000)
        AFTER WORKSPACE_ID,
    ADD COLUMN  BATCH_COUNT_LIMIT       INT
        AFTER WORKSPACE_ID,
    ADD COLUMN  BATCH_PERIOD_SECONDS    INT
        AFTER WORKSPACE_ID,
    ADD COLUMN  ENABLE_BATCH            BOOLEAN NOT NULL DEFAULT 0
        AFTER WORKSPACE_ID
"""
