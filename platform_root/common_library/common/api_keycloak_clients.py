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

# import inspect
import os
import requests

# User Imports
import globals  # 共通的なglobals Common globals


def client_create(realm_name, client_json, token):
    """クライアント作成 client create

    Args:
        realm_name (str): realm name
        client_json (disct): client create parameter
        toekn (str): token

    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """
    globals.logger.info('Post keycloak clients. client_id={}'.format(client_json.get("clientId")))

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    # 呼び出し先設定 requests setting
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

    request_response = requests.post(f"{api_url}/auth/admin/realms/{realm_name}/clients",
                                     headers=header_para,
                                     json=client_json,
                                     timeout=(12, 600)
                                     )

    return request_response


def client_update(realm_name, client_uid, client_json, token):
    """クライアント作成 client create

    Args:
        realm_name (str): realm name
        client_uid (str): client id (uuid)
        client_json (disct): client update parameter
        toekn (str): token

    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """
    globals.logger.info('Put keycloak clients. client_id={}'.format(client_uid))

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    # 呼び出し先設定 requests setting
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

    request_response = requests.put(
        f"{api_url}/auth/admin/realms/{realm_name}/clients/{client_uid}",
        headers=header_para,
        json=client_json,
        timeout=(12, 600)
    )

    return request_response


def clients_get(realm_name, client_id, token):
    """クライアント情報取得 client info get

    Args:
        realm_name (str): realm name
        client_id (str): client id
        toekn (str): token

    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """
    globals.logger.debug('Get keycloak client role. client_id={}'.format(client_id))

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    # client_idが指定されている場合は、querystringで条件を設定
    # If client_id is specified, set the condition with querystring
    if client_id:
        query_para = {
            "clientId": client_id,
        }
    else:
        query_para = None

    globals.logger.debug("client get send")
    # 呼び出し先設定 requests setting
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

    request_response = requests.get(f"{api_url}/auth/admin/realms/{realm_name}/clients",
                                    headers=header_para,
                                    params=query_para,
                                    timeout=(12, 600)
                                    )

    # globals.logger.debug(request_response.text)

    return request_response


def client_secret_create(realm_name, client_id, token):
    """クライアントシークレット作成 client secret create

    Args:
        realm_name (str): realm name
        client_id (str): client id (not client-id)
        toekn (str): token

    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """
    globals.logger.info('Post keycloak clients secret. client_id={}'.format(client_id))

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    # 呼び出し先設定 requests setting
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

    request_response = requests.post(
        f"{api_url}/auth/admin/realms/{realm_name}/clients/{client_id}/client-secret",
        headers=header_para,
        timeout=(12, 600)
    )

    return request_response


def client_secret_get(realm_name, client_id, token):
    """クライアントシークレット取得 client secret get

    Args:
        realm_name (str): realm name
        client_id (str): client id (not client-id)
        toekn (str): token

    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """
    globals.logger.debug('Get keycloak clients secret. client_id={}'.format(client_id))

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    # 呼び出し先設定 requests setting
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

    request_response = requests.get(f"{api_url}/auth/admin/realms/{realm_name}/clients/{client_id}/client-secret",
                                    headers=header_para,
                                    timeout=(12, 600)
                                    )

    return request_response


