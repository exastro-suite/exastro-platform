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

import connexion
import ulid
import globals

from contextlib import closing
from common_library.common import common, multi_lang, const
from common_library.common.db import DBconnector
from common_library.common.libs import queries_bl_jobs, queries_bl_notification

MSG_FUNCTION_ID = "38"


@common.platform_exception_handler
def jobs_users_export(body, organization_id):  # noqa: E501
    """Export user list

     # noqa: E501

    :param body:
    :type body: dict | bytes
    :param organization_id:
    :type organization_id: str

    :rtype: InlineResponse2002
    """
    r = connexion.request
    user_id = r.headers.get("User-id")
    language = r.headers.get("Language")

    # write to JOBS USER EXPORT DB
    reg_flag = False
    with closing(DBconnector().connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:
            try:
                job_id = ulid.new().str
                parameter = {
                    "job_id": job_id,
                    "job_type": const.PROCESS_KIND_USER_EXPORT,
                    "job_status": const.JOB_USER_NOT_EXEC,
                    "language": language,
                    "create_user": user_id,
                    "last_update_user": user_id
                }
                cursor.execute(queries_bl_jobs.SQL_INSERT_JOBS_USER_EXPORT, parameter)
                conn.commit()
                reg_flag = True

            except Exception as e:
                conn.rollback()
                globals.logger.error(f"exception:{e.args}")
                message_id = f"500-{MSG_FUNCTION_ID}001"
                message = multi_lang.get_text(
                    message_id,
                    "ジョブの登録に失敗しました(job id:{0})",
                    job_id,
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

    # write to PROCESS QUEUE DB
    if reg_flag is True:
        with closing(DBconnector().connect_platformdb()) as conn:
            with conn.cursor() as cursor:
                try:
                    parameter = {
                        "process_id": ulid.new().str,
                        "process_kind": const.PROCESS_KIND_USER_EXPORT,
                        "process_exec_id": job_id,
                        "organization_id": organization_id,
                        "workspace_id": None,
                        "last_update_user": user_id,
                    }
                    cursor.execute(queries_bl_notification.SQL_INSERT_PROCESS_QUEUE, parameter)
                    conn.commit()

                except Exception as e:
                    conn.rollback()
                    globals.logger.error(f"exception:{e.args}")
                    message_id = f"500-{MSG_FUNCTION_ID}002"
                    message = multi_lang.get_text(
                        message_id,
                        "処理キューの登録に失敗しました(process id:{0})",
                        parameter['process_id'],
                    )
                    raise common.InternalErrorException(message_id=message_id, message=message)

    return common.response_200_ok(None)


@common.platform_exception_handler
def jobs_users_export_status(organization_id):  # noqa: E501
    """Get all export status

     # noqa: E501

    :param organization_id:
    :type organization_id: str

    :rtype: InlineResponse2002
    """
    return common.response_200_ok(None)


@common.platform_exception_handler
def jobs_users_export_status_job_id(organization_id, job_id):  # noqa: E501
    """Get export status

     # noqa: E501

    :param organization_id:
    :type organization_id: str
    :param job_id:
    :type job_id: str

    :rtype: InlineResponse2002
    """
    return common.response_200_ok(None)


@common.platform_exception_handler
def jobs_users_export_status_job_id_download(organization_id, job_id):  # noqa: E501
    """Download export status

     # noqa: E501

    :param organization_id:
    :type organization_id: str
    :param job_id:
    :type job_id: str

    :rtype: InlineResponse2002
    """
    return common.response_200_ok(None)


@common.platform_exception_handler
def jobs_users_import(import_file, organization_id):  # noqa: E501
    """Import user bulk registration

     # noqa: E501

    :param import_file:
    :type import_file: strstr
    :param organization_id:
    :type organization_id: str

    :rtype: InlineResponse2002
    """
    r = connexion.request
    user_id = r.headers.get("User-id")

    # write to JOBS USER DB
    reg_flag = False
    with closing(DBconnector().connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:
            try:
                job_id = ulid.new().str
                parameter = {
                    "job_id": job_id,
                    "job_type": const.PROCESS_KIND_USER_IMPORT,
                    "job_status": const.JOB_USER_NOT_EXEC,
                    "create_user": user_id,
                    "last_update_user": user_id
                }
                cursor.execute(queries_bl_jobs.SQL_INSERT_JOBS_USER, parameter)

                file_id = ulid.new().str
                file_data = import_file.stream.read()
                parameter = {
                    "file_id": file_id,
                    "job_id": job_id,
                    "file_data": file_data,
                    "create_user": user_id,
                    "last_update_user": user_id
                }
                cursor.execute(queries_bl_jobs.SQL_INSERT_JOBS_USER_FILE, parameter)
                conn.commit()
                reg_flag = True
            except Exception as e:
                conn.rollback()
                globals.logger.error(f"exception:{e.args}")
                message_id = f"500-{MSG_FUNCTION_ID}001"
                message = multi_lang.get_text(
                    message_id,
                    "ジョブの登録に失敗しました(job id:{0})",
                    job_id,
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

    # write to PROCESS QUEUE DB
    if reg_flag is True:
        with closing(DBconnector().connect_platformdb()) as conn:
            with conn.cursor() as cursor:
                try:
                    parameter = {
                        "process_id": ulid.new().str,
                        "process_kind": const.PROCESS_KIND_USER_IMPORT,
                        "process_exec_id": job_id,
                        "organization_id": organization_id,
                        "workspace_id": None,
                        "last_update_user": user_id,
                    }
                    cursor.execute(queries_bl_notification.SQL_INSERT_PROCESS_QUEUE, parameter)
                    conn.commit()

                except Exception as e:
                    conn.rollback()
                    globals.logger.error(f"exception:{e.args}")
                    message_id = f"500-{MSG_FUNCTION_ID}002"
                    message = multi_lang.get_text(
                        message_id,
                        "処理キューの登録に失敗しました(process id:{0})",
                        parameter['process_id'],
                    )
                    raise common.InternalErrorException(message_id=message_id, message=message)

    return common.response_200_ok(None)


@common.platform_exception_handler
def jobs_users_import_status(organization_id):  # noqa: E501
    """Get all import status

     # noqa: E501

    :param organization_id:
    :type organization_id: str

    :rtype: InlineResponse2002
    """
    return common.response_200_ok(None)


@common.platform_exception_handler
def jobs_users_import_status_job_id(organization_id, job_id):  # noqa: E501
    """Get import status

     # noqa: E501

    :param organization_id:
    :type organization_id: str
    :param job_id:
    :type job_id: str

    :rtype: InlineResponse2002
    """
    return common.response_200_ok(None)


@common.platform_exception_handler
def jobs_users_import_status_job_id_download(organization_id, job_id):  # noqa: E501
    """Download import status

     # noqa: E501

    :param organization_id:
    :type organization_id: str
    :param job_id:
    :type job_id: str

    :rtype: InlineResponse2002
    """
    return common.response_200_ok(None)
