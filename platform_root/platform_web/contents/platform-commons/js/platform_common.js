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
        return appendScript("/_/platform-commons/js/language/en/text.js");
    }
    else{
        return appendScript("/_/platform-commons/js/language/ja/text.js");
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
            resolve();
        }).catch((reason) => {
            reject(reason);
        });
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
        <li class="menuItem"><a class="menuLink" id="menu_update_password" href="#" target="keycloak_account_console">パスワード変更</a></li>
    `);
    $(`#${curent}`).addClass("current");

    $('#menu_workspace').attr('href', location_conf.href.workspaces.list.replace(/{organization_id}/g, CommonAuth.getRealm()));
    $('#menu_account_management').attr('href', location_conf.href.menu.account_manaagement.replace(/{organization_id}/g, CommonAuth.getRealm()));
    $('#menu_role_management').attr('href', location_conf.href.roles.list.replace(/{organization_id}/g, CommonAuth.getRealm()));
    $('#menu_update_password').attr('href', location_conf.href.menu.update_password.replace(/{organization_id}/g, CommonAuth.getRealm()));

    if (CommonAuth.hasAuthority("_og-usr-mt")) {
        $("#menu_account_management").css("display", "");
    }
    let adminWorkspaces = CommonAuth.getAdminWorkspaces();
    if (CommonAuth.hasAuthority("_og-ws-role-mt") || CommonAuth.hasAuthority("_og-ws-role-usr") || adminWorkspaces.length > 0) {
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