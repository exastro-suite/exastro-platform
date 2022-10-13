/*
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
*/
var api_conf = {

    "api" : {
        "workspaces": {
            "post": "/api/{organization_id}/platform/workspaces",
            "get": "/api/{organization_id}/platform/workspaces",

            "detail": {
                "get": "/api/{organization_id}/platform/workspaces/{workspace_id}",
                "members": {
                    "get": "/api/{organization_id}/platform/workspaces/{workspace_id}/members",
                },
            },
        },
        "roles": {
            "post": "/api/{organization_id}/platform/roles",
            "get": "/api/{organization_id}/platform/roles",
            "put": "/api/{organization_id}/platform/roles/{role_name}",
        }
    }
}

var location_conf = {
    "href": {
        "workspaces": {
            "new" : "/{organization_id}/platform/workspaces/_new",
            "list": "/{organization_id}/platform/workspaces",
            "detail": "/{organization_id}/platform/workspaces/{workspace_id}",
            "ita": "/{organization_id}/workspaces/{workspace_id}/ita/"
        },
        "roles": {
            "new": "/{organization_id}/platform/roles/_new",
            "list": "/{organization_id}/platform/roles",
            "edit": "/{organization_id}/platform/roles/{role_name}"
        },
        "menu": {
            "toppage": "/{organization_id}/platform/workspaces",
            "account_manaagement": "/auth/admin/{organization_id}/console/#/realms/{organization_id}/users", 
            //"role_management": "/auth/admin/{organization_id}/console/#/realms/{organization_id}/clients",        
            "update_password": "/auth/realms/{organization_id}/account/password",
        }
    }
}