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
from common_library.common import api_keycloak_realms

import globals


class update_keycloak_realm_sso():

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
        globals.logger.info(f"Keycloak realm SSO settings update start")
        globals.logger.info("#" * 50)

        try:
            # Get admin credentials from environment
            keycloak_user = os.environ.get("KEYCLOAK_USER", "admin")
            keycloak_password = os.environ.get("KEYCLOAK_PASSWORD", "password")

            # Get admin token
            token_response = api_keycloak_tokens.get_user_token(keycloak_user, keycloak_password, "master")
            token = token_response.json()['access_token']

            # Update SSO settings for master realm
            globals.logger.info("Updating SSO settings for master realm")
            self.__update_realm_sso("master", token)

            # Update SSO settings for all organization realms
            globals.logger.info("Updating SSO settings for organization realms")
            self.__update_sso_for_all_organizations(token)

        except Exception as e:
            globals.logger.error(f"Exception: {e}")
            import traceback
            globals.logger.error(traceback.format_exc())
            return 1

        globals.logger.info(f"Keycloak realm SSO settings update successful !!")
        return 0

    def __update_sso_for_all_organizations(self, token):
        """Update SSO settings for all organization realms

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

        # For each organization realm, update SSO settings
        for realm_name in organization_realms:
            globals.logger.info(f"Processing realm: {realm_name}")
            self.__update_realm_sso(realm_name, token)

        globals.logger.info(f"### End func:{inspect.currentframe().f_code.co_name}")

    def __update_realm_sso(self, realm_name, token):
        """Update SSO session timeout settings for a realm

        Args:
            realm_name (str): realm name
            token (str): keycloak access token
        """
        globals.logger.info(f"### Start func:{inspect.currentframe().f_code.co_name} realm={realm_name}")

        # Use common library function to update SSO settings
        success = api_keycloak_realms.update_realm_sso_settings(
            realm_name=realm_name,
            token=token,
            sso_session_idle_timeout=86400,
            sso_session_max_lifespan=86400
        )

        if not success:
            globals.logger.warning(f"Failed to update SSO settings for realm {realm_name}")

        globals.logger.info(f"### End func:{inspect.currentframe().f_code.co_name}")


if __name__ == '__main__':
    ret = update_keycloak_realm_sso().start()
    exit(ret)
