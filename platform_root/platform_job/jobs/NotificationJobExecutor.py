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
from jobs.BaseJobExecutor import BaseJobExecutor

import os
import sys
from contextlib import closing
import traceback
import requests
import datetime
import time
import json
import random
import ssl
import smtplib
from email.message import EmailMessage
from email.utils import formatdate, formataddr, make_msgid

from common_library.common.db import DBconnector
from common_library.common import encrypt, const, common

from libs import queries_notification

import globals
import job_manager_config
import job_manager_const
from jobs import jobs_common
from libs.exceptions import JobTimeoutException


class NotificationJobExecutor(BaseJobExecutor):
    """通知メッセージ送信 / Send notification message

    Args:
        BaseJobExecutor (_type_): _description_
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

                    if row['DESTINATION_KIND'] == const.DESTINATION_KIND_TEAMS_WF:
                        # Teams workflow へのメッセージ送信 / Send messages to Teams workflow
                        notification_status = self.__send_message_teams_wf(destination_informations, message_infomations)

                    if row['DESTINATION_KIND'] == const.DESTINATION_KIND_TEAMS:
                        # Teams へのメッセージ送信 / Send messages to Teams
                        notification_status = self.__send_message_teams(destination_informations, message_infomations)

                    if row['DESTINATION_KIND'] == const.DESTINATION_KIND_WEBHOOK:
                        # webhook へのメッセージ送信 / Send messages to webhook
                        notification_status = self.__send_message_webhook(destination_informations, message_infomations)

                    if row['DESTINATION_KIND'] == const.DESTINATION_KIND_MAIL:
                        notification_status = self.__send_message_mail(destination_informations, message_infomations)

                    # 送信結果を書き込む / Write the transmission result
                    cursor.execute(
                        queries_notification.SQL_UPDATE_STATUS_NOTIFICATION_MESSAGE,
                        {
                            "notification_id": self.notification_id,
                            "notification_status": notification_status,
                            "last_update_user": job_manager_const.SYSTEM_USER_ID,
                            "notification_status_now": const.NOTIFICATION_STATUS_UNSENT,
                        })
                    conn.commit()

            return notification_status == const.NOTIFICATION_STATUS_SUCCESSFUL

        except Exception as err:
            globals.logger.error(f'{err}\n-- stack trace --\n{traceback.format_exc()}')
            self.__update_status_failed()
            raise err

    def __send_message_teams_wf(self, destination_informations, message_infomations):
        """teams workflow へのメッセージ送信 / Send messages to teams workflow

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
                    destination_information['url'],
                    json={
                        "type": "message",
                        "attachments": [
                            {
                                "contentType": "application/vnd.microsoft.card.adaptive",
                                "contentUrl": None,
                                "content": {
                                    "$schema": "http://adaptivecards.io/schemas/adaptive-card.json",
                                    "type": "AdaptiveCard",
                                    "version": "1.5",
                                    "body": [
                                        {
                                            "type": "TextBlock",
                                            "text": message_infomations.get("title"),
                                            "wrap": True,
                                            "style": "heading",
                                            "weight": "Bolder"
                                        },
                                        {
                                            "type": "TextBlock",
                                            "text": message_infomations.get("message").replace('\n', '\n\n'),
                                            "wrap": True
                                        }
                                    ]
                                }
                            }
                        ]
                    },
                    headers={"Content-type": "application/json"},
                    timeout=(
                        job_manager_config.JOBS[const.PROCESS_KIND_NOTIFICATION]['extra_config']['teams_wf_connection_timeout'],
                        job_manager_config.JOBS[const.PROCESS_KIND_NOTIFICATION]['extra_config']['teams_wf_read_timeout'],
                    ))

                if resp_webhook.status_code < 200 or resp_webhook.status_code >= 300:
                    resp_webhook_text = resp_webhook.text
                    raise Exception(f"response code:{resp_webhook.status_code}")

            except Exception as err:
                globals.logger.warning(f'{err}\n-- stack trace --\n{traceback.format_exc()}')
                globals.logger.debug(f"teams workflow webhook response text\n{resp_webhook_text}")
                faild_send = True

        if faild_send:
            return const.NOTIFICATION_STATUS_FAILED
        else:
            return const.NOTIFICATION_STATUS_SUCCESSFUL

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
                        "text": message_infomations.get("message").replace('\n', '<br/>')
                    },
                    headers={"Content-type": "application/json"},
                    timeout=(
                        job_manager_config.JOBS[const.PROCESS_KIND_NOTIFICATION]['extra_config']['teams_connection_timeout'],
                        job_manager_config.JOBS[const.PROCESS_KIND_NOTIFICATION]['extra_config']['teams_read_timeout'],
                    ))

                if resp_webhook.status_code < 200 or resp_webhook.status_code >= 300:
                    resp_webhook_text = resp_webhook.text
                    raise Exception(f"response code:{resp_webhook.status_code}")

            except Exception as err:
                globals.logger.warning(f'{err}\n-- stack trace --\n{traceback.format_exc()}')
                globals.logger.debug(f"teams webhook response text\n{resp_webhook_text}")
                faild_send = True

        if faild_send:
            return const.NOTIFICATION_STATUS_FAILED
        else:
            return const.NOTIFICATION_STATUS_SUCCESSFUL

    def __send_message_webhook(self, destination_informations, message_infomations):
        """webhook へのメッセージ送信 / Send messages to webhook

        Args:
            destination_informations (dict): 通知先 / Notification destination
            message_infomations (dict): 通知メッセージ / notification message

        Returns:
            str: result(notification_status)
        """
        faild_send = False

        for destination_information in destination_informations:
            resp_webhook_text = None
            header = {"Content-type": "application/json"}
            if destination_information.get('header'):
                destination_information_header = json.loads(destination_information.get('header'))
                header.update(destination_information_header)

            try:
                resp_webhook = requests.post(
                    destination_information['url'],
                    json={
                        "text": message_infomations.get("title") + "\n\n" + message_infomations.get("message")
                    },
                    headers=header,
                    timeout=(
                        job_manager_config.JOBS[const.PROCESS_KIND_NOTIFICATION]['extra_config']['webhook_connection_timeout'],
                        job_manager_config.JOBS[const.PROCESS_KIND_NOTIFICATION]['extra_config']['webhook_read_timeout'],
                    ))

                if resp_webhook.status_code < 200 or resp_webhook.status_code >= 300:
                    resp_webhook_text = resp_webhook.text
                    raise Exception(f"response code:{resp_webhook.status_code}")

            except Exception as err:
                globals.logger.warning(f'{err}\n-- stack trace --\n{traceback.format_exc()}')
                globals.logger.debug(f"webhook response text\n{resp_webhook_text}")
                faild_send = True

        if faild_send:
            return const.NOTIFICATION_STATUS_FAILED
        else:
            return const.NOTIFICATION_STATUS_SUCCESSFUL

    def __send_message_mail(self, destination_informations, message_infomations):
        """mailへのメッセージ送信 / Send messages to email

        Args:
            destination_informations (dict): 通知先 / Notification destination
            message_infomations (dict): 通知メッセージ / notification message

        Returns:
            str: result(notification_status)
        """
        try:
            # SMTP Serverの情報取得 / Get SMTP server information
            smtp_conn_info = self.__get_smtp_connection_info()
            if smtp_conn_info is None:
                raise Exception(f"M_SMTP_SERVER not found")

            # 送信メッセージの作成 / Creating outgoing messages
            email_message = EmailMessage()
            email_message.set_content(message_infomations.get("message"))
            email_message['Subject'] = message_infomations.get("title")

            email_message['Date'] = formatdate(localtime=True)
            email_message['Message-ID'] = make_msgid(domain=smtp_conn_info["SMTP_HOST"])

            email_message['From'] = formataddr((smtp_conn_info['SEND_NAME'], smtp_conn_info['SEND_FROM']))
            email_message['To'] = ",".join([dest['email'] for dest in destination_informations if dest['address_header'] == const.MAIL_HEADER_TO])
            email_message['Cc'] = ",".join([dest['email'] for dest in destination_informations if dest['address_header'] == const.MAIL_HEADER_CC])
            email_message['Bcc'] = ",".join([dest['email'] for dest in destination_informations if dest['address_header'] == const.MAIL_HEADER_BCC])
            if not common.is_none_or_empty_string(smtp_conn_info['REPLY_TO']):
                email_message['reply-to'] = formataddr((smtp_conn_info['REPLY_NAME'], smtp_conn_info['REPLY_TO']))

            envelope_from = smtp_conn_info['ENVELOPE_FROM'] if not common.is_none_or_empty_string(smtp_conn_info['ENVELOPE_FROM']) else smtp_conn_info['SEND_FROM']
            envelope_to = [dest['email'] for dest in destination_informations]

            # メッセージ送信
            with self.__connect_smtp(smtp_conn_info) as smtp:
                smtp.send_message(email_message, from_addr=envelope_from, to_addrs=envelope_to)

            return const.NOTIFICATION_STATUS_SUCCESSFUL

        except Exception as err:
            globals.logger.warning(f'{err}\n-- stack trace --\n{traceback.format_exc()}')
            return const.NOTIFICATION_STATUS_FAILED

    def __get_smtp_connection_info(self):
        """SMTP server情報取得 / Get SMTP server information

        Returns:
            dict: SMTP server information
        """
        with closing(DBconnector().connect_orgdb(self.organization_id)) as conn:
            with conn.cursor() as cursor:
                cursor.execute(queries_notification.SQL_QUERY_M_SMTP_SERVER, {"smtp_id": const.DEFAULT_SMTP_ID})
                return cursor.fetchone()

    def __connect_smtp(self, smtp_conn_info):
        """SMTP接続処理 / SMTP connection processing

        Args:
            smtp_conn_info (dict): SMTP server information

        Returns:
            SMTP | SMTP_SSL: SMTP server connection
        """
        smtp = None
        if smtp_conn_info['START_TLS_ENABLE'] == 1:
            smtp = smtplib.SMTP(
                host=smtp_conn_info['SMTP_HOST'],
                port=smtp_conn_info['SMTP_PORT'],
                timeout=job_manager_config.JOBS[const.PROCESS_KIND_NOTIFICATION]['extra_config']['smtp_timeout'])
            smtp.starttls()

        elif smtp_conn_info['SSL_ENABLE'] == 1:
            if job_manager_config.JOBS[const.PROCESS_KIND_NOTIFICATION]['extra_config']['smtps_ssl_verify_enabled']:
                context = ssl.create_default_context()
            else:
                context = ssl._create_unverified_context()

            smtp = smtplib.SMTP_SSL(
                host=smtp_conn_info['SMTP_HOST'],
                port=smtp_conn_info['SMTP_PORT'],
                context=context,
                timeout=job_manager_config.JOBS[const.PROCESS_KIND_NOTIFICATION]['extra_config']['smtp_timeout'])
        else:
            smtp = smtplib.SMTP(
                host=smtp_conn_info['SMTP_HOST'],
                port=smtp_conn_info['SMTP_PORT'],
                timeout=job_manager_config.JOBS[const.PROCESS_KIND_NOTIFICATION]['extra_config']['smtp_timeout'])

        if smtp_conn_info['AUTHENTICATION_ENABLE'] == 1:
            smtp.login(smtp_conn_info['AUTHENTICATION_USER'], encrypt.decrypt_str(smtp_conn_info['AUTHENTICATION_PASSWORD']))

        if os.environ.get('LOG_LEVEL') == 'DEBUG':
            smtp.set_debuglevel(1)

        return smtp

    def cancel(self):
        """job cancel
        """
        try:
            # ステータスを失敗に更新する / Update status to failed
            self.__update_status_failed()
            return True
        except Exception as err:
            globals.logger.error(f'{err}\n-- stack trace --\n{traceback.format_exc()}')
            return False

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
                            "last_update_user": job_manager_const.SYSTEM_USER_ID,
                            "notification_status_now": const.NOTIFICATION_STATUS_UNSENT,
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
                organizations = jobs_common.get_organizations()

                # 実行順序を不定にする / Make the execution order undefined
                random.shuffle(organizations)

                for organization in organizations:
                    # 連続でconnectするとpymysql.err.OperationalError: (1040, 'Too many connections')が発生することがあるので、sleepする
                    # If you connect continuously, pymysql.err.OperationalError: (1040, 'Too many connections') may occur, so sleep
                    time.sleep(0.1)

                    try:
                        workspaces = jobs_common.get_workspaces(organization['ORGANIZATION_ID'])

                        # 実行順序を不定にする / Make the execution order undefined
                        random.shuffle(workspaces)

                        # 全workspaceを処理対象とする / Process all workspaces
                        for workspace in workspaces:
                            # 連続でconnectするとpymysql.err.OperationalError: (1040, 'Too many connections')が発生することがあるので、sleepする
                            # If you connect continuously, pymysql.err.OperationalError: (1040, 'Too many connections') may occur, so sleep
                            time.sleep(0.1)

                            globals.logger.debug(f"Start force update status : ORGANIZATION_ID:[{organization['ORGANIZATION_ID']}] / WORKSPACE_ID:[{workspace['WORKSPACE_ID']}]")

                            with closing(DBconnector().connect_workspacedb(organization['ORGANIZATION_ID'], workspace['WORKSPACE_ID'])) as conn_ws:

                                with conn_ws.cursor() as cursor_ws:
                                    # UNSENT状態で一定時間経過したものを対象とする / Targets items that have been in UNSENT state for a certain period of time
                                    last_update_timestamp = (datetime.datetime.now() - datetime.timedelta(
                                        seconds=job_manager_config.JOBS[job_manager_const.PROCESS_KIND_FORCE_UPDATE_STATUS]['extra_config']['prograss_seconds']))
                                    cursor_ws.execute(
                                        queries_notification.SQL_QUERY_NOTIFICATION_MESSAGE_UNSENT_LONGTIME,
                                        {"last_update_timestamp": last_update_timestamp, "notification_status": const.NOTIFICATION_STATUS_UNSENT})
                                    rows = cursor_ws.fetchall()

                                    for row in rows:
                                        # queueに情報が残ってないか確認する
                                        if not jobs_common.exists_queue(conn_pf, row['NOTIFICATION_ID']):
                                            # queueに情報が残ってない場合、FAILD状態に更新する
                                            # If there is no information left in the queue, update to FAILD status
                                            conn_ws.begin()
                                            try:
                                                cursor_ws.execute(
                                                    queries_notification.SQL_UPDATE_STATUS_NOTIFICATION_MESSAGE,
                                                    {
                                                        "notification_id": row['NOTIFICATION_ID'],
                                                        "notification_status": const.NOTIFICATION_STATUS_FAILED,
                                                        "last_update_user": job_manager_const.SYSTEM_USER_ID,
                                                        "notification_status_now": const.NOTIFICATION_STATUS_UNSENT,
                                                    })
                                                conn_ws.commit()
                                                globals.logger.info(f"Set failed notification_id:{row['NOTIFICATION_ID']}")

                                            except JobTimeoutException as err:
                                                conn_ws.rollback()
                                                raise err # TimeoutException時は即終了する
                                            except Exception as err:
                                                conn_ws.rollback()
                                                globals.logger.error(f'{err}\n-- stack trace --\n{traceback.format_exc()}')

                    except JobTimeoutException as err:
                        raise err # TimeoutException時は即終了する
                    except Exception as err:
                        globals.logger.error(f'{err}\n-- stack trace --\n{traceback.format_exc()}')

        except Exception as err:
            globals.logger.error(f'{err}\n-- stack trace --\n{traceback.format_exc()}')
            raise err
