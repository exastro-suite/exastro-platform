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

    CommonAuth.onAuthSuccess(() => {
        new CommonUi(`#container`);
        load_main();
    });

    function load_main() {
        Promise.all([
            // Load Common Contents
            loadCommonContents()

        ]).then(function(results) {
            // Display Menu
            displayMenu('menu_service_account_management');
            
            // Display Topic Path
            displayTopicPath([
                {"text": getText("000-83001", "サービスアカウントユーザー一覧"), "href": location_conf.href.workspaces.settings.service_account_users.list.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id)},
                {"text": getText("000-83008", "新規サービスアカウントユーザー"), "href": location_conf.href.workspaces.settings.service_account_users.new.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id)},
            ]);
            display_main();
            finish_onload_progress();

        }).catch((e) => {
            console.log('[ERROR] load_main catch');
            finish_onload_progress_at_error();
            if(typeof e != "undefined") console.log(e);
            return;
        });
    }

    function display_main(workspaces) {
        console.log("[CALL] display_main");

        //
        // 「登録」ボタン - register button
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
    // 入力チェック
    // validate register
    //
    function validate_register() {
        console.log("--- validate check start ----");
        let result=true;

        //
        // validate service account user name
        //
        if($("#form_service_account_user_username").val() === "") {
            // 未入力の場合 - If not entered
            $("#message_service_account_user_username").text(
                getText("400-00011", "必須項目が不足しています。({0})", getText("000-00128", "サービスアカウントユーザー名")));
            result = false;

        } else if($("#form_service_account_user_username").val().replace(/[a-zA-Z0-9_-]/g,"") !== "") {
            // 指定可能な文字以外を含む場合 - If it contains other characters that can be specified
            $("#message_service_account_user_username").text(
                getText("400-00017", "指定できない文字が含まれています。(項目:{0},指定可能な文字:{1})",
                    getText("000-00128", "サービスアカウントユーザー名"),
                    getText("000-80033", "半角英数・ハイフン・アンダースコア")));
            result = false;

        } else if( ! $("#form_service_account_user_username").val().match(/^[a-zA-Z]/)) {
            // 先頭の文字がアルファベット以外の場合 - If the leading character is not an alphabet
            $("#message_service_account_user_username").text(
                getText("400-00014", "先頭の文字にアルファベット以外が指定されています。({0})", getText("000-00128", "サービスアカウントユーザー名")));
            result = false;

        } else {
            $("#message_service_account_user_username").text("");
        }

        //
        // validate service account type
        //
        if ($("#form_service_account_user_type").val() === "") {
            // 未選択の場合 - If not selected
            $("#message_service_account_user_type").text(
                getText("400-00011", "必須項目が選択されていません。({0})", getText("000-00128", "サービスアカウントユーザー種別")));
            result = false;
        
        } else {
            $("#message_service_account_user_type").text("");
        }

        console.log("--- validate check end [" + result + "] ----");

        return result;
    }

    //
    // サービスアカウントユーザー登録
    // register service account user
    //
    function service_account_user_register() {

        let reqbody =   {
            "username": $('#form_service_account_user_username').val(),
            "service_account_user_type": $('#form_service_account_user_type').val(),
            "description": $('#form_description').val(),
        }

        show_progress();
        call_api_promise(
            {
                type: "POST",
                url: api_conf.api.workspaces.service_account_users.post.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id),
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                data: JSON.stringify(reqbody),
                contentType: "application/json",
                dataType: "json",
            }
        ).then(() => {
            hide_progress();
            alertMessage(getText("000-80018", "処理結果"), getText("000-83016", "サービスアカウントユーザーを作成しました"),
            () => {
                // 登録後、「サービスアカウントユーザー一覧」画面に遷移する
                // When registration is complete, you will be redirected to the "Service Account User List" screen.
                window.location = location_conf.href.workspaces.settings.service_account_users.list.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id);
            });
        }).catch(() => {
            hide_progress();
            $('#button_register').prop('disabled',false);
        })
    }
});
