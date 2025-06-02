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
        console.log("[CALL] load_main");

        Promise.all([
            // Load Common Contents
            loadCommonContents(),

            // サービスアカウントユーザー一覧取得 - Get service account User List
            call_api_promise_service_account_users(),

        ]).then(function(results) {
            // Display Menu
            displayMenu('menu_service_account_management');

            // Display Topic Path
            displayTopicPath([
                {"text": getText("000-93001", "ワークスペース選択"), "href": location_conf.href.workspaces.settings.service_account_users.workspace.replace(/{organization_id}/g, CommonAuth.getRealm())},
                {"text": getText("000-93005", "サービスアカウントユーザー一覧"), "href": location_conf.href.workspaces.settings.service_account_users.list.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id)},
            ]);

            display_main(results[1].data);
            finish_onload_progress();

        }).catch((e) => {
            console.log('[ERROR] load_main catch');
            finish_onload_progress_at_error();
            if(typeof e != "undefined") console.log(e);
            return;
        });
    }

    //
    // サービスアカウントユーザー一覧取得
    // get service account user list api call
    //
    function call_api_promise_service_account_users() {
        console.log("[CALL] call_api_promise_service_account_users");

        return  call_api_promise({
            type: "GET",
            url: api_conf.api.workspaces.service_account_users.get.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id),
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            }
        });
    }

    //
    // 画面表示
    // screen display
    //
    function display_main(service_account_users) {
        console.log("[CALL] display_main");

        //
        // 「作成」ボタン - new service account user button
        //
        $('#new_service_account_user').css('display','');
        $('#new_service_account_user').on('click',() => {
            window.location = location_conf.href.workspaces.settings.service_account_users.new.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id);
        });
        
        $('#service_account_users_list .datarow .button_edit_service_account_user').on('click', function() {
            let user_id = $(this).attr('data-id');
            if (user_id != undefined){
                window.location = location_conf.href.workspaces.settings.service_account_users.edit.replace('{organization_id}',CommonAuth.getRealm()).replace('{user_id}',user_id);
            }
        });

        //
        // 一覧の表示 - view lists
        //
        display_users_list(service_account_users);

    }

    //
    // サービスアカウントユーザー一覧表示 - display service account users list
    //
    function display_users_list(service_account_users) {
        console.log("[CALL] display_users_list");

        // 明細行を削除
        $('#service_account_users_list .datarow').remove();

        if (service_account_users.length == 0) {
            // 0件の時はnotfoudの表示
            $('#service_account_users_list .notfound').css('display','');
        } else {
            // 1件以上の時はnotfoudの非表示
            $('#service_account_users_list .notfound').css('display','none');

            //
            // sort workspace list
            //
            const sortKey = 'username'; // サービスアカウントユーザー名
            const sortreverse = 1;  // 昇順
            service_account_users.sort(function(a, b){
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
            const row_template = $('#service_account_users_list .datarow-template').clone(true).removeClass('datarow-template').addClass('datarow').prop('outerHTML');

            // 明細にデータを埋め込み行を明細を作りこむ
            for(let i = 0; i < service_account_users.length; ++i) {
                const user = service_account_users[i];
                let service_account_user_type_display = user.service_account_user_type;

                // サービスアカウントユーザー種別の変換 - Conversion of Service Account User Types
                if(service_account_user_type_display == "ansible-execution-agent"){
                    service_account_user_type_display = 'Ansible Execution Agent';

                }else if (service_account_user_type_display == "oase-agent") {
                    service_account_user_type_display = 'OASE Agent';
                    
                }

                const row_html = row_template
                    .replace(/\${user_id}/g, fn.cv(user.id,'',true))
                    .replace(/\${username}/g, fn.cv(user.username,'',true))
                    .replace(/\${serviceAccountUserType}/g, fn.cv(service_account_user_type_display,'',true))
                    .replace(/\${description}/g, fn.cv(user.description,'',true))
                    .replace(/\${tokenExpiration}/g, fn.date(user.token_latest_expire_date,'yyyy/MM/dd HH:mm:ss'))

                const $row = $("#service_account_users_list tbody").append(row_html).find(".datarow:last-child");

                console.log("$row", $row);
                console.log("button_edit", $row.find(".button_token_issuance"));
                console.log("button_edit", $row.find(".button_edit"));
                console.log("btn_delete", $row.find(".btn_delete"));

            }

            //
            // 「トークン発行」ボタン - token issuance button
            //
            $('#service_account_users_list .datarow .button_token_issuance').on('click', function() {
                let user_id = $(this).attr('data-id');
                if (user_id != undefined){
                    window.location = location_conf.href.workspaces.settings.service_account_users.token.replace('{organization_id}',CommonAuth.getRealm()).replace('{workspace_id}',workspace_id).replace('{user_id}',user_id);
                }
            });

            //
            // 「編集」ボタン - edit service account user button
            //
            $('#service_account_users_list .datarow .button_edit_service_account_user').on('click', function() {
                let user_id = $(this).attr('data-id');
                if (user_id != undefined){
                    window.location = location_conf.href.workspaces.settings.service_account_users.edit.replace('{organization_id}',CommonAuth.getRealm()).replace('{workspace_id}', workspace_id).replace('{user_id}',user_id);
                }
            });

            //
            // 「削除」ボタン - delete service account user button
            //
            $('#service_account_users_list .datarow .button_delete_service_account_user').on('click', function() {
                click_delete_service_account_user_button($(this).attr('data-id'), $(this).closest('.datarow').attr('username'));
            });
        }
        $('#service_account_users_list .datarow').css('display','');
    }

    //
    // 「削除」ボタン押下時処理
    // delete service account user button event
    //
    function click_delete_service_account_user_button(user_id, username) {
        console.log("[CALL] click_delete_service_account_user_button");
        console.log("username", username);
        
        deleteConfirmMessage(
            getText("000-80017", "実行確認"),
            getText("000-93011", "以下のサービスアカウントユーザーを削除してよろしいですか？"),
            username,
            getText("000-93012", "削除したサービスアカウントユーザーは以降使用できなくなります。"),
            workspace_id + "/" + username,
            () => {
                show_progress();

                // APIを呼出す
                call_api_promise({
                    type: "DELETE",
                    url: api_conf.api.workspaces.service_account_users.detail.delete.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id).replace(/{user_id}/g, user_id),
                    headers: {
                        Authorization: "Bearer " + CommonAuth.getToken(),
                    },
                }).then(() => {
                    // サービスアカウントユーザー一覧取得 - get service account user list api call
                    return call_api_promise_service_account_users();
                    
                }).then((results) => {
                    if( results != null) {
                        // 一覧の再描画
                        display_main(results.data);
                    }
                    
                    hide_progress();

                    alertMessage(getText("000-80018", "処理結果"), getText("000-93013", "サービスアカウントユーザーを削除しました。"));
                    
                }).catch(() => {
                    hide_progress();
                });
            }
        );
    }
});
