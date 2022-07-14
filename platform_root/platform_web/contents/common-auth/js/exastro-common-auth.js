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
const DebugConsole = {
    "_outputClass": [],
    "log": function(logClass, logText, variable) {
        try {
            if(this._outputClass.indexOf(logClass) !== -1) {
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
    "setOutputClass": function(logClass) {
        if(this._outputClass.indexOf(logClass) === -1) {
            this._outputClass.push(logClass);
        }
    }
}

const CommonAuth = {
    // keycloak javascript adaptor instance
    "keycloak": null,

    // Last Time To Get Token
    "_lastTimeToGetToken": (new Date()).getTime(),

    //
    // keycloak login
    //
    "_login": function() {
        DebugConsole.log("CommonAuth", "[CALL] _login keycloak.init");

        this.keycloak.init({
            onLoad: 'check-sso',
            silentCheckSsoRedirectUri: CommonAuthConfig.CHECK_SSO_REDIRECT_URI,
        }).then((authenticated) => {
            DebugConsole.log("CommonAuth", "[INFO] _login authenticated", authenticated);
            if(!authenticated) {
                throw "not authenticated";
            }

            DebugConsole.log("CommonAuth", "[INFO] _login keycloak.tokenParsed", this.keycloak.tokenParsed);

            this.keycloak.onTokenExpired = this._onTokenExpired;

            this._lastTimeToGetToken = (new Date()).getTime();
            setInterval(()=>{this._autoRefreshToken()}, CommonAuthConfig.TOKEN_CHECK_INTERVAL * 1000);
        }).catch((e) => {
            DebugConsole.log("CommonAuth", "[INFO] _login call keycloak.login");
            this.keycloak.login({redirectUri: location.href});
        });
    },
    "onAuthSuccess": function(onauthsuccess) {
        if(this.keycloak.authenticated) {
            setTimeout(() => {onauthsuccess();}, 0);
        } else {
            this.keycloak.onAuthSuccess = onauthsuccess;
        }
    },
    "isAuthenticated": function() {
        return this.keycloak.authenticated;
    },
    "getToken": function() {
        if(!this.keycloak.authenticated) {
            throw "not authenticated";
        }
        if(this.keycloak.isTokenExpired()) {
            return null;
        }
        this._lastTimeToGetToken = (new Date()).getTime();

        return this.keycloak.token;
    },
    "getUserId": function() {
        if(!this.keycloak.authenticated) {
            throw "not authenticated";
        }
        return this.keycloak.tokenParsed.sub;
    },
    "getUserName": function() {
        if(!this.keycloak.authenticated) {
            throw "not authenticated";
        }
        if(this.keycloak.tokenParsed.name) {
            return this.keycloak.tokenParsed.name;
        } else {
            return this.keycloak.tokenParsed.preferred_username;
        }
    },
    "getRoles": function() {
        if(!this.keycloak.authenticated) {
            throw "not authenticated";
        }
        return this.keycloak.tokenParsed.resource_access[this._getLoginClient()].roles;
    },
    "getLanguage": function () {
        if(!this.keycloak.authenticated) {
            throw "not authenticated";
        }
        return this.keycloak.tokenParsed.locale;
    },
    "logout": function() {
        this.keycloak.logout({redirectUri: location.href});
    },
    // "refreshTokenForce": function() {
    //     return new Promise(() => this.keycloak.updateToken(Number.MAX_VALUE);
    // },
    "_autoRefreshToken": function() {
        let nowTime = (new Date()).getTime();
        if(CommonAuthConfig.TOKEN_AUTO_REFRESH === -1 || nowTime <= this._lastTimeToGetToken + CommonAuthConfig.TOKEN_AUTO_REFRESH * 1000) {
            DebugConsole.log("CommonAuth", "[CALL] keycloak.updateToken");
            this.keycloak.updateToken(CommonAuthConfig.TOKEN_REFRESH_TIMMING).then((refreshed)=>{
                if(refreshed) {
                    DebugConsole.log("CommonAuth", "[INFO] keycloak.token refreshed");
                }
            });
        }
    },
    "_onTokenExpired": function() {
        CommonAuth.keycloak.logout({redirectUri: location.href});
    },
    "_getKeycloakConfig": function() {
        let config = CommonAuthConfig.KEYCLOAK_CONFIG;
        config.realm = this._getRealm();
        config.clientId = this._getLoginClient();
        return config;
    },
    "_getRealm": function() {
        return window.location.pathname.split("/")[1];
    },
    "_getLoginClient": function() {
        return CommonAuthConfig.LOGIN_CLIENT.replace(/%{RELMNAME}/g, this._getRealm());
    },
    "_getTopURL": function() {
        return window.location.pathname.split("/").slice(0,2).join("/");
    },
}

CommonAuth.keycloak = new Keycloak(CommonAuth._getKeycloakConfig());

window.addEventListener('DOMContentLoaded', () => { CommonAuth._login() });