def add_audience_mapper_to_client(realm_name, client_id, audience_client_id, token):
    """Add audience protocol mapper to a specific client

    Args:
        realm_name (str): realm name
        client_id (str): target client clientId
        audience_client_id (str): audience client ID to add
        token (str): admin access token

    Returns:
        dict: {'added': bool, 'skipped': bool, 'error': str or None}
    """
    globals.logger.debug(f'Adding audience mapper {audience_client_id} to client {client_id} in realm {realm_name}')

    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    try:
        # Get client by clientId
        response = clients_get(realm_name, client_id, token)
        if response.status_code != 200:
            globals.logger.warning(f"Failed to get client {client_id}: {response.status_code}")
            return {'added': False, 'skipped': False, 'error': f'Failed to get client: {response.status_code}'}

        clients = response.json()
        if not clients:
            globals.logger.warning(f"Client {client_id} not found in realm {realm_name}")
            return {'added': False, 'skipped': False, 'error': 'Client not found'}

        client_uuid = clients[0]['id']
        protocol = clients[0].get('protocol')
        bearer_only = clients[0].get('bearerOnly', False)

        # Skip non-OIDC clients
        if protocol != 'openid-connect':
            globals.logger.debug(f"Skipping client {client_id} (protocol: {protocol})")
            return {'added': False, 'skipped': True, 'error': None}

        # Skip bearer-only clients (they don't issue tokens, only validate them)
        if bearer_only:
            globals.logger.debug(f"Skipping bearer-only client {client_id}")
            return {'added': False, 'skipped': True, 'error': None}

        # Check if audience mapper already exists
        mappers_response = requests.get(
            f"{api_url}/auth/admin/realms/{realm_name}/clients/{client_uuid}/protocol-mappers/models",
            headers=header_para,
            timeout=(12, 600)
        )

        if mappers_response.status_code == 200:
            existing_mappers = mappers_response.json()
            for mapper in existing_mappers:
                if (mapper.get('protocolMapper') == 'oidc-audience-mapper' and
                    mapper.get('config', {}).get('included.client.audience') == audience_client_id):
                    globals.logger.debug(f"audience mapper for {audience_client_id} already exists for client {client_id}")
                    return {'added': False, 'skipped': True, 'error': None}

        # Add audience mapper
        audience_mapper = {
            "name": f"audience-{audience_client_id}",
            "protocol": "openid-connect",
            "protocolMapper": "oidc-audience-mapper",
            "consentRequired": False,
            "config": {
                "included.client.audience": audience_client_id,
                "id.token.claim": "false",
                "access.token.claim": "true"
            }
        }

        add_response = requests.post(
            f"{api_url}/auth/admin/realms/{realm_name}/clients/{client_uuid}/protocol-mappers/models",
            headers=header_para,
            json=audience_mapper,
            timeout=(12, 600)
        )

        if add_response.status_code in [201, 204]:
            globals.logger.info(f"Successfully added audience mapper {audience_client_id} to client {client_id}")
            return {'added': True, 'skipped': False, 'error': None}
        else:
            globals.logger.error(f"Failed to add audience mapper to client {client_id}: {add_response.status_code} {add_response.text}")
            return {'added': False, 'skipped': False, 'error': f'HTTP {add_response.status_code}'}

    except Exception as e:
        globals.logger.error(f"Exception while adding audience mapper to client {client_id}: {e}")
        return {'added': False, 'skipped': False, 'error': str(e)}


def add_audience_mapper_to_realm_clients(realm_name, token, audience_client_id="_platform", target_client_filter=None):
    """Add audience protocol mapper to clients in a realm

    Args:
        realm_name (str): realm name
        token (str): admin access token
        audience_client_id (str): audience client ID to add (default: "_platform")
        target_client_filter (str): if specified, only add mapper to clients whose clientId matches this string

    Returns:
        dict: {'added': int, 'skipped': int, 'failed': int}
    """
    globals.logger.info(f'Adding audience mapper {audience_client_id} to clients in realm {realm_name}')

    stats = {'added': 0, 'skipped': 0, 'failed': 0}

    try:
        # Get all clients in realm
        response = clients_get(realm_name, None, token)
        if response.status_code != 200:
            globals.logger.error(f"Failed to get clients in realm {realm_name}: {response.status_code}")
            return stats

        clients = response.json()
        globals.logger.debug(f"Found {len(clients)} clients in realm {realm_name}")

        for client in clients:
            client_id = client.get('clientId')

            # Apply filter if specified
            if target_client_filter and target_client_filter not in client_id:
                globals.logger.debug(f"Skipping client {client_id} (does not match filter: {target_client_filter})")
                stats['skipped'] += 1
                continue

            # Skip service account clients (they don't need audience mappers themselves)
            if client.get('serviceAccountsEnabled', False) and not client.get('publicClient', False):
                globals.logger.debug(f"Skipping service account client {client_id}")
                stats['skipped'] += 1
                continue

            result = add_audience_mapper_to_client(realm_name, client_id, audience_client_id, token)

            if result['added']:
                stats['added'] += 1
            elif result['skipped']:
                stats['skipped'] += 1
            else:
                stats['failed'] += 1

        globals.logger.info(f"Realm {realm_name} audience mapper stats: added={stats['added']}, skipped={stats['skipped']}, failed={stats['failed']}")
        return stats

    except Exception as e:
        globals.logger.error(f"Exception while processing realm {realm_name}: {e}")
        return stats


