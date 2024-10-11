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

from contextlib import closing

from common_library.common import common, const, multi_lang
from common_library.common.db import DBconnector
from common_library.common.libs import queries_bl_audit_log
from common_library.common import bl_common_service

import globals


def get_auditlog_file_download_filesize(organization_id, download_id):
    """get audit log file downalod file size

    Args:
        organization_id (str): organization id
        download_id (str): download id (file id)
    """

    file_length = 0

    with closing(DBconnector().connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:
            str_where = " WHERE JOB_ID = %(job_id)s"

            # ファイルサイズの取得
            # Get file size
            parameter = {
                "job_id": download_id,
            }

            cursor.execute(queries_bl_audit_log.SQL_QUERY_JOBS_AUDIT_LOG_FILE_LENGTH + str_where, parameter)
            result = cursor.fetchone()
            globals.logger.debug(f"{result=}")

            if result is not None:
                file_length = result.get("FILE_DATA_LENGTH")
                # Large download test example.
                # file_length = result.get("FILE_DATA_LENGTH") + 1024000000
            else:
                message_id = "404-40001"
                message = multi_lang.get_text(
                    message_id,
                    "監査ログダウンロードファイルが存在しません(id:{0})",
                    download_id,
                )
                raise common.NotFoundException(message_id=message_id, message=message)

    return file_length


def auditlog_file_download(organization_id, download_id, get_leng):
    """audit log file downalod

    Args:
        organization_id (str): organization id
        download_id (str): download id (file id)
        get_leng (int): chunk size
    """

    with closing(DBconnector().connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:
            str_where = " WHERE JOB_ID = %(job_id)s"

            # システム設定値の読み込み単位で、BLOBの情報を取得していく
            # Obtain BLOB information each time the system settings are read.
            start_pos = 1
            while True:
                parameter = {
                    "job_id": download_id,
                    "start_pos": start_pos,
                    "len": get_leng,
                }

                cursor.execute(queries_bl_audit_log.SQL_QUERY_JOBS_AUDIT_LOG_FILE_SUBSTR + str_where, parameter)
                result = cursor.fetchone()

                start_pos += get_leng

                if result is not None and result.get("FILE_DATA_SUBSTR") is not None and len(result.get("FILE_DATA_SUBSTR")) > 0:
                    # Large download test example.
                    # for i in range(1, 100000, 1):
                    #     yield ("#" * get_leng)
                    yield result.get("FILE_DATA_SUBSTR")
                else:
                    break
