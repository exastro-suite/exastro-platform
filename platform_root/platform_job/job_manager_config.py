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
import os

from common_library.common import const
import job_manager_const

#
# SUB PROCESSを再起動するインターバル 
# Interval for restarting SUB PROCESS
#
# この時間経過でqueueの受付を終了し、実行中タスクを終了後SUB PROCESSが終了する
# Once this time has elapsed, the queue reception will be terminated, and the SUB PROCESS will terminate after completing the running task.
#
SUB_PROCESS_TERMINATE_REQUEST_SECONDS = int(os.environ.get('SUB_PROCESS_TERMINATE_REQUEST_SECONDS', str(60 * 60 * 3)))

#
# queueを受付けるSUB PROCESSの総数
# Total number of SUB PROCESS that accept queues
#
SUB_PROCESS_MAX_ACTIVE = int(os.environ.get('SUB_PROCESS_MAX_ACTIVE', '2'))

#
# SUB PROCESS毎の最大同時実行task数
# Maximum number of concurrently executing tasks for each SUB PROCESS
#
SUB_PROCESS_MAX_TASKS = int(os.environ.get('SUB_PROCESS_MAX_TASKS', '10'))

#
# SUB PROCESSの状態確認インターバル
# SUB PROCESS status check interval
#
SUB_PROCESS_WATCH_INTERVAL_SECONDS = float(os.environ.get('SUB_PROCESS_WATCH_INTERVAL_SECONDS', '1.0'))

#
# SUB PROCESSでDBの再接続を行うインターバル
# Interval for reconnecting the DB with SUB PROCESS
#
SUB_PROCESS_DB_RECONNECT_INTERVAL_SECONDS = int(os.environ.get('SUB_PROCESS_DB_RECONNECT_INTERVAL_SECONDS', '60'))

#
# SUB PROCESSのDB接続の正常性確認を行うインターバル
# Interval for checking the normality of SUB PROCESS DB connection
#
SUB_PROCESS_DB_HEALTH_CHECK_INTERVAL_SECONDS = int(os.environ.get('SUB_PROCESS_DB_HEALTH_CHECK_INTERVAL_SECONDS', '5'))

#
# SUB PROCESSの再起動を行うcancel timeout回数の閾値
# Threshold for cancel timeout times to restart SUB PROCESS
#
SUB_PROCESS_MAX_CANCEL_TIMEOUT = int(os.environ.get('SUB_PROCESS_MAX_CANCEL_TIMEOUT', '10'))

#
# TASKの状態確認するインターバル
# Interval to check TASK status
#
TASK_STATUS_WATCH_INTERVAL_SECONDS = float(os.environ.get('TASK_STATUS_WATCH_INTERVAL_SECONDS', '1.0'))

#
# TASKのステータスを強制的にエラーにするTASKの起動インターバル
# TASK startup interval that forces the TASK status to error
#
FORCE_UPDATE_EXEC_INTERVAL_SECONDS = int(os.environ.get('FORCE_UPDATE_EXEC_INTERVAL_SECONDS', '60'))

#
# TASKのステータスを強制的にエラーにする最終更新日時からの経過時間
# Elapsed time since last update to force TASK status to error
#
FORCE_UPDATE_STATUS_PROGRASS_SECONDS = int(os.environ.get('FORCE_UPDATE_EXEC_INTERVAL_SECONDS', '600'))

#
# タスクのキャンセルtimeout時間
# Task cancellation timeout seconds
#
TASK_CANCEL_TIMEOUT_SECONDS = float(os.environ.get('TASK_CANCEL_TIMEOUT_SECONDS', '5.0'))

#
# タスクの種類毎の設定 / Settings for each type of task
#   timeout_seconds         :   taskのtimeout秒 / task timeout seconds
#   max_task_per_process    :   プロセス毎に同時実行可能なtask数 / Number of tasks that can be executed simultaneously per process
#   module                  :   taskを処理するclassのmodule
#
TASKS = {
    const.PROCESS_KIND_NOTIFICATION: {
        "timeout_seconds": int(os.environ.get(f'TASK_{const.PROCESS_KIND_NOTIFICATION}_TIMEOUT_SECONDS', '30')),
        "max_task_per_process": int(os.environ.get(f'TASK_{const.PROCESS_KIND_NOTIFICATION}_MAX_TASK_PER_PROCESS', str(SUB_PROCESS_MAX_TASKS))),
        "module": "tasks.NotificationTaskExecutor",
        "class": "NotificationTaskExecutor"
    },
    job_manager_const.PROCESS_KIND_FORCE_STATUS_UPDATE: {
        "timeout_seconds": int(os.environ.get(f'TASK_{job_manager_const.PROCESS_KIND_FORCE_STATUS_UPDATE}_TIMEOUT_SECONDS', '60')),
        "max_task_per_process": 1,
        "module": "tasks.ForceStatusUpdateTaskExecutor",
        "class": "ForceStatusUpdateTaskExecutor"
    }
}
