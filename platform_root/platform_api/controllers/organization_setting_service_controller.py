#   Copyright 2023 NEC Corporation
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
from contextlib import closing

import connexion
import globals
import json
from common_library.common import api_keycloak_tokens, api_keycloak_realms
from common_library.common import bl_organization_setting_service, common, const, multi_lang
from common_library.common.db import DBconnector
from libs import queries_mailserver

MSG_FUNCTION_ID = "36"


@common.platform_exception_handler
def settings_mailserver_get(organization_id):  # noqa: E501
    """List returns list of settings mailserver

    Args:
        organization_id (str): organization_id

    Returns:
        Response: http response
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # DB取得
    # DB Acquisition
    parameter = {"smtp_id": const.DEFAULT_SMTP_ID}
    with closing(DBconnector().connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:
            cursor.execute(queries_mailserver.SQL_QUERY_SMTP_SERVER, parameter)
            row = cursor.fetchone()

    data = {}
    if row is not None:
        data = {
            "smtp_host": row["SMTP_HOST"],
            "smtp_port": row["SMTP_PORT"],
            "send_from": row["SEND_FROM"],
            "send_name": row["SEND_NAME"],
            "reply_to": row["REPLY_TO"],
            "reply_name": row["REPLY_NAME"],
            "envelope_from": row["ENVELOPE_FROM"],
            "ssl_enable": row["SSL_ENABLE"],
            "start_tls_enable": row["START_TLS_ENABLE"],
            "authentication_enable": row["AUTHENTICATION_ENABLE"],
            "authentication_user": row["AUTHENTICATION_USER"],
            "create_timestamp": common.datetime_to_str(row["CREATE_TIMESTAMP"]),
            "create_user": row["CREATE_USER"],
            "last_update_timestamp": common.datetime_to_str(row["LAST_UPDATE_TIMESTAMP"]),
            "last_update_user": row["LAST_UPDATE_USER"],
        }

    return common.response_200_ok(data)


@common.platform_exception_handler
def settings_mailserver_create(body, organization_id):  # noqa: E501
    """Create creates an settings mailserver

    Args:
        body (dict): json
        organization_id (str): organization_id

    Returns:
        Response: http response
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    r = connexion.request

    body = r.get_json()
    globals.logger.debug(f"body:\n{body}")

    user_id = r.headers.get("User-id")
    globals.logger.debug(f"user_id:{user_id}")

    body = bl_organization_setting_service.set_default_value_of_settings_mailserver(body)

    validate = bl_organization_setting_service.validate_setting_mailserver(body)
    if not validate.ok:
        return common.response_validation_error(validate)

    bl_organization_setting_service.settings_mailserver_register_or_update(body, organization_id, user_id)

    __keycloak_mailserver_set(body, organization_id)

    return common.response_200_ok(data=None)


@common.platform_exception_handler
def setting_mailserver_delete(organization_id):  # noqa: E501
    """Delete deletes an mailserver

    Args:
        organization_id (str): organization_id

    Returns:
        Response: http response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    with closing(DBconnector().connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:
            try:
                cursor.execute(queries_mailserver.SQL_DELETE_SMTP_SERVER, {"smtp_id": const.DEFAULT_SMTP_ID})
                conn.commit()
                __keycloak_mailserver_delete(organization_id)
            except Exception as e:
                globals.logger.error(f"exception:{e.args}")
                message_id = f"500-{MSG_FUNCTION_ID}002"
                message = multi_lang.get_text(
                    message_id,
                    "メールサーバの解除に失敗しました(destination id:{0})"
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

    return common.response_200_ok(data=None)


def __get_token():
    """get a token

    Raises:
        common.AuthException: _description_

    Returns:
        str: token
    """

    private = DBconnector().get_platform_private()

    # サービスアカウントのTOKEN取得
    # Get a service account token
    response = api_keycloak_tokens.service_account_get_token(
        private.token_check_realm_id, private.token_check_client_clientid, private.token_check_client_secret)
    if response.status_code != 200:
        message_id = "401-00001"
        message = multi_lang.get_text(message_id,
                                      "tokenの取得に失敗しました。 realm:[{0}] client:[{1}]",
                                      private.token_check_realm_id,
                                      private.token_check_client_clientid)
        raise common.AuthException(message_id=message_id, message=message)

    token = json.loads(response.text).get("access_token")

    return token


def __keycloak_mailserver_set(body, organization_id):
    """Set up a mail server in keycloak

    Args:
        body (dict): json
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token = __get_token()

    realm_json = {
        "resetPasswordAllowed": True,
        "smtpServer":{
            "host": body.get("smtp_host"),
            "port": body.get("smtp_port"),
            "from": body.get("send_from"),
            "fromDisplayName": body.get("send_name"),
            "replyTo": body.get("reply_to"),
            "replyToDisplayName": body.get("reply_name"),
            "envelopeFrom": body.get("envelope_from"),
            "ssl": body.get("ssl_enable"),
            "starttls": body.get("start_tls_enable"),
            "auth": body.get("authentication_enable"),
            "user": body.get("authentication_user"),
            "password": body.get("authentication_password")
        }
    }

    # realm更新
    # realm update to keycloak
    response = api_keycloak_realms.realm_update(organization_id, realm_json, token)
    if response.status_code not in [200, 204]:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = f"500-{MSG_FUNCTION_ID}003"
        message = multi_lang.get_text(message_id,
                                      "Keycloakへのメールサーバー設定の登録・更新に失敗しました(対象ID:{0})",
                                      organization_id)
        raise common.InternalErrorException(message_id=message_id, message=message)

    return


def __keycloak_mailserver_delete(organization_id):
    """Set up a mail server in keycloak

    Args:
        body (dict): json
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token = __get_token()

    realm_json = {
        "resetPasswordAllowed": False,
        "smtpServer":{
            "host": "",
            "port": "",
            "from": "",
            "fromDisplayName": "",
            "replyTo": "",
            "replyToDisplayName": "",
            "envelopeFrom": "",
            "ssl": False,
            "starttls": False,
            "auth": False,
            "user": "",
            "password": ""
        }
    }

    # realm更新
    # realm update to keycloak
    response = api_keycloak_realms.realm_update(organization_id, realm_json, token)
    if response.status_code not in [200, 204]:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = f"500-{MSG_FUNCTION_ID}004"
        message = multi_lang.get_text(message_id,
                                      "Keycloakへのメールサーバの解除に失敗しました(対象ID:{0})",
                                      organization_id)
        raise common.InternalErrorException(message_id=message_id, message=message)

    return