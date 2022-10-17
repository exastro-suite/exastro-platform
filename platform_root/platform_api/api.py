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

from flask import request
import os
import connexion
from dotenv import load_dotenv  # python-dotenv
import logging
from logging.config import dictConfig as dictLogConf

# User Imports
import globals
from common_library.common.exastro_logging import ExastroLogRecordFactory, LOGGING

# load environ variables
load_dotenv(override=True)

connexion_app = connexion.FlaskApp(__name__, specification_dir='./swagger/')
connexion_app.add_api('swagger.yaml')

app = connexion_app.app
globals.init(app)

org_factory = logging.getLogRecordFactory()
logging.setLogRecordFactory(ExastroLogRecordFactory(org_factory, request))
globals.logger = logging.getLogger('root')
dictLogConf(LOGGING)

if __name__ == '__main__':
    connexion_app.run(
        debug=(True if os.environ.get('FLASK_ENV', 'produciton') == 'development' else False),
        host='0.0.0.0',
        port=int(os.environ.get('LISTEN_PORT', '8000')),
        threaded=True
    )
