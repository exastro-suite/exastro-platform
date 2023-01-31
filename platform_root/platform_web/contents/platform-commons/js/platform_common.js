/*
#   Copyright 2019 NEC Corporation
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

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   Paging
//
////////////////////////////////////////////////////////////////////////////////////////////////////
const DEFAULT_ROWS_PER_PAGE = 100;


////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   Get Text Multi Language Support
//
////////////////////////////////////////////////////////////////////////////////////////////////////
function getText(textId, originText, ...args){

    // textIdが存在しない場合は、原文を表示
    // If textId does not exist, display original
    let text = originText;

    try {
        // textId存在チェック
        // textId existence check
        if(textId in langArray){
            text = (langArray[textId]);
        }

        for(var i = 0; i < args.length; i++){
            // {0}, {1}..に埋め込む変数を第3引数以降（args）で指定した文字列に置き換える
            // Replace the variables embedded in {0}, {1}.. with the strings specified in the third and subsequent arguments (args)
            text = text.replace('{' + i + '}', args[i]);
        }
    } catch(e) {
        console.log( e.message );
    }
    return text;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   Append Script
//
////////////////////////////////////////////////////////////////////////////////////////////////////
function appendScript(url) {
    return new Promise((resolve, reject) => {
        console.log(`[CALL] appendScript:${url}`);
        var el = document.createElement('script');

        // 指定されたurlのsrcを組み込む
        // include the src of the given url
        el.src = url;
        el.onload = function() {
            console.log(`[DONE] appendScript:${url}`);
            resolve();
        }
        el.onerror = function() {
            console.log(`[ERROR] appendScript:${url}`);
            reject();
        }
        document.body.appendChild(el);
    });
};

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   Language Script
//
////////////////////////////////////////////////////////////////////////////////////////////////////
function loadLanguageText() {
    if (CommonAuth.getLanguage() == "en"){
        return appendScript("/_/platform-commons/js/language/en/text.js?ver=__BUILD_VERSION__");
    }
    else{
        return appendScript("/_/platform-commons/js/language/ja/text.js?ver=__BUILD_VERSION__");
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   Load Common Contents
//
////////////////////////////////////////////////////////////////////////////////////////////////////
function loadCommonContents() {
    return new Promise((resolve, reject) => {
        Promise.all([
            loadLanguageText()
        ]).then(() => {
            replaceLanguageText();
            resolve();
        }).catch((reason) => {
            reject(reason);
        });
    });
}

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   Display Language Text (html contents)
//
////////////////////////////////////////////////////////////////////////////////////////////////////
function replaceLanguageText() {
    //
    // html element inner text
    // sample:
    //  <html-element text-id="text id">default text</html-element>
    //
    $("[text-id]").each(function(index, element) {
        const $element = $(element);
        try {
            const textId = $element.attr('text-id');
            if(typeof textId !== typeof undefined && textId !== false) {
                $element.text(getText(textId, $element.text()));
            }
        } catch { }
    });
    //
    // html element attribute text
    // sample:
    //  <html-element attr-field="default text" attr-text-id="attr-field=text id,..."></html-element>
    //
    $("[attr-text-id]").each(function(index, element) {
        const $element = $(element);
        try {
            const attrTextId = $element.attr('attr-text-id');
            if(typeof attrTextId !== typeof undefined && attrTextId !== false) {
                for(let i of attrTextId.split(",")) {
                    const attr=i.replace(/=.*$/,"");
                    const tid=i.replace(/^.*=/,"");
                    $element.attr(attr, getText(tid, $element.attr(attr)));
                }
            }
        } catch { }
    });
}

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   Display Topic Path
//
////////////////////////////////////////////////////////////////////////////////////////////////////
function displayTopicPath(topicPaths) {
    topicPaths.unshift(
        {"text":"メインメニュー", "href": location_conf.href.menu.toppage.replace(/{organization_id}/g, CommonAuth.getRealm())}
    );
    let $topichPathList = $('.topichPathList');
    for(let i = 0; i < topicPaths.length; ++i ) {
        let topicPath = topicPaths[i];
        if(topicPaths.length > i + 1) {
            $topichPathList.append(
                `<li class="topichPathItem"><a class="topichPathLink" href="${topicPath.href}">${fn.cv(topicPath.text,'',true)}</a></li>`
            );
        } else {
            $topichPathList.append(
                `<li class="topichPathItem"><span class="topichPathCurrent">${fn.cv(topicPath.text,'',true)}</span></li>`
            );
        }
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   Display Menu
//
////////////////////////////////////////////////////////////////////////////////////////////////////
function displayMenu(curent) {
    $('.menuList').append(`
        <li class="menuItem"><a class="menuLink" id="menu_workspace" href="#" tabindex="-1">ワークスペース管理</a></li>
        <li class="menuItem"><a class="menuLink" id="menu_account_management" href="#" target="keycloak_management_console" style="display: none;">ユーザー管理</a></li>
        <li class="menuItem"><a class="menuLink" id="menu_role_management" href="#" style="display: none;">ロール管理</a></li>
    `);
    if(curent != null) {
        $(`#${curent}`).addClass("current");
    }

    $('#menu_workspace').attr('href', location_conf.href.workspaces.list.replace(/{organization_id}/g, CommonAuth.getRealm()));
    $('#menu_account_management').attr('href', location_conf.href.menu.account_manaagement.replace(/{organization_id}/g, CommonAuth.getRealm()));
    // $('#menu_account_management').attr('href', location_conf.href.users.list.replace(/{organization_id}/g, CommonAuth.getRealm()));
    $('#menu_role_management').attr('href', location_conf.href.roles.list.replace(/{organization_id}/g, CommonAuth.getRealm()));

    if (CommonAuth.hasAuthority("_og-usr-mt")) {
        $("#menu_account_management").css("display", "");
    }
    let adminWorkspaces = CommonAuth.getAdminWorkspaces();
    if (CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_OWNER_MAINTE)
    ||  CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_ROLE_USER)
    ||  CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_WS_ROLE_MAINTE)
    ||  CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_WS_ROLE_USER)
    ||  adminWorkspaces.length > 0) {
        $("#menu_role_management").css("display", "");
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   Finish Onload Progress
//
////////////////////////////////////////////////////////////////////////////////////////////////////
function finish_onload_progress() {
    $("ol.topichPathList").css("visibility", "");
    $("ul.menuList").css("display", "");
    $("#main").css("visibility", "");
    hide_progress();
}

function finish_onload_progress_at_error() {
    $("ol.topichPathList").css("visibility", "");
    displayMenu(null);
    $("ul.menuList").css("display", "");
    hide_progress();
}

function show_progress() {
    $(".containerLoading").css("display", "");
}
function hide_progress() {
    $(".containerLoading").css("display", "none");
}


////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   API Call
//
////////////////////////////////////////////////////////////////////////////////////////////////////
function call_api_promise(ajaxparam, api_description, succeed_httpcodes = [200])
{
    return new Promise((resolve, reject) => {
        console.log(`[CALL] ${ajaxparam.type} ${ajaxparam.url}`);
        console.log(ajaxparam);
        $.ajax(ajaxparam).done(
            function(data, status, xhr) {
                if(succeed_httpcodes.indexOf(xhr.status) !== -1) {
                    console.log(`[DONE] ${ajaxparam.type} ${ajaxparam.url}`);
                    console.log(data);
                    resolve(data);
                } else {
                    let msg = `status:[${xhr.status}]\nmessage_id:[${data.result}]\n${data.message}`;
                    console.log(`[ERROR] ${ajaxparam.type} ${ajaxparam.url}\n${msg}`);
                    console.log(ajaxparam);
                    alert(msg);
                    reject();
                }
            }
        ).fail(
            function(jqXHR, textStatus, errorThrown) {
                let msg;
                try {
                    msg = `status:[${jqXHR.status}]`
                    msg += `\nmessage_id:[${jqXHR.responseJSON.result}]\n${jqXHR.responseJSON.message}`;
                } catch(e) { }

                console.log(`[ERROR] ${ajaxparam.type} ${ajaxparam.url}\n${msg}`);
                console.log(ajaxparam);
                alert(msg);
                reject();
            }
        );
    });
}

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   Common Dialog
//
////////////////////////////////////////////////////////////////////////////////////////////////////
function alertMessage(title, message, onclose = null) {
    const dialog = new Dialog({
        mode: 'modeless',
        position: 'center',
        width: 'auto',
        header: {
            title: title,
        },
        footer: {
            button: {
                close: { text: "閉じる", action: "normal" }
            }
        },
    },
    {
        close: function() {
            dialog.close();
            if(onclose !== null) {
                onclose();
            }
        }
    });
    dialog.open('<div class="alertMessage" style="margin-left: 30px; margin-right: 30px;">'+ message +'</div>');
}

function confirmMessage(title, message, onOk = null, onCancel = null) {
    const dialog = new Dialog({
        mode: 'modeless',
        position: 'center',
        width: 'auto',
        header: {
            title: title,
        },
        footer: {
            button: {
                ok: { text: "ＯＫ", action: "positive" },
                cancel: { text: "キャンセル", action: "normal" }
            }
        },
    },
    {
        ok: function() {
            dialog.close();
            if(onOk !== null) {
                onOk();
            }
        },
        cancel: function() {
            dialog.close();
            if(onCancel !== null) {
                onCancel();
            }
        }
    });
    dialog.open('<div class="alertMessage" style="margin-left: 30px; margin-right: 30px;">'+ message +'</div>');
}

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   Role Common
//
////////////////////////////////////////////////////////////////////////////////////////////////////
const RolesCommon =
{
    "ROLE_KIND_ORGANIZATION":       "organization",
    "ROLE_KIND_WORKSPACE":          "workspace",

    "ORG_ROLE_ORG_MANAGER":         "_organization-manager",

    "ORG_AUTH_UPDATE":              "_og-upd",
    "ORG_AUTH_OWNER_MAINTE":        "_og-own-mt",
    "ORG_AUTH_ROLE_USER":           "_og-role-usr",
    "ORG_AUTH_USAGE_SITUATION":     "_og-usage",
    "ORG_AUTH_USER_MAINTE":         "_og-usr-mt",
    "ORG_AUTH_WS_ROLE_MAINTE":      "_og-ws-role-mt",
    "ORG_AUTH_WS_ROLE_USER":        "_og-ws-role-usr",
    "ORG_AUTH_WS_MAINTE":           "_og-ws-mt",

    "isAlllowedCreateRole": function() {
        return CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_WS_ROLE_MAINTE) || ( CommonAuth.getAdminWorkspaces().length > 0 );
    },

    "isSystemRole": function (role) {
        return role.name.match(/^_/)? true: false;
    },

    "isAllowedEditRole": function(role) {

        if(RolesCommon.isSystemRole(role)) {
            // システムで生成したロールは編集不可とする
            // System-generated roles are non-editable
            return false;
        }

        switch(role.kind) {
            case RolesCommon.ROLE_KIND_ORGANIZATION:
                // オーガナイゼーションロールの編集は不可
                // Organization role cannot be edited
                return false;

            case RolesCommon.ROLE_KIND_WORKSPACE:
                if(CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_WS_ROLE_MAINTE)) {
                    // オーガナイゼーションワークスペースロールメンテナンスのロールを持っている場合
                    // If you have the role of Organization Workspace Maintenance
                    return true;
                } else {
                    // オーガナイゼーションワークスペースロールメンテナンスのロールを持っていない場合
                    // If you don't have the role of Organization Workspace Maintenance

                    if(role.workspaces.length == 0) {
                        // ロールに結びついたワークスペースが無いときは、ワークスペース管理者権限では変更不可
                        // If there is no workspace associated with the role, it cannot be changed with workspace administrator privileges.
                        return false;
                    } else {
                        // ロールに結びついたワークスペース全てのワークスペース管理者権限があるかで決定する
                        // Determine whether you have workspace administrator privileges for all workspaces associated with the role
                        const adminWorkspaces = CommonAuth.getAdminWorkspaces();
                        return (
                            role.workspaces.findIndex((ws) => {
                                    return (adminWorkspaces.indexOf(ws.id) === -1);
                            }) === -1
                        );
                    }
                }
            default:
                return false;
        }
    },

    "isAllowedGrantRole": function(role) {
        switch(role.kind) {
            case RolesCommon.ROLE_KIND_ORGANIZATION:
                // オーガナイゼーションロールへのユーザー設定
                // User settings for organization roles

                if(role.name == RolesCommon.ORG_ROLE_ORG_MANAGER) {
                    // オーガナイゼーション管理者権限は、オーガナイゼーション管理者のメンテナンス権限の有無で決定する
                    // Organization administrator authority is determined by the presence or absence of organization administrator maintenance authority
                    return CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_OWNER_MAINTE);
                } else {
                    // オーガナイゼーション管理者権限以外は、オーガナイゼーションロールのユーザ設定権限で決定する
                    // Other than organization administrator privileges, determined by the user setting privileges of the organization role
                    return CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_ROLE_USER);
                }

            case RolesCommon.ROLE_KIND_WORKSPACE:
                // ワークスペースロールへのユーザー設定
                // User settings for workspace roles

                if(CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_WS_ROLE_USER)) {
                    // オーガナイゼーションレベルのワークスペースユーザ設定権限がある場合は許可する
                    //　Allow if you have organization-level workspace user settings permission
                    return true;
                }

                if(role.workspaces.length == 0) {
                    // ロールに結びついたワークスペースが無いときは、ワークスペース管理者権限では変更不可
                    // If there is no workspace associated with the role, it cannot be changed with workspace administrator privileges.
                    return false;
                } else {
                    // ロールに結びついたワークスペース全てのワークスペース管理者権限があるかで決定する
                    // Determine whether you have workspace administrator privileges for all workspaces associated with the role
                    const adminWorkspaces = CommonAuth.getAdminWorkspaces();
                    return (
                        role.workspaces.findIndex((ws) => {
                            return (adminWorkspaces.indexOf(ws.id) === -1);
                        }) === -1
                    );
                }

            default:
                return false;
        }
    },

    "getAuthorityTexts": function(role, workspaces) {
        let orgAuthText = {};

        orgAuthText[RolesCommon.ORG_AUTH_UPDATE]            = getText("000-00109", "オーガナイゼーション更新");
        orgAuthText[RolesCommon.ORG_AUTH_OWNER_MAINTE]      = getText("000-00110", "オーガナイゼーション管理者変更");
        orgAuthText[RolesCommon.ORG_AUTH_ROLE_USER]         = getText("000-00111", "オーガナイゼーションロール付与");
        orgAuthText[RolesCommon.ORG_AUTH_USAGE_SITUATION]   = getText("000-00113", "利用状況確認");
        orgAuthText[RolesCommon.ORG_AUTH_USER_MAINTE]       = getText("000-00114", "ユーザー管理");
        orgAuthText[RolesCommon.ORG_AUTH_WS_ROLE_MAINTE]    = getText("000-00115", "ワークスペースロール管理");
        orgAuthText[RolesCommon.ORG_AUTH_WS_ROLE_USER]      = getText("000-00116", "ワークスペースロール付与");
        orgAuthText[RolesCommon.ORG_AUTH_WS_MAINTE]         = getText("000-00117", "ワークスペース管理");

        switch(role.kind) {
            case 'organization':
                return role.authorities
                    .filter((i) => {return orgAuthText[i.name]? true: false})
                    .map((i) => {return orgAuthText[i.name]? orgAuthText[i.name]: "undefined:" + i.name});

            case 'workspace':
                if(!role.authorities) return [];

                let roleText = [];
                role.authorities.forEach((authority) => {
                    try {
                        let workspacesIndex = workspaces.findIndex((i) => {return i.id == authority.name});
                        if( workspacesIndex != -1) {
                            roleText.push(getText("400-00118", workspaces[workspacesIndex].name + ":使用", workspaces[workspacesIndex].name));

                        } else if(CommonAuth.isAdminWorkspaceAuthority(authority.name)) {
                            let workspace_id = CommonAuth.authorityNameToWorkspaceId(authority.name);
                            let workspacesIndex = workspaces.findIndex((i) => {return i.id == workspace_id});
                            if( workspacesIndex != -1) {
                                roleText.push(getText("400-00119", workspaces[workspacesIndex].name + ":管理", workspaces[workspacesIndex].name));
                            } else {
                                roleText.push(getText("400-00120", "権限の無いワークスペース"));
                            }
                        } else {
                            roleText.push(getText("400-00120", "権限の無いワークスペース"));
                        }
                    } catch(e) { console.log(e); return [];}
                });
                return Array.from(new Set(roleText)).sort();
            default:
                return [];
        }
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   User Common
//
////////////////////////////////////////////////////////////////////////////////////////////////////
const UsersCommon =
{

    "isAlllowedCreateUser": function() {
        return CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_USER_MAINTE) || ( CommonAuth.getAdminWorkspaces().length > 0 );
    },

    "isSystemUser": function (user) {
        return user.preferred_username.match(/^_/)? true: false;
    },

    "isAllowedEditUser": function(user) {

        if(UsersCommon.isSystemUser(user)) {
            // システムで生成したロールは編集不可とする
            // System-generated roles are non-editable
            return false;
        }
        return true;
    }
}
