#   Copyright 2022 NEC Corporation
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

import pytest

import os
import os.path
import glob
# import connexion
import requests
import json
import subprocess
import multiprocessing
from contextlib import closing
import signal
import inspect
import base64

from importlib import import_module

from tests.common import test_common
import globals
from common_library.common.db import DBconnector
from common_library.common import encrypt
from common_library.common import api_keycloak_tokens, api_keycloak_realms, multi_lang
from common_resources.en import language

import job_manager

@pytest.fixture(scope="session", autouse=True)
def tempfile_remove():
    for p in glob.glob(f'{os.environ.get("TEMPORARY_DIR")}/exastro*'):
        if os.path.isfile(p):
            os.remove(p)

    for p in glob.glob(f'{os.environ.get("TEST_OUTPUT_PATH")}/*.xlsx'):
        if os.path.isfile(p):
            os.remove(p)

@pytest.fixture(scope="session")
def docker_compose_command() -> str:
    """pytest-docker docker-composeコマンド設定

    Returns:
        str: docker composeコマンド
    """
    if os.environ.get('DOCKER_COMPOSE_UP_UNITTEST_NODE', 'MANUAL') == 'AUTO':
        return "sudo docker compose "
    else:
        return ":"


@pytest.fixture(scope="session")
def docker_compose_file(pytestconfig, autouse=True):
    """pytest-docker docker-compose.ymlファイル指定

    Args:
        pytestconfig (_type_): pytestconfig fixtureパラメータ
        autouse (bool, optional): fixture自動起動=true

    Returns:
        str: docker-compose.ymlファイルパス
    """
    return os.path.join(os.path.dirname(__file__), "docker-compose.yml")


@pytest.fixture(scope='session', autouse=True)
def docker_compose_up(docker_ip, docker_services):
    """docker compose起動

    Args:
        docker_ip (_type_): docker_ip fixtureパラメータ
        docker_services (_type_): docker_services fixtureパラメータ
    """
    if os.environ.get('DOCKER_COMPOSE_UP_UNITTEST_NODE', 'MANUAL') == 'AUTO':
        #
        # Keycloakの起動待ち
        #
        docker_services.wait_until_responsive(
            timeout=300.0,
            pause=1.0,
            check=lambda: is_responsive(f"{test_common.keycloak_origin()}/auth/health"))


def is_responsive(url):
    """http get通信確認

    Args:
        url (str): URL

    Returns:
        bool: 通信結果
    """
    try:
        response = requests.get(url)
        if response.status_code == 200:
            return True
    except Exception:
        return False


@pytest.fixture(autouse=True)
def encrypt_key(mocker):
    """unit test用のencrypt key設定
        Encrypt key settings for unit test

    Args:
        mocker (_type_): _description_
    """
    testdata = import_module("tests.db.exports.testdata")
    mocker.patch.object(encrypt, 'ENCRYPT_KEY', new=base64.b64decode(testdata.ENCRYPT_KEY))


