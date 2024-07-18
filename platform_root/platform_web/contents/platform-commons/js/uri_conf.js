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
            "settings": {
                "notifications": {
                    "get": "/api/{organization_id}/platform/workspaces/{workspace_id}/settings/notifications",
                    "post": "/api/{organization_id}/platform/workspaces/{workspace_id}/settings/notifications",
                    "put": "/api/{organization_id}/platform/workspaces/{workspace_id}/settings/notifications/{destination_id}",
                    "delete": "/api/{organization_id}/platform/workspaces/{workspace_id}/settings/notifications/{destination_id}",

                    "detail": {
                        "get": "/api/{organization_id}/platform/workspaces/{workspace_id}/settings/notifications/{destination_id}",
                    },
                },
            },
            "notifications": {
                "post": "/api/{organization_id}/platform/workspaces/{workspace_id}/notifications",
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
            "getId": "/api/{organization_id}/platform/users/{user_id}",
            "put": "/api/{organization_id}/platform/users/{user_id}",
            "delete": "/api/{organization_id}/platform/users/{user_id}",
        },
        "jobs_users": {
            "bulk_format": {
                "post": "/api/{organization_id}/platform/jobs/users/bulk/format",
            },
            "bulk_import": {
                "post": "/api/{organization_id}/platform/jobs/users/bulk/import",
            },
            "bulk_delete": {
                "post": "/api/{organization_id}/platform/jobs/users/bulk/delete",
            },
            "bulk_status": {
                "get": "/api/{organization_id}/platform/jobs/users/bulk/status",
                "detail": {
                    "get": "/api/{organization_id}/platform/jobs/users/bulk/status/{job_id}",
                    "post": "/api/{organization_id}/platform/jobs/users/bulk/status/{job_id}/download",
                },
            },
            "export": {
                "post": "/api/{organization_id}/platform/jobs/users/export",
                "get": "/api/{organization_id}/platform/jobs/users/export/status",
                "detail": {
                    "get": "/api/{organization_id}/platform/jobs/users/export/status/{job_id}",
                    "post": "/api/{organization_id}/platform/jobs/users/export/status/{job_id}/download",
                },
            },
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
            "delete": "/api/platform/organizations/{organization_id}",
            "detail": {
                "get": "/api/platform/organizations/{organization_id}",
                "put": "/api/platform/organizations/{organization_id}",
            },
            "plans": {
                "get": "/api/platform/{organization_id}/plans",
                "post": "/api/platform/{organization_id}/plans",
                "delete": "/api/platform/{organization_id}/plans/{plan_start_datetime}"
            },
        },
        "it-automation": {
            "settings": {
                "get": "/api/ita/settings/"
            }
        },
        "plans": {
            "get": "/api/platform/plans",
            "getPlanItem": "/api/platform/plan_items",
            "post": "/api/platform/plans"
        },
        "maintenance-mode-setting": {
            "get": "/api/{organization_id}/platform/maintenance-mode-setting",
        },
        "settings": {
            "common": {
                "get": "/api/{organization_id}/platform/settings/common/{config_key}"
            },
            "mailserver": {
                "get": "/api/{organization_id}/platform/settings/mailserver",
                "post": "/api/{organization_id}/platform/settings/mailserver",
                "delete": "/api/{organization_id}/platform/settings/mailserver",
            },
            "maintenance-mode-setting": {
                "get": "/api/platform/maintenance-mode-setting",
                "patch": "/api/platform/maintenance-mode-setting",
            },
            "ita":{
                "loglevel": {
                    "get": "/api/ita/loglevel-settings/",
                    "patch": "/api/ita/loglevel-settings/"
                },
                "backyard_execute_check": {
                    "get": "/api/ita/backyard-execute-check/",
                }
            }
        },
        "auditlog": {
            "download": {
                "get": "/api/{organization_id}/platform/auditlog/download",
                "post": "/api/{organization_id}/platform/auditlog/download",
                "postId": "/api/{organization_id}/platform/auditlog/download/{download_id}",
            }
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
            "ita": "/{organization_id}/workspaces/{workspace_id}/ita/",
            "settings": {
                "notifications": {
                    "workspaces": "/{organization_id}/platform/workspaces/_settings/notifications",
                    "new" : "/{organization_id}/platform/workspaces/{workspace_id}/settings/notifications/_new",
                    "list": "/{organization_id}/platform/workspaces/{workspace_id}/settings/notifications",
                    "detail": "/{organization_id}/platform/workspaces/{workspace_id}/settings/notifications/{destination_id}",
                    "edit": "/{organization_id}/platform/workspaces/{workspace_id}/settings/notifications/{destination_id}/edit",
                },
            },
        },
        "roles": {
            "new": "/{organization_id}/platform/roles/_new",
            "list": "/{organization_id}/platform/roles",
            "edit": "/{organization_id}/platform/roles/{role_name}",
            "user": "/{organization_id}/platform/roles/{role_name}/user",
        },
        "users": {
            "new": "/{organization_id}/platform/users/_new",
            "list": "/{organization_id}/platform/users",
            "detail": "/{organization_id}/platform/users/{user_id}",
            "edit": "/{organization_id}/platform/users/{user_id}/edit",
            "bulk_actions": "/{organization_id}/platform/users/_bulk_actions",
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
                "token": "/platform/token",
            },
            "organization_user_site": {
                "main_page": "/{organization_id}/platform/account",
                "token": "/{organization_id}/platform/token",
            },
            "account_edit": "/auth/realms/{realm_name}/account/",
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
        "settings_running_state": {
            "top": "/platform/settings/running_state",
        },
        "keycloak": {
            "console": "/platform/keycloak_console",
            "console_frame": "/auth/admin/master/console",
            "identity_providers": "/{organization_id}/platform/identity_providers",
            "identity_providers_frame": "/auth/admin/{organization_id}/console/#/{organization_id}/identity-providers"
        },
        "settings": {
            "mailserver": "/{organization_id}/platform/settings/mailserver",
        },
        "auditlog": {
            "download": "/{organization_id}/platform/auditlog"
        }
    }
}