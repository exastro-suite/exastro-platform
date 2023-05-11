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
    const user_id = window.location.pathname.split("/")[4];

    CommonAuth.onAuthSuccess(() => {
        new CommonUi(`#container`);
        load_main();
    });

    function load_main() {
        Promise.all([
            // Load Common Contents
            loadCommonContents(),
            // Get User
            call_api_promise({
                type: "GET",
                url: api_conf.api.users.getId.replace('{organization_id}', CommonAuth.getRealm()).replace('{user_id}', user_id),
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                contentType: "application/json",
                dataType: "json",
            }),
        ]).then(function(results) {
            // Display Menu
            displayMenu('menu_account_management');
            // Display Topic Path
            displayTopicPath([
                {"text": getText("000-83001", "ユーザー一覧"), "href": location_conf.href.users.list.replace(/{organization_id}/g, CommonAuth.getRealm()) },
                {"text": getText("000-83017", "ユーザー編集"), "href": location_conf.href.users.edit.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{user_id}/g, user_id) },
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

        $("#form_user_id").text(user_id);
        $("#form_user_username").text(user.preferred_username);
        $("#form_user_email").val(user.email);
        $("#form_user_first_name").val(user.firstName);
        $("#form_user_last_name").val(user.lastName);
        $("#form_user_enabled").prop("checked", user.enabled);
        $("#form_affiliation").val(user.affiliation);
        $("#form_description").val(user.description);
        $("#form_user_create_timestamp").text(fn.date(new Date(user.create_timestamp),'yyyy/MM/dd HH:mm:ss'));

        $("#form_user_password_initialize").change(function() {
            $("#form_user_password_initialize_fields").css("display", this.checked? "": "none");
        });

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

        // validate user password
        if($("#form_user_password_initialize").prop("checked")) {
            if($("#form_user_password").val() === "" || $("#form_user_password_confirm").val() === "") {
                $("#message_user_password").text(getText("400-00011", "必須項目が不足しています。({0})", getText("000-00132", "パスワード")));
                result = false;
            } else if($("#form_user_password").val() != $("#form_user_password_confirm").val()) {
                $("#message_user_password").text(getText("000-83027", "パスワードの確認入力が正しくありません"));
                result = false;
            } else {
                $("#message_user_password").text("");
            }
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
            "email": $('#form_user_email').val(),
            "firstName": $('#form_user_first_name').val(),
            "lastName": $('#form_user_last_name').val(),
            "affiliation": $('#form_affiliation').val(),
            "description": $('#form_description').val(),
            "enabled": ($('#form_user_enabled').prop('checked') ? true : false),
        }

        if($("#form_user_password_initialize").prop("checked")) {
            reqbody.password = $('#form_user_password').val();
            reqbody.password_temporary = $('#form_user_password_temporary').prop('checked');
        }

        show_progress();
        call_api_promise(
            {
                type: "PUT",
                url: api_conf.api.users.put.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{user_id}/g, user_id),
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                data: JSON.stringify(reqbody),
                contentType: "application/json",
                dataType: "json",
            }
        ).then(() => {
            hide_progress();
            alertMessage(getText("000-80018", "処理結果"), getText("000-83021", "ユーザーを変更しました"),
            () => {
                window.location = location_conf.href.users.list.replace(/{organization_id}/g, CommonAuth.getRealm());
            });
        }).catch(() => {
            hide_progress();
            $('#button_register').prop('disabled',false);
        })
    }
});
