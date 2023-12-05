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

import logging
from unittest import mock

from pymysql.cursors import Cursor
from tests.common import request_parameters, test_common
from common_library.common import const, validation
from common_library.common.libs import queries_bl_mailserver

logger = logging.getLogger(__name__)


def test_settings_mailserver_get(connexion_client):
    """test settings_mailserver_get

    Args:
        connexion_client (_type_): _description_
    """

    pass


def test_settings_mailserver_create(connexion_client):
    """test settings_notification_create

    Args:
        connexion_client (_type_): _description_
    """

    organization = test_common.create_organization(connexion_client)

    with test_common.requsts_mocker_default(), \
            mock.patch.object(Cursor, "fetchall", return_value=["1", "2"]):

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=sample_create_data())

        assert response.status_code == 500, "number of data in the mailserver settings is invalid"

    with test_common.requsts_mocker_default(), \
            test_common.pymysql_execute_raise_exception_mocker(queries_bl_mailserver.SQL_INSERT_MAILSERVER, Exception("DB Error Test")):

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=sample_create_data())

        assert response.status_code == 500, "INSERT DB ERROR"

    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=sample_create_data())

        assert response.status_code == 200, "create mailserver"

    with test_common.requsts_mocker_default(), \
            test_common.pymysql_execute_raise_exception_mocker(queries_bl_mailserver.SQL_UPDATE_QUERY, Exception("DB Error Test")):

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=sample_update_data())

        assert response.status_code == 500, "UPDATE DB ERROR"

    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=sample_update_data())

        assert response.status_code == 200, "update mailserver"

        pass


def test_mailserver_delete(connexion_client):
    """test mailserver_delete

    Args:
        connexion_client (_type_): _description_
    """

    pass


