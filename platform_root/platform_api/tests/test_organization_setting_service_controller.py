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
import time
from contextlib import closing

from common_library.common import const, encrypt, validation
from common_library.common.db import DBconnector
from common_library.common.libs import queries_bl_mailserver
from libs import queries_mailserver
from tests.common import request_parameters, test_common

logger = logging.getLogger(__name__)


def test_settings_mailserver_get(connexion_client):
    """test settings_mailserver_get

    Args:
        connexion_client (_type_): _description_
    """

    organization = test_common.create_organization(connexion_client)

    with test_common.requsts_mocker_default():
        #
        # validate get id not found
        #
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/settings/mailserver/not_id",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']))

        assert response.status_code == 404, "get settings mailserver response error route"

        #
        # validate get normal
        #
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']))

        assert response.status_code == 200, "get settings mailserver response OK route"

        pass


def test_settings_mailserver_create(connexion_client):
    """test settings_notification_create

    Args:
        connexion_client (_type_): _description_
    """

    organization = test_common.create_organization(connexion_client)

    with test_common.requsts_mocker_default(), \
            test_common.pymysql_execute_raise_exception_mocker(queries_bl_mailserver.SQL_INSERT_MAILSERVER, Exception("DB Error Test")):

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=__sample_create_data())

        assert response.status_code == 500, "INSERT DB ERROR"
        assert response.json["result"] == "500-37001", "INSERT DB ERROR"

    with test_common.requsts_mocker_default():
        tmp_json = __sample_create_data()
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=tmp_json)

        assert response.status_code == 200, "create mailserver"
        assert response.json["result"] == "000-00000", "create mailserver"

        create_data = __fetch_settings_mailserver(organization['organization_id'])
        assert create_data["SMTP_ID"] == const.DEFAULT_SMTP_ID, "create mailserver"
        assert create_data["SMTP_HOST"] == tmp_json["smtp_host"], "create mailserver"
        assert create_data["SMTP_PORT"] == int(tmp_json["smtp_port"]), "create mailserver"
        assert create_data["SEND_FROM"] == tmp_json["send_from"], "create mailserver"
        assert create_data["SEND_NAME"] == tmp_json["send_name"], "create mailserver"
        assert create_data["REPLY_TO"] == tmp_json["reply_to"], "create mailserver"
        assert create_data["REPLY_NAME"] == tmp_json["reply_name"], "create mailserver"
        assert create_data["ENVELOPE_FROM"] == tmp_json["envelope_from"], "create mailserver"
        assert bool(create_data["SSL_ENABLE"]) == bool(tmp_json["ssl_enable"]), "create mailserver"
        assert bool(create_data["START_TLS_ENABLE"]) == bool(tmp_json["start_tls_enable"]), "create mailserver"
        assert bool(create_data["AUTHENTICATION_ENABLE"]) == bool(tmp_json["authentication_enable"]), "create mailserver"
        assert create_data["AUTHENTICATION_USER"] == tmp_json["authentication_user"], "create mailserver"
        assert create_data["AUTHENTICATION_PASSWORD"] == tmp_json["authentication_password"], "create mailserver"
        assert create_data["CREATE_USER"] == organization["user_id"], "create mailserver"
        assert create_data["LAST_UPDATE_USER"] == organization["user_id"], "create mailserver"

    with test_common.requsts_mocker_default(), \
            test_common.pymysql_execute_raise_exception_mocker(queries_bl_mailserver.SQL_UPDATE_MAILSERVER, Exception("DB Error Test")):

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=__sample_update_data())

        assert response.status_code == 500, "UPDATE DB ERROR"
        assert response.json["result"] == "500-37001", "UPDATE DB ERROR"

    # LAST_UPDATE_TIMESTAMPを確実に別の値にするため1秒処理を止める
    # Stop processing for 1 second to ensure LAST_UPDATE_TIMESTAMP is set to a different value.
    time.sleep(1)
    with test_common.requsts_mocker_default():
        tmp_json = __sample_update_data()
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=__sample_update_data())

        assert response.status_code == 200, "update mailserver"
        assert response.json["result"] == "000-00000", "update mailserver"

        update_data = __fetch_settings_mailserver(organization['organization_id'])

        assert update_data["SMTP_ID"] == const.DEFAULT_SMTP_ID, "update mailserver"
        assert update_data["SMTP_HOST"] == tmp_json["smtp_host"], "update mailserver"
        assert update_data["SMTP_PORT"] == int(tmp_json["smtp_port"]), "update mailserver"
        assert update_data["SEND_FROM"] == tmp_json["send_from"], "update mailserver"
        assert update_data["SEND_NAME"] == tmp_json["send_name"], "update mailserver"
        assert update_data["REPLY_TO"] == tmp_json["reply_to"], "update mailserver"
        assert update_data["REPLY_NAME"] == tmp_json["reply_name"], "update mailserver"
        assert update_data["ENVELOPE_FROM"] == tmp_json["envelope_from"], "update mailserver"
        assert bool(update_data["SSL_ENABLE"]) == bool(tmp_json["ssl_enable"]), "update mailserver"
        assert bool(update_data["START_TLS_ENABLE"]) == bool(tmp_json["start_tls_enable"]), "update mailserver"
        assert bool(update_data["AUTHENTICATION_ENABLE"]) == bool(tmp_json["authentication_enable"]), "update mailserver"
        assert update_data["AUTHENTICATION_USER"] == tmp_json["authentication_user"], "update mailserver"
        assert update_data["AUTHENTICATION_PASSWORD"] == tmp_json["authentication_password"], "update mailserver"
        assert update_data["CREATE_TIMESTAMP"] == create_data["CREATE_TIMESTAMP"]
        assert update_data["CREATE_USER"] == organization["user_id"], "update mailserver"
        assert update_data["LAST_UPDATE_TIMESTAMP"] != create_data["LAST_UPDATE_TIMESTAMP"], "update mailserver"
        assert update_data["LAST_UPDATE_USER"] == organization["user_id"], "update mailserver"

        tmp_json = __sample_update_data()
        tmp_json.pop("start_tls_enable")
        tmp_json.pop("authentication_enable")

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=tmp_json)

        assert response.status_code == 200, "update mailserver"
        assert response.json["result"] == "000-00000", "update mailserver"

        check_default_value = __fetch_settings_mailserver(organization['organization_id'])
        assert bool(check_default_value["START_TLS_ENABLE"]) is False, "default value"
        assert bool(check_default_value["AUTHENTICATION_ENABLE"]) is False, "default value"

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=__sample_update_data({"ssl_enable": True, "start_tls_enable": False, "authentication_enable": False}))

        assert response.status_code == 200, "update mailserver"

        tmp_json = __sample_update_data()
        tmp_json.pop("ssl_enable")

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=tmp_json)

        assert response.status_code == 200, "update mailserver"
        assert response.json["result"] == "000-00000", "update mailserver"

        check_default_value = __fetch_settings_mailserver(organization['organization_id'])
        assert bool(check_default_value["SSL_ENABLE"]) is False, "default value"

        #
        # swagger validation
        #
        # SMTP_HOST
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=__sample_update_data({"smtp_host": None}))

        assert response.status_code == 400, "SMTP_HOST None"
        assert response.status == "400 BAD REQUEST", "SMTP_HOST None"

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=__sample_update_data({"smtp_host": 1}))

        assert response.status_code == 400, "SMTP_HOST numeric"
        assert response.status == "400 BAD REQUEST", "SMTP_HOST numeric"

        tmp_json = __sample_update_data()
        tmp_json.pop("smtp_host")
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=tmp_json)

        assert response.status_code == 400, "SMTP_HOST Not exist"
        assert response.status == "400 BAD REQUEST", "SMTP_HOST Not exist"

        # SMTP_PORT
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=__sample_update_data({"smtp_port": None}))

        assert response.status_code == 400, "SMTP_PORT None"
        assert response.status == "400 BAD REQUEST", "SMTP_HOST None"

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=__sample_update_data({"smtp_port": 1}))

        assert response.status_code == 400, "SMTP_PORT numeric"
        assert response.status == "400 BAD REQUEST", "SMTP_PORT numeric"

        tmp_json = __sample_update_data()
        tmp_json.pop("smtp_port")
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=tmp_json)

        assert response.status_code == 400, "SMTP_PORT Not exist"
        assert response.status == "400 BAD REQUEST", "SMTP_PORT Not exist"

        # SEND_FROM
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=__sample_update_data({"send_from": None}))

        assert response.status_code == 400, "SEND_FROM None"
        assert response.status == "400 BAD REQUEST", "SEND_FROM None"

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=__sample_update_data({"send_from": 1}))

        assert response.status_code == 400, "SEND_FROM numeric"
        assert response.status == "400 BAD REQUEST", "SEND_FROM numeric"

        tmp_json = __sample_update_data()
        tmp_json.pop("send_from")
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=tmp_json)

        assert response.status_code == 400, "SEND_FROM Not exist"
        assert response.status == "400 BAD REQUEST", "SEND_FROM Not exist"

        # SEND_NAME
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=__sample_update_data({"send_name": 1}))

        assert response.status_code == 400, "SEND_NAME numeric"
        assert response.status == "400 BAD REQUEST", "SEND_NAME numeric"

        # REPLY_TO
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=__sample_update_data({"reply_to": 1}))

        assert response.status_code == 400, "REPLY_TO numeric"
        assert response.status == "400 BAD REQUEST", "REPLY_TO numeric"

        # REPLY_NAME
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=__sample_update_data({"reply_name": 1}))

        assert response.status_code == 400, "REPLY_NAME numeric"
        assert response.status == "400 BAD REQUEST", "REPLY_NAME numeric"

        # ENVELOPE_FROM
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=__sample_update_data({"envelope_from": 1}))

        assert response.status_code == 400, "ENVELOPE_FROM numeric"
        assert response.status == "400 BAD REQUEST", "ENVELOPE_FROM numeric"

        # SSL_ENABLE
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=__sample_update_data({"ssl_enable": 1}))

        assert response.status_code == 400, "SSL_ENABLE numeric"
        assert response.status == "400 BAD REQUEST", "SSL_ENABLE numeric"

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=__sample_update_data({"ssl_enable": "True"}))

        assert response.status_code == 400, "SSL_ENABLE string"
        assert response.status == "400 BAD REQUEST", "SSL_ENABLE string"

        # START_TLS_ENABLE
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=__sample_update_data({"start_tls_enable": 1}))

        assert response.status_code == 400, "START_TLS_ENABLE numeric"
        assert response.status == "400 BAD REQUEST", "START_TLS_ENABLE numeric"

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=__sample_update_data({"start_tls_enable": "True"}))

        assert response.status_code == 400, "START_TLS_ENABLE string"
        assert response.status == "400 BAD REQUEST", "START_TLS_ENABLE string"

        # AUTHENTICATION_ENABLE
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=__sample_update_data({"authentication_enable": 1}))

        assert response.status_code == 400, "AUTHENTICATION_ENABLE numeric"
        assert response.status == "400 BAD REQUEST", "AUTHENTICATION_ENABLE numeric"

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=__sample_update_data({"authentication_enable": "True"}))

        assert response.status_code == 400, "AUTHENTICATION_ENABLE string"
        assert response.status == "400 BAD REQUEST", "AUTHENTICATION_ENABLE string"

        # AUTHENTICATION_USER
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=__sample_update_data({"authentication_user": 1}))

        assert response.status_code == 400, "AUTHENTICATION_USER numeric"
        assert response.status == "400 BAD REQUEST", "AUTHENTICATION_USER numeric"

        # AUTHENTICATION_PASSWORD
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=__sample_update_data({"authentication_password": 1}))

        assert response.status_code == 400, "AUTHENTICATION_PASSWORD numeric"
        assert response.status == "400 BAD REQUEST", "AUTHENTICATION_PASSWORD numeric"


