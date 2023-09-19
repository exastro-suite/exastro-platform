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

    if(CommonAuth.isPlatformAdminSite()) {
        topicPaths.unshift(
            {"text": getText("000-80001", "メインメニュー"), "href": location_conf.href.menu.platform_admin_site.toppage}
        );
    } else {
        topicPaths.unshift(
            {"text": getText("000-80001", "メインメニュー"), "href": location_conf.href.menu.organization_user_site.toppage.replace(/{organization_id}/g, CommonAuth.getRealm())}
        );
    }
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
    if(CommonAuth.isPlatformAdminSite()) {
        $('.menuList').empty().append(`
            <li class="menuItem"><a class="menuLink" id="menu_organizations" href="#" tabindex="-1">${getText("000-80037", "オーガナイゼーション管理")}</a></li>
            <li class="menuItem"><a class="menuLink" id="menu_plans" href="#">${getText("000-80038", "リソースプラン管理")}</a></li>
            <li class="menuItem"><a class="menuLink" id="menu_system_settings" href="#">${getText("000-80039", "システム設定")}</a></li>
            <li class="menuItem"><a class="menuLink" id="menu_keycloak" href="#" target="exastro_platform_keycloak">${getText("000-80040", "keycloakコンソール")}</a></li>
        `);
        $('#menu_organizations').attr('href', location_conf.href.organizations.list);
        // $('#menu_plans').attr('href', location_conf.href.plans.list);
        // $('#menu_system_settings').attr('href', location_conf.href.system_settings.top);
        $('#menu_keycloak').attr('href', location_conf.href.keycloak.console);
    } else {
        $('.menuList').empty().append(`
            <li class="menuItem"><a class="menuLink" id="menu_workspace" href="#" tabindex="-1">${getText("000-80005", "ワークスペース管理")}</a></li>
            <li class="menuItem"><a class="menuLink" id="menu_account_management" href="#" style="display: none;">${getText("000-80006", "ユーザー管理")}</a></li>
            <li class="menuItem"><a class="menuLink" id="menu_role_management" href="#" style="display: none;">${getText("000-80007", "ロール管理")}</a></li>
        `);

        $('#menu_workspace').attr('href', location_conf.href.workspaces.list.replace(/{organization_id}/g, CommonAuth.getRealm()));
        $('#menu_account_management').attr('href', location_conf.href.users.list.replace(/{organization_id}/g, CommonAuth.getRealm()));
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

    if(curent != null) {
        $(`#${curent}`).addClass("current");
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

function call_api_promise_noMessage(ajaxparam) {
    return new Promise((resolve, reject) => {
        console.log(`[CALL] ${ajaxparam.type} ${ajaxparam.url}`);
        console.log(ajaxparam);
        $.ajax(ajaxparam).done(
            function(data, status, jqXHR) {
                console.log(`[DONE] ${ajaxparam.type} ${ajaxparam.url} status=${jqXHR.status}`);
                console.log(data);
                resolve({data: data, status: status, jqXHR: jqXHR});
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
                reject({jqXHR: jqXHR, textStatus: textStatus, errorThrown: errorThrown});
            }
        );
    });
}

function alertMessageApiError(jqXHR, textStatus, errorThrown) {
    let msg;
    try {
        msg = `status:[${jqXHR.status}]`
        msg += `\nmessage_id:[${jqXHR.responseJSON.result}]\n${jqXHR.responseJSON.message}`;
    } catch(e) { }

    alert(msg);
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
                close: { text: getText("000-80011", "閉じる"), action: "normal" }
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
                ok: { text: getText("000-80012", "ＯＫ"), action: "positive" },
                cancel: { text: getText("000-80013", "キャンセル"), action: "normal" }
            }
        },
    },
    {
        ok: function() {
            $(dialog.$.dbody).find()
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

function deleteConfirmMessage(title, message, deleteResources, cautionMessage, input, onOk = null, onCancel = null) {
    const dialog = new Dialog({
        mode: 'modeless',
        position: 'center',
        width: 'auto',
        header: {
            title: title,
        },
        footer: {
            button: {
                ok: { text: '<span class="iconButtonIcon icon icon-trash"></span>' + getText("000-80014", "はい、削除します"), action: "danger" },
                cancel: { text: getText("000-80013", "キャンセル"), action: "normal" }
            }
        },
    },
    {
        ok: function() {
            if($(dialog.$.dbody).find(".confirm_yes").val() != input) {
                $(dialog.$.dbody).find(".validate_error").css("display", "");
                $(dialog.$.dbody).find(".confirm_yes").focus();
                return;
            }
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

    let content = "";
    content += '<div class="alertMessage" style="margin-left: 30px; margin-right: 30px;">'
    content += message + '<br>';
    if((typeof deleteResources) == "string") {
        content += '<ul style="list-style-type:disc; padding-left:30px; background-color: #FFFFEE;"><li>' + fn.cv(deleteResources, "", true) + '</li></ul>'
    } else {
        content += '<div style="max-height: 200px; overflow: auto;">'
        content += '<ul style="list-style-type:disc; padding-left:30px; background-color: #FFFFEE;">' + deleteResources.map((value, i) => { return '<li>' + fn.cv(value, "", true) + '</li>'; }).join("") + '</ul>'
        content += '</div>'
    }
    if(cautionMessage != null && cautionMessage != "" ) {
        content += '<span class="caution_message">' + cautionMessage+ '</span><br>'
    }
    content += '<hr>' + getText("000-80015", '続行する場合は <span style="font-weight: bold;">{0}</span> と入力してください。', fn.cv(input, "", true)) + '<br>'
    content += '<input class="confirm_yes inputText input" type="text" maxlength="' + input.length + '">'
    content += '<span class="validate_error" style="display:none;">' + getText("000-80016",'<span style="font-weight: bold;">{0}</span> と入力してください',fn.cv(input, "", true)) + '</span>'
    content += '</div>';

    dialog.open(content);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   Organizations Common
//
////////////////////////////////////////////////////////////////////////////////////////////////////
const OrganizationsCommon = {
    validate: {
        //
        // validate organization id
        //
        organization_id: function(organization_id) {
            if(organization_id === "") {
                return {
                    "result": false,
                    "message": getText("400-00011", "必須項目が不足しています。({0})", getText("000-00103", "オーガナイゼーションID"))
                }
            } else if(organization_id.replace(/[a-zA-Z0-9_-]/g,"") !== "") {
                return {
                    "result": false,
                    "message": getText("400-00017", "指定できない文字が含まれています。(項目:{0},指定可能な文字:{1})",
                                    getText("000-00103", "オーガナイゼーションID"),
                                    getText("000-31001", "半角英数・ハイフン・アンダースコア")
                                )
                }

            } else if( ! organization_id.match(/^[a-zA-Z]/)) {
                return {
                    "result": false,
                    "message": getText("400-00014", "先頭の文字にアルファベット以外が指定されています。({0})", getText("000-00103", "オーガナイゼーションID"))
                }
            } else {
                return {
                    "result": true,
                    "message": ""
                }
            }
        },

        //
        // validate organization name
        //
        organization_name: function(organization_name) {
            if(organization_name === "") {
                return {
                    "result": false,
                    "message": getText("400-00011", "必須項目が不足しています。({0})", getText("000-00104", "オーガナイゼーション名"))
                }
            } else {
                return {
                    "result": true,
                    "message": ""
                }
            }
        }

    },

    // ステータスによる有効無効チェック
    // enabled/disabled check by status
    enabled_check: {
        edit_button: function(status) {
            if(status === "Organization Create Complete") {
                return true;
            } else {
                return false;
            }
        }
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   Workspaces Common
//
////////////////////////////////////////////////////////////////////////////////////////////////////
const WorkspacesCommon = {
    validate: {
        //
        // validate workspace id
        //
        workspace_id: function(workspace_id) {
            if(workspace_id === "") {
                return {
                    "result": false,
                    "message": getText("400-00011", "必須項目が不足しています。({0})", getText("000-00101", "ワークスペースID"))
                }
            } else if(workspace_id.replace(/[a-zA-Z0-9_-]/g,"") !== "") {
                return {
                    "result": false,
                    "message": getText("400-00017", "指定できない文字が含まれています。(項目:{0},指定可能な文字:{1})",
                                    getText("000-00101", "ワークスペースID"),
                                    getText("000-31001", "半角英数・ハイフン・アンダースコア")
                                )
                }

            } else if( ! workspace_id.match(/^[a-zA-Z]/)) {
                return {
                    "result": false,
                    "message": getText("400-00014", "先頭の文字にアルファベット以外が指定されています。({0})", getText("000-00101", "ワークスペースID"))
                }
            } else {
                return {
                    "result": true,
                    "message": ""
                }
            }
        },

        //
        // validate workspace name
        //
        workspace_name: function(workspace_name) {
            if(workspace_name === "") {
                return {
                    "result": false,
                    "message": getText("400-00011", "必須項目が不足しています。({0})", getText("000-00102", "ワークスペース名"))
                }
            } else {
                return {
                    "result": true,
                    "message": ""
                }
            }
        },

        //
        // validate environments
        //
        environments: function(environments) {
            const MAX_LENGTTH_ENVRONMENT = 40;

            environments_arr = environments.split(/\r\n|\r|\n/).map(i => i.trim()).filter(i => i.length > 0);

            if(environments_arr.filter(i => i.length > MAX_LENGTTH_ENVRONMENT).length > 0) {
                return {
                    "result": false,
                    "message": getText("400-00012", "指定可能な文字数を超えています。(項目:{0},最大文字数:{1})", getText("000-00105", "環境名"), MAX_LENGTTH_ENVRONMENT)
                }
            } else if(Array.from(new Set(environments_arr)).length !== environments_arr.length) {
                return {
                    "result": false,
                    "message": getText("400-00019", "指定された値が重複しています。（項目:{0}）", getText("000-00105", "環境名"))
                }
            } else {
                return {
                    "result": true,
                    "message": ""
                }
            }
        }
    }
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

    "isAllowedDeleteRole": function(role) {
        // Can be deleted with the same privileges as role editing
        // ロール編集と同じ権限で削除可能
        return RolesCommon.isAllowedEditRole(role);
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
                            roleText.push(getText("000-00118", workspaces[workspacesIndex].name + ":使用", workspaces[workspacesIndex].name));

                        } else if(CommonAuth.isAdminWorkspaceAuthority(authority.name)) {
                            let workspace_id = CommonAuth.authorityNameToWorkspaceId(authority.name);
                            let workspacesIndex = workspaces.findIndex((i) => {return i.id == workspace_id});
                            if( workspacesIndex != -1) {
                                roleText.push(getText("000-00119", workspaces[workspacesIndex].name + ":管理", workspaces[workspacesIndex].name));
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

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   Maintenance mode
//
////////////////////////////////////////////////////////////////////////////////////////////////////
function maintenanceMode() {
    call_api_promise({
        type: "GET",
        url: api_conf.api["maintenance-mode-setting"].get.replace('{organization_id}', CommonAuth.getRealm()),
        headers: {
            Authorization: "Bearer " + CommonAuth.getToken(),
        },
        dataType: "json",
    }).then(function( result ){
        if ( result.data && result.message === 'SUCCESS' && result.data.data_update_stop === '1') {
            const container = document.getElementById('container');
            const message = document.querySelector('.modeMessageText');
            if ( container !== null && message !== null ) {
                container.classList.add('inMaintenanceMode');
                message.textContent = 'メンテナンス中のため、ワークスペース作成を行うことができません。';
            }
        }
    }).catch(function( error ){
        console.error( error );
    });
}