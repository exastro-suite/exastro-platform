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

from common_library.common import const, common
import job_manager_const

#
# SUB PROCESSを再起動するインターバル
# Interval for restarting SUB PROCESS
#
# この時間経過でqueueの受付を終了し、実行中タスクを終了後SUB PROCESSが終了する
# Once this time has elapsed, the queue reception will be terminated, and the SUB PROCESS will terminate after completing the running job.
#
SUB_PROCESS_TERMINATE_REQUEST_SECONDS = int(os.environ.get('SUB_PROCESS_TERMINATE_REQUEST_SECONDS'))

#
# queueを受付けるSUB PROCESSの総数
# Total number of SUB PROCESS that accept queues
#
SUB_PROCESS_ACCEPTABLE = int(os.environ.get('SUB_PROCESS_ACCEPTABLE'))

#
# SUB PROCESS毎の最大同時実行job数
# Maximum number of concurrently executing jobs for each SUB PROCESS
#
SUB_PROCESS_MAX_JOBS = int(os.environ.get('SUB_PROCESS_MAX_JOBS'))

#
# SUB PROCESSの状態確認インターバル
# SUB PROCESS status check interval
#
SUB_PROCESS_WATCH_INTERVAL_SECONDS = float(os.environ.get('SUB_PROCESS_WATCH_INTERVAL_SECONDS'))

#
# SUB PROCESSでDBの再接続を行うインターバル
# Interval for reconnecting the DB with SUB PROCESS
#
SUB_PROCESS_DB_RECONNECT_INTERVAL_SECONDS = int(os.environ.get('SUB_PROCESS_DB_RECONNECT_INTERVAL_SECONDS'))

#
# SUB PROCESSのDB接続の正常性確認を行うインターバル
# Interval for checking the normality of SUB PROCESS DB connection
#
SUB_PROCESS_DB_HEALTH_CHECK_INTERVAL_SECONDS = int(os.environ.get('SUB_PROCESS_DB_HEALTH_CHECK_INTERVAL_SECONDS'))

#
# SUB PROCESSの再起動を行うcancel timeout回数の閾値
# Threshold for cancel timeout times to restart SUB PROCESS
#
SUB_PROCESS_MAX_CANCEL_TIMEOUT = int(os.environ.get('SUB_PROCESS_MAX_CANCEL_TIMEOUT'))

#
# JOBの状態確認するインターバル
# Interval to check JOB status
#
JOB_STATUS_WATCH_INTERVAL_SECONDS = float(os.environ.get('JOB_STATUS_WATCH_INTERVAL_SECONDS'))

#
# タスクのキャンセルtimeout時間
# Job cancellation timeout seconds
#
JOB_CANCEL_TIMEOUT_SECONDS = float(os.environ.get('JOB_CANCEL_TIMEOUT_SECONDS'))

#
# タスクの種類毎の設定 / Settings for each type of job
#   timeout_seconds         :   jobのtimeout秒 / job timeout seconds
#   module                  :   jobを処理するclassのmodule / module of the class that processes the job
#   class                   :   jobを処理するclass / class that processes the job
#   job_trigger             :   jobの起動契機 / Job start trigger
#   max_job_per_process     :   プロセス毎に同時実行可能なjob数 / Number of jobs that can be executed simultaneously per process
#   job_interval            :   job実行のインターバル / job execution interval
#   extra_config            :   job毎の個別設定 / Individual settings for each job
#
JOBS = {
    const.PROCESS_KIND_NOTIFICATION: {
        "timeout_seconds": int(os.environ.get('JOB_NOTIFICATION_TIMEOUT_SECONDS')),
        "module": "jobs.NotificationJobExecutor",
        "class": "NotificationJobExecutor",
        "job_trigger": "queue",
        "max_job_per_process": int(os.environ.get('JOB_NOTIFICATION_MAX_JOB_PER_PROCESS', str(SUB_PROCESS_MAX_JOBS))),
        "extra_config": {
            # teams webhookのhttp connection timeout時間 / teams webhook http connection timeout time
            "teams_connection_timeout": float(os.environ.get('JOB_NOTIFICATION_TEAMS_CONNECTION_TIMEOUT')),
            # teams webhookのhttp read timeout時間 / teams webhook http read timeout time
            "teams_read_timeout": float(os.environ.get('JOB_NOTIFICATION_TEAMS_READ_TIMEOUT')),
            # smtpのtimeout時間 / smtp timeout time
            "smtp_timeout": float(os.environ.get('JOB_NOTIFICATION_SMTP_TIMEOUT')),
            # smtpsのssl verify(TRUE/FALSE) / smtps ssl verify(TRUE/FALSE)
            "smtps_ssl_verify_enabled": common.val_to_boolean(os.environ.get('JOB_NOTIFICATION_SMTPS_SSL_VERIFY_ENABLED', 'TRUE')),
        }
    },
    job_manager_const.PROCESS_KIND_FORCE_UPDATE_STATUS: {
        "timeout_seconds": int(os.environ.get('JOB_FORCE_UPDATE_STATUS_TIMEOUT_SECONDS')),
        "module": "jobs.ForceUpdateStatusJobExecutor",
        "class": "ForceUpdateStatusJobExecutor",
        "job_trigger": "interval_timer",
        "job_interval": int(os.environ.get('JOB_FORCE_UPDATE_STATUS_INTERVAL_SECONDS')),
        "extra_config": {
            # queueに存在しなくステータスが以下の時間変わらなかったとき失敗に置き換えます
            # Replaces it with failure when it does not exist in the queue and the status does not change for the following time
            "prograss_seconds": int(os.environ.get('JOB_FORCE_UPDATE_STATUS_PROGRASS_SECONDS'))
        }
    }
}