def test_setting_mailserver_delete(connexion_client):
    """test mailserver_delete

    Args:
        connexion_client (_type_): _description_
    """

    organization = test_common.create_organization(connexion_client)

    with test_common.requsts_mocker_default():
        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']))

        assert response.status_code == 200, "normal route"

    with test_common.requsts_mocker_default(), \
            test_common.pymysql_execute_raise_exception_mocker(queries_mailserver.SQL_DELETE_SMTP_SERVER, Exception("DB Error Test")):
        #
        # DB error route
        #
        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/settings/mailserver",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']))

        assert response.status_code == 500, "DB error route"

        pass


def test_mailserver_validate(connexion_client):
    #
    # validate SMTP_HOST
    #
    # validate : empty string
    validate = validation.validate_smtp_host("")
    assert not validate.ok, "create SMTP server validate SMTP_HOST : empty string"
    assert validate.message_id == "400-00011", "create SMTP server validate SMTP_HOST : empty string"

    # validate : length
    validate = validation.validate_smtp_host("t".ljust(const.length_smtp_host, "a"))
    assert validate.ok, "create SMTP server validate SMTP_HOST : max length"

    validate = validation.validate_smtp_host("t".ljust(const.length_smtp_host + 1, "a"))
    assert not validate.ok, "create SMTP server validate SMTP_HOST : max length + 1"
    assert validate.message_id == "400-00012", "create SMTP server validate SMTP_HOST : max length + 1"

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
    assert validate.message_id == "400-00028", "create SMTP server validate SMTP_HOST : invalid format（_）"

    validate = validation.validate_smtp_host(f"test.{''.ljust(const.max_length_separated_by_period_mark, 'a')}.example.com")
    assert validate.ok, "create SMTP server validate SMTP_HOST : separated period max length"

    validate = validation.validate_smtp_host(f"test.{''.ljust(const.min_length_separated_by_period_mark, 'a')}.example.com")
    assert validate.ok, "create SMTP server validate SMTP_HOST : separated period mix length"

    validate = validation.validate_smtp_host(f"test.{''.ljust(const.min_length_separated_by_period_mark - 1, 'a')}.example.com")
    assert not validate.ok, "create SMTP server validate SMTP_HOST : invalid format（..）"
    assert validate.message_id == "400-00028", "create SMTP server validate SMTP_HOST : separated period mix length - 1"

    validate = validation.validate_smtp_host(f"test.{''.ljust(const.max_length_separated_by_period_mark + 1, 'a')}.example.com")
    assert not validate.ok, "create SMTP server validate SMTP_HOST : separated period max length + 1"
    assert validate.message_id == "400-00028", "create SMTP server validate SMTP_HOST :separated period max length + 1"

    #
    # validate SMTP_PORT
    #
    # validate : empty string
    validate = validation.validate_smtp_port("")
    assert not validate.ok, "create SMTP server validate SMTP_PORT : empty string"
    assert validate.message_id == "400-00011", "create SMTP server validate SMTP_PORT : empty string"

    # validate : not numeric
    validate = validation.validate_smtp_port("a")
    assert not validate.ok, "create SMTP server validate SMTP_PORT : not numeric"
    assert validate.message_id == "400-00029", "create SMTP server validate SMTP_PORT : not numeric"

    # validate : min value - 1
    # Negative values are rejected by the numeric judgment, so message_id is 400-00029.
    validate = validation.validate_smtp_port(str(const.min_smtp_port - 1))
    assert not validate.ok, "create SMTP server validate SMTP_PORT : min value - 1"
    assert validate.message_id == "400-00029", "create SMTP server validate SMTP_PORT : min value - 1"

    # validate : min value
    validate = validation.validate_smtp_port(str(const.min_smtp_port))
    assert validate.ok, "create SMTP server validate SMTP_PORT : min value"

    # validate : max value
    validate = validation.validate_smtp_port(str(const.max_smtp_port))
    assert validate.ok, "create SMTP server validate SMTP_PORT : max value"

    # validate : max value + 1
    validate = validation.validate_smtp_port(str(const.max_smtp_port + 1))
    assert not validate.ok, "create SMTP server validate SMTP_PORT : max value + 1"
    assert validate.message_id == "400-00030", "create SMTP server validate SMTP_PORT : max value + 1"

    #
    # validate SEND_FROM
    #
    # validate : empty string
    validate = validation.validate_send_from("")
    assert not validate.ok, "create SMTP server validate SEND_FROM : empty string"
    assert validate.message_id == "400-00011", "create SMTP server validate SEND_FROM : empty string"

    # validate : length
    tmp = "@example.com"

    # 本来なら文字数が最大と同じ値のためvaliate.ok==trueになるべきだが、その後のformatのチェックでエラーとなるためNG前提のassertとする
    # Although validate.ok==true should be set because the number of characters is the same as the maximum, the subsequent format check will result in an error, and therefore, the assert is assumed to be NG.
    validate = validation.validate_send_from("t".ljust(const.length_send_from - len(tmp), "a") + tmp)
    assert not validate.ok, "create SMTP server validate SEND_FROM : max length"
    assert validate.message_id == "400-00023", "create SMTP server validate SEND_FROM : max length"

    validate = validation.validate_send_from("t".ljust(const.length_send_from - len(tmp) + 1, "a") + tmp)
    assert not validate.ok, "create SMTP server validate SEND_FROM : max length + 1"
    assert validate.message_id == "400-00012", "create SMTP server validate SEND_FROM : max length + 1"

    # format
    validate = validation.validate_send_from("test@example.com")
    assert validate.ok, "create SMTP server validate SEND_FROM : format"

    validate = validation.validate_send_from("test@@example.com")
    assert not validate.ok, "create SMTP server validate SEND_FROM : invalid format"
    assert validate.message_id == "400-00023", "create SMTP server validate SEND_FROM : invalid format"

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
    assert validate.message_id == "400-00012", "create SMTP server validate SEND_NAME : max length + 1"

    #
    # validate REPLY_TO
    #
    # validate : empty string
    validate = validation.validate_reply_to("")
    assert validate.ok, "create SMTP server validate REPLY_TO : empty string"

    # validate : None
    validate = validation.validate_reply_to(None)
    assert validate.ok, "create SMTP server validate REPLY_TO : None"

    # validate : length
    tmp = "@example.com"

    # 本来なら文字数が最大と同じ値のためvaliate.ok==trueになるべきだが、その後のformatのチェックでエラーとなるためNG前提のassertとする
    # Although validate.ok==true should be set because the number of characters is the same as the maximum, the subsequent format check will result in an error, and therefore, the assert is assumed to be NG.
    validate = validation.validate_reply_to("t".ljust(const.length_reply_to - len(tmp), "a") + tmp)
    assert not validate.ok, "create SMTP server validate REPLY_TO : max length"
    assert validate.message_id == "400-00023", "create SMTP server validate REPLY_TO : max length"

    validate = validation.validate_reply_to("t".ljust(const.length_reply_to - len(tmp) + 1, "a") + tmp)
    assert not validate.ok, "create SMTP server validate REPLY_TO : max length + 1"
    assert validate.message_id == "400-00012", "create SMTP server validate REPLY_TO : max length + 1"

    # format
    validate = validation.validate_reply_to("test@example.com")
    assert validate.ok, "create SMTP server validate REPLY_TO : format"

    validate = validation.validate_reply_to("test@@example.com")
    assert not validate.ok, "create SMTP server validate REPLY_TO : invalid format"
    assert validate.message_id == "400-00023", "create SMTP server validate REPLY_TO : invalid format"

    #
    # validate REPLY_NAME
    #
    # validate : empty string
    validate = validation.validate_reply_name("")
    assert validate.ok, "create SMTP server validate REPLY_NAME : empty string"

    # validate : None
    validate = validation.validate_reply_name(None)
    assert validate.ok, "create SMTP server validate REPLY_NAME : None"

    # validate : length
    validate = validation.validate_reply_name("t".ljust(const.length_reply_name, "a"))
    assert validate.ok, "create SMTP server validate REPLY_NAME : max length"

    validate = validation.validate_reply_name("t".ljust(const.length_reply_name + 1, "a"))
    assert not validate.ok, "create SMTP server validate REPLY_NAME : max length + 1"
    assert validate.message_id == "400-00012", "create SMTP server validate REPLY_NAME : max length + 1"

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

    # 本来なら文字数が最大と同じ値のためvaliate.ok==trueになるべきだが、その後のformatのチェックでエラーとなるためNG前提のassertとする
    # Although validate.ok==true should be set because the number of characters is the same as the maximum, the subsequent format check will result in an error, and therefore, the assert is assumed to be NG.
    validate = validation.validate_envelope_from("t".ljust(const.length_envelope_from - len(tmp), "a") + tmp)
    assert not validate.ok, "create SMTP server validate ENVELOPE_FROM : max length"
    assert validate.message_id == "400-00023", "create SMTP server validate ENVELOPE_FROM : max length"

    validate = validation.validate_envelope_from("t".ljust(const.length_envelope_from - len(tmp) + 1, "a") + tmp)
    assert not validate.ok, "create SMTP server validate ENVELOPE_FROM : max length + 1"

    # format
    validate = validation.validate_envelope_from("test@example.com")
    assert validate.ok, "create SMTP server validate ENVELOPE_FROM : format"

    validate = validation.validate_envelope_from("test@@example.com")
    assert not validate.ok, "create SMTP server validate ENVELOPE_FROM : invalid format"
    assert validate.message_id == "400-00023", "create SMTP server validate ENVELOPE_FROM : invalid format"

    #
    # complex validate SSL, START_TLS
    #
    validate = validation.complex_validate_ssl_start_tls(True, True)
    assert not validate.ok, "create SMTP server complex validate SSL, START_TLS : NG combination"
    assert validate.message_id == "400-00031", "create SMTP server complex validate SSL, START_TLS : NG combination"

    validate = validation.complex_validate_ssl_start_tls(False, False)
    assert validate.ok, "create SMTP server complex validate SSL, START_TLS : NG combination"

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
    assert validate.message_id == "400-00012", "create SMTP server validate AUTHENTICATION_USER : max length + 1"

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
    assert validate.message_id == "400-00012", "create SMTP server validate AUTHENTICATION_PASSWORD : max length + 1"

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


