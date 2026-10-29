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
        Phase 1: Information gathering
          1. Get realm SSO settings
          2. Get user token client current settings
          3. Get maximum client session timeout across all clients
        Phase 2: Calculate target values
          4. Calculate client timeout values (inherit from realm or use defaults)
          5. Calculate realm SSO values (accommodate all clients)
        Phase 3: Update
          6. Update user token client (if not configured)
          7. Update realm SSO (if needed)

        Args:
            realm_name (str): realm name
            token (str): keycloak access token

        Returns:
            dict: statistics {'realm_updated': int, 'realm_skipped': int, 'client_updated': int, 'client_skipped': int, 'failed': int}
        """
        globals.logger.info(f"### Start func:{inspect.currentframe().f_code.co_name} realm={realm_name}")

        stats = {'realm_updated': 0, 'realm_skipped': 0, 'client_updated': 0, 'client_skipped': 0, 'failed': 0}

        try:
            # Phase 1: Information gathering
            globals.logger.debug(f"[Phase 1] Gathering information for realm {realm_name}")

            # Get realm SSO settings
            realm_response = api_keycloak_realms.realm_get(realm_name, token)
            if realm_response.status_code != 200:
                globals.logger.error(f"Failed to get realm {realm_name}: {realm_response.status_code}")
                stats['failed'] += 1
                return stats

            realm_config = realm_response.json()
            realm_idle = realm_config.get('ssoSessionIdleTimeout')
            realm_max = realm_config.get('ssoSessionMaxLifespan')
            globals.logger.debug(f"Realm SSO: idle={realm_idle}, max={realm_max}")

            # Get user token client current settings
            client_response = api_keycloak_clients.clients_get(realm_name, realm_name, token)
            if client_response.status_code != 200:
                globals.logger.warning(f"Failed to get client {realm_name}: {client_response.status_code}")
                client_configured = False
            else:
                clients = client_response.json()
                if not clients:
                    globals.logger.warning(f"Client {realm_name} not found")
                    client_configured = False
                else:
                    client = clients[0]
                    attributes = client.get('attributes', {})
                    current_max_lifespan = attributes.get('client.session.max.lifespan')
                    current_idle_timeout = attributes.get('client.session.idle.timeout')

                    # Check if any session timeout is already configured
                    client_configured = (current_max_lifespan is not None or current_idle_timeout is not None)
                    globals.logger.debug(f"User token client: configured={client_configured}, "
                                      f"max={current_max_lifespan}, idle={current_idle_timeout}")

            # Get maximum client session timeout (only explicitly configured clients)
            max_client_timeout = self.__get_max_client_session_timeout(realm_name, token)
            globals.logger.debug(f"Max client timeout: {max_client_timeout}s")

            # Phase 2: Calculate target values
            globals.logger.debug(f"[Phase 2] Calculating target values for realm {realm_name}")

            # Default values (Keycloak default)
            default_idle = 1800   # 30 minutes
            default_max = 36000   # 10 hours

            # Calculate client timeout values (inherit from realm SSO or use defaults)
            target_client_idle = realm_idle if realm_idle is not None else default_idle
            target_client_max = realm_max if realm_max is not None else default_max
            globals.logger.debug(f"Target client: idle={target_client_idle}, max={target_client_max}")

            # Calculate realm SSO values (must accommodate all clients)
            # Use the maximum of explicit client settings
            new_realm_idle = max(default_idle, max_client_timeout)
            new_realm_max = max(default_max, max_client_timeout)
            globals.logger.debug(f"Calculated realm SSO: idle={new_realm_idle}, max={new_realm_max}")

            # Decide whether to update realm settings
            should_update_realm = False
            realm_update_reason = ""

            if realm_idle is None or realm_max is None:
                should_update_realm = True
                realm_update_reason = "not configured"
            elif realm_idle < max_client_timeout or realm_max < max_client_timeout:
                should_update_realm = True
                realm_update_reason = f"too small (current: idle={realm_idle}, max={realm_max}, max_client={max_client_timeout})"
                # Keep user's settings if larger than required
                new_realm_idle = max(new_realm_idle, realm_idle)
                new_realm_max = max(new_realm_max, realm_max)
            else:
                realm_update_reason = f"sufficient (current: idle={realm_idle}, max={realm_max}, max_client={max_client_timeout})"

            globals.logger.debug(f"Realm SSO update: {should_update_realm}, reason={realm_update_reason}")

            # Phase 3: Update
            globals.logger.debug(f"[Phase 3] Applying updates for realm {realm_name}")

            # Update user token client
            if client_configured:
                globals.logger.info(f"Client {realm_name} already configured, skipping (respecting user customization)")
                stats['client_skipped'] += 1
            else:
                result = self.__update_client_timeouts(
                    realm_name=realm_name,
                    client_id=realm_name,
                    token=token,
                    access_token_lifespan=None,              # Do not set - inherit from realm (5 minutes)
                    session_max_lifespan=target_client_max,  # Inherit from realm SSO or defaults
                    session_idle_timeout=target_client_idle, # Inherit from realm SSO or defaults
                    skip_if_configured=False                 # We've already checked
                )
                if result['updated']:
                    stats['client_updated'] += 1
                    globals.logger.info(f"Updated client {realm_name} session timeouts: idle={target_client_idle}, max={target_client_max}")
                elif result['skipped']:
                    stats['client_skipped'] += 1
                else:
                    stats['failed'] += 1

            # Update realm SSO
            if should_update_realm:
                success = api_keycloak_realms.update_realm_sso_settings(
                    realm_name=realm_name,
                    token=token,
                    sso_session_idle_timeout=new_realm_idle,
                    sso_session_max_lifespan=new_realm_max,
                    skip_if_configured=False  # We've already checked and decided to update
                )
                if success:
                    stats['realm_updated'] += 1
                    globals.logger.info(f"Updated realm {realm_name} SSO: idle={new_realm_idle}, max={new_realm_max} ({realm_update_reason})")
                else:
                    stats['failed'] += 1
                    globals.logger.error(f"Failed to update realm SSO settings")
            else:
                stats['realm_skipped'] += 1
                globals.logger.info(f"Skipped realm {realm_name} SSO update ({realm_update_reason})")

            # Show final state summary
            final_realm_idle = new_realm_idle if should_update_realm else realm_idle
            final_realm_max = new_realm_max if should_update_realm else realm_max
            globals.logger.info(f"Realm {realm_name} final state: SSO idle={final_realm_idle}s, max={final_realm_max}s")

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

    def __update_client_timeouts(self, realm_name, client_id, token, access_token_lifespan=None, session_max_lifespan=None, session_idle_timeout=None, skip_if_configured=False):
        """Update client timeout settings (migration-specific helper method)

        Args:
            realm_name (str): realm name
            client_id (str): client ID (not UUID)
            token (str): keycloak admin access token
            access_token_lifespan (int): access token lifespan in seconds (None = no change)
            session_max_lifespan (int): client session max lifespan in seconds (None = no change)
            session_idle_timeout (int): client session idle timeout in seconds (None = no change)
            skip_if_configured (bool): If True, skip update when any timeout is already configured

        Returns:
            dict: {'updated': bool, 'skipped': bool, 'failed': bool, 'reason': str}
        """
        try:
            # Get client information
            response = api_keycloak_clients.clients_get(realm_name, client_id, token)
            if response.status_code != 200:
                globals.logger.warning(f"Failed to get client {client_id} in realm {realm_name}: {response.status_code}")
                return {'updated': False, 'skipped': False, 'failed': True, 'reason': f'client_get failed: {response.status_code}'}

            clients = response.json()
            if not clients:
                globals.logger.warning(f"Client {client_id} not found in realm {realm_name}")
                return {'updated': False, 'skipped': False, 'failed': True, 'reason': 'client not found'}

            client = clients[0]
            client_uuid = client.get('id')
            attributes = client.get('attributes', {})

            # Check current timeout settings
            current_max_lifespan = attributes.get('client.session.max.lifespan')
            current_idle_timeout = attributes.get('client.session.idle.timeout')

            # If skip_if_configured=True, skip when any of the timeout settings to be updated is already configured
            configured_settings = []
            if session_max_lifespan is not None and current_max_lifespan is not None:
                configured_settings.append(f"max={current_max_lifespan}")
            if session_idle_timeout is not None and current_idle_timeout is not None:
                configured_settings.append(f"idle={current_idle_timeout}")

            if skip_if_configured and configured_settings:
                globals.logger.info(f"Client {client_id} already has timeout configured ({', '.join(configured_settings)}), skipping to respect user configuration")
                return {'updated': False, 'skipped': True, 'failed': False, 'reason': 'already configured'}

            # Build timeout update config
            update_attributes = {}
            if access_token_lifespan is not None:
                update_attributes['access.token.lifespan'] = str(access_token_lifespan)
            if session_max_lifespan is not None:
                update_attributes['client.session.max.lifespan'] = str(session_max_lifespan)
            if session_idle_timeout is not None:
                update_attributes['client.session.idle.timeout'] = str(session_idle_timeout)

            if not update_attributes:
                globals.logger.info(f"No timeout values specified for client {client_id}, skipping")
                return {'updated': False, 'skipped': True, 'failed': False, 'reason': 'no values to update'}

            # Update client
            client['attributes'] = {**attributes, **update_attributes}
            response = api_keycloak_clients.client_update(realm_name, client_uuid, client, token)

            if response.status_code in [200, 204]:
                globals.logger.info(f"Successfully updated session timeouts for client {client_id}: {update_attributes}")
                return {'updated': True, 'skipped': False, 'failed': False, 'reason': 'success'}
            else:
                globals.logger.error(f"Failed to update client {client_id}: {response.status_code} {response.text}")
                return {'updated': False, 'skipped': False, 'failed': True, 'reason': f'update failed: {response.status_code}'}

        except Exception as e:
            globals.logger.error(f"Exception while updating client {client_id}: {e}")
            return {'updated': False, 'skipped': False, 'failed': True, 'reason': f'exception: {e}'}

if __name__ == '__main__':
    ret = update_keycloak_session_timeout().start()
    exit(ret)
