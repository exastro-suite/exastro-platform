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
from contextlib import closing
import traceback
import requests
import datetime
import time
import json
import random
import base64
import ssl
import smtplib
from urllib.parse import urlparse
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
    def __init__(self, queue: dict, batch_queue: list[dict] | None = None):
        """constructor

        Args:
            queue (dict): queue
            batch_queue (list[dict] | None): batchで処理するqueue (DESTINATION_KIND = ServiceNowのみ対応)
        """
        super().__init__(queue, batch_queue)
        self.organization_id = self.queue['ORGANIZATION_ID']
        self.workspace_id = self.queue['WORKSPACE_ID']

    def execute(self):
        """メッセージ送信実行 / Execute message sending

        Returns:
            boolean: 処理結果
        """

        if self.batch_queue is None:
            # 単一メッセージの送信
            result = self.__send_message()
        else:
            # batchメッセージの送信
            result = self.__send_message_batch()

        return result

    def __send_message(self):
        """単一メッセージの送信

        Returns:
            boolean: 処理結果
        """
        notification_id = self.queue['PROCESS_EXEC_ID']
        notification_result = {
            "status": const.NOTIFICATION_STATUS_FAILED,
            "http_response_code": None,
            "http_response_body": None
        }

        try:
            with closing(DBconnector().connect_workspacedb(self.organization_id, self.workspace_id)) as conn:
                with conn.cursor() as cursor:
                    # 通知メッセージを取得 / Get notification message
                    cursor.execute(queries_notification.SQL_QUERY_NOTIFICATION_MESSAGE, {"notification_id": notification_id})
                    row = cursor.fetchone()

                    if row is None:
                        # データがない時は終了する
                        raise Exception("No date found : T_NOTIFICATION_MESSAGE")

                # 通知先・通知メッセージを取得する/ Get notification destination/notification message
                destination_informations = json.loads(encrypt.decrypt_str(row['DESTINATION_INFORMATIONS']))
                message_infomations = json.loads(row['MESSAGE_INFORMATIONS'])

                if row['DESTINATION_KIND'] == const.DESTINATION_KIND_TEAMS_WF:
                    # Teams workflow へのメッセージ送信 / Send messages to Teams workflow
                    notification_result = self.__send_message_teams_wf(destination_informations, message_infomations)

                if row['DESTINATION_KIND'] == const.DESTINATION_KIND_TEAMS:
                    # Teams へのメッセージ送信 / Send messages to Teams
                    notification_result = self.__send_message_teams(destination_informations, message_infomations)

                if row['DESTINATION_KIND'] == const.DESTINATION_KIND_WEBHOOK:
                    # webhook へのメッセージ送信 / Send messages to webhook
                    notification_result = self.__send_message_webhook(destination_informations, message_infomations)

                if row['DESTINATION_KIND'] == const.DESTINATION_KIND_MAIL:
                    notification_result = self.__send_message_mail(destination_informations, message_infomations)

                if row['DESTINATION_KIND'] == const.DESTINATION_KIND_SERVICENOW:
                    notification_result = self.__send_message_servicenow(destination_informations, message_infomations)

                with conn.cursor() as cursor:
                    # 送信結果を書き込む / Write the transmission result
                    cursor.execute(
                        queries_notification.SQL_UPDATE_STATUS_NOTIFICATION_MESSAGE,
                        {
                            "notification_id": notification_id,
                            "notification_status": notification_result["status"],
                            "last_update_user": job_manager_const.SYSTEM_USER_ID,
                            "http_response_code": notification_result["http_response_code"],
                            "http_response_body": notification_result["http_response_body"],
                            "notification_status_now": const.NOTIFICATION_STATUS_UNSENT,
                        })
                    globals.logger.info(f'servicenow notification result notification_id:[{notification_id}] notification_status:[{notification_result["status"]}]')
                    conn.commit()

            return notification_result["status"] == const.NOTIFICATION_STATUS_SUCCESSFUL

        except Exception as err:
            globals.logger.error(f'{err}\n-- stack trace --\n{traceback.format_exc()}')
            self.__update_status_failed()
            raise

    def __send_message_batch(self):
        """バッチメッセージの送信

        Returns:
            boolean: 処理結果
        """
        queue_list = []
        destination_informations_list = []
        message_infomations_list = []
        notification_results = []

        try:
            with closing(DBconnector().connect_workspacedb(self.organization_id, self.workspace_id)) as conn:
                with conn.cursor() as cursor:

                    for index, queue in enumerate(self.batch_queue):
                        # 通知メッセージを取得 / Get notification message
                        cursor.execute(queries_notification.SQL_QUERY_NOTIFICATION_MESSAGE, {"notification_id": queue['PROCESS_EXEC_ID']})
                        row = cursor.fetchone()

                        if row is not None:
                            # 通知先・通知メッセージを取得する（取得できなかったものは無視する）
                            queue_list.append(queue)
                            destination_informations_list.append(json.loads(encrypt.decrypt_str(row['DESTINATION_INFORMATIONS'])))
                            message_infomations_list.append(json.loads(row['MESSAGE_INFORMATIONS']))
                            notification_results.append({"status": const.NOTIFICATION_STATUS_FAILED, "http_response_code": None, "http_response_body": None})
    
                    if row['DESTINATION_KIND'] == const.DESTINATION_KIND_TEAMS_WF:
                        # Teams workflow へのメッセージ送信 / Send messages to Teams workflow
                        raise Exception("Not Support Batch Send Notifications")

                    if row['DESTINATION_KIND'] == const.DESTINATION_KIND_TEAMS:
                        # Teams へのメッセージ送信 / Send messages to Teams
                        raise Exception("Not Support Batch Send Notifications")

                    if row['DESTINATION_KIND'] == const.DESTINATION_KIND_WEBHOOK:
                        # webhook へのメッセージ送信 / Send messages to webhook
                        raise Exception("Not Support Batch Send Notifications")

                    if row['DESTINATION_KIND'] == const.DESTINATION_KIND_MAIL:
                        raise Exception("Not Support Batch Send Notifications")

                    if row['DESTINATION_KIND'] == const.DESTINATION_KIND_SERVICENOW:
                        notification_results = self.__send_message_servicenow_batch(queue_list, destination_informations_list, message_infomations_list)

                    # 送信結果を書き込む / Write the transmission result
                    for index, queue in enumerate(queue_list):
                        cursor.execute(
                            queries_notification.SQL_UPDATE_STATUS_NOTIFICATION_MESSAGE,
                            {
                                "notification_id": queue['PROCESS_EXEC_ID'],
                                "notification_status": notification_results[index]["status"],
                                "last_update_user": job_manager_const.SYSTEM_USER_ID,
                                "http_response_code": notification_results[index]["http_response_code"],
                                "http_response_body": notification_results[index]["http_response_body"],
                                "notification_status_now": const.NOTIFICATION_STATUS_UNSENT,
                            })
                        globals.logger.info(f'servicenow notification result[{index}] notification_id:[{queue["PROCESS_EXEC_ID"]}] notification_status:[{notification_results[index]["status"]}]')
                    conn.commit()

            # 全てが成功の場合はTrue,1つでも成功以外があればFalseを返す
            for notification_result in notification_results:
                if notification_result.get("status") != const.NOTIFICATION_STATUS_SUCCESSFUL:
                    return False

            return True

        except Exception as err:
            globals.logger.error(f'{err}\n-- stack trace --\n{traceback.format_exc()}')
            self.__update_status_failed()
            raise

    def __send_message_teams_wf(self, destination_informations, message_infomations):
        """teams workflow へのメッセージ送信 / Send messages to teams workflow

        Args:
            destination_informations (dict): 通知先 / Notification destination
            message_infomations (dict): 通知メッセージ / notification message

        Returns:
            dict: 処理結果(status), http_response_code, http_response_body
        """
        notification_result = {
            "status": const.NOTIFICATION_STATUS_FAILED,
            "http_response_code": None,
            "http_response_body": None
        }

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
                        self.job_config['extra_config']['teams_wf_connection_timeout'],
                        self.job_config['extra_config']['teams_wf_read_timeout'],
                    ))

                notification_result["http_response_code"] = resp_webhook.status_code
                notification_result["http_response_body"] = resp_webhook.text

                if resp_webhook.status_code < 200 or resp_webhook.status_code >= 300:
                    resp_webhook_text = resp_webhook.text
                    raise Exception(f"response code:{resp_webhook.status_code}")

                notification_result["status"] = const.NOTIFICATION_STATUS_SUCCESSFUL

            except Exception as err:
                globals.logger.warning(f'{err}\n-- stack trace --\n{traceback.format_exc()}')
                globals.logger.debug(f"teams workflow webhook response text\n{resp_webhook_text}")
                notification_result["status"] = const.NOTIFICATION_STATUS_FAILED

        return notification_result

    def __send_message_teams(self, destination_informations, message_infomations):
        """teamsへのメッセージ送信 / Send messages to teams

        Args:
            destination_informations (dict): 通知先 / Notification destination
            message_infomations (dict): 通知メッセージ / notification message

        Returns:
            dict: 処理結果(status), http_response_code, http_response_body
        """
        notification_result = {
            "status": const.NOTIFICATION_STATUS_FAILED,
            "http_response_code": None,
            "http_response_body": None
        }

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

                notification_result["http_response_code"] = resp_webhook.status_code
                notification_result["http_response_body"] = resp_webhook.text

                if resp_webhook.status_code < 200 or resp_webhook.status_code >= 300:
                    resp_webhook_text = resp_webhook.text
                    raise Exception(f"response code:{resp_webhook.status_code}")

                notification_result["status"] = const.NOTIFICATION_STATUS_SUCCESSFUL

            except Exception as err:
                globals.logger.warning(f'{err}\n-- stack trace --\n{traceback.format_exc()}')
                globals.logger.debug(f"teams webhook response text\n{resp_webhook_text}")
                notification_result["status"] = const.NOTIFICATION_STATUS_FAILED

        return notification_result

    def __send_message_webhook(self, destination_informations, message_infomations):
        """webhook へのメッセージ送信 / Send messages to webhook

        Args:
            destination_informations (dict): 通知先 / Notification destination
            message_infomations (dict): 通知メッセージ / notification message

        Returns:
            dict: 処理結果(status), http_response_code, http_response_body
        """
        notification_result = {
            "status": const.NOTIFICATION_STATUS_FAILED,
            "http_response_code": None,
            "http_response_body": None
        }

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
                        self.job_config['extra_config']['webhook_connection_timeout'],
                        self.job_config['extra_config']['webhook_read_timeout'],
                    ))

                notification_result["http_response_code"] = resp_webhook.status_code
                notification_result["http_response_body"] = resp_webhook.text

                if resp_webhook.status_code < 200 or resp_webhook.status_code >= 300:
                    resp_webhook_text = resp_webhook.text
                    raise Exception(f"response code:{resp_webhook.status_code}")

                notification_result["status"] = const.NOTIFICATION_STATUS_SUCCESSFUL

            except Exception as err:
                globals.logger.warning(f'{err}\n-- stack trace --\n{traceback.format_exc()}')
                globals.logger.debug(f"webhook response text\n{resp_webhook_text}")
                notification_result["status"] = const.NOTIFICATION_STATUS_FAILED

        return notification_result

    def __send_message_servicenow(self, destination_informations, message_infomations):
        """ServiceNowへの送信 / Send to ServiceNow

        Args:
            destination_informations (dict): 通知先 / Notification destination
            message_infomations (dict): 通知メッセージ / notification message

        Returns:
            dict: 処理結果(status), http_response_code, http_response_body
        """
        notification_result = {
            "status": const.NOTIFICATION_STATUS_FAILED,
            "http_response_code": None,
            "http_response_body": None
        }
        for destination_information in destination_informations:
            try:
                response = requests.post(
                    destination_information['table_api_url'],
                    json=message_infomations,
                    headers={"Content-type": "application/json", "Accept": "application/json"},
                    auth=(destination_information['servicenow_user'], destination_information['servicenow_password']),
                    timeout=(
                        self.job_config['extra_config']['servicenow_connetion_timeout'],
                        self.job_config['extra_config']['servicenow_one_read_timeout'],
                    ))

                notification_result["http_response_code"] = response.status_code
                notification_result["http_response_body"] = response.text

                if response.status_code < 200 or response.status_code >= 300:
                    resp_webhook_text = response.text
                    raise Exception(f"response code:{response.status_code}")

                notification_result["status"] = const.NOTIFICATION_STATUS_SUCCESSFUL

            except Exception as err:
                globals.logger.warning(f'{err}\n-- stack trace --\n{traceback.format_exc()}')
                globals.logger.debug(f"webhook response text\n{resp_webhook_text}")
                notification_result["status"] = const.NOTIFICATION_STATUS_FAILED

        return notification_result

    def __send_message_servicenow_batch(self, queue_list, destination_informations_list, message_infomations_list):
        notification_results = []
        for i in range(len(queue_list)):
            notification_results.append({
                "status": const.NOTIFICATION_STATUS_FAILED,
                "http_response_code": None,
                "http_response_body": None
            })

        for destination_information in destination_informations_list[0]:
            # ServiceNow API path
            table_api_path = urlparse(destination_information['table_api_url']).path

            # batch送信用のbodyを作成する
            rest_requests = []
            for index, queue in enumerate(queue_list):
                rest_requests.append({
                    "id": queue['PROCESS_EXEC_ID'],
                    "exclude_response_headers": True,
                    "headers": [
                        {"name": "Content-Type", "value": "application/json"},
                        {"name": "Accept", "value": "application/json"}
                    ],
                    "url": table_api_path,
                    "method": "POST",
                    "body": base64.b64encode(json.dumps(message_infomations_list[index]).encode()).decode('ascii')
                })

            try:
                resp_webhook_text = None
                response = requests.post(
                    destination_information['batch_api_url'],
                    json={
                        "batch_request_id": queue_list[0]['PROCESS_EXEC_ID'],
                        "rest_requests": rest_requests
                    },
                    headers={"Content-type": "application/json", "Accept": "application/json"},
                    auth=(destination_information['servicenow_user'], destination_information['servicenow_password']),
                    timeout=(
                        self.job_config['extra_config']['servicenow_connetion_timeout'],
                        self.job_config['extra_config']['servicenow_batch_read_timeout'],
                    ))

                resp_webhook_text = response.text

                if response.status_code < 200 or response.status_code >= 300:
                    # batchの応答自体がHTTP200系以外の時は全てその応答を設定する
                    for notification_result in notification_results:
                        notification_result["http_response_code"] = response.status_code
                        notification_result["http_response_body"] = response.text

                    raise Exception(f"response code:{response.status_code}")

                # 1件毎の応答を設定する
                response_json = json.loads(response.text)
                for serviced_request in response_json["serviced_requests"]:
                    index = next((index for index, queue in enumerate(queue_list) if queue['PROCESS_EXEC_ID'] == serviced_request.get("id")), None)
                    if index is None:
                        continue

                    if serviced_request.get("status_code") >= 200 and serviced_request.get("status_code") < 300:
                        notification_results[index]["status"] = const.NOTIFICATION_STATUS_SUCCESSFUL
                    else:
                        notification_results[index]["status"] = const.NOTIFICATION_STATUS_FAILED

                    notification_results[index]["http_response_code"] = serviced_request.get("status_code")
                    notification_results[index]["http_response_body"] = base64.b64decode(serviced_request.get("body").encode()).decode()

            except Exception as err:
                globals.logger.warning(f'{err}\n-- stack trace --\n{traceback.format_exc()}')
                globals.logger.debug(f"webhook response text\n{resp_webhook_text}")

        return notification_results

    def __send_message_mail(self, destination_informations, message_infomations):
        """mailへのメッセージ送信 / Send messages to email

        Args:
            destination_informations (dict): 通知先 / Notification destination
            message_infomations (dict): 通知メッセージ / notification message

        Returns:
            str: result(notification_status)
        """
        notification_result = {
            "status": const.NOTIFICATION_STATUS_FAILED,
            "http_response_code": None,
            "http_response_body": None
        }

        try:
            # SMTP Serverの情報取得 / Get SMTP server information
            smtp_conn_info = self.__get_smtp_connection_info()
            if smtp_conn_info is None:
                raise Exception("M_SMTP_SERVER not found")

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

            notification_result["status"] = const.NOTIFICATION_STATUS_SUCCESSFUL

        except Exception as err:
            globals.logger.warning(f'{err}\n-- stack trace --\n{traceback.format_exc()}')
            notification_result["status"] = const.NOTIFICATION_STATUS_FAILED

        return notification_result

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
                timeout=self.job_config['extra_config']['smtp_timeout'])
            smtp.starttls()

        elif smtp_conn_info['SSL_ENABLE'] == 1:
            if self.job_config['extra_config']['smtps_ssl_verify_enabled']:
                context = ssl.create_default_context()
            else:
                context = ssl._create_unverified_context()

            smtp = smtplib.SMTP_SSL(
                host=smtp_conn_info['SMTP_HOST'],
                port=smtp_conn_info['SMTP_PORT'],
                context=context,
                timeout=self.job_config['extra_config']['smtp_timeout'])
        else:
            smtp = smtplib.SMTP(
                host=smtp_conn_info['SMTP_HOST'],
                port=smtp_conn_info['SMTP_PORT'],
                timeout=self.job_config['extra_config']['smtp_timeout'])

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
                    if self.batch_queue is None:
                        cursor.execute(
                            queries_notification.SQL_UPDATE_STATUS_NOTIFICATION_MESSAGE,
                            {
                                "notification_id": self.queue['PROCESS_EXEC_ID'],
                                "notification_status": const.NOTIFICATION_STATUS_FAILED,
                                "last_update_user": job_manager_const.SYSTEM_USER_ID,
                                "http_response_code": None,
                                "http_response_body": None,
                                "notification_status_now": const.NOTIFICATION_STATUS_UNSENT,
                            })
                    else:
                        for queue in self.batch_queue:
                            cursor.execute(
                                queries_notification.SQL_UPDATE_STATUS_NOTIFICATION_MESSAGE,
                                {
                                    "notification_id": queue['PROCESS_EXEC_ID'],
                                    "notification_status": const.NOTIFICATION_STATUS_FAILED,
                                    "last_update_user": job_manager_const.SYSTEM_USER_ID,
                                    "http_response_code": None,
                                    "http_response_body": None,
                                    "notification_status_now": const.NOTIFICATION_STATUS_UNSENT,
                                })

                    conn.commit()
        except Exception:
            conn.rollback()
            raise

    @classmethod
    def force_update_status(cls):
        """強制ステータス更新 / Force status update
        """
        try:
            # 全ワークスペースに対して関数実行
            jobs_common.foreach_workspaces(cls.__force_update_status_workspace)
        except Exception as err:
            globals.logger.error(f'{err}\n-- stack trace --\n{traceback.format_exc()}')
            raise

    @classmethod
    def __force_update_status_workspace(cls, organization_id, workspace_id):
        """指定ワークスペースの強制ステータス更新 / 指定ワークスペースの強制ステータス更新

        Args:
            organization_id (str): organization_id
            workspace_id (str): workspace_id
        """
        time.sleep(0.1)
        globals.logger.debug(f"Start force update status : ORGANIZATION_ID:[{organization_id}] / WORKSPACE_ID:[{workspace_id}]")

        job_config = job_manager_config.JOBS[job_manager_const.PROCESS_KIND_FORCE_UPDATE_STATUS]

        try:
            with closing(DBconnector().connect_platformdb()) as conn_pf, \
                    closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn_ws, \
                    conn_ws.cursor() as cursor_ws:

                last_update_timestamp = (datetime.datetime.now() - datetime.timedelta(
                    seconds=job_config['extra_config']['prograss_seconds']))

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
                                    "http_response_code": None,
                                    "http_response_body": None,
                                    "notification_status_now": const.NOTIFICATION_STATUS_UNSENT,
                                })
                            conn_ws.commit()
                            globals.logger.info(f"Set failed notification_id:{row['NOTIFICATION_ID']}")

                        except Exception:
                            conn_ws.rollback()
                            raise

                    elif (job_manager_config.JOBS[const.PROCESS_KIND_NOTIFICATION]['extra_config']['aborted_expired_duration_minutes'] > 0 and
                            datetime.datetime.now() - datetime.timedelta(minutes=job_manager_config.JOBS[const.PROCESS_KIND_NOTIFICATION]['extra_config']['aborted_expired_duration_minutes']) > row['CREATE_TIMESTAMP']):
                        # aborted_expired_duration_minutes以上時間が経過した通知は取りやめる
                        conn_pf.begin()
                        conn_ws.begin()
                        try:
                            # QUEUEから情報削除
                            delete_succeeded = jobs_common.delete_queue(conn_pf, row['NOTIFICATION_ID'])

                            if delete_succeeded:
                                # QUEUEの情報の削除成功した際は、有効期限切れに更新
                                cursor_ws.execute(
                                    queries_notification.SQL_UPDATE_STATUS_NOTIFICATION_MESSAGE,
                                    {
                                        "notification_id": row['NOTIFICATION_ID'],
                                        "notification_status": const.NOTIFICATION_STATUS_ABORTED_EXPIRED,
                                        "last_update_user": job_manager_const.SYSTEM_USER_ID,
                                        "http_response_code": None,
                                        "http_response_body": None,
                                        "notification_status_now": const.NOTIFICATION_STATUS_UNSENT,
                                    })

                                globals.logger.info(f"Set Aborted Expired notification_id:{row['NOTIFICATION_ID']}")

                            conn_pf.commit()
                            conn_ws.commit()
                        except Exception:
                            conn_pf.rollback()
                            conn_ws.rollback()
                            raise

        except JobTimeoutException:
            raise  # TimeoutException時は即終了する
        except Exception as err:
            # 次の処理に進むためraiseしない
            globals.logger.error(f'{err}\n-- stack trace --\n{traceback.format_exc()}')
