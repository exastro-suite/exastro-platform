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


class update_keycloak_audience():

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
        globals.logger.info(f"Keycloak audience mapper update start")
        globals.logger.info("#" * 50)

        try:
            # Get admin credentials from environment
            keycloak_user = os.environ.get("KEYCLOAK_USER", "admin")
            keycloak_password = os.environ.get("KEYCLOAK_PASSWORD", "password")

            # Get admin token
            token_response = api_keycloak_tokens.get_user_token(keycloak_user, keycloak_password, "master")
            token = token_response.json()['access_token']

            # Add audience mapper to master realm _platform-console -> _platform
            globals.logger.info("Adding audience mapper to master realm _platform-console")
            stats = api_keycloak_clients.add_audience_mapper_to_realm_clients("master", token)
            globals.logger.info(f"Master realm _platform-console: {stats}")

            # Add audience mapper to all organization realms
            globals.logger.info("Adding audience mapper to organization realms")
            self.__add_audience_mapper_to_all_organizations(token)

        except Exception as e:
            globals.logger.error(f"Exception: {e}")
            import traceback
            globals.logger.error(traceback.format_exc())
            return 1

        globals.logger.info(f"Keycloak audience mapper update successful !!")
        return 0

    def __add_audience_mapper_to_all_organizations(self, token):
        """Add audience mapper to all organization realm clients

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

        # For each organization realm, add audience mappers
        for realm_name in organization_realms:
            globals.logger.info(f"Processing realm: {realm_name}")

            # Add _platform audience to organization client (e.g., org1)
            stats = api_keycloak_clients.add_audience_mapper_to_realm_clients(
                realm_name, token, audience_client_id="_platform", target_client_filter=realm_name
            )
            globals.logger.info(f"Realm {realm_name} client: {stats}")

            # Add system-auth audience to organization client
            stats = api_keycloak_clients.add_audience_mapper_to_realm_clients(
                realm_name, token, audience_client_id=f"system-{realm_name}-auth", target_client_filter=realm_name
            )
            globals.logger.info(f"Realm {realm_name} system-auth audience: {stats}")

        globals.logger.info(f"### End func:{inspect.currentframe().f_code.co_name}")


if __name__ == '__main__':
    ret = update_keycloak_audience().start()
    exit(ret)
