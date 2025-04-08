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

$(function(){
    const workspace_id = window.location.pathname.split("/")[4];

    CommonAuth.onAuthSuccess(() => {
        new CommonUi(`#container`);
        load_main();
    });

    function load_main() {
        Promise.all([
            // Load Common Contents
            loadCommonContents(),

            // エージェントユーザー一覧取得 - Get Agent User List
            call_api_promise_agent_users(),

        ]).then(function(results) {
            // Display Menu
            displayMenu('menu_agent_management');

            // Display Topic Path
            displayTopicPath([
                {"text": getText("000-87006", "エージェントワークスペース選択"), "href": location_conf.href.workspaces.settings.agent_users.workspace.replace(/{organization_id}/g, CommonAuth.getRealm())},
                {"text": getText("000-87002", "エージェントユーザー一覧"), "href": location_conf.href.workspaces.settings.agent_users.list.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id)},
            ]);

            display_main(results[1].data);
            finish_onload_progress();
            enabled_button();
        }).catch((e) => {
            console.log('[ERROR] load_main catch');
            finish_onload_progress_at_error();
            if(typeof e != "undefined") console.log(e);
            return;
        });
    }

    //
    // エージェントユーザー一覧取得
    // get agent user list api call
    //
    function call_api_promise_agent_users() {
        return  call_api_promise({
            type: "GET",
            url: api_conf.api.workspaces.agent_users.get.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id),
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            }
        });
    }

    //
    // 画面表示
    // screen display
    //
    function display_main(agent_users) {
        console.log("[CALL] display_main");

        //
        // 作成ボタン - new agent user button
        //
        $('#new_agent_user').css('display','');
        $('#new_agent_user').on('click',() => {
            window.location = location_conf.href.workspaces.settings.agent_users.new.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id);
        });
        
        $('#agent_users_list .datarow .button_edit_agent_user').on('click', function() {
            let user_id = $(this).attr('data-id');
            if (user_id != undefined){
                window.location = location_conf.href.users.edit.replace('{organization_id}',CommonAuth.getRealm()).replace('{user_id}',user_id);
            }
        });

        //
        // 一覧の表示 - view lists
        //
        display_users_list(agent_users);

    }

    //
    // エージェントユーザー一覧表示 - display agent users list
    //
    function display_users_list(agent_users) {
        // 明細行を削除
        $('#agent_users_list .datarow').remove();

        if (agent_users.length == 0) {
            // 0件の時はnotfoudの表示
            $('#agent_users_list .notfound').css('display','');
        } else {
            // 1件以上の時はnotfoudの非表示
            $('#agent_users_list .notfound').css('display','none');

            //
            // sort workspace list
            //
            const sortKey = 'username'; // エージェントユーザー名
            const sortreverse = 1;  // 昇順
            agent_users.sort(function(a, b){
                const as = a[sortKey].toLowerCase(), bs = b[sortKey].toLowerCase();
                if ( as < bs ) {
                    return sortreverse * -1;
                } else if ( as > bs ) {
                    return sortreverse * 1;
                } else {
                    return 0;
                }
            });
            
            // 明細のテンプレート行からhtmlを取り出す
            const row_template = $('#agent_users_list .datarow-template').clone(true).removeClass('datarow-template').addClass('datarow').prop('outerHTML');

            // 明細にデータを埋め込み行を明細を作りこむ
            for(let i = 0; i < agent_users.length; ++i) {
                const user = agent_users[i];
                // const isUpdateAbleRow = UsersCommon.isAllowedEditUser(user); // 更新可能か
                // const isSystemAccount = UsersCommon.isSystemUser(user);

                const row_html = row_template
                    .replace(/\${username}/g, fn.cv(user.username,'',true))
                    .replace(/\${agentUserType}/g, fn.cv(user.agent_user_type,'',true))
                    .replace(/\${description}/g, fn.cv(user.description,'',true))
                    .replace(/\${tokenExpiration}/g, fn.cv(user.token_latest_expire_date,'',true))

                const $row = $("#agent_users_list tbody").append(row_html).find(".datarow:last-child");

                console.log("$row", $row);
                console.log("button_edit", $row.find(".button_token_issuance"));
                console.log("button_edit", $row.find(".button_edit"));
                console.log("btn_delete", $row.find(".btn_delete"));

            }

            //
            // 「トークン発行」ボタン - token issuance button
            //
            $('#agent_users_list .datarow .button_token_issuance').on('click', function() {
                let user_id = $(this).attr('data-id');
                if (user_id != undefined){
                    window.location = location_conf.href.workspaces.settings.agent_users.edit.replace('{organization_id}',CommonAuth.getRealm()).replace('{user_id}',user_id);
                }
            });

            //
            // 「編集」ボタン - edit agent user button
            //
            $('#agent_users_list .datarow .button_edit_agent_user').on('click', function() {
                let user_id = $(this).attr('data-id');
                if (user_id != undefined){
                    window.location = location_conf.href.workspaces.settings.agent_users.edit.replace('{organization_id}',CommonAuth.getRealm()).replace('{user_id}',user_id);
                }
            });

            //
            // 「削除」ボタン - delete agent user button
            //
            $('#agent_users_list .datarow .button_delete_agent_user').on('click', function() {
                click_delete_agent_user_button($(this).attr('data-id'), $(this).attr('username'));
            });
        }
        $('#agent_users_list .datarow').css('display','');
    }

    //
    // ボタンの活性・非活性処理
    // Button enable/disable process
    //
    // function enabled_button() {
    //     $("#new_notification").prop('disabled', false);

    //     const adminWorkspaces = CommonAuth.getAdminWorkspaces();
    //     const accessibleWorkspaces = CommonAuth.getAccessibleWorkspaces();

    //     $('#settings_notification_list .button_delete_notification').each(function(index, element) {
    //         let $element = $(element);
    //         if(CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_WS_MAINTE)) {
    //             $element.prop('disabled', false);
    //             return;
    //         }
    //         if(adminWorkspaces.indexOf($element.attr('data-id')) !== -1) {
    //             $element.prop('disabled', false);
    //         } else {
    //             $element.prop('disabled', true);
    //             $element.css('cursor', 'not-allowed');
    //         }
    //     });

    //     $('#settings_notification_list .button_edit_notification').each(function(index, element) {
    //         let $element = $(element);
    //         if(CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_WS_MAINTE)) {
    //             $element.prop('disabled', false);
    //             return;
    //         }
    //         if(adminWorkspaces.indexOf($element.attr('data-id')) !== -1) {
    //             $element.prop('disabled', false);
    //         } else {
    //             $element.prop('disabled', true);
    //             $element.css('cursor', 'not-allowed');
    //         }
    //     });

    //     $('#workspace_list .to_detail').each(function(index, element) {
    //         let $element = $(element);
    //         if(accessibleWorkspaces.indexOf($element.attr('data-id')) !== -1) {
    //             $element.prop('disabled', false);
    //         } else {
    //             $element.prop('disabled', true);
    //             $element.css('cursor', 'auto');
    //         }
    //     });
    // }

    //
    // 「削除」ボタン押下時処理
    // delete agent user button event
    //
    function click_delete_agent_user_button(user_id, username) {
        console.log("username", username);
        deleteConfirmMessage(
            getText("000-80017", "実行確認"),
            getText("000-83005", "以下のユーザーを削除してよろしいですか？"),
            username,
            getText("000-83006", "削除したユーザーは以降ログインできなくなります。"),
            CommonAuth.getRealm() + "/" + username,
            () => {
                disable_event_elements(true);
                show_progress();

                // APIを呼出す
                call_api_promise({
                    type: "DELETE",
                    url: api_conf.api.users.delete.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{user_id}/g, user_id),
                    headers: {
                        Authorization: "Bearer " + CommonAuth.getToken(),
                    },
                }).then(() => {
                    if(user_id == CommonAuth.getUserId()) {
                        return new Promise((resolve, reject) => {resolve(null)})
                    } else {
                        return call_api_promise_users();
                    }
                }).then((results) => {
                    if( results != null) {
                        // 一覧の再描画
                        display_main(results.data);
                    }
                    hide_progress();
                    alertMessage(getText("000-80018", "処理結果"), getText("000-83007", "ユーザーを削除しました。"),
                    () => {
                        if(user_id == CommonAuth.getUserId()) {
                            // 自分自身を消したときは、top画面に遷移しログイン画面へ
                            // When you erase yourself, transition to the top screen and go to the login screen
                            window.location = location_conf.href.menu.organization_user_site.toppage.replace(/{organization_id}/g, CommonAuth.getRealm());
                        }
                    });
                }).catch(() => {
                    disable_event_elements(false);
                    hide_progress();
                });
            }
        );
    }
});
