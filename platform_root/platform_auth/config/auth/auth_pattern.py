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

# Any authenticated user is allowed (use as "roles") - 認証済みの全ユーザーを許可する("roles"に指定)
ANY_USER = None

# Default is deny. A request is allowed only if it matches an entry of this list
# - デフォルトは拒否。このリストのエントリに一致し、許可された場合のみアクセスできる
#   "auth": []  : not regulated (any authenticated user) - 規制しない(認証済みの全ユーザーを許可)
#   "roles": [] : denied for all users - 全ユーザー拒否
#   "roles": ANY_USER : any authenticated user for the method - そのmethodは認証済みの全ユーザーを許可
AUTH_PATTERN = [
    {
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/workspaces/?$",
        "auth": [
            {
                # workspace list (filtered by user in controller) - ワークスペース一覧(コントローラでユーザーにより絞り込み)
                "method": ["GET"],
                "roles": ANY_USER
            },
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
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/workspaces/(?P<ws_id>[^/][^/]*)/notifications/?$",
        "auth": [
            {
                "method": ["GET", "POST"],
                "roles": [
                    {"client": "{org_id}-workspaces", "role": "{ws_id}"},
                    {"client": "{org_id}-workspaces", "role": const.WS_AUTH_ADMIN},
                    {"client": "{org_id}-workspaces", "role": const.ORG_AUTH_WS_MAINTE},
                    {"client": "{org_id}-workspaces", "role": const.ORG_AUTH_WS_ROLE_MAINTE},
                ]
            }
        ]
    },
    {
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/workspaces/(?P<ws_id>[^/][^/]*)/conversations($|/.*$)",
        # members of the workspace (data is filtered by user in controller) - ワークスペースのメンバー(コントローラでユーザーにより絞り込み)
        "auth": [
            {
                "method": ["*"],
                "roles": [
                    {"client": "{org_id}-workspaces", "role": "{ws_id}"},
                    {"client": "{org_id}-workspaces", "role": const.WS_AUTH_ADMIN},
                    {"client": "{org_id}-workspaces", "role": const.ORG_AUTH_WS_MAINTE},
                    {"client": "{org_id}-workspaces", "role": const.ORG_AUTH_WS_ROLE_MAINTE},
                ]
            }
        ]
    },
    {
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/workspaces/(?P<ws_id>[^/][^/]*)/lessons($|/.*$)",
        # members of the workspace (data is filtered by user in controller) - ワークスペースのメンバー(コントローラでユーザーにより絞り込み)
        "auth": [
            {
                "method": ["*"],
                "roles": [
                    {"client": "{org_id}-workspaces", "role": "{ws_id}"},
                    {"client": "{org_id}-workspaces", "role": const.WS_AUTH_ADMIN},
                    {"client": "{org_id}-workspaces", "role": const.ORG_AUTH_WS_MAINTE},
                    {"client": "{org_id}-workspaces", "role": const.ORG_AUTH_WS_ROLE_MAINTE},
                ]
            }
        ]
    },
    {
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/workspaces/(?P<ws_id>[^/][^/]*)/settings/notifications/?$",
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
                "method": ["POST"],
                "roles": [
                    {"client": "{org_id}-workspaces", "role": const.ORG_AUTH_WS_MAINTE},
                ]
            }
        ]
    },
    {
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/workspaces/(?P<ws_id>[^/][^/]*)/settings/notifications/(?P<destination_id>[^/][^/]*)($|/.*$)",
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
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/jobs/users($|/.*$)",
        "auth": [
            {
                "method": ["GET", "POST"],
                "roles": [
                    {"client": "{org_id}-workspaces", "role": const.ORG_AUTH_USER_MAINTE},
                ]
            },
        ],
    },
    {
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/users/_current/.+$",
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
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/settings($|/.*$)",
        "auth": [
            {
                "method": ["*"],
                "roles": [
                    {"client": "{org_id}-workspaces", "role": const.ORG_AUTH_UPDATE},
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
    },
    {
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/auditlog/download($|/.*$)",
        "auth": [
            {
                "method": ["*"],
                "roles": [
                    {"client": "{org_id}-workspaces", "role": const.ORG_AUTH_AUDIT_LOG},
                ]
            }
        ]
    },
    {
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/auditlog/download/(?P<download_id>[^/][^/]*)($|/.*$)",
        "auth": [
            {
                "method": ["*"],
                "roles": [
                    {"client": "{org_id}-workspaces", "role": const.ORG_AUTH_AUDIT_LOG},
                ]
            }
        ]
    },
    {
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/settings/common/.*$",
        "auth": [
            {
                "method": ["*"],
                "roles": []
            }
        ]
    },
    {
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/settings/common/platform.system.audit_log.(download_exp_days|download_file_limit|retention_days)$",
        "auth": [
            {
                "method": ["*"],
                "roles": [
                    {"client": "{org_id}-workspaces", "role": const.ORG_AUTH_AUDIT_LOG},
                ]
            }
        ]
    },
    {
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/settings/common/platform.system.user_export_import.(exp_days)$",
        "auth": [
            {
                "method": ["*"],
                "roles": [
                    {"client": "{org_id}-workspaces", "role": const.ORG_AUTH_USER_MAINTE},
                ]
            }
        ]
    },
    {
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/workspaces/(?P<ws_id>[^/][^/]*)/service-account-users($|/.*$)",
        "auth": [
            {
                "method": ["*"],
                "roles": [
                    {"client": "{org_id}-workspaces", "role": "_{ws_id}-admin"},
                ]
            },
        ]
    },
    {
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/ai-services$",
        "auth": []
    },
    {
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/limits$",
        # published in the user API reference - ユーザー向けAPIリファレンスに公開
        "auth": []
    },
    {
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/maintenance-mode-setting$",
        # referenced by all users from the workspace screens - ワークスペース関連画面から全ユーザーが参照する
        "auth": []
    },
    # ----------------------------------------------------------------
    # System administrator APIs (master realm) - システム管理者向けAPI(masterレルム)
    # ----------------------------------------------------------------
    {
        "url": r"^/api/platform($|/.*$)",
        # The token of the system administrator console (_platform-console) has no realm role,
        # so the role cannot be checked here. Any authenticated user of the master realm is allowed (same as before).
        # - システム管理者コンソール(_platform-console)のtokenにはrealmロールが含まれないため、ここではロールを判定しない。
        #   masterレルムの認証済みユーザーを許可する(従来どおり)
        "auth": []
    },
    {
        "url": r"^/api/ita($|/.*$)",
        # ITA system management API (master realm). Same as /api/platform
        # - ITAシステム管理API(masterレルム)。/api/platformと同じ扱い
        "auth": []
    },
]
