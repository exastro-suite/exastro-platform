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

$(function(){
    const workspace_id = window.location.pathname.split("/")[4];
    const user_id = window.location.pathname.split("/")[7];

    CommonAuth.onAuthSuccess(() => {
        new CommonUi(`#container`);
        load_main();
    });

    function load_main() {
        console.log("[CALL] load_main");

        Promise.all([
            // Load Common Contents
            loadCommonContents(),

            // サービスアカウントユーザー取得 - Get Service Account User
            call_api_promise({
                type: "GET",
                url: api_conf.api.workspaces.service_account_users.detail.get.replace('{organization_id}', CommonAuth.getRealm()).replace('{workspace_id}', workspace_id).replace('{user_id}', user_id),
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                contentType: "application/json",
                dataType: "json",
            }),
        ]).then(function(results) {
            // Display Menu
            displayMenu('menu_service_account_management');

            // Display Topic Path
            displayTopicPath([
                {"text": getText("000-93001", "ワークスペース選択"), "href": location_conf.href.workspaces.settings.service_account_users.workspace.replace(/{organization_id}/g, CommonAuth.getRealm())},
                {"text": getText("000-93005", "サービスアカウントユーザー一覧"), "href": location_conf.href.workspaces.settings.service_account_users.list.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id)},
                {"text": getText("000-93019", "サービスアカウントユーザー編集"), "href": location_conf.href.workspaces.settings.service_account_users.edit.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id)},
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

    function display_main(user) {
        console.log("[CALL] display_main");

        // 
        // ユーザーデータを設定 - Set user data
        //
        $("#form_service_account_user_username").text(user.username);
        $("#form_service_account_user_type").text(user.service_account_user_type);
        $("#form_description").val(user.description);

        //
        // 登録ボタン - register button
        //
        $('#button_register').prop('disabled',false);
        $('#button_register').on('click',() => {
            $('#button_register').prop('disabled',true);
            if( ! validate_register() ) {
                $('#button_register').prop('disabled',false);
                return;
            }
            service_account_user_register();
        });
    }

    //
    // validate register
    //
    function validate_register() {
        console.log("[CALL] validate_register");
        console.log("--- validate check start ----");
        let result=true;

        console.log("--- validate check end [" + result + "] ----");

        return result;
    }

    //
    // register workspace
    //
    function service_account_user_register() {
        console.log("[CALL] service_account_user_register");

        let reqbody =   {
            "description": $('#form_description').val(),
        }

        show_progress();

        // APIを呼出す
        call_api_promise(
            {
                type: "PUT",
                url: api_conf.api.workspaces.service_account_users.detail.put.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id).replace(/{user_id}/g, user_id),
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                data: JSON.stringify(reqbody),
                contentType: "application/json",
                dataType: "json",
            }
        ).then(() => {
            hide_progress();
            alertMessage(getText("000-80018", "処理結果"), getText("000-93022", "サービスアカウントユーザーを変更しました"),
            () => {
                window.location = location_conf.href.workspaces.settings.service_account_users.list.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id);
            });
        }).catch(() => {
            hide_progress();
            $('#button_register').prop('disabled',false);
        })
    }
});