def add_basic_scope_to_client(realm_name, client_id, token):
    """Add basic client scope to a specific client's defaultClientScopes

    Keycloak 26+ includes 'sub' claim by default when basic scope is assigned.
    This function adds the 'basic' scope to ensure backward compatibility.

    Args:
        realm_name (str): realm name
        client_id (str): client clientId (e.g., '_platform-api')
        token (str): admin access token

    Returns:
        dict: {'added': bool, 'skipped': bool, 'error': str or None}
    """
    globals.logger.debug(f'Adding basic scope to client {client_id} in realm {realm_name}')

    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    try:
        # Get client by clientId
        response = clients_get(realm_name, client_id, token)
        if response.status_code != 200:
            globals.logger.warning(f"Failed to get client {client_id}: {response.status_code}")
            return {'added': False, 'skipped': False, 'error': f'Failed to get client: {response.status_code}'}

        clients = response.json()
        if not clients:
            globals.logger.warning(f"Client {client_id} not found in realm {realm_name}")
            return {'added': False, 'skipped': False, 'error': 'Client not found'}

        client_uuid = clients[0]['id']
        protocol = clients[0].get('protocol')
        bearer_only = clients[0].get('bearerOnly', False)

        # Skip non-OIDC clients
        if protocol != 'openid-connect':
            globals.logger.debug(f"Skipping client {client_id} (protocol: {protocol})")
            return {'added': False, 'skipped': True, 'error': None}

        # Skip bearer-only clients (they don't issue tokens, only validate them)
        if bearer_only:
            globals.logger.debug(f"Skipping bearer-only client {client_id}")
            return {'added': False, 'skipped': True, 'error': None}

        # Get client's default scopes
        scopes_response = requests.get(
            f"{api_url}/auth/admin/realms/{realm_name}/clients/{client_uuid}/default-client-scopes",
            headers=header_para,
            timeout=(12, 600)
        )

        if scopes_response.status_code != 200:
            globals.logger.warning(f"Failed to get default scopes for client {client_id}: {scopes_response.status_code}")
            return {'added': False, 'skipped': False, 'error': f'Failed to get scopes: {scopes_response.status_code}'}

        existing_scopes = scopes_response.json()

        # Check if basic scope already exists
        for scope in existing_scopes:
            if scope.get('name') == 'basic':
                globals.logger.debug(f"basic scope already exists for client {client_id}")
                return {'added': False, 'skipped': True, 'error': None}

        # Get basic scope ID from realm
        realm_scopes_response = requests.get(
            f"{api_url}/auth/admin/realms/{realm_name}/client-scopes",
            headers=header_para,
            timeout=(12, 600)
        )

        if realm_scopes_response.status_code != 200:
            globals.logger.warning(f"Failed to get realm scopes: {realm_scopes_response.status_code}")
            return {'added': False, 'skipped': False, 'error': f'Failed to get realm scopes: {realm_scopes_response.status_code}'}

        realm_scopes = realm_scopes_response.json()
        basic_scope_id = None
        for scope in realm_scopes:
            if scope.get('name') == 'basic':
                basic_scope_id = scope.get('id')
                break

        if not basic_scope_id:
            globals.logger.warning(f"basic scope not found in realm {realm_name}")
            return {'added': False, 'skipped': False, 'error': 'basic scope not found in realm'}

        # Add basic scope to client's default scopes
        add_response = requests.put(
            f"{api_url}/auth/admin/realms/{realm_name}/clients/{client_uuid}/default-client-scopes/{basic_scope_id}",
            headers=header_para,
            timeout=(12, 600)
        )

        if add_response.status_code in [204]:
            globals.logger.info(f"Successfully added basic scope to client {client_id}")
            return {'added': True, 'skipped': False, 'error': None}
        else:
            globals.logger.error(f"Failed to add basic scope to client {client_id}: {add_response.status_code} {add_response.text}")
            return {'added': False, 'skipped': False, 'error': f'HTTP {add_response.status_code}'}

    except Exception as e:
        globals.logger.error(f"Exception while adding basic scope to client {client_id}: {e}")
        return {'added': False, 'skipped': False, 'error': str(e)}


def add_basic_scope_to_realm_clients(realm_name, token):
    """Add basic client scope to all openid-connect clients in a realm

    Args:
        realm_name (str): realm name
        token (str): admin access token

    Returns:
        dict: {'added': int, 'skipped': int, 'failed': int}
    """
    globals.logger.info(f'Adding basic scope to all clients in realm {realm_name}')

    stats = {'added': 0, 'skipped': 0, 'failed': 0}

    try:
        # Get all clients in realm
        response = clients_get(realm_name, None, token)
        if response.status_code != 200:
            globals.logger.error(f"Failed to get clients in realm {realm_name}: {response.status_code}")
            return stats

        clients = response.json()
        globals.logger.debug(f"Found {len(clients)} clients in realm {realm_name}")

        for client in clients:
            client_id = client.get('clientId')
            result = add_basic_scope_to_client(realm_name, client_id, token)

            if result['added']:
                stats['added'] += 1
            elif result['skipped']:
                stats['skipped'] += 1
            else:
                stats['failed'] += 1

        globals.logger.info(f"Realm {realm_name} stats: added={stats['added']}, skipped={stats['skipped']}, failed={stats['failed']}")
        return stats

    except Exception as e:
        globals.logger.error(f"Exception while processing realm {realm_name}: {e}")
        return stats
