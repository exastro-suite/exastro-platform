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
            "delete": "/api/{organization_id}/platform/workspaces/{workspace_id}",
            "put": "/api/{organization_id}/platform/workspaces/{workspace_id}",

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
            "delete": "/api/{organization_id}/platform/roles/{role_name}",
            "users": {
                "get": "/api/{organization_id}/platform/roles/{role_name}/users",
                "post": "/api/{organization_id}/platform/roles/{role_name}/users",
                "patch": "/api/{organization_id}/platform/roles/{role_name}/users"
            },
        },
        "users": {
            "get": "/api/{organization_id}/platform/users",
            "post": "/api/{organization_id}/platform/users",
            "get": "/api/{organization_id}/platform/users",
            "getId": "/api/{organization_id}/platform/users/{user_id}",
            "put": "/api/{organization_id}/platform/users/{user_id}",
            "delete": "/api/{organization_id}/platform/users/{user_id}",
        },
        "token": {
            "post": "/auth/realms/{realm_name}/protocol/openid-connect/token",
            "platform_admin_site": {
                "get": "/api/platform/users/_current/refresh_tokens",
                "delete": "/api/platform/users/_current/refresh_tokens"
            },
            "organization_user_site": {
                "get": "/api/{organization_id}/platform/users/_current/refresh_tokens",
                "delete": "/api/{organization_id}/platform/users/_current/refresh_tokens"
            },
        },
        "organizations": {
            "get": "/api/platform/organizations",
            "post": "/api/platform/organizations",
            "delete": "/api/platform/organizations/{organization_id}"
        },
        "plans": {
            "get": "/api/platform/plans"
        }
    }
}

var location_conf = {
    "href": {
        "workspaces": {
            "new" : "/{organization_id}/platform/workspaces/_new",
            "list": "/{organization_id}/platform/workspaces",
            "detail": "/{organization_id}/platform/workspaces/{workspace_id}",
            "edit": "/{organization_id}/platform/workspaces/{workspace_id}/edit",
            "ita": "/{organization_id}/workspaces/{workspace_id}/ita/"
        },
        "roles": {
            "new": "/{organization_id}/platform/roles/_new",
            "list": "/{organization_id}/platform/roles",
            "edit": "/{organization_id}/platform/roles/{role_name}",
            "user": "/{organization_id}/platform/roles/{role_name}/user"
        },
        "users": {
            "new": "/{organization_id}/platform/users/_new",
            "list": "/{organization_id}/platform/users",
            "detail": "/{organization_id}/platform/users/{user_id}",
            "edit": "/{organization_id}/platform/users/{user_id}/edit",
        },
        "menu": {
            "platform_admin_site": {
                "toppage": "/platform/organizations",
            },
            "organization_user_site": {
                "toppage": "/{organization_id}/platform/workspaces",
            }
        },
        "account": {
            "platform_admin_site": {
                "main_page": "/platform/account",
            },
            "organization_user_site": {
                "main_page": "/{organization_id}/platform/account",
            },
            "account_edit": "/auth/realms/{realm_name}/account/",
            "update_password": "/auth/realms/{realm_name}/account/password",
            "two_factor_auth": "/auth/realms/{realm_name}/account/totp"
        },

        "organizations": {
            "new": "/platform/organizations/_new",
            "list": "/platform/organizations",
            "detail": "/platform/organizations/{organization_id}",
            "edit": "/platform/organizations/{organization_id}/edit",
        },
        "plans": {
            "new": "/platform/plans/_new",
            "list": "/platform/plans",
        },
        "system_settings": {
            "top": "/platform/settings",
        },
        "keycloak": {
            "console": "/auth/admin/master/console",
        }
    }
}