#   Copyright 2024 NEC Corporation
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

import ulid
from contextlib import closing
import traceback
import datetime
import time
import json
import random

from common_library.common.db import DBconnector
from common_library.common import const, common
from common_library.common import multi_lang
from common_library.common import user_import_file_common
from common_library.common import api_keycloak_users
from common_library.common import api_keycloak_roles

import globals
import job_manager_config
import job_manager_const
from jobs import jobs_common
from libs.exceptions import JobTimeoutException
from libs import queries_user_export

USER_GET_ONCE = 50


class UserExportJobExecutor(BaseJobExecutor):
    """ユーザ情報エクスポート / User Export Job

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
        self.job_id = self.queue['PROCESS_EXEC_ID']

        # organization_private情報 / organization_private information
        self.organization_private = None
        # keycloak token発行用インスタンス / keycloak token issuing instance
        self.organization_sa_token = None

        # 言語 / Language
        self.language = None

        # Excel制御用class instance / Excel control class instance
        self.result_wb = None

        # 処理結果ファイルID / Processing result file ID
        self.result_id = ulid.new().str
        # 処理件数 / Number of cases processed
        self.count_export = 0

    def execute(self):
        """ユーザ情報エクスポート実行 / User Export

        Raises:
            Exception: _description_
            Exception: _description_
        """
        with closing(DBconnector().connect_orgdb(self.organization_id)) as conn:
            try:
                # 実行中にステータス更新 / Update status during execution
                self.__update_t_jobs_user(conn, job_status=const.JOB_USER_EXEC, message=None)
                conn.commit()

                # Oranization private情報の取得 / Obtaining Oranization private information
                self.organization_private = DBconnector().get_organization_private(self.organization_id)
                # Token発行用classのインスタンス化 / Instantiation of Token issuing class
                self.organization_sa_token = jobs_common.organization_sa_token(self.organization_id, self.organization_private)

                # SELECT T_JOBS_USER_EXPORT
                with conn.cursor() as cursor:
                    cursor.execute(queries_user_export.SQL_QUERY_JOBS_USER, {"job_id": self.job_id})
                    t_jobs_user = cursor.fetchone()
                    if t_jobs_user is None:
                        message_id = "500-62001"
                        message = multi_lang.get_text(
                            message_id,
                            "処理対象のレコードの取得に失敗しました(テーブル:{0})",
                            "T_JOBS_USER_EXPORT"
                        )
                        raise common.InternalErrorException(message_id=message_id, message=message)

                # 言語情報 / Language information
                self.language = t_jobs_user["LANGUAGE"]

                # 結果雛形ファイルのOpen / Open result template file
                globals.logger.debug('Get excel template')
                self.result_wb = user_import_file_common.UserResultWorkbook(lang=self.language)

                loop_count = 0
                max = USER_GET_ONCE

                while True:
                    try:
                        first = loop_count * max
                        # ユーザーの取得 / Add user
                        users = self.__get_users(first=first, max=max)

                        # ファイル出力
                        for user in users:
                            row = {
                                "USERNAME": user.get("username", ""),
                                "EMAIL": user.get("email", ""),
                                "FIRSTNAME": user.get("firstName", ""),
                                "LASTNAME": user.get("lastName", ""),
                                "PASSWORD": "",
                                "AFFILIATION": self.__get_user_affiliation(user),
                                "DESCRIPTION": self.__get_user_description(user),
                                "ENABLED": user.get("enabled", False),
                                "ROLES": user["roles"],
                                "USER_ID": user["id"]
                            }
                            self.result_wb.write_row(row)

                        loop_count += 1
                        self.count_export += len(users)

                        if self.count_export > job_manager_config.JOBS[const.PROCESS_KIND_USER_EXPORT]["extra_config"]["max_number_of_rows_allowd"]:
                            message_id = "400-00022"
                            message = multi_lang.get_text_spec(
                                self.language,
                                message_id,
                                "{0}の上限数({1})を超えるため、{0}は取得できません。",
                                multi_lang.get_text_spec(self.language, '000-00135', "ユーザー"),
                                job_manager_config.JOBS[const.PROCESS_KIND_USER_EXPORT]["extra_config"]["max_number_of_rows_allowd"]
                            )
                            raise common.BadRequestException(message_id=message_id, message=message)

                        self.__update_t_jobs_user(conn, job_status=const.JOB_USER_EXEC, message=None)
                        conn.commit()

                        if len(users) < max:
                            break

                        # 1JOBでリソースを占有しないようにsleepする / Sleep so that 1JOB does not occupy resources
                        time.sleep(job_manager_config.JOBS[const.PROCESS_KIND_USER_EXPORT]["extra_config"]["user_export_interval_millisecond"] / 1000)

                    except JobTimeoutException as ex:
                        # Timeout発生時はThrowして処理を中断する
                        raise ex

                globals.logger.info('User Export processed')

                # 結果ファイル保存
                excel_bytes_image = self.result_wb.get_workbook_bytes_image()
                with conn.cursor() as cursor:
                    cursor.execute(
                        queries_user_export.SQL_INSERT_JOBS_USER_RESULT,
                        {"file_id": self.result_id, "job_id": self.job_id, "file_data": excel_bytes_image}
                    )
                del excel_bytes_image

                # 最終的なステータスに更新する / Update to final status
                self.__update_t_jobs_user(conn, job_status=const.JOB_USER_COMP, message=None)

            except JobTimeoutException as ex:
                # タイムアウトエラー / timeout error
                if self.result_wb is not None:
                    self.__update_t_jobs_user(conn, job_status=const.JOB_USER_FAILED, message=multi_lang.get_text_spec(self.language, '401-00011', '{0}行目の処理中にタイムアウトしました。', self.count_export))
                else:
                    self.__update_t_jobs_user(conn, job_status=const.JOB_USER_FAILED, message=multi_lang.get_text_spec(self.language, '401-00012', '初期処理中にタイムアウトしました。'))
                raise ex

            except (common.BadRequestException, common.InternalErrorException) as ex:
                self.__update_t_jobs_user(conn, job_status=const.JOB_USER_FAILED, message=ex.message)
                raise ex

            except Exception as ex:
                globals.logger.error(f'{ex}\n-- stack trace --\n{traceback.format_exc()}')
                if self.result_wb is not None:
                    self.__update_t_jobs_user(conn, job_status=const.JOB_USER_FAILED, message=multi_lang.get_text_spec(self.language, '401-00013', '{0}行目の処理中に想定外のエラーが発生し、処理を中断しました。({1})', self.count_export))
                else:
                    self.__update_t_jobs_user(conn, job_status=const.JOB_USER_FAILED, message=multi_lang.get_text_spec(self.language, '401-00014', '初期処理中に想定外のエラーが発生し、処理を中断しました。({0})'))
                raise ex

            finally:

                conn.commit()

        return True

    def __get_user_affiliation(self, user):
        """ユーザ所属の取得

        Args:
            user (dict): user
        Returns:
            str: affiliation
        """
        # 空で登録されているとキー自体が存在しないため
        if "attributes" in user:
            if "affiliation" in user["attributes"]:
                return user["attributes"]["affiliation"][0]
            else:
                return ""
        else:
            return ""

    def __get_user_description(self, user):
        """ユーザ説明の取得

        Args:
            user (dict): user
        Returns:
            str: description
        """
        # 空で登録されているとキー自体が存在しないため
        if "attributes" in user:
            if "description" in user["attributes"]:
                return user["attributes"]["description"][0]
            else:
                return ""
        else:
            return ""

    def __get_users(self, first, max):
        """ユーザ一覧の取得 / get users

        Returns:
            dict: users
        """
        # ユーザーの取得 / get users
        res = api_keycloak_users.user_get(
            realm_name=self.organization_id,
            user_name=None,
            token=self.organization_sa_token.get(),
            first=first,
            max=max
        )

        if res.status_code != 200:
            globals.logger.debug(f"response:{res.text}")
            message_id = "500-25002"
            message = multi_lang.get_text_spec(
                self.language,
                message_id,
                "ユーザー取得に失敗しました",
            )

            raise common.InternalErrorException(message_id=message_id, message=message)

        users = json.loads(res.text)
        # ロールの取得 / get roles
        for user in users:
            res = api_keycloak_roles.user_role_get(
                realm_name=self.organization_id,
                user_id=user["id"],
                client_id=self.organization_private.user_token_client_id,
                token=self.organization_sa_token.get()
            )

            if res.status_code != 200:
                globals.logger.debug(f"response:{res.text}")
                message_id = "500-25002"
                message = multi_lang.get_text_spec(
                    self.language,
                    message_id,
                    "ロール取得に失敗しました",
                )

                raise common.InternalErrorException(message_id=message_id, message=message)

            # カンマ区切りでユーザー情報に追加
            roles = json.loads(res.text)
            role_list = ",".join([role.get("name") for role in roles])
            user["roles"] = role_list

        globals.logger.info(f'Get Users [OG:{self.organization_id}]')
        return users

    def __update_t_jobs_user(self, conn, job_status, message):
        """JOBの状態、件数の更新 / Update of JOB status and number of jobs

        Args:
            conn (_type_): organization DB connection
            job_status (str): job_status
            message (str): message
        """
        with conn.cursor() as cursor:
            cursor.execute(
                queries_user_export.SQL_UPDATE_JOBS_USER,
                {
                    "job_id": self.job_id,
                    "job_status": job_status,
                    "count_export": self.count_export,
                    "message": message,
                    "last_update_user": job_manager_const.SYSTEM_USER_ID,
                    "job_status_comp": const.JOB_USER_COMP,
                    "job_status_failed": const.JOB_USER_FAILED
                }
            )

    def cancel(self):
        """job cancel (timeout)
        """
        try:
            globals.logger.info(f'Cancel JOB [JOB_ID:{self.job_id}]')
            with closing(DBconnector().connect_orgdb(self.organization_id)) as conn:
                if self.result_wb is not None:
                    self.__update_t_jobs_user(conn, job_status=const.JOB_USER_FAILED, message=multi_lang.get_text_spec(self.language, '401-00011', '{0}行目の処理中にタイムアウトしました。', self.count_export))
                else:
                    self.__update_t_jobs_user(conn, job_status=const.JOB_USER_FAILED, message=multi_lang.get_text_spec(self.language, '401-00012', '初期処理中にタイムアウトしました。'))

            return True
        except Exception as err:
            globals.logger.error(f'{err}\n-- stack trace --\n{traceback.format_exc()}')
            return False

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
                    globals.logger.debug(f"Start force update status : ORGANIZATION_ID:[{organization['ORGANIZATION_ID']}]")

                    try:
                        with closing(DBconnector().connect_orgdb(organization['ORGANIZATION_ID'])) as conn, conn.cursor() as cursor:

                            last_update_timestamp = (datetime.datetime.now() - datetime.timedelta(
                                seconds=job_manager_config.JOBS[job_manager_const.PROCESS_KIND_FORCE_UPDATE_STATUS]['extra_config']['prograss_seconds']))

                            # 未完了状態で一定時間経過したものを対象とする / Targets items that have been incomplete for a certain period of time
                            cursor.execute(
                                queries_user_export.SQL_QUERY_JOB_USER_TOO_OLD,
                                {"job_status_comp": const.JOB_USER_COMP, "job_status_failed": const.JOB_USER_FAILED, "last_update_timestamp": last_update_timestamp})

                            rows = cursor.fetchall()
                            for row in rows:
                                # queueに情報が残ってないか確認する / Check if there is any information left in the queue
                                if not jobs_common.exists_queue(conn_pf, row['JOB_ID']):
                                    # queueに情報が残ってない場合、FAILD状態に更新する
                                    # If there is no information left in the queue, update to FAILD status
                                    conn.begin()
                                    try:
                                        message = multi_lang.get_text_spec(row["LANGUAGE"], "500-62002", "処理が正しく起動されず終了しました。")
                                        cursor.execute(
                                            queries_user_export.SQL_UPDATE_JOBS_USER_FORCE_FAILD,
                                            {"job_id": row["JOB_ID"], "job_status": const.JOB_USER_FAILED, "message": message, "last_update_user": job_manager_const.SYSTEM_USER_ID}
                                        )
                                        conn.commit()
                                        globals.logger.info(f"Set failed job_id:{row['JOB_ID']}")

                                    except JobTimeoutException as err:
                                        conn.rollback()
                                        raise err  # TimeoutException時は即終了する
                                    except Exception as err:
                                        conn.rollback()
                                        globals.logger.error(f'{err}\n-- stack trace --\n{traceback.format_exc()}')

                    except JobTimeoutException as err:
                        raise err  # TimeoutException時は即終了する
                    except Exception as err:
                        globals.logger.error(f'{err}\n-- stack trace --\n{traceback.format_exc()}')

        except Exception as err:
            globals.logger.error(f'{err}\n-- stack trace --\n{traceback.format_exc()}')
            raise err
