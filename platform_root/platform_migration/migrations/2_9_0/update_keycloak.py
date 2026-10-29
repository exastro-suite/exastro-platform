#   Copyright 2026 NEC Corporation
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
import os

from common_library.common import api_keycloak_tokens
from common_library.common import api_keycloak_clients
from common_library.common import api_keycloak_realms

import globals


class update_keycloak():

    def __init__(self):
        """init
        """
        self.step_count = 1
        self.step_max = 1

    def start(self):
        """start

        Returns:
            bool: result
        """
        globals.logger.info("#" * 50)
        globals.logger.info("Keycloak client update start")
        globals.logger.info("#" * 50)

        try:
            # Get admin credentials from environment
            keycloak_user = os.environ.get("KEYCLOAK_USER", "admin")
            keycloak_password = os.environ.get("KEYCLOAK_PASSWORD", "password")

            # Get admin token
            token_response = api_keycloak_tokens.get_user_token(keycloak_user, keycloak_password, "master")
            token = token_response.json()['access_token']

            # Add basic scope to master realm clients
            globals.logger.info("Adding basic scope to master realm clients")
            stats = api_keycloak_clients.add_basic_scope_to_realm_clients("master", token)
            globals.logger.info(f"Master realm: {stats}")

            # Add basic scope to all organization realm clients
            globals.logger.info("Adding basic scope to organization realm clients")
            self.__add_basic_scope_to_all_organizations(token)

        except Exception as e:
            globals.logger.error(f"Exception: {e}")
            import traceback
            globals.logger.error(traceback.format_exc())
            return 1

        globals.logger.info("Keycloak client update successful !!")
        return 0

    def __add_basic_scope_to_all_organizations(self, token):
        """Add basic scope to all organization realm clients

        Args:
            token (str): keycloak access token
        """
        globals.logger.info(f"### Start func:{inspect.currentframe().f_code.co_name}")

        # Get organization realms using common library
        organization_realms = api_keycloak_realms.get_organization_realms(token)

        if not organization_realms:
            globals.logger.warning("No organization realms found or failed to get realms")
            return

        globals.logger.info(f"Found {len(organization_realms)} organization realms: {organization_realms}")

        # For each organization realm, add basic scope to all openid-connect clients
        for realm_name in organization_realms:
            globals.logger.info(f"Processing realm: {realm_name}")
            stats = api_keycloak_clients.add_basic_scope_to_realm_clients(realm_name, token)
            globals.logger.info(f"Realm {realm_name}: {stats}")

        globals.logger.info(f"### Succeed func:{inspect.currentframe().f_code.co_name}")
