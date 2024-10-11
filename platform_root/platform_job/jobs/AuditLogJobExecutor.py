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

import os
import tempfile

import ulid
from contextlib import closing
import traceback
import datetime
import time
import json
import random
import zipfile

from common_library.common.db import DBconnector
from common_library.common import const, common
from common_library.common import multi_lang

import globals
import job_manager_config
import job_manager_const
from jobs import jobs_common
from libs.exceptions import JobTimeoutException
from libs import queries_auditlog

TEMP_FILENAME_PREFIX = "exastro_auditlog_"
TEMPORARY_DIR = os.environ.get('TEMPORARY_DIR')
BUFFER_SIZE=10_240_000  # 10MB
GET_ROWS_LIMIT=1000


class AuditLogJobExecutor(BaseJobExecutor):
    """監査ログファイル生成Job / Audit log file generation job

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

        # 言語 / Language
        self.language = None

        # 処理結果ファイルID / Processing result file ID
        self.file_id = ulid.new().str
        # 処理件数 / Number of cases processed
        self.count_export = None

    def execute(self):
        """監査ログファイル生成 / Audit log file generation

        Raises:
            Exception: _description_
            Exception: _description_
        """
        with closing(DBconnector().connect_orgdb(self.organization_id)) as conn:
            try:
                # 実行中にステータス更新 / Update status during execution
                self.__update_job_audit_log(conn, job_status=const.AUDIT_LOG_EXEC, message=None)
                conn.commit()

                # SELECT T_JOBS_AUDIT_LOG
                with conn.cursor() as cursor:
                    cursor.execute(queries_auditlog.SQL_QUERY_JOBS_AUDIT_LOG, {"job_id": self.job_id})
                    t_jobs_audit_log = cursor.fetchone()
                    if t_jobs_audit_log is None:
                        message_id = f"500-62001"
                        message = multi_lang.get_text(
                            message_id,
                            "処理対象のレコードの取得に失敗しました(テーブル:{0})",
                            "T_JOBS_AUDIT_LOG"
                        )
                        raise common.InternalErrorException(message_id=message_id, message=message)

                # 言語情報 / Language information
                self.language = t_jobs_audit_log["LANGUAGE"]

                # 抽出条件
                conditions = json.loads(t_jobs_audit_log["CONDITIONS"])

                # T_AUDIT_LOG 取得範囲・件数取得
                #   データ取得の際にIDのRANGEで分割取得するため（RANGEなしで１回で大量データ取得するとDBのCPU高騰するための対策）
                globals.logger.debug('Start Get T_AUDIT_LOG Summary')
                with conn.cursor() as cursor:
                    cursor.execute(queries_auditlog.SQL_QUERY_AUDIT_LOG_SUMMARY, conditions)
                    t_audit_log_summary = cursor.fetchone()

                globals.logger.debug(f'Finish Get T_AUDIT_LOG Summary: MIN_ID={t_audit_log_summary["MIN_ID"]} / MAX_ID={t_audit_log_summary["MAX_ID"]} / COUNT={t_audit_log_summary["COUNT_ROWS"]}')
                if t_audit_log_summary["COUNT_ROWS"] == 0:
                    # 対象データがない場合
                    self.__update_job_audit_log(conn, job_status=const.AUDIT_LOG_NODATA, message=None)
                    return True

                with conn.cursor() as cursor, \
                    tempfile.NamedTemporaryFile(dir=TEMPORARY_DIR, prefix=TEMP_FILENAME_PREFIX, suffix='.zip', delete=False) as fp_zip:
                    try:
                        # ZIPファイルopen
                        with zipfile.ZipFile(fp_zip, mode='w', compression=zipfile.ZIP_DEFLATED) as zipfl, \
                            zipfl.open(self.__arcname(conditions), 'w') as fp_log:

                            globals.logger.debug(f'Start Write Zip File: file={os.path.join(TEMPORARY_DIR, fp_zip.name)}')
                            id_from = t_audit_log_summary['MIN_ID']

                            while True:
                                # 一度に取得するとDBのCPU高騰するので分割して取得する
                                conditions['id_from'] = id_from
                                conditions['id_to'] = id_from + GET_ROWS_LIMIT - 1

                                # SELECT T_AUDIT_LOG
                                cursor.execute(queries_auditlog.SQL_QUERY_AUDIT_LOG, conditions)
                                while True:
                                    t_audit_log = cursor.fetchone()
                                    if t_audit_log is None:
                                        break

                                    # count_export increment
                                    self.count_export = (self.count_export + 1) if self.count_export is not None else 1

                                    # 出力レコードの生成 / Generating output records
                                    json_audit_log = {}
                                    for key, value in t_audit_log.items():
                                        if key in ['ID','CREATE_TIMESTAMP', 'CREATE_USER', 'LAST_UPDATE_TIMESTAMP', 'LAST_UPDATE_USER']:
                                            # 出力しない項目
                                            pass
                                        elif isinstance(value, datetime.datetime):
                                            json_audit_log[key.lower()] = common.datetime_to_str(value)
                                        else:
                                            json_audit_log[key.lower()] = value

                                    # Write Temporary File
                                    fp_log.write((json.dumps(json_audit_log)+'\n').encode())

                                    if self.count_export % job_manager_config.JOBS[const.PROCESS_KIND_AUDIT_LOG]["extra_config"]["status_update_interval"] == 0:
                                        # 件数更新のためステータス更新を行う / Update the status to update the number of items
                                        globals.logger.debug(f'Writing Zip File: exported={self.count_export} ({round(self.count_export / t_audit_log_summary["COUNT_ROWS"] * 100)}%)')
                                        self.__update_job_audit_log(conn, job_status=const.AUDIT_LOG_EXEC, message=None)
                                        conn.commit()

                                id_from += GET_ROWS_LIMIT
                                if conditions['id_to'] > t_audit_log_summary['MAX_ID']:
                                    # MAXのIDを超えたら終了する
                                    break

                                time.sleep(job_manager_config.JOBS[const.PROCESS_KIND_AUDIT_LOG]["extra_config"]["output_interval_millisecond"]/1000)


                        file_size = os.path.getsize(os.path.join(TEMPORARY_DIR, fp_zip.name))
                        globals.logger.debug(f'Finish Write Zip File: count_export={self.count_export} / size={file_size}')

                        # ファイルサイズ確認
                        if file_size > job_manager_config.JOBS[const.PROCESS_KIND_AUDIT_LOG]["extra_config"]["max_file_size"]:
                            # ファイルが大きすぎる場合、エラーとする
                            globals.logger.info(f'File size over file_size={file_size} / max_file_size={job_manager_config.JOBS[const.PROCESS_KIND_AUDIT_LOG]["extra_config"]["max_file_size"]}')
                            self.__update_job_audit_log(
                                conn,
                                job_status=const.AUDIT_LOG_FAILED,
                                message=multi_lang.get_text_spec(
                                    self.language,
                                    '401-00024',
                                    'ファイルサイズが大きすぎます。抽出条件を見直して再実行してください。(ファイルサイズ:{0}byte / 最大サイズ:{1}byte)',
                                    file_size,
                                    job_manager_config.JOBS[const.PROCESS_KIND_AUDIT_LOG]["extra_config"]["max_file_size"]
                                    )
                            )
                            return False

                        if self.count_export is not None and self.count_export > 0:
                            # データがある場合のみファイル生成を行う / Generate file only if data exists

                            globals.logger.debug(f'Start Write T_JOBS_AUDIT_LOG_FILE')
                            cursor.execute(queries_auditlog.SQL_INSERT_JOBS_AUDIT_LOG_FILE,{
                                "file_id": self.file_id,
                                "job_id": self.job_id,
                                "create_user": job_manager_const.SYSTEM_USER_ID,
                                "last_update_user": job_manager_const.SYSTEM_USER_ID
                            })

                            # write zip file image
                            written_size = 0
                            globals.logger.debug(f'Start Write T_JOBS_AUDIT_LOG_FILE.file_data')
                            with open(os.path.join(TEMPORARY_DIR, fp_zip.name), 'rb') as fp_zipr:
                                while True:
                                    zip_buf = fp_zipr.read(BUFFER_SIZE)
                                    if len(zip_buf) == 0:
                                        break

                                    cursor.execute(queries_auditlog.SQL_CONCAT_JOBS_AUDIT_LOG_FILE_DATA, {
                                        "file_id": self.file_id,
                                        "file_data": zip_buf
                                    })
                                    self.__update_job_audit_log(conn, job_status=const.AUDIT_LOG_EXEC, message=None)
                                    conn.commit()
                                    written_size += len(zip_buf)
                                    globals.logger.debug(f'Writing T_JOBS_AUDIT_LOG_FILE.file_data: written={written_size} ({round(written_size / file_size * 100)}%)')

                                    # 1JOBでリソースを占有しないようにsleepする / Sleep so that 1JOB does not occupy resources
                                    time.sleep(job_manager_config.JOBS[const.PROCESS_KIND_AUDIT_LOG]["extra_config"]["output_interval_millisecond"]/1000)

                            globals.logger.debug(f'Finish Write T_JOBS_AUDIT_LOG_FILE')
                    finally:
                        try:
                            # remove temporary files
                            if os.path.isfile(os.path.join(TEMPORARY_DIR, fp_zip.name)):
                                os.remove(os.path.join(TEMPORARY_DIR, fp_zip.name))
                        except Exception:
                            pass

                if self.count_export is None or self.count_export == 0:
                    # 最終的なステータスに更新する / Update to final status
                    self.__update_job_audit_log(conn, job_status=const.AUDIT_LOG_NODATA, message=None)
                else:
                    # 最終的なステータスに更新する / Update to final status
                    self.__update_job_audit_log(conn, job_status=const.AUDIT_LOG_COMP, message=None)

            except JobTimeoutException as ex:
                # タイムアウトエラー / timeout error
                conn.rollback()
                self.__update_job_audit_log(conn, job_status=const.AUDIT_LOG_FAILED, message=multi_lang.get_text_spec(self.language, '401-00022', 'ファイル生成中にタイムアウトしました。'))
                return False

            except common.InternalErrorException as ex:
                globals.logger.error(f'{ex.message}')
                conn.rollback()
                self.__update_job_audit_log(conn, job_status=const.AUDIT_LOG_FAILED, message=ex.message)
                raise ex

            except Exception as ex:
                globals.logger.error(f'{ex}\n-- stack trace --\n{traceback.format_exc()}')
                self.__update_job_audit_log(conn, job_status=const.AUDIT_LOG_FAILED, message=multi_lang.get_text_spec(self.language, '401-00023', 'ファイル生成中に想定外のエラーが発生し、処理を中断しました。'))
                raise ex

            finally:
                conn.commit()

        return True

    def __update_job_audit_log(self, conn, job_status, message):
        """JOBの状態、件数の更新 / Update of JOB status and number of jobs

        Args:
            conn (_type_): organization DB connection
            job_status (str): job_status
            message (str): message
        """
        with conn.cursor() as cursor:
            cursor.execute(
                queries_auditlog.SQL_UPDATE_JOBS_AUDIT_LOG,
                {
                    "job_id": self.job_id,
                    "job_status": job_status,
                    "count_export": self.count_export,
                    "message": message,
                    "last_update_user": job_manager_const.SYSTEM_USER_ID,
                    "job_status_comp": const.AUDIT_LOG_COMP,
                    "job_status_failed": const.AUDIT_LOG_FAILED,
                    "job_status_nodata": const.AUDIT_LOG_NODATA,
                }
            )

    def __arcname(self, conditions):
        """File name in archive

        Returns:
            str: File name in archive
        """
        dt_ts_from = datetime.datetime.strptime(conditions['ts_from'], "%Y-%m-%d %H:%M:%S")
        dt_ts_to = datetime.datetime.strptime(conditions['ts_to'], "%Y-%m-%d %H:%M:%S")
        return f"exastro_audit_{dt_ts_from.strftime('%Y%m%d')}-{dt_ts_to.strftime('%Y%m%d')}.log"

    def cancel(self):
        """job cancel (timeout)
        """
        try:
            globals.logger.info(f'Cancel JOB [JOB_ID:{self.job_id}]')
            with closing(DBconnector().connect_orgdb(self.organization_id)) as conn:
                self.__update_job_audit_log(conn, job_status=const.AUDIT_LOG_FAILED, message=multi_lang.get_text_spec(self.language, '401-00022', 'ファイル生成中にタイムアウトしました。'))
                conn.commit()
            return True
        except Exception as err:
            globals.logger.error(f'{err}\n-- stack trace --\n{traceback.format_exc()}')
            return False

    @classmethod
    def force_update_status(cls):
        """強制ステータス更新 / Force status update
        """
        try:
            # Temporary Fileのお掃除 / Clean Temporary File
            # timeout時間 + 1日過ぎたものは消す / Delete items older than timeout + 1 day
            delete_time = datetime.datetime.now() - datetime.timedelta(days=1) - datetime.timedelta(seconds=job_manager_config.JOBS[const.PROCESS_KIND_AUDIT_LOG]["timeout_seconds"])
            for f in [f for f in os.listdir(TEMPORARY_DIR) if os.path.isfile(os.path.join(TEMPORARY_DIR, f))]:
                if f.startswith(TEMP_FILENAME_PREFIX) and datetime.datetime.fromtimestamp(os.path.getmtime(os.path.join(TEMPORARY_DIR, f))) <= delete_time:
                    try:
                        os.remove(os.path.join(TEMPORARY_DIR, f))
                    except Exception:
                        pass

            # ステータスの更新
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

                            # T_JOBS_AUDIT_LOG_FILE出力中は更新日時を更新できないので、TIMEOUT時間も含める
                            last_update_timestamp = (datetime.datetime.now() - datetime.timedelta(
                                seconds=job_manager_config.JOBS[job_manager_const.PROCESS_KIND_FORCE_UPDATE_STATUS]['extra_config']['prograss_seconds']
                            ))

                            # 未完了状態で一定時間経過したものを対象とする / Targets items that have been incomplete for a certain period of time
                            cursor.execute(
                                queries_auditlog.SQL_QUERY_JOBS_AUDIT_LOG_TOO_OLD,
                                {
                                    "job_status_comp": const.AUDIT_LOG_COMP, "job_status_failed": const.AUDIT_LOG_FAILED, "job_status_nodata": const.AUDIT_LOG_NODATA,
                                    "last_update_timestamp": last_update_timestamp
                                }
                            )

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
                                            queries_auditlog.SQL_UPDATE_JOBS_AUDIT_LOG_FORCE_FAILD,
                                            {"job_id": row["JOB_ID"], "job_status": const.AUDIT_LOG_FAILED, "message": message, "last_update_user": job_manager_const.SYSTEM_USER_ID}
                                        )
                                        conn.commit()
                                        globals.logger.info(f"Set failed job_id:{row['JOB_ID']}")

                                    except JobTimeoutException as err:
                                        conn.rollback()
                                        raise err # TimeoutException時は即終了する
                                    except Exception as err:
                                        conn.rollback()
                                        globals.logger.error(f'{err}\n-- stack trace --\n{traceback.format_exc()}')

                    except JobTimeoutException as err:
                        raise err # TimeoutException時は即終了する
                    except Exception as err:
                        globals.logger.error(f'{err}\n-- stack trace --\n{traceback.format_exc()}')

        except Exception as err:
            globals.logger.error(f'{err}\n-- stack trace --\n{traceback.format_exc()}')
            raise err
