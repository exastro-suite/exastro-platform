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

/**
 * Console output for debugging - デバック用console出力
 */
const DebugConsole = {
    /**
     * Log class to be output - 出力対象のlog class
     */
    "_outputClass": [],

    /**
     * In case of log class to be output, console.log is output. - 出力対象のlog classの場合、console.logを出力します
     * @param {string} logClass         log class
     * @param {string} logText          Text to log - ログ出力するテキスト
     * @param {*} variable              Variable to output log - ログ出力する変数
     */
    "log": function(logClass, logText, variable) {
        try {
            if(DebugConsole._outputClass.indexOf(logClass) !== -1) {
                switch(typeof variable) {
                    case "object":
                        console.log(logClass + ":" + logText);
                        console.log(variable);
                        break;
                    case "undefined":
                        console.log(logClass + ":" + logText);
                        break;
                    default:
                        console.log( logClass + ":" + logText + ":[" + variable + "]");
                        break;
                }
            }
        } catch(e) {}
    },
    /**
     * Target log class to log output - log classをログ出力の対象にします
     * @param {string} logClass
     */
    "setOutputClass": function(logClass) {
        if(DebugConsole._outputClass.indexOf(logClass) === -1) {
            DebugConsole._outputClass.push(logClass);
        }
    }
}

/**
 * Common authentication - 認証共通処理
 */