def test_mailserver_validate(connexion_client):
    #
    # validate SMTP_HOST
    #
    # validate : empty string
    validate = validation.validate_smtp_host("")
    assert not validate.ok, "create SMTP server validate SMTP_HOST : empty string"

    # validate : length
    validate = validation.validate_smtp_host("t".ljust(const.length_smtp_host, "a"))
    assert validate.ok, "create SMTP server validate SMTP_HOST : max length"

    validate = validation.validate_smtp_host("t".ljust(const.length_smtp_host + 1, "a"))
    assert not validate.ok, "create SMTP server validate SMTP_HOST : max length + 1"

    # validate : format
    validate = validation.validate_smtp_host("abcdefghijklmnopqrstuvwxyz")
    assert validate.ok, "create SMTP server validate SMTP_HOST : format"

    validate = validation.validate_smtp_host("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    assert validate.ok, "create SMTP server validate SMTP_HOST : format"

    validate = validation.validate_smtp_host("0123456789")
    assert validate.ok, "create SMTP server validate SMTP_HOST : format"

    validate = validation.validate_smtp_host("abc-efg.example.com")
    assert validate.ok, "create SMTP server validate SMTP_HOST : format"

    validate = validation.validate_smtp_host("test_example.com")
    assert not validate.ok, "create SMTP server validate SMTP_HOST : invalid format（_）"

    validate = validation.validate_smtp_host(f"test.{''.ljust(63, 'a')}.example.com")
    assert validate.ok, "create SMTP server validate SMTP_HOST : format"

    validate = validation.validate_smtp_host("test..example.com")
    assert not validate.ok, "create SMTP server validate SMTP_HOST : invalid format（..）"

    validate = validation.validate_smtp_host(f"test.{''.ljust(64, 'a')}.example.com")
    assert not validate.ok, "create SMTP server validate SMTP_HOST : format"

    #
    # validate SMTP_HOST
    #
    # validate : empty string
    validate = validation.validate_smtp_port("")
    assert validate.ok, "create SMTP server validate SMTP_HOST : empty string"

    # validate : None
    validate = validation.validate_smtp_port(None)
    assert validate.ok, "create SMTP server validate SMTP_PORT : None"

    # validate : not numeric
    validate = validation.validate_smtp_port("a")
    assert not validate.ok, "create SMTP server validate SMTP_PORT : not numeric"

    # validate : min value - 1
    validate = validation.validate_smtp_port("-1")
    assert not validate.ok, "create SMTP server validate SMTP_PORT : min value - 1"

    # validate : min value
    validate = validation.validate_smtp_port("0")
    assert validate.ok, "create SMTP server validate SMTP_PORT : min value"

    # validate : max value
    validate = validation.validate_smtp_port("65535")
    assert validate.ok, "create SMTP server validate SMTP_PORT : max value"

    # validate : max value + 1
    validate = validation.validate_smtp_port("65536")
    assert not validate.ok, "create SMTP server validate SMTP_PORT : max value + 1"

    #
    # validate SEND_FROM
    #
    # validate : empty string
    validate = validation.validate_send_from("")
    assert not validate.ok, "create SMTP server validate SEND_FROM : empty string"

    # validate : length
    tmp = "@example.com"
    validate = validation.validate_send_from("t".ljust(const.length_send_from - len(tmp) + 1, "a") + tmp)
    assert not validate.ok, "create SMTP server validate SMTP_HOST : max length + 1"

    # format
    validate = validation.validate_send_from("test@example.com")
    assert validate.ok, "create SMTP server validate SMTP_HOST : format"

    validate = validation.validate_send_from("test@@example.com")
    assert not validate.ok, "create SMTP server validate SMTP_HOST : invalid format"

    #
    # validate SEND_NAME
    #
    # validate : empty string
    validate = validation.validate_send_name("")
    assert validate.ok, "create SMTP server validate SEND_NAME : empty string"

    # validate : None
    validate = validation.validate_send_name(None)
    assert validate.ok, "create SMTP server validate SEND_NAME : None"

    # validate : length
    validate = validation.validate_send_name("t".ljust(const.length_send_name, "a"))
    assert validate.ok, "create SMTP server validate SEND_NAME : max length"

    validate = validation.validate_send_name("t".ljust(const.length_send_name + 1, "a"))
    assert not validate.ok, "create SMTP server validate SEND_NAME : max length + 1"

    #
    # validate REPLAY_TO
    #
    # validate : empty string
    validate = validation.validate_replay_to("")
    assert validate.ok, "create SMTP server validate REPLAY_TO : empty string"

    # validate : None
    validate = validation.validate_replay_to(None)
    assert validate.ok, "create SMTP server validate REPLAY_TO : None"

    # validate : length
    tmp = "@example.com"
    validate = validation.validate_replay_to("t".ljust(const.length_replay_to - len(tmp) + 1, "a") + tmp)
    assert not validate.ok, "create SMTP server validate REPLAY_TO : max length + 1"

    # format
    validate = validation.validate_replay_to("test@example.com")
    assert validate.ok, "create SMTP server validate REPLAY_TO : format"

    validate = validation.validate_replay_to("test@@example.com")
    assert not validate.ok, "create SMTP server validate REPLAY_TO : invalid format"

    #
    # validate REPLAY_NAME
    #
    # validate : empty string
    validate = validation.validate_replay_name("")
    assert validate.ok, "create SMTP server validate REPLAY_NAME : empty string"

    # validate : None
    validate = validation.validate_replay_name(None)
    assert validate.ok, "create SMTP server validate REPLAY_NAME : None"

    # validate : length
    validate = validation.validate_replay_name("t".ljust(const.length_replay_name, "a"))
    assert validate.ok, "create SMTP server validate REPLAY_NAME : max length"

    validate = validation.validate_replay_name("t".ljust(const.length_replay_name + 1, "a"))
    assert not validate.ok, "create SMTP server validate REPLAY_NAME : max length + 1"

    #
    # validate ENVELOPE_FROM
    #
    # validate : empty string
    validate = validation.validate_envelope_from("")
    assert validate.ok, "create SMTP server validate ENVELOPE_FROM : empty string"

    # validate : None
    validate = validation.validate_envelope_from(None)
    assert validate.ok, "create SMTP server validate ENVELOPE_FROM : None"

    # validate : length
    tmp = "@example.com"
    validate = validation.validate_envelope_from("t".ljust(const.length_envelope_from - len(tmp) + 1, "a") + tmp)
    assert not validate.ok, "create SMTP server validate ENVELOPE_FROM : max length + 1"

    # format
    validate = validation.validate_envelope_from("test@example.com")
    assert validate.ok, "create SMTP server validate ENVELOPE_FROM : format"

    validate = validation.validate_envelope_from("test@@example.com")
    assert not validate.ok, "create SMTP server validate ENVELOPE_FROM : invalid format"

    #
    # complex validate SSL, START_TLS
    #
    validate = validation.complex_validate_ssl_start_tls(True, True)
    assert not validate.ok, "create SMTP server complex validate SSL, START_TLS : NG combination"

    validate = validation.complex_validate_ssl_start_tls(False, False)
    assert not validate.ok, "create SMTP server complex validate SSL, START_TLS : NG combination"

    validate = validation.complex_validate_ssl_start_tls(True, False)
    assert validate.ok, "create SMTP server complex validate SSL, START_TLS : OK combination"

    validate = validation.complex_validate_ssl_start_tls(False, True)
    assert validate.ok, "create SMTP server complex validate SSL, START_TLS : OK combination"

    #
    # validate AUTHENTICATION_USER
    #
    # validate : empty string
    validate = validation.validate_authentication_user("")
    assert validate.ok, "create SMTP server validate AUTHENTICATION_USER : empty string"

    # validate : None
    validate = validation.validate_authentication_user(None)
    assert validate.ok, "create SMTP server validate AUTHENTICATION_USER : None"

    # validate : length
    validate = validation.validate_authentication_user("t".ljust(const.length_authentication_user, "a"))
    assert validate.ok, "create SMTP server validate AUTHENTICATION_USER : max length"

    validate = validation.validate_authentication_user("t".ljust(const.length_authentication_user + 1, "a"))
    assert not validate.ok, "create SMTP server validate AUTHENTICATION_USER : max length + 1"

    #
    # validate AUTHENTICATION_PASSWORD
    #
    # validate : empty string
    validate = validation.validate_authentication_password("")
    assert validate.ok, "create SMTP server validate AUTHENTICATION_PASSWORD : empty string"

    # validate : None
    validate = validation.validate_authentication_password(None)
    assert validate.ok, "create SMTP server validate AUTHENTICATION_PASSWORD : None"

    # validate : length
    validate = validation.validate_authentication_password("t".ljust(const.length_authentication_password, "a"))
    assert validate.ok, "create SMTP server validate AUTHENTICATION_PASSWORD : max length"

    validate = validation.validate_authentication_password("t".ljust(const.length_authentication_password + 1, "a"))
    assert not validate.ok, "create SMTP server validate AUTHENTICATION_PASSWORD : max length + 1"

    #
    # complex validate authentication enable, user, passowrd
    #
    validate = validation.complex_validate_authentication_user_password(True, "", "password")
    assert not validate.ok, "create SMTP server complex validate authentication enable, user, passowrd : NG combination"

    validate = validation.complex_validate_authentication_user_password(True, None, "password")
    assert not validate.ok, "create SMTP server complex validate authentication enable, user, passowrd : NG combination"

    validate = validation.complex_validate_authentication_user_password(True, "user", "")
    assert not validate.ok, "create SMTP server complex validate authentication enable, user, passowrd : NG combination"

    validate = validation.complex_validate_authentication_user_password(True, "user", None)
    assert not validate.ok, "create SMTP server complex validate authentication enable, user, passowrd : NG combination"

    validate = validation.complex_validate_authentication_user_password(True, "user", "password")
    assert validate.ok, "create SMTP server complex validate authentication enable, user, passowrd : OK combination"

    validate = validation.complex_validate_authentication_user_password(False, "", "password")
    assert validate.ok, "create SMTP server complex validate authentication enable, user, passowrd : OK combination"

    validate = validation.complex_validate_authentication_user_password(False, None, "password")
    assert validate.ok, "create SMTP server complex validate authentication enable, user, passowrd : OK combination"

    validate = validation.complex_validate_authentication_user_password(False, "user", "")
    assert validate.ok, "create SMTP server complex validate authentication enable, user, passowrd : OK combination"

    validate = validation.complex_validate_authentication_user_password(False, "user", None)
    assert validate.ok, "create SMTP server complex validate authentication enable, user, passowrd : OK combination"


def sample_create_data():
    return dict(
        {
            "SMTP_HOST": "example.com",
            "SMTP_PORT": "2525",
            "SEND_FROM": "send@example.com",
            "SEND_NAME": "送信元名",
            "REPLAY_TO": "replay-to@example.com",
            "REPLAY_NAME": "返信先名",
            "ENVELOPE_FROM": "envelope-from@example.com",
            "SSL_ENABLE": True,
            "START_TLS_ENABLE": False,
            "AUTHENTICATION_ENABLE": False,
            "AUTHENTICATION_USER": "",
            "AUTHENTICATION_PASSWORD": ""
        }
    )


def sample_update_data():
    return dict(
        {
            "SMTP_HOST": "update.example.com",
            "SMTP_PORT": "2526",
            "SEND_FROM": "send@update.example.com",
            "SEND_NAME": "更新後送信元名",
            "REPLAY_TO": "replay-to@update.example.com",
            "REPLAY_NAME": "更新後返信先名",
            "ENVELOPE_FROM": "envelope-from@update.example.com",
            "SSL_ENABLE": False,
            "START_TLS_ENABLE": True,
            "AUTHENTICATION_ENABLE": True,
            "AUTHENTICATION_USER": "update_user",
            "AUTHENTICATION_PASSWORD": "update_password"
        }
    )

