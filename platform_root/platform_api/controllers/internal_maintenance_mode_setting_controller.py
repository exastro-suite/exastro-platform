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

import connexion
from contextlib import closing
import inspect

from common_library.common import common, validation, maintenancemode
from common_library.common.db import DBconnector
from common_library.common import multi_lang
from common_library.common.libs import queries_bl_maintenancemode

import globals

MSG_FUNCTION_ID = "35"


@common.platform_exception_handler
def internal_get_maintenance_mode_setting():  # noqa: E501
    """internal_get_maintenance_mode_setting

    メンテナンスモード設定状態を取得する # noqa: E501

    :rtype: InlineResponse20024
    """
    # internal-apiのget methodの呼び出しログはDEBUGとする
    globals.logger.debug(f"### func:{inspect.currentframe().f_code.co_name}")

    data = {}
    data = maintenancemode.maintenace_mode_get_all()

    return common.response_200_ok(data)
