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


class update_keycloak_session_timeout():

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
        globals.logger.info(f"Keycloak session timeout settings update start")
        globals.logger.info("#" * 50)

        try:
            # Get admin credentials from environment
            keycloak_user = os.environ.get("KEYCLOAK_USER", "admin")
            keycloak_password = os.environ.get("KEYCLOAK_PASSWORD", "password")

            # Get admin token
            token_response = api_keycloak_tokens.get_user_token(keycloak_user, keycloak_password, "master")
            token = token_response.json()['access_token']

            # Update session timeout settings for master realm
            globals.logger.info("Updating session timeout settings for master realm")
            self.__update_session_timeout_for_realm("master", token)

            # Update session timeout settings for all organization realms
            globals.logger.info("Updating session timeout settings for organization realms")
            self.__update_session_timeout_for_all_organizations(token)

        except Exception as e:
            globals.logger.error(f"Exception: {e}")
            import traceback
            globals.logger.error(traceback.format_exc())
            return 1

        globals.logger.info(f"Keycloak session timeout settings update successful !!")
        return 0

    def __update_session_timeout_for_all_organizations(self, token):
        """Update session timeout settings for all organization realms

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

        total_stats = {'realm_updated': 0, 'realm_skipped': 0, 'client_updated': 0, 'client_skipped': 0, 'failed': 0}

        # For each organization realm, update session timeout settings
        for realm_name in organization_realms:
            globals.logger.info(f"Processing realm: {realm_name}")
            stats = self.__update_session_timeout_for_realm(realm_name, token)
            total_stats['realm_updated'] += stats['realm_updated']
            total_stats['realm_skipped'] += stats['realm_skipped']
            total_stats['client_updated'] += stats['client_updated']
            total_stats['client_skipped'] += stats['client_skipped']
            total_stats['failed'] += stats['failed']

        globals.logger.info(f"Total stats: realm_updated={total_stats['realm_updated']}, realm_skipped={total_stats['realm_skipped']}, "
                           f"client_updated={total_stats['client_updated']}, client_skipped={total_stats['client_skipped']}, failed={total_stats['failed']}")
        globals.logger.info(f"### End func:{inspect.currentframe().f_code.co_name}")

    def __update_session_timeout_for_realm(self, realm_name, token):
        """Update session timeout settings for a realm

        Processing order:
        1. Update user token client session timeout (if not configured)
        2. Get maximum client session timeout across all clients
        3. Update realm SSO session timeout to accommodate all clients

        Args:
            realm_name (str): realm name
            token (str): keycloak access token

        Returns:
            dict: statistics {'realm_updated': int, 'realm_skipped': int, 'client_updated': int, 'client_skipped': int, 'failed': int}
        """
        globals.logger.info(f"### Start func:{inspect.currentframe().f_code.co_name} realm={realm_name}")

        stats = {'realm_updated': 0, 'realm_skipped': 0, 'client_updated': 0, 'client_skipped': 0, 'failed': 0}

        try:
            # Step 1: Update user token client session timeout (skip if already configured)
            globals.logger.info(f"Step 1: Update user token client session timeout for realm {realm_name}")
            client_result = api_keycloak_clients.update_user_token_clients_session_timeouts(
                realm_name=realm_name,
                token=token,
                access_token_lifespan=1800,      # 30 minutes
                session_max_lifespan=36000,      # 10 hours
                session_idle_timeout=1800,       # 30 minutes
                skip_if_configured=True          # Respect user's customization
            )
            stats['client_updated'] += client_result['updated']
            stats['client_skipped'] += client_result['skipped']
            stats['failed'] += client_result['failed']
            globals.logger.info(f"User token client result: updated={client_result['updated']}, skipped={client_result['skipped']}, failed={client_result['failed']}")

            # Step 2: Get maximum client session timeout
            globals.logger.info(f"Step 2: Get maximum client session timeout for realm {realm_name}")
            max_client_timeout = self.__get_max_client_session_timeout(realm_name, token)
            globals.logger.info(f"Maximum client session timeout: {max_client_timeout} seconds")

            # Step 3: Update realm SSO settings to accommodate all clients
            globals.logger.info(f"Step 3: Update realm SSO settings for realm {realm_name}")

            # Default values (Keycloak default)
            default_idle = 1800   # 30 minutes
            default_max = 36000   # 10 hours

            # Realm must accommodate the largest client timeout
            # Use at least default values, but extend if clients need more
            realm_idle = max(default_idle, max_client_timeout)
            realm_max = max(default_max, max_client_timeout)

            # Get current realm settings
            realm_response = api_keycloak_realms.realm_get(realm_name, token)
            if realm_response.status_code != 200:
                globals.logger.error(f"Failed to get realm {realm_name}: {realm_response.status_code}")
                stats['failed'] += 1
                return stats

            realm_config = realm_response.json()
            current_idle = realm_config.get('ssoSessionIdleTimeout')
            current_max = realm_config.get('ssoSessionMaxLifespan')

            # Decide whether to update realm settings
            should_update = False
            reason = ""

            if current_idle is None or current_max is None:
                # Realm settings not configured, set defaults
                should_update = True
                reason = "not configured"
            elif current_idle < max_client_timeout or current_max < max_client_timeout:
                # Realm settings too small to accommodate clients, extend them
                should_update = True
                reason = f"too small (current: idle={current_idle}, max={current_max}, need: {max_client_timeout})"
                # Keep user's settings if larger than required
                realm_idle = max(realm_idle, current_idle) if current_idle else realm_idle
                realm_max = max(realm_max, current_max) if current_max else realm_max
            else:
                # Realm settings already sufficient
                reason = f"sufficient (current: idle={current_idle}, max={current_max}, max_client={max_client_timeout})"

            if should_update:
                success = api_keycloak_realms.update_realm_sso_settings(
                    realm_name=realm_name,
                    token=token,
                    sso_session_idle_timeout=realm_idle,
                    sso_session_max_lifespan=realm_max,
                    skip_if_configured=False  # We've already checked and decided to update
                )
                if success:
                    stats['realm_updated'] += 1
                    globals.logger.info(f"Updated realm SSO settings: idle={realm_idle}, max={realm_max}, reason={reason}")
                else:
                    stats['failed'] += 1
                    globals.logger.error(f"Failed to update realm SSO settings")
            else:
                stats['realm_skipped'] += 1
                globals.logger.info(f"Skipped realm SSO update: {reason}")

        except Exception as e:
            globals.logger.error(f"Exception while processing realm {realm_name}: {e}")
            import traceback
            globals.logger.error(traceback.format_exc())
            stats['failed'] += 1

        globals.logger.info(f"### End func:{inspect.currentframe().f_code.co_name} realm={realm_name}")
        return stats

    def __get_max_client_session_timeout(self, realm_name, token):
        """Get maximum client session timeout across all clients in a realm

        Args:
            realm_name (str): realm name
            token (str): keycloak access token

        Returns:
            int: maximum session timeout in seconds (0 if no clients have timeout configured)
        """
        try:
            # Get all clients in realm
            response = api_keycloak_clients.clients_get(realm_name, "", token)
            if response.status_code != 200:
                globals.logger.warning(f"Failed to get clients for realm {realm_name}: {response.status_code}")
                return 0

            clients = response.json()
            max_timeout = 0

            for client in clients:
                client_id = client.get('clientId')
                attributes = client.get('attributes', {})

                # Check client session timeout attributes
                token_lifespan = attributes.get('access.token.lifespan')
                session_max = attributes.get('client.session.max.lifespan')
                session_idle = attributes.get('client.session.idle.timeout')

                # Convert to int and find maximum
                timeouts = []
                if token_lifespan:
                    try:
                        timeouts.append(int(token_lifespan))
                    except ValueError:
                        pass
                if session_max:
                    try:
                        timeouts.append(int(session_max))
                    except ValueError:
                        pass
                if session_idle:
                    try:
                        timeouts.append(int(session_idle))
                    except ValueError:
                        pass

                if timeouts:
                    client_max = max(timeouts)
                    if client_max > max_timeout:
                        max_timeout = client_max
                        globals.logger.debug(f"Client {client_id} has max timeout: {client_max} seconds")

            return max_timeout

        except Exception as e:
            globals.logger.error(f"Exception while getting max client timeout for realm {realm_name}: {e}")
            return 0


if __name__ == '__main__':
    ret = update_keycloak_session_timeout().start()
    exit(ret)
