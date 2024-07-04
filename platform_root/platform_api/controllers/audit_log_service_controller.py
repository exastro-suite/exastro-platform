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
from common_library.common import api_keycloak_tokens, api_keycloak_users
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

    get_leng = None
    with closing(DBconnector().connect_platformdb()) as conn:
        # config list get by key
        get_leng_json = bl_common_service.settings_system_config_list(conn, const.CONFIG_KEY_CHUNK_SIZE)
        if get_leng_json:
            get_leng = int(get_leng_json.get("value"))
        else:
            message_id = "500-00011"
            message = multi_lang.get_text(
                message_id,
                "システム設定値が取得できませんでした(key:{0})",
                const.CONFIG_KEY_CHUNK_SIZE,
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

    resp = Response(bl_auditlog_service.auditlog_file_download(organization_id, download_id, get_leng),
                    headers={"Content-Disposition": 'attachment; filename="audit-log.zip"'})
    resp.content_length = bl_auditlog_service.get_auditlog_file_download_filesize(organization_id, download_id)
    resp.content_type = "application/zip"

    return resp


@common.platform_exception_handler
def auditlog_download_list(organization_id, download_id=None):  # noqa: E501
    """Get audit log download list

     # noqa: E501

    :param organization_id:
    :type organization_id: str
    :param download_id: filter download id.
    :type download_id: str

    :rtype: InlineResponse20024
    """

    # Get a service account token
    db = DBconnector()
    private = db.get_organization_private(organization_id)

    token_response = api_keycloak_tokens.service_account_get_token(
        organization_id, private.internal_api_client_clientid, private.internal_api_client_secret,
    )
    if token_response.status_code != 200:
        raise common.AuthException(
            "client_user_get_token error status:{}, response:{}".format(token_response.status_code, token_response.text)
        )

    token = json.loads(token_response.text)["access_token"]

    # Get T_JOBS_AUDIT_LOG
    with closing(db.connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:
            download_id_where = " WHERE JOB_ID = %(download_id)s " if download_id is not None else ""
            order_by = " ORDER BY CREATE_TIMESTAMP DESC "
            cursor.execute(queries_bl_audit_log.SQL_QUERY_JOBS_AUDIT_LOG + download_id_where + order_by, {"download_id": download_id})
            result = cursor.fetchall()

    # make response data
    data = []
    user_data = []
    for row in result:
        user_id = row["CREATE_USER"]
        name = None

        userid_exists = [u["name"] for u in user_data if u["user_id"] == user_id]
        if len(userid_exists) > 0:
            name = userid_exists[0]
        else:
            # get user from keycloak, None if 404
            response = api_keycloak_users.user_get_by_id(realm_name=organization_id, user_id=user_id, token=token)
            if response.status_code == 200:
                user = json.loads(response.text)
                globals.logger.debug(f"response user:{user}")

                name = common.get_username(user.get("firstName"), user.get("lastName"), user.get("username"))
            elif response.status_code == 404:
                globals.logger.debug("response user:not found")

                name = None
            else:
                globals.logger.error(f"response.status_code:{response.status_code}")
                globals.logger.error(f"response.text:{response.text}")
                message = multi_lang.get_text(
                    "500-40004",
                    "ユーザーの取得に失敗しました(対象ID:{0})",
                    organization_id,
                )
                raise common.InternalErrorException(message_id="500-40004", message=message)

            # Save user data and reduce get data from Keycloak
            user_data.append({"user_id": user_id, "name": name, })

        row = {
            "download_id": row["JOB_ID"],
            "status": row["JOB_STATUS"],
            "conditions": row["CONDITIONS"],
            "count_export": row["COUNT_EXPORT"],
            "message": row["MESSAGE"],
            "create_timestamp": common.datetime_to_str(row["CREATE_TIMESTAMP"]),
            "create_user_id": user_id,
            "create_user_name": name,
            "last_update_timestamp": common.datetime_to_str(row["LAST_UPDATE_TIMESTAMP"]),
        }
        data.append(row)

    return common.response_200_ok(data)


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

    if count >= limits:
        globals.logger.error("audit log download limit exceeded. limits: {0}".format(limits))
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
                    "監査ログダウンロードの予約に失敗しました",
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
                        "処理キューの登録に失敗しました",
                    )
                    raise common.InternalErrorException(message_id=message_id, message=message)

    return common.response_200_ok(data)