@pytest.fixture(scope='function', autouse=True)
def data_initalize():
    """データー初期化

    """
    globals.init(pytest=True)
    testdata = import_module("tests.db.exports.testdata")

    #
    # keycloak token取得
    #
    private = DBconnector().get_platform_private()
    resp_token = api_keycloak_tokens.service_account_get_token(
        private.token_check_realm_id, private.token_check_client_clientid, private.token_check_client_secret)
    if resp_token.status_code != 200:
        raise Exception('FAILED : get keycloak token (tests/conftest.py data_initalize)')

    token = json.loads(resp_token.text).get("access_token")

    #
    # realm一覧取得
    #
    resp_realms = api_keycloak_realms.realms_get(token)
    if resp_realms.status_code != 200:
        raise Exception('FAILED : get keycloak realms (tests/conftest.py data_initalize)')

    #
    # 全レルムキャッシュクリア
    #
    keycloak_api_origin = f"{os.environ['API_KEYCLOAK_PROTOCOL']}://{os.environ['API_KEYCLOAK_HOST']}:{os.environ['API_KEYCLOAK_PORT']}"
    for realm in json.loads(resp_realms.text):
        resp_cache_clear = requests.post(
            f"{keycloak_api_origin}/auth/admin/realms/{realm['realm']}/clear-realm-cache",
            headers={"Content-Type": "application/json", "Authorization": f"Bearer {token}"},
            json={"realm": realm['realm']})

        if resp_cache_clear.status_code < 200 and resp_cache_clear.status_code > 299:
            raise Exception('FAILED : clear keycloak realms cache (tests/conftest.py data_initalize)')

        resp_cache_clear = requests.post(
            f"{keycloak_api_origin}/auth/admin/realms/{realm['realm']}/clear-user-cache",
            headers={"Content-Type": "application/json", "Authorization": f"Bearer {token}"},
            json={"realm": realm['realm']})

        if resp_cache_clear.status_code < 200 and resp_cache_clear.status_code > 299:
            raise Exception('FAILED : clear keycloak user cache (tests/conftest.py data_initalize)')

        resp_cache_clear = requests.post(
            f"{keycloak_api_origin}/auth/admin/realms/{realm['realm']}/clear-keys-cache",
            headers={"Content-Type": "application/json", "Authorization": f"Bearer {token}"},
            json={"realm": realm['realm']})

        if resp_cache_clear.status_code < 200 and resp_cache_clear.status_code > 299:
            raise Exception('FAILED : clear keycloak key cache (tests/conftest.py data_initalize)')

    #
    # データ初期化
    #
    sql_file = os.path.join(os.path.dirname(__file__), "db", "exports", "pytest2_restore_databases.sql")
    result_command = subprocess.run(
        f"mysql -u {os.environ['DB_ADMIN_USER']} -p{os.environ['DB_ADMIN_PASSWORD']} -h {os.environ['DB_HOST']} < {sql_file}",
        shell=True)

    if result_command.returncode != 0:
        raise Exception('FAILED : mysql command (tests/conftest.py data_initalize)')

    #
    # organization, workspace database drop
    #
    with closing(DBconnector().connect_admin()) as conn, conn.cursor() as cursor:
        cursor.execute("SELECT * FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME LIKE 'PF_%'")
        databases = [database['SCHEMA_NAME'] for database in cursor.fetchall() if database['SCHEMA_NAME'] not in testdata.DATABASES]
        for database in databases:
            cursor.execute(f"DROP DATABASE {database['SCHEMA_NAME']}")


@pytest.fixture(autouse=True)
def multi_lang_get_text(mocker):
    """multi_lang.get_textモック
        unit testではLanguage textが登録されていない場合、エラーを引き起こします

    Args:
        mocker (obj): mocker

    Returns:
        _type_: _description_
    """
    multi_lang_get_text = multi_lang.get_text

    def mocked_function(text_id, origin_text, *args):
        if text_id is not None and text_id != '000-00000':
            assert text_id in language.LanguageList.lang_array, f'Check lang_array Text id : {text_id}'
        return multi_lang_get_text(text_id, origin_text, *args)

    mocker.patch.object(multi_lang, 'get_text', side_effect=mocked_function)


@pytest.fixture(autouse=True)
def multi_lang_get_text_spec(mocker):
    """multi_lang.get_text_specモック
        unit testではLanguage textが登録されていない場合、エラーを引き起こします

    Args:
        mocker (obj): mocker

    Returns:
        _type_: _description_
    """
    multi_lang_get_text = multi_lang.get_text_spec

    def mocked_function(lang, text_id, origin_text, *args):
        if text_id is not None and text_id != '000-00000':
            assert text_id in language.LanguageList.lang_array, f'Check lang_array Text id : {text_id}'
        return multi_lang_get_text(lang, text_id, origin_text, *args)

    mocker.patch.object(multi_lang, 'get_text_spec', side_effect=mocked_function)


@pytest.fixture(autouse=True)
def signal_signal_mock(mocker):
    """mocked signal.signal

    Args:
        mocker (_type_): _description_
    """
    signal_signal = signal.signal

    def mocked_function(signum, handler):
        stack_functions = [s.function for s in inspect.stack()]

        if (job_manager.job_manager_main_process.__name__ in stack_functions
        and job_manager.job_manager_sub_process.__name__ in stack_functions):
            # main processから呼ばれたsub processの場合のみsingnal handerを設定する
            signal_signal(signum, handler)

    mocker.patch.object(signal, 'signal', mocked_function)
