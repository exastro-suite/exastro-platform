import pytest
import os
import os.path
import connexion
import requests

from flask import request
import logging
from logging.config import dictConfig as dictLogConf

import globals
from common_library.common.exastro_logging import ExastroLogRecordFactory, LOGGING


@pytest.fixture(scope='session')
def connexion_client():
    """flask connexion test client 取得

    Returns:
        FlaskClient: _description_
    """
    app_root_dir = os.path.dirname(os.path.dirname(__file__))

    connexion_app = connexion.FlaskApp(
        __name__,
        specification_dir=f'{app_root_dir}/swagger/',
        server_args={'template_folder': '../templates'})

    connexion_app.add_api('swagger.yaml')
    
    app = connexion_app.app
    globals.init(app)

    org_factory = logging.getLogRecordFactory()
    logging.setLogRecordFactory(ExastroLogRecordFactory(org_factory, request))
    globals.logger = logging.getLogger('root')
    dictLogConf(LOGGING)

    globals.logger.setLevel(os.getenv('LOG_LEVEL', 'INFO'))

    return connexion_app.app.test_client()


@pytest.fixture(scope="session")
def docker_compose_command() -> str:
    """pytest-docker docker-composeコマンド設定

    Returns:
        str: docker composeコマンド
    """
    if os.environ.get('DOCKER_COMPOSE_UP_UNITTEST_NODE', 'ON') == 'ON': 
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
    if os.environ.get('DOCKER_COMPOSE_UP_UNITTEST_NODE', 'ON') == 'ON':
        #
        # platform_root/platform_api/test/docker-compose.ymlで起動するコンテナに切り替え
        #
        os.environ['API_KEYCLOAK_HOST'] = 'unittest-keycloak'
        os.environ['API_KEYCLOAK_PROTOCOL'] = 'http'
        os.environ['API_KEYCLOAK_PORT'] = '8080'
        os.environ['DB_HOST'] = 'unittest-platform-db'
        os.environ['DB_DATABASE'] = 'platform'
        os.environ['DB_PASSWORD'] = 'password'
        os.environ['DB_ADMIN_USER'] = 'root'
        os.environ['DB_ADMIN_PASSWORD'] = 'password'
        os.environ['ITA_API_ADMIN_PROTOCOL'] = 'http'
        os.environ['ITA_API_ADMIN_HOST'] = 'unittest-ita-api-admin'
        os.environ['ITA_API_ADMIN_PORT'] = '8079'

        #
        # Keycloakの起動待ち
        #
        docker_services.wait_until_responsive(
            timeout=300.0,
            pause=1.0,
            check=lambda: is_responsive(f"{os.environ['API_KEYCLOAK_PROTOCOL']}://{os.environ['API_KEYCLOAK_HOST']}:{os.environ['API_KEYCLOAK_PORT']}/auth/health"))


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
