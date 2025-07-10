/*
#   Copyright 2023 NEC Corporation
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
//   Max Mail count
//
////////////////////////////////////////////////////////////////////////////////////////////////////
const MAX_MAIL_COUNT = 100;

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   destination kind const defination
//
////////////////////////////////////////////////////////////////////////////////////////////////////
const DESTINATION_KIND_MAIL = 'Mail';
const DESTINATION_KIND_TEAMS = 'Teams';
const DESTINATION_KIND_TEAMS_WF = 'Teams_WF';
const DESTINATION_KIND_WEBHOOK = 'Webhook';

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   encryption method type port defatult value
//
////////////////////////////////////////////////////////////////////////////////////////////////////
const ENCRYPTION_METHOD_NONE = 25;
const ENCRYPTION_METHOD_SSL = 465;
const ENCRYPTION_METHOD_TLS = 587;

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
//   Json Key Link to Text
//
////////////////////////////////////////////////////////////////////////////////////////////////////
function json_key_link_to_text(json, key_parent) {
    var ret = "";
    console.log("json:" + json);
    for (var key in json){
        console.log("key:" + key);
        console.log("key_parent:" + key_parent);
        obj = json[key];
        if (isObject(obj)){
            ret = json_key_link_to_text(obj, key_parent + key + ".");
        }
        else{
            ret += key_parent + key + ": " + json[key] + "\n";
        }
    }
    return ret;
}

function isObject(value) {
    return value !== null && typeof value === 'object'
}

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   Array not empty count
//
////////////////////////////////////////////////////////////////////////////////////////////////////
function array_not_empty_count(arr) {
    var cnt = 0;
    if (arr !== ""){
        arr.forEach(str => {
            str = str.trim();
            if (str !== "") cnt++;
        });
    }

    return cnt;
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
            <li class="menuItem"><a class="menuLink" id="menu_settings_running_state" href="#">${getText("000-80039", "システム状態設定")}</a></li>
            <li class="menuItem"><a class="menuLink" id="menu_keycloak" href="#">${getText("000-80040", "Keycloakコンソール")}</a></li>
        `);
        $('#menu_organizations').attr('href', location_conf.href.organizations.list);
        $('#menu_plans').attr('href', location_conf.href.plans.list);
        $('#menu_settings_running_state').attr('href', location_conf.href.settings_running_state.top);
        $('#menu_keycloak').attr('href', location_conf.href.keycloak.console);
    } else {
        $('.menuList').empty().append(`
            <li class="menuItem"><a class="menuLink" id="menu_workspace" href="#" tabindex="-1">${getText("000-80005", "ワークスペース管理")}</a></li>
            <li class="menuItem">
                <a class="menuLink menuItemContent" id="menu_account_management" type="button" aria-expanded="false" aria-controls="menu_account_management_accordion_panel" href="#" style="display: none;">${getText("000-80006", "ユーザー管理")}</a>
                <ul id="menu_account_management_accordion_panel" class="menuItem--subGroup" aria-hidden="true">
                    <li><a class="menuLink ActionList--subGroup" id="menu_account_list" href="#">${getText("000-83001", "ユーザー一覧")}</a></li>
                    <li><a class="menuLink ActionList--subGroup" id="menu_account_bulk_actions" href="#">${getText("000-92002", "ユーザー一括登録・削除")}</a></li>
                </ul>
            </li>
            <li class="menuItem"><a class="menuLink" id="menu_role_management" href="#" style="display: none;">${getText("000-80007", "ロール管理")}</a></li>
            <li class="menuItem"><a class="menuLink" id="menu_settings_notifications" href="#">${getText("000-00183", "通知管理")}</a></li>

            <li class="menuItem"><a class="menuLink" id="menu_service_account_management" href="#" style="display: none;">${getText("000-80056", "サービスアカウント管理")}</a></li>

            <li class="menuItem">
                <a class="menuLink menuItemContent" id="menu_organization_setting" type="button" aria-expanded="false" aria-controls="menu_organization_setting_accordion_panel" href="#" style="display: none;">${getText("000-80054", "オーガナイゼーション設定")}</a>
                <ul id="menu_organization_setting_accordion_panel" class="menuItem--subGroup" aria-hidden="true">
                    <li><a class="menuLink ActionList--subGroup" id="menu_settings_mailserver" href="#" style="display: none;">${getText("000-88002", "メール送信サーバー設定")}</a></li>
                    <li><a class="menuLink ActionList--subGroup" id="menu_identity_providers" href="#" style="display: none;">${getText("000-80051", "アイデンティティー・プロバイダー")}</a></li>
                    <li><a class="menuLink ActionList--subGroup" id="menu_password_policy" href="#" style="display: none;">${getText("000-80055", "パスワードポリシー")}</a></li>
                </ul>
            </li>

            <li class="menuItem"><a class="menuLink" id="menu_auditlog" href="#" style="display: none;">${getText("000-91002", "監査ログ")}</a></li>
        `);

        $('#menu_workspace').attr('href', location_conf.href.workspaces.list.replace(/{organization_id}/g, CommonAuth.getRealm()));
        $('#menu_account_list').attr('href', location_conf.href.users.list.replace(/{organization_id}/g, CommonAuth.getRealm()));
        $('#menu_account_bulk_actions').attr('href', location_conf.href.users.bulk_actions.replace(/{organization_id}/g, CommonAuth.getRealm()));
        $('#menu_role_management').attr('href', location_conf.href.roles.list.replace(/{organization_id}/g, CommonAuth.getRealm()));
        $('#menu_settings_notifications').attr('href', location_conf.href.workspaces.settings.notifications.workspaces.replace(/{organization_id}/g, CommonAuth.getRealm()));
        $('#menu_service_account_management').attr('href', location_conf.href.workspaces.settings.service_account_users.workspace.replace(/{organization_id}/g, CommonAuth.getRealm()));
        $('#menu_settings_mailserver').attr('href', location_conf.href.settings.mailserver.replace(/{organization_id}/g, CommonAuth.getRealm()));
        $('#menu_identity_providers').attr('href', location_conf.href.keycloak.identity_providers.replace(/{organization_id}/g, CommonAuth.getRealm()));
        $('#menu_password_policy').attr('href', location_conf.href.keycloak.password_policy.replace(/{organization_id}/g, CommonAuth.getRealm()));
        $('#menu_auditlog').attr('href', location_conf.href.auditlog.download.replace(/{organization_id}/g, CommonAuth.getRealm()));

        if (CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_USER_MAINTE)) {
            $("#menu_account_management").css("display", "");
            $("#menu_account_management").attr("aria-expanded", "true");
            $("#menu_account_management_accordion_panel").attr("aria-hidden", "false");
        }
        let adminWorkspaces = CommonAuth.getAdminWorkspaces();
        if (CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_OWNER_MAINTE)
        ||  CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_ROLE_USER)
        ||  CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_WS_ROLE_MAINTE)
        ||  CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_WS_ROLE_USER)
        ||  adminWorkspaces.length > 0) {
            $("#menu_role_management").css("display", "");
        }

        if (CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_UPDATE)
        ||  CommonAuth.hasRealmManagementAuthority("manage-identity-providers")) {
            $("#menu_organization_setting").css("display", "");
            $("#menu_organization_setting").attr("aria-expanded", "true");
            $("#menu_organization_setting_accordion_panel").attr("aria-hidden", "false");
        }

        if (CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_UPDATE)) {
            $("#menu_settings_mailserver").css("display", "");
        }

        if (CommonAuth.getAdminWorkspaces().length > 0 ) {
            $("#menu_service_account_management").css("display", "");
        }

        if (CommonAuth.hasRealmManagementAuthority("manage-identity-providers")) {
            $("#menu_identity_providers").css("display", "");
        }
        if (CommonAuth.hasRealmManagementAuthority("manage-realm")) {
            $("#menu_password_policy").css("display", "");
        }
        if (CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_AUDIT_LOG)) {
            $("#menu_auditlog").css("display", "");
        }
    }

    if(curent != null) {
        const target = document.getElementById(curent);
        target.classList.add("current");

        // アコーディオンメニュー内であった場合、メニューを開く
        if (target.classList.contains("ActionList--subGroup")) {
            const parentMenu = target.closest(".menuItem");
            for (const child of parentMenu.children) {
                if (child.classList.contains("menuItemContent")) {
                    child.setAttribute("aria-expanded", "true");
                }
                if (child.classList.contains("menuItem--subGroup")) {
                    child.setAttribute("aria-hidden", "false");
                }
            }
        }
    }

    // アコーディオンメニューの開閉
    const triggers = document.querySelectorAll(".menuItemContent");
    triggers.forEach((trigger) => {
        const controls = trigger.getAttribute("aria-controls");
        const panel = document.getElementById(controls);
        trigger.addEventListener("click", (e) => {
            const target = e.currentTarget;
            const isOpen = target.getAttribute("aria-expanded") === "true";

            if (isOpen) {
                // アコーディオンを閉じる
                target.setAttribute("aria-expanded", "false");
                panel.setAttribute("aria-hidden", "true");
            } else {
                // アコーディオンを開く
                target.setAttribute("aria-expanded", "true");
                panel.setAttribute("aria-hidden", "false");
            }
        });
    });
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
                    if ('result' in jqXHR.responseJSON){
                        msg += `\nmessage_id:[${jqXHR.responseJSON.result}]\n${jqXHR.responseJSON.message}`;
                    }
                    else if ('detail' in jqXHR.responseJSON)
                    {
                        msg += ` ${jqXHR.responseJSON.title}\n${jqXHR.responseJSON.detail}`;
                    }
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

/**
 * JOBが完了するまで待ちます
 * @param {object} get_job_state_ajax_param     JOBの状態を取得するAPIを呼び出すajaxパラメータ
 * @param {function} is_complete_function       JOBの状態の結果から、JOBが完了しているかを返すfunction（JOBの状態を取得するAPIの結果を引数に渡します）
 * @param {int} polling_interval_sec            JOBの状態を取得するAPIを呼び出す間隔(秒)
 * @returns                                     JOBの完了まで待つPromise（JOBの状態を取得するAPIの最終の結果をresolveします）
 */
