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

import connexion
import six

# from swagger_server.models.runtime_error import RuntimeError  # noqa: E501
# from swagger_server.models.workspace import Workspace  # noqa: E501
# from swagger_server.models.workspace_list import WorkspaceList  # noqa: E501
# from swagger_server import util


def workspace_create(body, organization_id):  # noqa: E501
    """Create creates an workspace

     # noqa: E501

    :param body: 
    :type body: dict | bytes
    :param organization_id: 
    :type organization_id: str

    :rtype: Workspace
    """
    if connexion.request.is_json:
        # body = Workspace.from_dict(connexion.request.get_json())  # noqa: E501
        body = ''
    return 'do some magic!'


def workspace_list(organization_id, workspace_name=None):  # noqa: E501
    """List returns list of workspaces

     # noqa: E501

    :param organization_id: 
    :type organization_id: str
    :param workspace_name: the workspace&#x27;s name.
    :type workspace_name: str

    :rtype: WorkspaceList
    """
    return 'do some magic!'
