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
    return "sudo docker compose"


@pytest.fixture(scope="session")
def docker_compose_file(pytestconfig, autouse=True):
    return os.path.join(os.path.dirname(__file__), "docker-compose.yml")


@pytest.fixture(scope='session', autouse=True)
def up_services(docker_ip, docker_services):
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

    docker_services.wait_until_responsive(
        timeout=300.0, pause=1.0, check=lambda: is_responsive(f"{os.environ['API_KEYCLOAK_PROTOCOL']}://{os.environ['API_KEYCLOAK_HOST']}:{os.environ['API_KEYCLOAK_PORT']}/auth/health"))


def is_responsive(url):
    try:
        response = requests.get(url)
        if response.status_code == 200:
            return True
    except Exception:
        return False
