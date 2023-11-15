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

import globals
from contextlib import closing
import traceback
import requests
import datetime
import json

from common_library.common.db import DBconnector
from common_library.common import encrypt, const

from libs import queries_notification

import backyard_config
import backyard_const
from tasks import tasks_common


class TaskExecuter(BaseTaskExecutor):
    """通知メッセージ送信 / Send notification message

    Args:
        BaseTaskExecutor (_type_): _description_
    """
    def __init__(self, queue: dict):
        """constructor

        Args:
            queue (dict): queue
        """
        self.__queue = queue
        self.organization_id = self.__queue['ORGANIZATION_ID']
        self.workspace_id = self.__queue['WORKSPACE_ID']
        self.notification_id = self.__queue['PROCESS_EXEC_ID']

    def execute(self):
        """メッセージ送信実行 / Execute message sending

        Raises:
            Exception: _description_
            Exception: _description_
        """
        globals.logger.info(
            f"START TASK kind:{self.__queue['PROCESS_KIND']} exec_id:{self.__queue['PROCESS_EXEC_ID']}" +
            f"organization_id:{self.__queue['ORGANIZATION_ID']} workspace_id:{self.__queue['WORKSPACE_ID']} timestamp:{self.__queue['LAST_UPDATE_TIMESTAMP']}")

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
                            "last_update_user": backyard_const.BACKYARD_USER_ID
                        })
                    conn.commit()

            globals.logger.info("SUCCEED TASK")

        except Exception as err:
            globals.logger.error(f"FAILD TASK : {err}")
            globals.logger.error(f'stack trace\n{traceback.format_exc()}')
            self.__update_status_failed()

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
        globals.logger.info(
            f"START TASK CANCEL kind:{self.__queue['PROCESS_KIND']} exec_id:{self.__queue['PROCESS_EXEC_ID']}" +
            f"organization_id:{self.__queue['ORGANIZATION_ID']} workspace_id:{self.__queue['WORKSPACE_ID']} timestamp:{self.__queue['LAST_UPDATE_TIMESTAMP']}")
        try:
            # ステータスを失敗に更新する / Update status to failed
            self.__update_status_failed()
            globals.logger.info("SUCCEED TASK CANCEL")
        except Exception as err:
            globals.logger.error(f"FAILD TASK CANCEL: {err}")
            globals.logger.error(f'stack trace\n{traceback.format_exc()}')

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
                            "last_update_user": backyard_const.BACKYARD_USER_ID
                        })
                    conn.commit()
        except Exception as err:
            conn.rollback()
            raise err

    @classmethod
    def force_update_status_failed(cls):
        """強制ステータス更新 / Force status update
        """
        globals.logger.info("START TASK FORCE UPDATE STATUS : NOTIFICATION")
        try:
            # 全オーガナイゼーションを処理対象とする / Target all organizations
            organizations = tasks_common.get_organizations()
            for organization in organizations:
                workspaces = tasks_common.get_workspaces(organization['ORGANIZATION_ID'])

                with closing(DBconnector().connect_platformdb()) as conn_pf:
                    for workspace in workspaces:
                        with closing(DBconnector().connect_workspacedb(organization['ORGANIZATION_ID'], workspace['WORKSPACE_ID'])) as conn_ws:
                            with conn_ws.cursor() as cursor_ws:
                                last_update_timestamp = datetime.datetime.now() - datetime.timedelta(seconds=backyard_config.FORCE_UPDATE_STATUS_PROGRASS_SECONDS)
                                cursor_ws.execute(
                                    queries_notification.SQL_QUERY_NOTIFICATION_MESSAGE_UNSENT_LONGTIME,
                                    {"last_update_timestamp": last_update_timestamp, "notification_status": const.NOTIFICATION_STATUS_UNSENT})
                                rows = cursor_ws.fetchall()

                                for row in rows:
                                    if not tasks_common.exists_queue(conn_pf, row['NOTIFICATION_ID']):
                                        conn_ws.begin()
                                        try:
                                            cursor_ws.execute(
                                                queries_notification.SQL_UPDATE_STATUS_NOTIFICATION_MESSAGE,
                                                {
                                                    "notification_id": row['NOTIFICATION_ID'],
                                                    "notification_status": const.NOTIFICATION_STATUS_FAILED,
                                                    "last_update_user": backyard_const.BACKYARD_USER_ID
                                                })
                                            conn_ws.commit()
                                            globals.logger.warning(f"FORCE UPDATE STATUS notification_id:{row['NOTIFICATION_ID']}")
                                        except Exception:
                                            conn_ws.rollback()
            globals.logger.info("FINISH TASK FORCE UPDATE STATUS : NOTIFICATION")

        except Exception as err:
            globals.logger.error(f"FAILD TASK FORCE UPDATE STATUS : NOTIFICATION: {err}")
            globals.logger.error(f'stack trace\n{traceback.format_exc()}')
