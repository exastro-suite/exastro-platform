# Copyright 2019 NEC Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

from common_library.common import const

AUTH_PATTERN = [
    {
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/workspaces/?$",
        "auth": [
            {
                "method": ["POST"],
                "roles": [
                    {"client": "{org_id}-workspaces", "role": const.ORG_AUTH_WS_MAINTE},
                ]
            }
        ]
    },
    {
        "url": r"^/api/(?P<org_id>[^/][^/]*)/workspaces/(?P<ws_id>[^/][^/]*)($|/.*$)",
        "auth": [
            {
                "method": ["*"],
                "roles": [
                    {"client": "{org_id}-workspaces", "role": "{ws_id}"},
                ]
            }
        ]
    },
    {
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/workspaces/(?P<ws_id>[^/][^/]*)($|/.*$)",
        "auth": [
            {
                "method": ["GET"],
                "roles": [
                    {"client": "{org_id}-workspaces", "role": "{ws_id}"},
                    {"client": "{org_id}-workspaces", "role": const.WS_AUTH_ADMIN},
                    {"client": "{org_id}-workspaces", "role": const.ORG_AUTH_WS_MAINTE},
                    {"client": "{org_id}-workspaces", "role": const.ORG_AUTH_WS_ROLE_MAINTE},
                ]
            },
            {
                "method": ["PUT", "PATCH", "DELETE"],
                "roles": [
                    {"client": "{org_id}-workspaces", "role": const.WS_AUTH_ADMIN},
                    {"client": "{org_id}-workspaces", "role": const.ORG_AUTH_WS_MAINTE},
                ]
            }
        ]
    },
    {
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/users($|/.*$)",
        "auth": [
            {
                "method": ["GET"],
                "roles": [
                    {"client": "{org_id}-workspaces", "role": const.WS_AUTH_ADMIN_ANY},
                    {"client": "{org_id}-workspaces", "role": const.ORG_AUTH_USER_MAINTE},
                    {"client": "{org_id}-workspaces", "role": const.ORG_AUTH_WS_ROLE_USER},
                ]
            },
            {
                "method": ["POST", "PUT", "DELETE"],
                "roles": [
                    {"client": "{org_id}-workspaces", "role": const.ORG_AUTH_USER_MAINTE},
                ]
            }
        ],
    },
    {
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/users/_current/refresh_tokens$",
        # do not regulate - 規制しない
        "auth": []
    },
    {
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/roles($|/.*$)",
        "auth": [
            {
                "method": ["GET"],
                "roles": [
                    {"client": "{org_id}-workspaces", "role": const.WS_AUTH_ADMIN_ANY},
                    {"client": "{org_id}-workspaces", "role": const.ORG_AUTH_ROLE_USER},
                    {"client": "{org_id}-workspaces", "role": const.ORG_AUTH_WS_ROLE_MAINTE},
                    {"client": "{org_id}-workspaces", "role": const.ORG_AUTH_WS_ROLE_USER},
                ]
            },
            {
                "method": ["POST"],
                "roles": [
                    {"client": "{org_id}-workspaces", "role": const.WS_AUTH_ADMIN_ANY},
                    {"client": "{org_id}-workspaces", "role": const.ORG_AUTH_WS_ROLE_MAINTE},
                ]
            }
        ]
    },
    {
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/roles/(?P<role_name>[^/][^/]*)($|/.*$)",
        "auth": [
            {
                "method": ["PUT", "DELETE"],
                "roles": [
                    {"client": "{org_id}-workspaces", "role": const.WS_AUTH_ADMIN_ANY},
                    {"client": "{org_id}-workspaces", "role": const.ORG_AUTH_WS_ROLE_MAINTE},
                ]
            }
        ]
    },
    {
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/roles/(?P<role_name>[^/][^/]*)/users($|/.*$)",
        "auth": [
            {
                "method": ["GET", "POST", "PATCH"],
                "roles": [
                    {"client": "{org_id}-workspaces", "role": const.WS_AUTH_ADMIN_ANY},
                    {"client": "{org_id}-workspaces", "role": const.ORG_AUTH_ROLE_USER},
                    {"client": "{org_id}-workspaces", "role": const.ORG_AUTH_WS_ROLE_USER},
                ]
            }
        ]
    },
    {
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/roles/{0}/users($|/.*$)".format(const.ORG_ROLE_ORG_MANAGER),
        "auth": [
            {
                "method": ["GET", "POST", "PATCH"],
                "roles": [
                    {"client": "{org_id}-workspaces", "role": const.ORG_AUTH_OWNER_MAINTE},
                ]
            }
        ]
    },
    {
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/roles/({0}|{1})/users($|/.*$)".format(const.ORG_ROLE_USER_ROLE_MANAGER, const.ORG_ROLE_USER_MANAGER),
        "auth": [
            {
                "method": ["GET", "POST", "PATCH"],
                "roles": [
                    {"client": "{org_id}-workspaces", "role": const.ORG_AUTH_ROLE_USER},
                ]
            }
        ]
    },
    {
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/usages($|/.*$)",
        "auth": [
            {
                "method": ["GET"],
                "roles": [
                    {"client": "{org_id}-workspaces", "role": const.ORG_AUTH_USAGE_SITUATION},
                ]
            }
        ]
    },
    {
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/setting($|/.*$)",
        "auth": [
            {
                "method": ["*"],
                "roles": [
                    {"client": "{org_id}-workspaces", "role": const.ORG_AUTH_UPDATE},
                ]
            }
        ]
    }
]