function waitUntilJobCompletes(
    get_job_state_ajax_param,
    is_complete_function,
    polling_interval_sec
) {
    return new Promise((resolve, reject) => {
        _waitUntilJobCompletes(get_job_state_ajax_param, is_complete_function, polling_interval_sec, resolve, reject);
    });
}

/**
 * JOB完了待ちの内部関数
 * @param {object} get_job_state_ajax_param
 * @param {function} is_complete_function
 * @param {int} polling_interval_sec
 * @param {function} resolve
 * @param {function} reject
 */
function _waitUntilJobCompletes(
    get_job_state_ajax_param,
    is_complete_function,
    polling_interval_sec,
    resolve,
    reject
) {
    // tokenの書き換え
    get_job_state_ajax_param.headers.Authorization = "Bearer " + CommonAuth.getToken();

    call_api_promise(get_job_state_ajax_param).then((result) => {
        if(is_complete_function(result)) {
            /* JOBが完了している場合、親関数(waitUntilJobCompletes)のresolveを実行する */
            resolve(result);
        } else {
            /* JOBが未完了の場合、interval後に再実行 */
            setTimeout(() => {
                _waitUntilJobCompletes(get_job_state_ajax_param, is_complete_function, polling_interval_sec, resolve, reject)
            }, polling_interval_sec * 1000);
        }
    }).catch((e) => {
        /* エラーの場合、親関数(waitUntilJobCompletes)のrejectを実行する */
        reject(e);
    })
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
        cautionHead = getText("000-80053", "注意")
        content += '<span class="caution_head">' + cautionHead+ '</span><br>'

        if((typeof cautionMessage) == "string") {
            content += '<ul style="list-style-type:disc; padding-left:30px; background-color: #FFFFEE;"><li class="caution_message">' + fn.cv(cautionMessage, "", true) + '</li></ul>'
        } else {
            content += '<div style="max-height: 200px; overflow: auto;">'
            content += '<ul style="list-style-type:disc; padding-left:30px; background-color: #FFFFEE;">' + cautionMessage.map((value, i) => { return '<li class="caution_message">' + fn.cv(value, "", true) + '</li>'; }).join("") + '</ul>'
            content += '</div>'
        }
    }
    content += '<hr>' + getText("000-80015", '続行する場合は <span style="font-weight: bold;">{0}</span> と入力してください。', fn.cv(input, "", true)) + '<br>'
    content += '<input class="confirm_yes inputText input" type="text" maxlength="' + input.length + '">'
    content += '<span class="validate_error" style="display:none;">' + getText("000-80016",'<span style="font-weight: bold;">{0}</span> と入力してください',fn.cv(input, "", true)) + '</span>'
    content += '</div>';

    dialog.open(content);
}

