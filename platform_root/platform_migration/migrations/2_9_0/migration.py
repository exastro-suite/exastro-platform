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
from . import update_keycloak
from . import update_keycloak_audience
from . import update_keycloak_session_timeout


def main():

    # Keycloak 26 compatibility: Add basic scope to clients
    api = update_keycloak.update_keycloak()
    result = api.start()
    if result != 0:
        return result

    # Add audience mapper to service account clients
    api = update_keycloak_audience.update_keycloak_audience()
    result = api.start()
    if result != 0:
        return result

    # Update session timeout settings (client + realm)
    # - Sets user token client to 30min/10hours if not configured
    # - Extends realm SSO timeout to accommodate all clients (respects user customization)
    api = update_keycloak_session_timeout.update_keycloak_session_timeout()
    result = api.start()

    return result


if __name__ == '__main__':
    ret = main()
    exit(ret)
