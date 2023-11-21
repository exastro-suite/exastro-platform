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
# Once this time has elapsed, the queue reception will be terminated, and the SUB PROCESS will terminate after completing the running job.
#
SUB_PROCESS_TERMINATE_REQUEST_SECONDS = int(os.environ.get('SUB_PROCESS_TERMINATE_REQUEST_SECONDS', str(60 * 60 * 3)))

#
# queueを受付けるSUB PROCESSの総数
# Total number of SUB PROCESS that accept queues
#
SUB_PROCESS_ACCEPTABLE = int(os.environ.get('SUB_PROCESS_ACCEPTABLE', '2'))

#
# SUB PROCESS毎の最大同時実行job数
# Maximum number of concurrently executing jobs for each SUB PROCESS
#
SUB_PROCESS_MAX_JOBS = int(os.environ.get('SUB_PROCESS_MAX_JOBS', '10'))

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
# JOBの状態確認するインターバル
# Interval to check JOB status
#
JOB_STATUS_WATCH_INTERVAL_SECONDS = float(os.environ.get('JOB_STATUS_WATCH_INTERVAL_SECONDS', '1.0'))

#
# JOBのステータスを強制的にエラーにするJOBの起動インターバル
# JOB startup interval that forces the JOB status to error
#
FORCE_UPDATE_STATUS_INTERVAL_SECONDS = int(os.environ.get('FORCE_UPDATE_STATUS_INTERVAL_SECONDS', '60'))

#
# JOBのステータスを強制的にエラーにする最終更新日時からの経過時間
# Elapsed time since last update to force JOB status to error
#
FORCE_UPDATE_STATUS_PROGRASS_SECONDS = int(os.environ.get('FORCE_UPDATE_STATUS_PROGRASS_SECONDS', '600'))

#
# タスクのキャンセルtimeout時間
# Job cancellation timeout seconds
#
JOB_CANCEL_TIMEOUT_SECONDS = float(os.environ.get('JOB_CANCEL_TIMEOUT_SECONDS', '5.0'))

#
# タスクの種類毎の設定 / Settings for each type of job
#   timeout_seconds         :   jobのtimeout秒 / job timeout seconds
#   max_job_per_process    :   プロセス毎に同時実行可能なjob数 / Number of jobs that can be executed simultaneously per process
#   module                  :   jobを処理するclassのmodule
#
JOBS = {
    const.PROCESS_KIND_NOTIFICATION: {
        "timeout_seconds": int(os.environ.get(f'JOB_{const.PROCESS_KIND_NOTIFICATION}_TIMEOUT_SECONDS', '20')),
        "max_job_per_process": int(os.environ.get(f'JOB_{const.PROCESS_KIND_NOTIFICATION}_MAX_JOB_PER_PROCESS', str(SUB_PROCESS_MAX_JOBS))),
        "module": "jobs.NotificationJobExecutor",
        "class": "NotificationJobExecutor",
        "extra_config": {
            "teams_connection_timeout": float(os.environ.get(f'JOB_{const.PROCESS_KIND_NOTIFICATION}_TEAMS_CONNECTION_TIMEOUT', '3.0')),
            "teams_read_timeout": float(os.environ.get(f'JOB_{const.PROCESS_KIND_NOTIFICATION}_TEAMS_READ_TIMEOUT', '10.0')),
        }
    },
    job_manager_const.PROCESS_KIND_FORCE_UPDATE_STATUS: {
        "timeout_seconds": int(os.environ.get(f'JOB_{job_manager_const.PROCESS_KIND_FORCE_UPDATE_STATUS}_TIMEOUT_SECONDS', '60')),
        "max_job_per_process": 1,
        "module": "jobs.ForceUpdateStatusJobExecutor",
        "class": "ForceUpdateStatusJobExecutor"
    }
}