function CancellationConfirmMessage(title, message, deleteResources, cautionMessage, input, onOk = null, onCancel = null) {
    const dialog = new Dialog({
        mode: 'modeless',
        position: 'center',
        width: 'auto',
        header: {
            title: title,
        },
        footer: {
            button: {
                ok: { text: '<span class="iconButtonIcon icon"></span>' + getText("000-80045", "はい、解除します"), action: "danger" },
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
    },

    // MongoDB設定情報入力欄
    ita_option_service_settings: {
        add_mongodb_info_new: function(default_open, owner_enable){
            let content = "";
            if(default_open == true){
                content += `<div class="ci ita-option-services">`
            }else{
                content += `<div class="ci ita-option-services" style="display: none;">`
            }
            content += `
                    <span>${getText("000-85054", "OASEで利用するデータベースに接続するための設定を入力します。")}</span>
                    <br>
                    <span>${getText("000-85051", "Document Store")}</span>
                    <input type="text" value="mongodb" id="ita-option-service-database-name" maxlength="32" disabled>
                    <span class="icon icon-circle_question popup question-icon" title="${getText("000-85057", "mongodb固定です。")}"></span>
                    <br>
                    <span>${getText("000-85052", "自動払い出し")}</span>
                    `
            if(owner_enable == true){
                content += `<input type="checkbox" value="" id="ita-option-service-owner">`
            }else{
                content += `<input type="checkbox" value="" id="ita-option-service-owner" disabled>`
            }
            content += `
                    <span class="icon icon-circle_question popup question-icon" title="${getText("000-85058", "インストール時に設定したMongoDBを利用する場合はチェックを入れます。利用しない場合は、チェックを外しPython接続文字列を入力します。")}"></span>
                    <br>
                    <div id="edit-connection-string">
                        <span>${getText("000-85053", "Python接続文字列")}</span>
                        <span id="connection-string-input"><input type="text" value="" id="ita-option-service-connection-string" maxlength="512"></span>
                        <span class="icon icon-circle_question popup question-icon" title="${getText("000-85059", "利用するMongoDBのPython用接続文字列を入力します。&#13;&#10;例: mongodb://username:password@hostname:27017/")}"></span>
                        <br>
                    </div>
                    <span class="validate_error" id="message_connection_string"></span>
                </div>
            `;
            return content;
        },
        add_mongodb_info_edit: function(document_store){
            let database_name = document_store.name;
            let owner = document_store.owner;
            let connection_string = document_store.connection_string;
            let content = "";
            content += `<div class="ci ita-option-services">`;
            if(owner == false){
                content += `<span>${getText("000-85055", "Python接続文字列のみ変更できます。")}</span><br>`
            }
            content += `<span>${getText("000-85051", "Document Store")}: ${database_name}</span>`;
            content += `<span class="icon icon-circle_question popup question-icon" title="${getText("000-85057", "mongodb固定です。")}"></span>`;
            content += `<br><span>${getText("000-85052", "自動払い出し")}</span>`;
            if(owner == true){
                content += `<input type="checkbox" value="" id="ita-option-service-owner" checked="checked" disabled>`;
                content += `<span class="icon icon-circle_question popup question-icon" title="${getText("000-85058", "インストール時に設定したMongoDBを利用する場合はチェックを入れます。利用しない場合は、チェックを外しPython接続文字列を入力します。")}"></span>`;
            }else{
                content += `
                <input type="checkbox" value="" id="ita-option-service-owner" disabled>
                <span class="icon icon-circle_question popup question-icon" title="${getText("000-85058", "インストール時に設定したMongoDBを利用する場合はチェックを入れます。利用しない場合は、チェックを外しPython接続文字列を入力します。")}"></span>
                <br>
                <div id="edit-connection-string">
                    <span>${getText("000-85053", "Python接続文字列")}</span>
                    <span id="connection-string-input"><input type="text" value="" id="ita-option-service-connection-string" maxlength="512" placeholder="${connection_string}"></span>
                    <span class="icon icon-circle_question popup question-icon" title="${getText("000-85059", "利用するMongoDBのPython用接続文字列を入力します。&#13;&#10;例: mongodb://username:password@hostname:27017/")}"></span>
                    <br>
                    <span class="validate_error" id="message_connection_string"></span>
                </div>
                `;
            }
            content += '</div>';
            return content;
        },
        add_mongodb_info_detail: function(document_store){
            let database_name = document_store.name;
            let owner = document_store.owner;
            let connection_string = document_store.connection_string;
            let content = "";
            content += `<div class="ci ita-option-services">`;
            content += `<span>${getText("000-85051", "Document Store")}: ${database_name}</span>`;
            content += `<br><span>${getText("000-85052", "自動払い出し")}:</span>`;
            if(owner == true){
                content += `<input type="checkbox" value="" id="ita-option-service-owner" checked="checked" disabled>`;
            }else{
                content += `<input type="checkbox" value="" id="ita-option-service-owner" disabled>`
                content += `<br><span>${getText("000-85053", "Python接続文字列")}: ${connection_string}</span>`;
            }
            content += '</div>';
            return content;
        }
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   Plans Common
//
////////////////////////////////////////////////////////////////////////////////////////////////////
const PlansCommon = {
    validate: {
        //
        // validate plan id
        //
        plan_id: function(plan_id) {
            if(plan_id === "") {
                return {
                    "result": false,
                    "message": getText("400-00011", "必須項目が不足しています。({0})", getText("000-00103", "リソースプランID"))
                }
            } else if(plan_id.replace(/[a-zA-Z0-9_-]/g,"") !== "") {
                return {
                    "result": false,
                    "message": getText("400-00017", "指定できない文字が含まれています。(項目:{0},指定可能な文字:{1})",
                                    getText("000-00103", "リソースプランID"),
                                    getText("000-31001", "半角英数・ハイフン・アンダースコア")
                                )
                }

            } else if( ! plan_id.match(/^[a-zA-Z]/)) {
                return {
                    "result": false,
                    "message": getText("400-00014", "先頭の文字にアルファベット以外が指定されています。({0})", getText("000-00103", "リソースプランID"))
                }
            } else {
                return {
                    "result": true,
                    "message": ""
                }
            }
        },

        //
        // validate plan name
        //
        plan_name: function(plan_name) {
            if(plan_name === "") {
                return {
                    "result": false,
                    "message": getText("400-00011", "必須項目が不足しています。({0})", getText("000-00104", "リソースプラン名"))
                }
            } else {
                return {
                    "result": true,
                    "message": ""
                }
            }
        },
    },

    // ステータスによる有効無効チェック
    // enabled/disabled check by status
    enabled_check: {
        edit_button: function(status) {
            if(status === "plan Create Complete") {
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
    "ORG_AUTH_AUDIT_LOG":           "_og-audit-log",

    "ANSIBLE_EXECUTION_AGENT_ROLE": "ansible-execution-agent",
    "OASE_AGENT_ROLE":              "oase-agent",

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
        orgAuthText[RolesCommon.ORG_AUTH_AUDIT_LOG]         = getText("000-00204", "監査ログ");

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
    },

    "isServiceAccountUserRole": function(role, service_account_user_role_name){
        return service_account_user_role_name.includes(role.name);
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
    },

    "isServiceAccountUser": function(user) {
        return !(user.service_account_user_type === null) ? true: false;
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
                message.textContent = getText('000-80048', 'メンテナンス中のため、ワークスペース作成を行うことができません。');
            }
        }
    }).catch(function( error ){
        console.error( error );
    });
}

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   Settings Notifications Common
//
////////////////////////////////////////////////////////////////////////////////////////////////////
const settings_notifications_common = {

    "set_conditions": function() {

        const row_template_top = $('#conditions_list .datarow-template-top').clone(true).removeClass('datarow-template').addClass('datarow').prop('outerHTML');
        const row_template_2nd = $('#conditions_list .datarow-template-2nd').clone(true).removeClass('datarow-template-sub').addClass('datarow').prop('outerHTML');
        const row_template_3rd = $('#conditions_list .datarow-template-3rd').clone(true).removeClass('datarow-template-sub').addClass('datarow').prop('outerHTML');
        // 固定のイベントタイプを指定
        // Specify a fixed event type
        let html='';
        html += row_template_top
            .replace(/\${conditions_all_count}/g, 4)
            .replace(/\${conditions_group_name}/g, getText("000-87022", "OASE／イベント種別"))
            .replace(/\${conditions_group_count}/g, 4)
            .replace(/\${conditions_name}/g, getText("000-00153", '新規'))
            .replace(/\${conditions_key}/g, 'ita_event_type_new')
            .replace(/\${conditions_remarks}/g, getText("000-87023", "OASEで利用されるイベントの種別ごとに通知の有無を選択します。") + "<br>" +
            getText("000-87024", "　新規：OASEエージェントから収集、あるいは、外部システムから受け取った直後のイベント") + "<br>" +
            getText("000-87025", "　既知（判定済み）：いずれかのルールにマッチしたイベント") + "<br>" +
            getText("000-87026", "　既知（時間切れ）：一部の条件には当てはまったものの、全ての条件に当てはまらないまま、有効期限が切れたイベント") + "<br>" +
            getText("000-87027", "　未知：ルールやルール内の条件の一切にあてはまらなかったイベント"));
        html += row_template_3rd
            .replace(/\${conditions_name}/g, getText("000-00154", '既知（判定済み）'))
            .replace(/\${conditions_key}/g, 'ita_event_type_evaluated');
        html += row_template_3rd
            .replace(/\${conditions_name}/g, getText("000-00155", '既知（時間切れ）'))
            .replace(/\${conditions_key}/g, 'ita_event_type_timeout');
        html += row_template_3rd
            .replace(/\${conditions_name}/g, getText("000-00156", '未知'))
            .replace(/\${conditions_key}/g, 'ita_event_type_undetected');
        $("#conditions_list tbody").append(html);
        $("#conditions_list .datarow").css('display', '');
    },

    "set_destination_informations": function(kind, destination_informations) {
        if (kind === DESTINATION_KIND_MAIL){
            $("#form_destination_kind_mail").prop('checked', true);
            ret_mail = settings_notifications_common.get_mail_destination_informations(destination_informations);
            $("#form_destination_informations_mail_to").val(ret_mail.mail_to);
            $("#form_destination_informations_mail_cc").val(ret_mail.mail_cc);
            $("#form_destination_informations_mail_bcc").val(ret_mail.mail_bcc)
        }
        else if (kind === DESTINATION_KIND_TEAMS){
            $("#form_destination_kind_teams").prop('checked', true);
            $(".deprecatedTarget").css('display', '');
            destination_informations.forEach(function(element){
                $("#form_destination_informations_teams").val(fn.cv(element.webhook, '', false));
            });
        }
        else if (kind === DESTINATION_KIND_TEAMS_WF){
            $("#form_destination_kind_teams_wf").prop('checked', true);
            destination_informations.forEach(function(element){
                $("#form_destination_informations_teams_wf").val(fn.cv(element.url, '', false));
            });
        }
        else if (kind === DESTINATION_KIND_WEBHOOK){
            $("#form_destination_kind_webhook").prop('checked', true);
            destination_informations.forEach(function(element){
                $("#form_destination_informations_webhook").val(fn.cv(element.url, '', false));
                $("#form_destination_informations_webhook_header").val(fn.cv(element.header, '', false));
            });
        }
    },

    "set_destination_informations_text": function(kind, destination_informations) {
        if (kind === DESTINATION_KIND_MAIL){
            ret_mail = settings_notifications_common.get_mail_destination_informations(destination_informations);
            $("#text_destination_informations_mail_to").css('display', '');
            $("#hr_destination_informations_mail_to").css('display', '');
            $("#text_destination_informations_mail_cc").css('display', '');
            $("#hr_destination_informations_mail_cc").css('display', '');
            $("#text_destination_informations_mail_bcc").css('display', '');
            $("#text_destination_informations_mail_to").text("to: " + ret_mail.mail_to);
            $("#text_destination_informations_mail_cc").text("cc: " + ret_mail.mail_cc);
            $("#text_destination_informations_mail_bcc").text("bcc: " + ret_mail.mail_bcc)
        }
        else if (kind === DESTINATION_KIND_TEAMS){
            $("#text_destination_informations_teams").css('display', '');
            destination_informations.forEach(function(element){
                $("#text_destination_informations_teams").text(fn.cv(element.webhook, '', false));
            });
        }
        else if (kind === DESTINATION_KIND_TEAMS_WF){
            $("#text_destination_informations_teams_wf").css('display', '');
            destination_informations.forEach(function(element){
                $("#text_destination_informations_teams_wf").text(fn.cv(element.url, '', false));
            });
        }
        else if (kind === DESTINATION_KIND_WEBHOOK){
            $("#text_destination_informations_webhook").css('display', '');
            $("#text_destination_informations_webhook_header").css('display', '');
            destination_informations.forEach(function(element){
                $("#hr_destination_informations_webhook").css('display', '');
                $("#text_destination_informations_webhook").text("URL: " + fn.cv(element.url, '', false));
                $("#text_destination_informations_webhook_header").text("Header: " + fn.cv(element.header, '', false));
            });
        }
    },

    "get_mail_destination_informations": function(destination_informations) {
        var mail_to = "";
        var mail_cc = "";
        var mail_bcc = "";
        destination_informations.forEach(function(element){
            if (fn.cv(element.address_header, '', false) === "to"){
                mail_to += fn.cv(element.email, '', false) + ", ";
            }
            else if (fn.cv(element.address_header, '', false) === "cc"){
                mail_cc += fn.cv(element.email, '', false) + ", ";
            }
            else if (fn.cv(element.address_header, '', false) === "bcc"){
                mail_bcc += fn.cv(element.email, '', false) + ", ";
            }
        });
        if (mail_to.length > 0){
            mail_to = mail_to.slice( 0, -2 );
        }
        if (mail_cc.length > 0){
            mail_cc = mail_cc.slice( 0, -2 );
        }
        if (mail_bcc.length > 0){
            mail_bcc = mail_bcc.slice( 0, -2 );
        }
        return { mail_to: mail_to, mail_cc: mail_cc, mail_bcc: mail_bcc, }
    },

    "get_destination_informations": function() {

        var destination_informations = [];
        var destination_kind = $("input[name=form_destination_kind]:checked").val();
        if (destination_kind === "Mail"){
            split_informations_mail_to = $("#form_destination_informations_mail_to").val();
            split_informations_mail_cc = $("#form_destination_informations_mail_cc").val();
            split_informations_mail_bcc = $("#form_destination_informations_mail_bcc").val();
            if (split_informations_mail_to !== ""){
                split_informations_mail_to.split(/,|\n|;/).forEach(address => {
                    address = address.trim();
                    if (address !== ""){
                        var mail = {
                            "address_header": "to",
                            "email": address,
                        }
                        destination_informations.push(mail);
                    }
                });
            }
            if (split_informations_mail_cc !== ""){
                split_informations_mail_cc.split(/,|\n|;/).forEach(address => {
                    address = address.trim();
                    if (address !== ""){
                            var mail = {
                            "address_header": "cc",
                            "email": address,
                        }
                        destination_informations.push(mail);
                    }
                });
            }
            if (split_informations_mail_bcc !== ""){
                split_informations_mail_bcc.split(/,|\n|;/).forEach(address => {
                    address = address.trim();
                    if (address !== ""){
                            var mail = {
                            "address_header": "bcc",
                            "email": address,
                        }
                        destination_informations.push(mail);
                    }
                });
            }
        }
        else if (destination_kind === "Teams"){
            var teams = { "webhook": $("#form_destination_informations_teams").val() }
            destination_informations.push(teams);
        }
        else if (destination_kind === "Teams_WF"){
            var teams_wf = { "url": $("#form_destination_informations_teams_wf").val() }
            destination_informations.push(teams_wf);
        }
        else if (destination_kind === "Webhook"){
            var webhook = {
                "url": $("#form_destination_informations_webhook").val(),
                "header": $("#form_destination_informations_webhook_header").val()
            }
            destination_informations.push(webhook);
        }

        return destination_informations;
    },

    validate: {
        //
        // validate destination id
        //
        destination_id: function(destination_id) {
            if(destination_id === "") {
                return {
                    "result": false,
                    "message": getText("400-00011", "必須項目が不足しています。({0})", getText("000-00145", "通知先ID"))
                }
            } else if(destination_id.replace(/[a-zA-Z0-9_-]/g,"") !== "") {
                return {
                    "result": false,
                    "message": getText("400-00017", "指定できない文字が含まれています。(項目:{0},指定可能な文字:{1})",
                                    getText("000-00145", "通知先ID"),
                                    getText("000-31001", "半角英数・ハイフン・アンダースコア")
                                )
                }

            } else if( ! destination_id.match(/^[a-zA-Z]/)) {
                return {
                    "result": false,
                    "message": getText("400-00014", "先頭の文字にアルファベット以外が指定されています。({0})", getText("000-00145", "通知先ID"))
                }
            } else {
                return {
                    "result": true,
                    "message": ""
                }
            }
        },

        //
        // validate destination name
        //
        destination_name: function(destination_name) {
            if(destination_name === "") {
                return {
                    "result": false,
                    "message": getText("400-00011", "必須項目が不足しています。({0})", getText("000-00146", "通知先名"))
                }
            } else {
                return {
                    "result": true,
                    "message": ""
                }
            }
        },

        //
        // validate destination kind
        //
        destination_kind: function(destination_kind) {
            console.log("destination_kind: " + destination_kind);
            if(destination_kind.length === 0) {
                return {
                    "result": false,
                    "message": getText("400-00011", "必須項目が不足しています。({0})", getText("000-00147", "通知方法"))
                }
            } else {
                return {
                    "result": true,
                    "message": ""
                }
            }
        },

        //
        // validate description informations (mail)
        //
        destination_informations_mail: function(destination_informations_to, destination_informations_cc, destination_informations_bcc) {
            if(destination_informations_to === "" && destination_informations_cc === "" && destination_informations_bcc === "") {
                return {
                    "result": false,
                    "message": getText("400-00011", "必須項目が不足しています。({0})", getText("000-00150", "通知先"))
                }
            } else {
                split_informations_to = destination_informations_to.split(/,|\n|;/);
                split_informations_cc = destination_informations_cc.split(/,|\n|;/);
                split_informations_bcc = destination_informations_bcc.split(/,|\n|;/);

                if ((array_not_empty_count(split_informations_to) + array_not_empty_count(split_informations_cc) + array_not_empty_count(split_informations_bcc)) > MAX_MAIL_COUNT){
                    return {
                        "result": false,
                        "message": getText("400-87001", "メールアドレスの指定が最大{0}件を超えています。({1})", MAX_MAIL_COUNT, getText("000-00150", "通知先"))
                    }
                } else {
                    return {
                        "result": true,
                        "message": ""
                    }
                }
            }
        },

        //
        // validate description informations (teams)
        //
        destination_informations_teams: function(destination_informations_teams) {
            if(destination_informations_teams === "") {
                return {
                    "result": false,
                    "message": getText("400-00011", "必須項目が不足しています。({0})", getText("000-00150", "通知先"))
                }
            } else {
                return {
                    "result": true,
                    "message": ""
                }
            }
        },

        //
        // validate description informations (teams workflows)
        //
        destination_informations_teams_wf: function(destination_informations_teams_wf) {
            if(destination_informations_teams_wf === "") {
                return {
                    "result": false,
                    "message": getText("400-00011", "必須項目が不足しています。({0})", getText("000-00150", "通知先"))
                }
            } else {
                return {
                    "result": true,
                    "message": ""
                }
            }
        },

        //
        // validate description informations (webhook)
        //
        destination_informations_webhook: function(destination_informations_webhook, destination_informations_webhook_header) {
            if(destination_informations_webhook === "") {
                return {
                    "result": false,
                    "message": getText("400-00011", "必須項目が不足しています。({0})", getText("000-00211", "通知先URL"))
                }
            } else {
                return {
                    "result": true,
                    "message": ""
                }
            }
        },
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   Settings Mailserver Common
//
////////////////////////////////////////////////////////////////////////////////////////////////////
const settings_mailserver_common = {
    validate: {
        //
        // validate smtp server host
        //
        smtp_host: function(smtp_host) {
            if(smtp_host === "") {
                return {
                    "result": false,
                    "message": getText("400-00011", "必須項目が不足しています。({0})", getText("000-00187", "SMTPサーバーホスト"))
                }
            } else if(smtp_host.replace(/^[a-zA-Z0-9-.]+$/g,"") !== "") {
                return {
                    "result": false,
                    "message": getText("400-00017", "指定できない文字が含まれています。(項目:{0},指定可能な文字:{1})",
                                    getText("000-00187", "SMTPサーバーホスト"),
                                    getText("000-31002", "半角英数字・ハイフン・ピリオド")
                                )
                }
            } else {
                return {
                    "result": true,
                    "message": ""
                }
            }
        },
        //
        // validate smtp server port
        //
        smtp_port: function(smtp_port) {
            if(smtp_port === "") {
                return {
                    "result": false,
                    "message": getText("400-00011", "必須項目が不足しています。({0})", getText("000-00188", "SMTPサーバーポート"))
                }
            } else if(smtp_port.replace(/[0-9]/g,"") !== "") {
                return {
                    "result": false,
                    "message": getText("400-00017", "指定できない文字が含まれています。(項目:{0},指定可能な文字:{1})",
                                    getText("000-00188", "SMTPサーバーポート"),
                                    getText("000-31002", "半角数字")
                                )
                }
            } else {
                return {
                    "result": true,
                    "message": ""
                }
            }
        },
        //
        // validate sender mail adrress
        //
        send_from: function(send_from) {
            if(send_from === "") {
                return {
                    "result": false,
                    "message": getText("400-00011", "必須項目が不足しています。({0})", getText("000-00189", "送信元メールアドレス"))
                }
            } else {
                return {
                    "result": true,
                    "message": ""
                }
            }
        },
        //
        // validate Authentication user
        //
        authentication_user: function(authentication_user) {
            if(authentication_user === "") {
                return {
                    "result": false,
                    "message": getText("400-00011", "必須項目が不足しています。({0})", getText("000-00197", "認証ユーザー"))
                }
            } else {
                return {
                    "result": true,
                    "message": ""
                }
            }
        },
        //
        // validate Authentication password
        //
        authentication_password: function(authentication_password) {
            if(authentication_password === "") {
                return {
                    "result": false,
                    "message": getText("400-00011", "必須項目が不足しています。({0})", getText("000-00198", "認証パスワード"))
                }
            } else {
                return {
                    "result": true,
                    "message": ""
                }
            }
        },
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   Auditlog Common
//
////////////////////////////////////////////////////////////////////////////////////////////////////
const AuditlogCommon = {
    "JOB_STATUS_NOT_EXEC":         "NotExecuted",
    "JOB_STATUS_EXEC":             "Executing",
    "JOB_STATUS_COMPLETION":       "Completion",
    "JOB_STATUS_FAILD":            "Failed",
    "JOB_STATUS_NO_DATA":          "NoData",
    "DOWNLOAD_EXP_DAYS":           "platform.system.audit_log.download_exp_days",
    "DOWNLOAD_FILE_LIMIT":         "platform.system.audit_log.download_file_limit",
    validate: {
        //
        // validate from date
        //
        from_date: function(from_date) {
            if(from_date === "") {
                return {
                    "result": false,
                    "message": getText("400-00011", "必須項目が不足しています。({0})", getText("000-91007", "From"))
                }
            } else if(isNaN(Date.parse(from_date))) {
                return {
                    "result": false,
                    "message": getText("400-00020", "日時形式以外が指定されています。")
                }
            } else {
                return {
                    "result": true,
                    "message": ""
                }
            }
        },
        //
        // validate from date
        //
        to_date: function(to_date) {
            if(to_date === "") {
                return {
                    "result": false,
                    "message": getText("400-00011", "必須項目が不足しています。({0})", getText("000-91008", "To"))
                }
            } else if(isNaN(Date.parse(to_date))) {
                return {
                    "result": false,
                    "message": getText("400-00020", "日時形式以外が指定されています。")
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
//   Auditlog Common
//
////////////////////////////////////////////////////////////////////////////////////////////////////
const UserBulkActionsCommon = {
    "JOB_STATUS_NOT_EXEC":         "NotExecuted",
    "JOB_STATUS_EXEC":             "Executing",
    "JOB_STATUS_COMPLETION":       "Completion",
    "JOB_STATUS_FAILD":            "Failed",
    "JOB_STATUS_NO_DATA":          "NoData",
    "JOB_TYPE_USER_BULK_IMPORT":   "USER_BULK_IMPORT",
    "JOB_TYPE_USER_BULK_DELETE":   "USER_BULK_DELETE",
    "USER_EXPORT_IMPORT_EXP_DAYS": "platform.system.user_export_import.exp_days",
}