const CommonAuth = {
    /**
     * keycloak javascript adaptor instance
     */
    "keycloak": null,

    /**
     * Last time you requested a token - トークンを要求した最後の時間
     */
    "_lastTimeToGetToken": (new Date()).getTime(),

    /**
     * keycloak login
     */
    "_login": function() {
        DebugConsole.log("CommonAuth", "[CALL] _login keycloak.init");

        // keycloak login
        CommonAuth.keycloak.init({
            onLoad: 'check-sso',
            silentCheckSsoRedirectUri: CommonAuthConfig.CHECK_SSO_REDIRECT_URI,
        }).then((authenticated) => {
            DebugConsole.log("CommonAuth", "[INFO] _login authenticated", authenticated);
            if(!authenticated) {
                // Login failure - ログイン失敗
                throw "not authenticated";
            }

            // Contents of token - tokenの内容
            DebugConsole.log("CommonAuth", "[INFO] _login keycloak.tokenParsed", CommonAuth.keycloak.tokenParsed);

            // Token expired event - tokenの有効期限切れのイベント
            CommonAuth.keycloak.onTokenExpired = CommonAuth._onTokenExpired;

            // Set automatic token update - tokenの自動更新を設定
            DebugConsole.log("CommonAuth", "[INFO] update CommonAuth._lastTimeToGetToken");
            CommonAuth._lastTimeToGetToken = (new Date()).getTime();

            // tart timer for token auto refresh - トークンの自動更新のタイマーを開始する
            // setInterval(()=>{CommonAuth._autoRefreshToken()}, CommonAuthConfig.TOKEN_CHECK_INTERVAL * 1000);
            let interval_worker = new Worker(CommonAuthConfig.COMMON_AUTH_SCRIPT_PATH + '/exastro-common-auth-interval-worker.js');
            interval_worker.addEventListener('message', (e) => {CommonAuth._autoRefreshToken()});
            interval_worker.postMessage(CommonAuthConfig.TOKEN_CHECK_INTERVAL * 1000);

        }).catch((e) => {
            // If authentication fails, log in - 認証に失敗した時はログインへ
            DebugConsole.log("CommonAuth", "[INFO] _login call keycloak.login");
            CommonAuth.keycloak.login({redirectUri: location.href});
        });
    },

    /**
     * Register the event after successful authentication - 認証成功後のイベントを登録します
     * @param {function} onauthsuccess
     */
    "onAuthSuccess": function(onauthsuccess) {

        if(CommonAuth.keycloak.authenticated) {
            setTimeout(() => {onauthsuccess();}, 0);
        } else {
            CommonAuth.keycloak.onAuthSuccess = onauthsuccess;
        }
    },

    /**
     * Returns whether it is authenticated - 認証されているかどうかを返します
     * @returns {boolean} true: Authenticated - 認証済み
     */
    "isAuthenticated": function() {
        return CommonAuth.keycloak.authenticated;
    },

    /**
     * Returns a token - tokenを返します
     * @returns {string} token
     */
    "getToken": function() {
        if(!CommonAuth.keycloak.authenticated) {
            throw "not authenticated";
        }
        if(CommonAuth.keycloak.isTokenExpired(0)) {
            // tokenの有効期限が切れている場合、再ログインへ
            CommonAuth.logout();
            throw "Token Expired";
        }
        DebugConsole.log("CommonAuth", "[INFO] update CommonAuth._lastTimeToGetToken");
        CommonAuth._lastTimeToGetToken = (new Date()).getTime();

        return CommonAuth.keycloak.token;
    },

    /**
     * Returns the user ID - ユーザIDを返します
     * @returns {string} userid
     */
    "getUserId": function() {
        if(!CommonAuth.keycloak.authenticated) {
            throw "not authenticated";
        }
        return CommonAuth.keycloak.tokenParsed.sub;
    },

    /**
     * Returns the username - ユーザ名を返します
     * @returns {string} username
     */
    "getUserName": function() {
        if(!CommonAuth.keycloak.authenticated) {
            throw "not authenticated";
        }
        if(CommonAuth.keycloak.tokenParsed.name) {
            return CommonAuth.keycloak.tokenParsed.name;
        } else {
            return CommonAuth.keycloak.tokenParsed.preferred_username;
        }
    },

    /**Returns the Preferred Username (login username)
     *
     * @returns {string} Preferred Username (login username)
     */
    "getPreferredUsername" : function() {
        if(!CommonAuth.keycloak.authenticated) {
            throw "not authenticated";
        }
        return CommonAuth.keycloak.tokenParsed.preferred_username;
    },

    /**
     * Returns a list of roles - ロールの一覧を返します
     * @returns {array} roles
     */
    "getRoles": function() {
        if(!CommonAuth.keycloak.authenticated) {
            throw "not authenticated";
        }
        try {
            return CommonAuth.keycloak.tokenParsed.resource_access[CommonAuth._getLoginClient()].roles;
        } catch(e) {
            return [];
        }
    },

    /**
     * Returns the language - 言語を返します
     * @returns {string} language
     */
    "getLanguage": function () {
        if(!CommonAuth.keycloak.authenticated) {
            throw "not authenticated";
        }
        if(typeof CommonAuth.keycloak.tokenParsed.locale === "undefined") {
            return CommonAuthConfig.DEFAULT_LANGUAGE;
        } else {
            return CommonAuth.keycloak.tokenParsed.locale;
        }
    },

    /**
     * Returns the realm - レルムを返します
     * @returns {string} realm
     */
    "getRealm": function() {
        return window.location.pathname.split("/")[1];
    },

    /**
     * logout - ログアウトします
     *  redirectUriを指定しない場合は、再ログイン後にTOP画面に遷移します
     * @param {string} redirectUri - Optional param
     */
    "logout": function(redirectUri) {
        let uri = null;
        if((typeof redirectUri) === "undefined") {
            uri = CommonAuth._getTopURL();
        } else {
            uri = redirectUri;
        }
        CommonAuth.keycloak.logout({redirectUri: uri});
    },

    /**
     * Force refresh the token - tokenを強制的にリフレッシュします
     * @returns {Promise}
     */
    "refreshTokenForce": function() {
        return new Promise((resolve,reject) => {
                CommonAuth.keycloak.updateToken(Number.MAX_VALUE).then(() => {
                    DebugConsole.log("CommonAuth", "[INFO] update CommonAuth._lastTimeToGetToken");
                    CommonAuth._lastTimeToGetToken = (new Date()).getTime();
                    resolve();
                }).catch(() => {
                    reject();
                });
            });
    },

    /**
     * check authority - 権限の有無をチェックする
     * @param {string} authority
     * @returns {boolean}
     */
    "hasAuthority": function(authority) {
        try {
            if( CommonAuth.keycloak.tokenParsed.resource_access[CommonAuth.getRealm() + "-workspaces"].roles.indexOf(authority) !== -1 ) {
                return true;
            } else {
                return false;
            }
        } catch(e) {
            return false;
        }
    },

    /**
     * get accessable workspaces - アクセス可能なワークスペースを返します
     * @returns {array} array of workspace_id
     */
    "getAccessibleWorkspaces": function() {
        try {
            return CommonAuth.keycloak.tokenParsed.resource_access[CommonAuth.getRealm() + "-workspaces"].roles.filter(
                (role) => {return role.substring(0,1) !== '_'});
        } catch(e) {
            return [];
        }
    },

    /**
     * get management workspaces - ワークスペース管理者検眼のあるワークスペースを返します
     * @returns {array} array of workspace_id
     */
    "getAdminWorkspaces": function() {
        try {
            let workspaces = [];
            CommonAuth.keycloak.tokenParsed.resource_access[CommonAuth.getRealm() + "-workspaces"].roles.forEach(
                (role) => { if(CommonAuth.isAdminWorkspaceAuthority(role)) { workspaces.push(CommonAuth.authorityNameToWorkspaceId(role)); } });
            return workspaces;
        } catch(e) {
            return [];
        }
    },

    /**
     * Determines if the specified authority is that of a workspace administrator
     * 指定権限がワークスペース管理者の権限かを判別します
     * @param {string} authorityName
     * @returns {boolean} true: workspace admin / false: other
     */
    "isAdminWorkspaceAuthority": function (authorityName) {
        return (authorityName.match(/^_.*-admin$/g)? true: false);
    },

    /**
     * Returns the workspace id for which the given workspace admin permission is for
     * 指定のワークスペース管理者権限が対象とするワークスペースIDを返します
     * @param {string} authorityName
     * @returns {string} workspace_id
     */
    "authorityNameToWorkspaceId": function(authorityName) {
        if(CommonAuth.isAdminWorkspaceAuthority(authorityName)) {
            return authorityName.replace(/^_/g, "").replace(/-admin$/g,"");
        } else {
            return null;
        }
    },

    /**
     * Returns the admin privilege name for the given workspace id
     * 指定のワークスペースIDの管理者権限名を返します
     * @param {string} workspace_id
     * @returns {string} workspace admin authority name
     */
    "workspaceIdToAdminRoleName": function(workspace_id) {
        return "_" + workspace_id + "-admin";
    },

    /**
     * The process of calling token updates on a regular basis - トークンの更新を定期的に呼び出す処理
     */
    "_autoRefreshToken": function() {
        try {
            let nowTime = (new Date()).getTime();
            if(CommonAuthConfig.TOKEN_AUTO_REFRESH === -1 || nowTime <= CommonAuth._lastTimeToGetToken + CommonAuthConfig.TOKEN_AUTO_REFRESH * 1000) {

                // Renew the token indefinitely or until a certain amount of time has passed since the last request for the token.
                // - 無制限またはトークンの最後の要求から一定の時間が経過するまで、トークンを更新します

                DebugConsole.log("CommonAuth", "[CALL] keycloak.updateToken");
                CommonAuth.keycloak.updateToken(CommonAuthConfig.TOKEN_REFRESH_TIMMING).then((refreshed)=>{
                    if(refreshed) {
                        DebugConsole.log("CommonAuth", "[INFO] keycloak.token refreshed");
                    }
                }).catch(() => {
                    CommonAuth.keycloak.logout({redirectUri: location.href});
                });
            }
        } catch(e) {
            CommonAuth.keycloak.logout({redirectUri: location.href});
        }
    },

    /**
     * Token expired event - tokenの有効期限切れのイベント
     */
    "_onTokenExpired": function() {
        DebugConsole.log("CommonAuth", "[INFO] keycloak.onTokenExpired");
        CommonAuth.keycloak.logout({redirectUri: location.href});
    },

    /**
     * Returns the keycloak.init call parameter - keycloak.init呼び出しパラメーターを返します
     * @returns {json} keycloak.init parameter
     */
    "_getKeycloakConfig": function() {
        let config = CommonAuthConfig.KEYCLOAK_CONFIG;
        config.realm = CommonAuth.getRealm();
        config.clientId = CommonAuth._getLoginClient();
        return config;
    },

    /**
     * Returns the client id of the keycloak to log in - ログインするkeycloakのclient idを返します
     * @returns
     */
    "_getLoginClient": function() {
        return CommonAuthConfig.LOGIN_CLIENT.replace(/%{RELMNAME}/g, CommonAuth.getRealm());
    },

    /**
     * Returns the top URL - トップのURLを返します
     * @returns {string} top url
     */
    "_getTopURL": function() {
        return window.location.origin + window.location.pathname.split("/").slice(0,2).join("/") + "/platform/";
    },
}

// Initialize keycloak adaptor - keycloak adaptor を初期化します
CommonAuth.keycloak = new Keycloak(CommonAuth._getKeycloakConfig());

// Keycloak login process after page load - ページロード後にkeycloakのログイン処理を行います
window.addEventListener('DOMContentLoaded', () => { CommonAuth._login() });

// Rewrite the final time so that automatic update of token continues even if click operation is not performed getToken()
// - getToken()を行わない、click操作でもtokenの自動更新を継続するように最終時間を書き換え
window.addEventListener('click', () => {
    DebugConsole.log("CommonAuth", "[INFO] update CommonAuth._lastTimeToGetToken");
    CommonAuth._lastTimeToGetToken = (new Date()).getTime();
});

// Debug
// DebugConsole.setOutputClass('CommonAuth');
