/*  Copyright 2022 NEC Corporation
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
const CommonAuthConfig = {
    /**
     * Login client name pattern
     */
    "LOGIN_CLIENT": "%{RELMNAME}-public",

    /**
     * Interval to check token expiration (sec) / tokenの有効期限切れをチェックする間隔(sec)
     */
    "TOKEN_CHECK_INTERVAL": 1,

    /**
     * Time to perform automatic token renewal (sec) / 自動トークン更新を実行する時間(sec)
     */
    "TOKEN_AUTO_REFRESH": 60 * 60,

    /**
     * Specifies how many seconds before the token expiration date / tokenの有効期限の何秒前に更新するかを指定します
     */
    "TOKEN_REFRESH_TIMMING": 30,

    /**
     * keycloak init parameter
     */
    "KEYCLOAK_CONFIG": {
        "url": (window.location.origin + "/auth/"),
        "ssl-required": (window.location.protocol == "https"? "all": "none"),
        "public-client": true,
        "confidential-port": 0,
    },

    /**
     * keycloak silent check sso redirect uri
     */
    "CHECK_SSO_REDIRECT_URI": (window.location.origin + "/_/common-auth/html/silent-check-sso.html"),
}
