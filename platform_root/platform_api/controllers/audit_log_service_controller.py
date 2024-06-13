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

import inspect
import connexion
import ulid
import globals
import json

from flask import request, Response
from contextlib import closing
from common_library.common import common, multi_lang, const, validation, bl_common_service
from common_library.common import bl_auditlog_service
from common_library.common.db import DBconnector
from common_library.common.libs import queries_bl_audit_log, queries_bl_notification

MSG_FUNCTION_ID = "40"


@common.platform_exception_handler
def auditlog_download(organization_id, download_id):
    """audit log file download

    Args:
        organization_id (str): organization id
        download_id (str): download id

    Returns:
        Response: http response
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    resp = Response(bl_auditlog_service.auditlog_file_download(organization_id, download_id),
                    headers={"Content-Disposition": 'attachment; filename="audit-log.zip"'})
    resp.content_length = bl_auditlog_service.get_auditlog_file_download_filesize(organization_id, download_id)
    # resp.content_type = "application/octet-stream"
    resp.content_type = "application/zip"
    # resp.headers.add_header("Content-Disposition", "attachment", filename="audit-log.zip")
    # resp.headers['Content-Disposition'] = 'attachment; filename="audit-log.zip"'

    return resp


@common.platform_exception_handler
def auditlog_download_list(organization_id):  # noqa: E501
    """Get audit log download list

     # noqa: E501

    :param organization_id:
    :type organization_id: str

    :rtype: InlineResponse20024
    """
    return common.response_200_ok(None)


@common.platform_exception_handler
def auditlog_download_reserve(body, organization_id):  # noqa: E501
    """Reserve audit log download

     # noqa: E501

    :param body:
    :type body: dict | bytes
    :param organization_id:
    :type organization_id: str

    :rtype: InlineResponse20025
    """
    r = connexion.request
    user_id = r.headers.get("User-id")
    language = r.headers.get("Language")
    body = connexion.request.get_json()
    data = None

    # body validation check
    if not body:
        message_id = "400-00002"
        message = multi_lang.get_text(
            message_id,
            "リクエストボディのパラメータ({0})が不正です。",
            'Json',
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    validate = validation.validate_audit_log_conditions(body)
    if not validate.ok:
        return common.response_validation_error(validate)

    # 上限チェック
    limits = 100
    with closing(DBconnector().connect_platformdb()) as conn:
        system_config = bl_common_service.settings_system_config_list(conn, const.CONFIG_KEY_AUDIT_LOG_DOWNLOAD_FILE_LIMIT)
        limits = int(system_config.get("value"))

    with closing(DBconnector().connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:
            try:
                cursor.execute(queries_bl_audit_log.SQL_QUERY_COUNT_JOBS_AUDIT_LOG)
                result = cursor.fetchone()
                count = int(result.get("COUNT"))
            except Exception as e:
                globals.logger.error(f"exception:{e.args}")
                message_id = f"500-{MSG_FUNCTION_ID}003"
                message = multi_lang.get_text(
                    message_id,
                    "監査ログダウンロードの上限数チェックに失敗しました",
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

    if count > limits:
        globals.logger.error("audi tlog download limit exceeded. limits: {0}".format(limits))
        message_id = f"400-{MSG_FUNCTION_ID}001"
        message = multi_lang.get_text(
            message_id,
            "監査ログのダウンロード上限数を超えるため、新しい監査ログのダウンロードはできません",
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    conditions = json.dumps(body)

    # write to JOBS AUDIT LOG DB
    reg_flag = False
    with closing(DBconnector().connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:
            try:
                job_id = ulid.new().str
                parameter = {
                    "job_id": job_id,
                    "job_type": const.PROCESS_KIND_AUDIT_LOG,
                    "job_status": const.AUDIT_LOG_NOT_EXEC,
                    "conditions": conditions,
                    "count_export": None,
                    "message": None,
                    "language": language,
                    "create_user": user_id,
                    "last_update_user": user_id
                }
                cursor.execute(queries_bl_audit_log.SQL_INSERT_JOBS_AUDIT_LOG, parameter)

                conn.commit()
                reg_flag = True

                data = {"download_id": job_id}

            except Exception as e:
                conn.rollback()
                globals.logger.error(f"exception:{e.args}")
                message_id = f"500-{MSG_FUNCTION_ID}001"
                message = multi_lang.get_text(
                    message_id,
                    "監査ログダウンロードの予約に失敗しました(download id:{0})",
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
                        "process_kind": const.PROCESS_KIND_AUDIT_LOG,
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

    return common.response_200_ok(data)
