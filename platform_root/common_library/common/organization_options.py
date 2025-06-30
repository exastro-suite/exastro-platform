#   Copyright 2025 NEC Corporation
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
from contextlib import closing
import json

import globals
from common_library.common.db import DBconnector
from common_library.common.libs import queries_organization_options


def is_enabled_options_ita_drivers(organization_id, driver_name):
    """ITA driverの有効確認

    Args:
        organization_id (str): organization_id
        driver_name (str): driver_name

    Returns:
        boolean
    """

    with closing(DBconnector().connect_platformdb()) as conn:
        with conn.cursor() as cur:
            cur.execute(queries_organization_options.SQL_QUERY_ORGANIZATION_INFORMATIONS, {"organization_id": organization_id})
            t_organization = cur.fetchone()

    if t_organization is None:
        return False

    try:
        ita_drivers = json.loads(t_organization["INFORMATIONS"]).get("ext_options", {}).get("options_ita", {}).get("drivers", {})
        return ita_drivers.get(driver_name, False)

    except Exception as ex:
        globals.logger.debug(f'is_enabled_options_ita_drivers exception: {ex}')
        return False
