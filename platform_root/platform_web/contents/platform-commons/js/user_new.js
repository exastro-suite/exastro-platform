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
            displayMenu('menu_account_management');
            // Display Topic Path
            displayTopicPath([
                {"text": getText("000-83001", "ユーザー一覧"), "href": location_conf.href.users.list.replace(/{organization_id}/g, CommonAuth.getRealm()) },
                {"text": getText("000-83008", "新規ユーザー"), "href": location_conf.href.users.new.replace(/{organization_id}/g, CommonAuth.getRealm()) },
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
        // register button
        //
        $('#button_register').prop('disabled',false);
        $('#button_register').on('click',() => {
            $('#button_register').prop('disabled',true);
            if( ! validate_register() ) {
                $('#button_register').prop('disabled',false);
                return;
            }
            user_register();
        });
    }

    //
    // validate register
    //
    function validate_register() {
        console.log("--- validate check start ----");
        let result=true;

        //
        // validate workspace id
        //
        if($("#form_user_username").val() === "") {
            $("#message_user_username").text(
                getText("400-00011", "必須項目が不足しています。({0})", getText("000-00128", "ユーザー名")));
            result = false;

        } else if($("#form_user_username").val().replace(/[a-zA-Z0-9_-]/g,"") !== "") {
            $("#message_user_username").text(
                getText("400-00017", "指定できない文字が含まれています。(項目:{0},指定可能な文字:{1})",
                    getText("000-00128", "ユーザー名"),
                    getText("000-80033", "半角英数・ハイフン・アンダースコア")));
            result = false;

        } else if( ! $("#form_user_username").val().match(/^[a-zA-Z]/)) {
            $("#message_user_username").text(
                getText("400-00014", "先頭の文字にアルファベット以外が指定されています。({0})", getText("000-00128", "ユーザー名")));
            result = false;
        } else {
            $("#message_user_username").text("");
        }

        //
        // validate user password
        //
        if($("#form_user_password").val() === "" || $("#form_user_password_confirm").val() === "") {
            $("#message_user_password").text(getText("400-00011", "必須項目が不足しています。({0})", getText("000-00132", "パスワード")));
            result = false;
        } else if($("#form_user_password").val() != $("#form_user_password_confirm").val()) {
            $("#message_user_password").text(getText("000-83027", "パスワードの確認入力が正しくありません"));
            result = false;
        } else {
            $("#message_user_password").text("");
        }

        console.log("--- validate check end [" + result + "] ----");

        return result;
    }

    //
    // register workspace
    //
    function user_register() {

        let reqbody =   {
            "username": $('#form_user_username').val(),
            "password": $('#form_user_password').val(),
            "password_temporary": ($('#form_user_password_temporary').prop('checked') ? true : false),
            "email": $('#form_user_email').val(),
            "firstName": $('#form_user_first_name').val(),
            "lastName": $('#form_user_last_name').val(),
            "affiliation": $('#form_affiliation').val(),
            "description": $('#form_description').val(),
            "enabled": ($('#form_user_enabled').prop('checked') ? true : false),
        }

        show_progress();
        call_api_promise(
            {
                type: "POST",
                url: api_conf.api.users.post.replace(/{organization_id}/g, CommonAuth.getRealm()),
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                data: JSON.stringify(reqbody),
                contentType: "application/json",
                dataType: "json",
            }
        ).then(() => {
            hide_progress();
            alertMessage(getText("000-80018", "処理結果"), getText("000-83016", "ユーザーを作成しました"),
            () => {
                window.location = location_conf.href.users.list.replace(/{organization_id}/g, CommonAuth.getRealm());
            });
        }).catch(() => {
            hide_progress();
            $('#button_register').prop('disabled',false);
        })
    }
});
