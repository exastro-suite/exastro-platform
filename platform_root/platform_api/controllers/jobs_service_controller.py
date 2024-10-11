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
from contextlib import closing
from flask import Response

from common_library.common import api_keycloak_tokens, api_keycloak_users
from common_library.common import common, multi_lang, const, bl_job_service, bl_common_service
from common_library.common import user_import_file_common
from common_library.common.db import DBconnector
from common_library.common.libs import queries_bl_jobs, queries_bl_notification
from libs import queries_jobs

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
                    "ジョブの登録に失敗しました",
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
                        "処理キューの登録に失敗しました",
                    )
                    raise common.InternalErrorException(message_id=message_id, message=message)

    data = {"job_id": job_id}

    return common.response_200_ok(data)


@common.platform_exception_handler
def jobs_users_export_status(organization_id):  # noqa: E501
    """Get all export status

     # noqa: E501

    :param organization_id:
    :type organization_id: str

    :rtype: InlineResponse2002
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

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

    # jobs users export status get
    with closing(DBconnector().connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:

            cursor.execute(queries_jobs.SQL_QUERY_JOBS_USERS_EXPORT_STATUS)
            result = cursor.fetchall()

    data = []
    user_data = []
    for row in result:
        user_id = row["CREATE_USER"]
        name = None

        # ユーザーIDをusernameに変換
        # Convert user ID to username
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
                message_id = "500-38003"
                message = multi_lang.get_text(
                    message_id,
                    "ユーザーの取得に失敗しました(対象ID:{0})",
                    user_id,
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

            # Save user data and reduce get data from Keycloak
            user_data.append({"user_id": user_id, "name": name, })

        row = {
            "id": row["JOB_ID"],
            "job_type": row["JOB_TYPE"],
            "job_status": row["JOB_STATUS"],
            "query_strings": row["QUERY_STRINGS"],
            "count_export": row["COUNT_EXPORT"],
            "message": row["MESSAGE"],
            "language": row["LANGUAGE"],
            "create_timestamp": common.datetime_to_str(row["CREATE_TIMESTAMP"]),
            "create_user_id": user_id,
            "create_user_name": name,
            "last_update_timestamp": common.datetime_to_str(row["LAST_UPDATE_TIMESTAMP"]),
        }
        data.append(row)

    return common.response_200_ok(data)


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

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

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

    # jobs users export status job id get
    with closing(DBconnector().connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:
            parameter = {
                "job_id": job_id
            }
            cursor.execute(queries_jobs.SQL_QUERY_JOBS_USERS_EXPORT_STATUS_JOB_ID, parameter)
            row = cursor.fetchone()

    # 指定されたjob_idのレコードが存在しない
    if not row:
        message_id = f"400-{MSG_FUNCTION_ID}001"
        message = multi_lang.get_text(
            message_id,
            "ジョブIDが存在しません(job_id:{0})",
            job_id,
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    # ユーザーIDをusernameに変換
    # Convert user ID to username
    user_id = row["CREATE_USER"]

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
        message_id = "500-38003"
        message = multi_lang.get_text(
            message_id,
            "ユーザーの取得に失敗しました(対象ID:{0})",
            user_id,
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    data = {
        "id": row["JOB_ID"],
        "job_type": row["JOB_TYPE"],
        "job_status": row["JOB_STATUS"],
        "query_strings": row["QUERY_STRINGS"],
        "count_export": row["COUNT_EXPORT"],
        "message": row["MESSAGE"],
        "language": row["LANGUAGE"],
        "create_timestamp": common.datetime_to_str(row["CREATE_TIMESTAMP"]),
        "create_user_id": user_id,
        "create_user_name": name,
        "last_update_timestamp": common.datetime_to_str(row["LAST_UPDATE_TIMESTAMP"]),
    }

    return common.response_200_ok(data)


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

    download_query_string = queries_bl_jobs.SQL_QUERY_JOBS_USER_FILE_EXPORT_SUBSTR
    resp = Response(bl_job_service.user_file_download(organization_id, job_id, get_leng, download_query_string),
                    headers={"Content-Disposition": 'attachment; filename="user_export.xlsx"'})

    download_length_query_string = queries_bl_jobs.SQL_QUERY_JOBS_USER_FILE_EXPORT_LENGTH
    resp.content_length = bl_job_service.get_file_download_filesize(organization_id, job_id, download_length_query_string)
    resp.content_type = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    return resp


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

    # write to JOBS USER DB
    return bl_job_service.user_bulk_process(r, import_file, organization_id, const.JOB_TYPE_USER_BULK_IMPORT)


@common.platform_exception_handler
def jobs_users_bulk_delete(import_file, organization_id):  # noqa: E501
    """Bulk delete user job call

     # noqa: E501

    :param import_file:
    :type import_file: strstr
    :param organization_id:
    :type organization_id: str

    :rtype: InlineResponse2002
    """
    r = connexion.request

    # write to JOBS USER DB
    return bl_job_service.user_bulk_process(r, import_file, organization_id, const.JOB_TYPE_USER_BULK_DELETE)


@common.platform_exception_handler
def jobs_users_bulk_status(organization_id):
    """ユーザー一括登録削除処理状態一覧 / User bulk registration deletion processing status list

    Args:
        organization_id (str): organization id

    Returns:
        Response: http response
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

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

    # jobs users bulk status get
    with closing(DBconnector().connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:

            cursor.execute(queries_jobs.SQL_QUERY_JOBS_USERS_BULK_STATUS)
            result = cursor.fetchall()

    data = []
    user_data = []
    for row in result:
        user_id = row["CREATE_USER"]
        name = None

        # ユーザーIDをusernameに変換
        # Convert user ID to username
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
                message_id = "500-38003"
                message = multi_lang.get_text(
                    message_id,
                    "ユーザーの取得に失敗しました(対象ID:{0})",
                    user_id,
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

            # Save user data and reduce get data from Keycloak
            user_data.append({"user_id": user_id, "name": name, })

        row = {
            "id": row["JOB_ID"],
            "job_type": row["JOB_TYPE"],
            "job_status": row["JOB_STATUS"],
            "count_register": row["COUNT_REGISTER"],
            "count_update": row["COUNT_UPDATE"],
            "count_delete": row["COUNT_DELETE"],
            "success_register": row["SUCCESS_REGISTER"],
            "success_update": row["SUCCESS_UPDATE"],
            "success_delete": row["SUCCESS_DELETE"],
            "failed_register": row["FAILED_REGISTER"],
            "failed_update": row["FAILED_UPDATE"],
            "failed_delete": row["FAILED_DELETE"],
            "message": row["MESSAGE"],
            "language": row["LANGUAGE"],
            "create_timestamp": common.datetime_to_str(row["CREATE_TIMESTAMP"]),
            "create_user_id": user_id,
            "create_user_name": name,
            "last_update_timestamp": common.datetime_to_str(row["LAST_UPDATE_TIMESTAMP"]),
        }
        data.append(row)

    return common.response_200_ok(data)


@common.platform_exception_handler
def jobs_users_bulk_status_job_id(organization_id, job_id):  # noqa: E501
    """Get bulk-import and bulk-delete status

     # noqa: E501

    :param organization_id:
    :type organization_id: str
    :param job_id:
    :type job_id: str

    :rtype: InlineResponse2002
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

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

    # jobs users bulk status get
    with closing(DBconnector().connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:
            parameter = {
                "job_id": job_id
            }
            cursor.execute(queries_jobs.SQL_QUERY_JOBS_USERS_BULK_STATUS_JOB_ID, parameter)
            row = cursor.fetchone()

    # 指定されたjob_idのレコードが存在しない
    if not row:
        message_id = f"400-{MSG_FUNCTION_ID}001"
        message = multi_lang.get_text(
            message_id,
            "ジョブIDが存在しません(job_id:{0})",
            job_id,
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    # ユーザーIDをusernameに変換
    # Convert user ID to username
    user_id = row["CREATE_USER"]

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
        message_id = "500-38003"
        message = multi_lang.get_text(
            message_id,
            "ユーザーの取得に失敗しました(対象ID:{0})",
            user_id,
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    data = {
        "id": row["JOB_ID"],
        "job_type": row["JOB_TYPE"],
        "job_status": row["JOB_STATUS"],
        "count_register": row["COUNT_REGISTER"],
        "count_update": row["COUNT_UPDATE"],
        "count_delete": row["COUNT_DELETE"],
        "success_register": row["SUCCESS_REGISTER"],
        "success_update": row["SUCCESS_UPDATE"],
        "success_delete": row["SUCCESS_DELETE"],
        "failed_register": row["FAILED_REGISTER"],
        "failed_update": row["FAILED_UPDATE"],
        "failed_delete": row["FAILED_DELETE"],
        "message": row["MESSAGE"],
        "language": row["LANGUAGE"],
        "create_timestamp": common.datetime_to_str(row["CREATE_TIMESTAMP"]),
        "create_user_id": user_id,
        "create_user_name": name,
        "last_update_timestamp": common.datetime_to_str(row["LAST_UPDATE_TIMESTAMP"]),
    }

    return common.response_200_ok(data)


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

    download_query_string = queries_bl_jobs.SQL_QUERY_JOBS_USER_RESULT_FILE_SUBSTR
    resp = Response(bl_job_service.user_file_download(organization_id, job_id, get_leng, download_query_string),
                    headers={"Content-Disposition": 'attachment; filename="bulk_import_result.xlsx"'})

    download_length_query_string = queries_bl_jobs.SQL_QUERY_JOBS_USER_RESULT_FILE_LENGTH
    resp.content_length = bl_job_service.get_file_download_filesize(organization_id, job_id, download_length_query_string)
    resp.content_type = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    return resp


@common.platform_exception_handler
def jobs_users_format(organization_id):  # noqa: E501
    """Download file for bulk import/delete user

     # noqa: E501

    :param organization_id:
    :type organization_id: str

    :rtype: str
    """
    r = connexion.request
    language = r.headers.get("Language")

    result_wb = user_import_file_common.UserResultWorkbook(lang=language)
    excel_bytes_image = result_wb.get_workbook_bytes_image()

    resp = Response(excel_bytes_image,
                    headers={"Content-Disposition": 'attachment; filename="user_import_format.xlsx"'})

    resp.content_length = len(excel_bytes_image)
    resp.content_type = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    return resp