def __sample_create_data(update={}):
    return dict(
        {
            "smtp_host": "example.com",
            "smtp_port": "2525",
            "send_from": "send@example.com",
            "send_name": "送信元名",
            "reply_to": "replay-to@example.com",
            "reply_name": "返信先名",
            "envelope_from": "envelope-from@example.com",
            "ssl_enable": True,
            "start_tls_enable": False,
            "authentication_enable": False,
            "authentication_user": "",
            "authentication_password": ""
        },
        **update
    )


def __sample_update_data(update={}):
    return dict(
        {
            "smtp_host": "update.example.com",
            "smtp_port": "2526",
            "send_from": "send@update.example.com",
            "send_name": "更新後送信元名",
            "reply_to": "replay-to@update.example.com",
            "reply_name": "更新後返信先名",
            "envelope_from": "envelope-from@update.example.com",
            "ssl_enable": False,
            "start_tls_enable": True,
            "authentication_enable": True,
            "authentication_user": "update_user",
            "authentication_password": "update_password"
        },
        **update
    )


def __fetch_settings_mailserver(organization_id):
    with closing(DBconnector().connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:
            cursor.execute("SELECT * FROM M_SMTP_SERVER WHERE SMTP_ID = %(smtp_id)s", {"smtp_id": const.DEFAULT_SMTP_ID})
            row = cursor.fetchone()

    row["AUTHENTICATION_PASSWORD"] = encrypt.decrypt_str(row["AUTHENTICATION_PASSWORD"])

    return row
