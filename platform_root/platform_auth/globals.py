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
import logging
import os

config = None
logger = None
audit = None


def init(app):
    global config
    global logger
    global audit

    config = app.config
    logger = app.logger
    audit = app.logger

    # multipartログは出力レベルを調整
    # multipart log adjust output level
    if os.environ.get('LOG_LEVEL') == 'DEBUG':
        logging.getLogger('multipart').setLevel(logging.ERROR)
    else:
        logging.getLogger('multipart').setLevel(logging.CRITICAL)
