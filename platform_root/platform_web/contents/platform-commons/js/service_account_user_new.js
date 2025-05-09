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
        console.log("[CALL] load_main");
        Promise.all([
            // Load Common Contents
            loadCommonContents()

        ]).then(function(results) {
            // Display Menu
            displayMenu('menu_service_account_management');
            
            // Display Topic Path
            displayTopicPath([
                {"text": getText("000-93005", "サービスアカウントユーザー一覧"), "href": location_conf.href.workspaces.settings.service_account_users.list.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id)},
                {"text": getText("000-93014", "新規サービスアカウントユーザー"), "href": location_conf.href.workspaces.settings.service_account_users.new.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id)},
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
        console.log("[CALL] validate_register");
        console.log("--- validate check start ----");
        let result=true;

        //
        // 入力チェック：サービスアカウントユーザー名
        // validate service account user name
        //
        if($("#form_service_account_user_username").val() === "") {
            // 未入力の場合 - If not entered
            $("#message_service_account_user_username").text(
                getText("400-00011", "必須項目が不足しています。({0})", getText("000-93017", "サービスアカウントユーザー名")));
            result = false;

        } else if($("#form_service_account_user_username").val().replace(/[a-zA-Z0-9_-]/g,"") !== "") {
            // 指定可能な文字以外を含む場合 - If it contains other characters that can be specified
            $("#message_service_account_user_username").text(
                getText("400-00017", "指定できない文字が含まれています。(項目:{0},指定可能な文字:{1})",
                    getText("000-93017", "サービスアカウントユーザー名"),
                    getText("000-80033", "半角英数・ハイフン・アンダースコア")));
            result = false;

        } else if( ! $("#form_service_account_user_username").val().match(/^[a-zA-Z]/)) {
            // 先頭の文字がアルファベット以外の場合 - If the leading character is not an alphabet
            $("#message_service_account_user_username").text(
                getText("400-00014", "先頭の文字にアルファベット以外が指定されています。({0})", getText("000-93017", "サービスアカウントユーザー名")));
            result = false;

        } else {
            $("#message_service_account_user_username").text("");
        }

        //
        // 入力チェック：サービスアカウントユーザー種別
        // validate service account type
        //
        if ($("#form_service_account_user_type").val() === "") {
            // 未選択の場合 - If not selected
            $("#message_service_account_user_type").text(
                getText("000-93018", "必須項目が選択されていません。({0})", getText("000-93008", "サービスアカウントユーザー種別")));
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
        console.log("[CALL] service_account_user_register");

        let reqbody =   {
            "username": $('#form_service_account_user_username').val(),
            "service_account_user_type": $('#form_service_account_user_type').val(),
            "description": $('#form_description').val(),
        }

        show_progress();

        // APIを呼出す
        return Promise.all([
            // サービスアカウントユーザー作成 - Create service account user
            call_api_promise_create_service_account_user(reqbody),

            // refresh token発行 - create refresh token
            call_api_promise_create_service_account_user_token(reqbody),

        ]).then(function(result){

            hide_progress();

            // refresh tokenの発行結果の表示
            display_result_created(result[1].data, result[1].status, result[1].jqXHR);

        }).catch((e) => {
            hide_progress();
            $('#button_register').prop('disabled',false);
        });

    }

    // 
    // サービスアカウントユーザー作成API呼出処理
    // Process to call service account user creation API
    // 
    function call_api_promise_create_service_account_user(reqbody) {
        console.log("[CALL] call_api_promise_create_service_account_user");

        return call_api_promise({
            type: "POST",
            url: api_conf.api.workspaces.service_account_users.post.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id),
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            },
            data: JSON.stringify(reqbody),
            contentType: "application/json",
            dataType: "json",
        });
    }

    // 
    // サービスアカウントユーザートークン発行API呼出処理
    // Process to call service account user token creation API
    // 
    function call_api_promise_create_service_account_user_token(reqbody){
        console.log("[CALL] call_api_promise_create_service_account_user_token");

        // token取得のため、ユーザーIDを取得 - Get user ID to get token
        return Promise.all([
            // サービスアカウントユーザー一覧を取得 - get service account user list
            call_api_promise({
                type: "GET",
                url: api_conf.api.workspaces.service_account_users.get.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id),
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                }
            }),

        ]).then(function(result){
            // 登録したサービスアカウントユーザーのデータを取得 - Get the data of a registered service account user
            const regUserData = result[0].data.filter(item => item.username === reqbody.username.toLowerCase());

            // refresh tokenを発行 - create refresh token
            return call_api_promise({
                type: "POST",
                url: api_conf.api.token.service_account_user_site.post.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id).replace(/{user_id}/g, regUserData[0].id),
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                data: JSON.stringify(reqbody),
                contentType: "application/json",
                dataType: "json",
            })
        })
    }

    // 
    // refresh tokenの発行結果の表示
    // Display of result of issuing refresh token
    // 
    function display_result_created(data, status, jqXHR) {
        console.log("[CALL] display_result_created");

        if(data.refresh_token) {
            // {refresh_token}にデータを代入し、その値を取得する
            const dialog_contents = $("#create_token_result_dialog").html().replace(/{refresh_token}/g, fn.cv(data.refresh_token_expire,'',true)).replace(/{expiration_date}/g, fn.date(data.expire_timestamp,'yyyy/MM/dd'));
            console.log(dialog_contents);

            const dialog = new Dialog({
                mode: 'modeless',
                position: 'center',
                width: 'auto',
                header: {
                    title: getText("000-81018", "refresh token発行"),
                },
                footer: {
                    button: {
                        copy: { text: '<span class="iconButtonIcon icon icon-copy"></span>'+getText("000-80035", "クリップボードにコピー"), action: 'positive', style: 'width:250px;'},
                        close: { text: getText("000-80011", "閉じる"), action: "normal", style: 'width:200px;' }
                    }
                },
            },
            {
                copy: function() {
                    if ( navigator.clipboard ) {
                        navigator.clipboard.writeText(data.refresh_token).then( function(){
                            $(dialog.$.dbody).find(".copy_message").text(getText("000-81021", "クリップボードにコピーしました。"));
                        });
                    } else {
                        alert(getText("000-81022", "お使いのブラウザでは、クリップボードにコピーできません。"));
                    }
                },
                close: function() {
                    dialog.close();

                    // 「サービスアカウントユーザー一覧」画面に遷移する
                    // Redirected to the "Service Account User List" screen.
                    window.location = location_conf.href.workspaces.settings.service_account_users.list.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id);

                }
            });
            dialog.open(dialog_contents);

        } else {
            // When a normal response is returned but there is no refresh_token in data
            // 正常応答が返ってきているが、dataにrefresh_tokenが無いとき
            alert(getText("000-81026", "refresh tokenの取得に失敗しました。")+`\n\nstatus=${jqXHR.status}`)
        }
    }
});
