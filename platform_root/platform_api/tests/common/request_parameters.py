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
import base64


def request_headers(user_id=None, organization_role=[], workspace_role=[], language='en'):
    """platform api request header

    Args:
        user_id (str, optional): user_id. Defaults to None.
        organization_role (list, optional): organization_role. Defaults to [].
        workspace_role (list, optional): workspace_role. Defaults to [].
        language (str, optional): language. Defaults to 'en'.

    Returns:
        dict: platform api http headers
    """
    return {
        "User-id": (user_id if user_id is not None else "unittest-user01"),
        "Roles": base64.b64encode("\n".join(workspace_role).encode()).decode(),
        "Org-Roles": base64.b64encode("\n".join(organization_role).encode()).decode(),
        "Language": language
    }
