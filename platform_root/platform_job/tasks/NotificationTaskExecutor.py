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
from tasks.BaseTaskExecutor import BaseTaskExecutor

import sys
from contextlib import closing
import traceback
import requests
import datetime
import json

from common_library.common.db import DBconnector
from common_library.common import encrypt, const

from libs import queries_notification

import globals
import job_manager_config
import job_manager_const
from tasks import tasks_common


class NotificationTaskExecutor(BaseTaskExecutor):
    """通知メッセージ送信 / Send notification message

    Args:
        BaseTaskExecutor (_type_): _description_
    """
    def __init__(self, queue: dict):
        """constructor

        Args:
            queue (dict): queue
        """
        super().__init__(queue)
        self.organization_id = self.queue['ORGANIZATION_ID']
        self.workspace_id = self.queue['WORKSPACE_ID']
        self.notification_id = self.queue['PROCESS_EXEC_ID']

    def execute(self):
        """メッセージ送信実行 / Execute message sending

        Raises:
            Exception: _description_
            Exception: _description_
        """
        try:
            with closing(DBconnector().connect_workspacedb(self.organization_id, self.workspace_id)) as conn:
                with conn.cursor() as cursor:
                    # 通知メッセージを取得 / Get notification message
                    cursor.execute(queries_notification.SQL_QUERY_NOTIFICATION_MESSAGE, {"notification_id": self.notification_id})
                    row = cursor.fetchone()

                    if row is None:
                        # データがない時は終了する
                        raise Exception("No date found : T_NOTIFICATION_MESSAGE")

                    # 通知先・通知メッセージを取得する/ Get notification destination/notification message
                    destination_informations = json.loads(encrypt.decrypt_str(row['DESTINATION_INFORMATIONS']))
                    message_infomations = json.loads(row['MESSAGE_INFORMATIONS'])

                    notification_status = const.NOTIFICATION_STATUS_FAILED

                    if row['DESTINATION_KIND'] == const.DESTINATION_KIND_TEAMS:
                        # Teamsへのメッセージ送信 / Send messages to Teams
                        notification_status = self.__send_message_teams(destination_informations, message_infomations)

                    if row['DESTINATION_KIND'] == const.DESTINATION_KIND_MAIL:
                        # TODO : メール送信
                        pass

                    # 送信結果を書き込む / Write the transmission result
                    cursor.execute(
                        queries_notification.SQL_UPDATE_STATUS_NOTIFICATION_MESSAGE,
                        {
                            "notification_id": self.notification_id,
                            "notification_status": notification_status,
                            "last_update_user": job_manager_const.SYSTEM_USER_ID
                        })
                    conn.commit()

            return notification_status == const.NOTIFICATION_STATUS_SUCCESSFUL

        except Exception as err:
            globals.logger.error(f'{err}\n-- stack trace --\n{traceback.format_exc()}')
            self.__update_status_failed()
            raise err

    def __send_message_teams(self, destination_informations, message_infomations):
        """teamsへのメッセージ送信 / Send messages to teams

        Args:
            destination_informations (dict): 通知先 / Notification destination
            message_infomations (dict): 通知メッセージ / notification message

        Returns:
            str: result(notification_status)
        """
        faild_send = False

        for destination_information in destination_informations:
            resp_webhook_text = None
            try:
                resp_webhook = requests.post(
                    destination_information['webhook'],
                    json={
                        "title": message_infomations.get("title"),
                        "text": message_infomations.get("message")
                    },
                    headers={"Content-type": "application/json"})

                if resp_webhook.status_code < 200 or resp_webhook.status_code >= 300:
                    resp_webhook_text = resp_webhook.text
                    raise Exception(f"response code:{resp_webhook.status_code}")

            except Exception as err:
                globals.logger.warning(f"teams webhook : {err}")
                globals.logger.debug(f"teams webhook response text\n{resp_webhook_text}")
                faild_send = True

        if faild_send:
            return const.NOTIFICATION_STATUS_FAILED
        else:
            return const.NOTIFICATION_STATUS_SUCCESSFUL


    def cancel(self):
        """task cancel
        """
        try:
            # ステータスを失敗に更新する / Update status to failed
            self.__update_status_failed()
        except Exception as err:
            globals.logger.error(f'{err}\n-- stack trace --\n{traceback.format_exc()}')
            raise err

    def __update_status_failed(self):
        """status update failed
        """
        try:
            with closing(DBconnector().connect_workspacedb(self.organization_id, self.workspace_id)) as conn:
                with conn.cursor() as cursor:
                    cursor.execute(
                        queries_notification.SQL_UPDATE_STATUS_NOTIFICATION_MESSAGE,
                        {
                            "notification_id": self.notification_id,
                            "notification_status": const.NOTIFICATION_STATUS_FAILED,
                            "last_update_user": job_manager_const.SYSTEM_USER_ID
                        })
                    conn.commit()
        except Exception as err:
            conn.rollback()
            raise err

    @classmethod
    def force_update_status(cls):
        """強制ステータス更新 / Force status update
        """
        try:
            with closing(DBconnector().connect_platformdb()) as conn_pf:

                # 全オーガナイゼーションを処理対象とする / Target all organizations
                organizations = tasks_common.get_organizations()
                for organization in organizations:
                    workspaces = tasks_common.get_workspaces(organization['ORGANIZATION_ID'])

                    # 全workspaceを処理対象とする / Process all workspaces
                    for workspace in workspaces:
                        with closing(DBconnector().connect_workspacedb(organization['ORGANIZATION_ID'], workspace['WORKSPACE_ID'])) as conn_ws:

                            with conn_ws.cursor() as cursor_ws:
                                # UNSENT状態で一定時間経過したものを対象とする / Targets items that have been in UNSENT state for a certain period of time
                                last_update_timestamp = datetime.datetime.now() - datetime.timedelta(seconds=job_manager_config.FORCE_UPDATE_STATUS_PROGRASS_SECONDS)
                                cursor_ws.execute(
                                    queries_notification.SQL_QUERY_NOTIFICATION_MESSAGE_UNSENT_LONGTIME,
                                    {"last_update_timestamp": last_update_timestamp, "notification_status": const.NOTIFICATION_STATUS_UNSENT})
                                rows = cursor_ws.fetchall()

                                for row in rows:
                                    # queueに情報が残ってないか確認する
                                    if not tasks_common.exists_queue(conn_pf, row['NOTIFICATION_ID']):
                                        # queueに情報が残ってない場合、FAILD状態に更新する
                                        # If there is no information left in the queue, update to FAILD status
                                        conn_ws.begin()
                                        try:
                                            cursor_ws.execute(
                                                queries_notification.SQL_UPDATE_STATUS_NOTIFICATION_MESSAGE,
                                                {
                                                    "notification_id": row['NOTIFICATION_ID'],
                                                    "notification_status": const.NOTIFICATION_STATUS_FAILED,
                                                    "last_update_user": job_manager_const.SYSTEM_USER_ID
                                                })
                                            conn_ws.commit()
                                            globals.logger.warning(f"Force Failed notification_id:{row['NOTIFICATION_ID']}")
                                        except Exception as err:
                                            conn_ws.rollback()
                                            globals.logger.error(f'{err}\n-- stack trace --\n{traceback.format_exc()}')
        except Exception as err:
            globals.logger.error(f'{err}\n-- stack trace --\n{traceback.format_exc()}')
            raise err
