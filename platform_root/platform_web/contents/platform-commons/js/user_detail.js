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
                {"text": getText("000-83022", "ユーザー詳細"), "href": location_conf.href.users.detail.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{user_id}/g, user_id)},
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

        const isUpdateAbleRow = UsersCommon.isAllowedEditUser(user); // 更新可能か
        const isSystemAccount = UsersCommon.isSystemUser(user);

        $(".button_edit_user")
            .prop("disabled", isSystemAccount || !isUpdateAbleRow)
            .css("cursor", isSystemAccount || !isUpdateAbleRow ? "not-allowed": "")
            .css("display", isSystemAccount? "none": "");

        $('.button_edit_user').on('click', function() {
            window.location = location_conf.href.users.edit.replace('{organization_id}',CommonAuth.getRealm()).replace('{user_id}',user_id);
        });
    
        $(".button_delete_user")
            .prop("disabled", isSystemAccount || !isUpdateAbleRow)
            .css("cursor", isSystemAccount || !isUpdateAbleRow? "not-allowed": "")
            .css("display", isSystemAccount? "none": "");

        $('.button_delete_user').on('click', function() {
            delete_user(user);
        });

        $("#form_user_id").text(user_id);
        $("#form_user_username").text(user.preferred_username);
        $("#form_user_email").text(user.email);
        $("#form_user_first_name").text(user.firstName);
        $("#form_user_last_name").text(user.lastName);
        $("#form_user_enabled").css("display", user.enabled? "": "none");
        $("#form_affiliation").text(user.affiliation);
        $("#form_description").text(user.description);
        $("#form_user_create_timestamp").text(fn.date(new Date(user.create_timestamp),'yyyy/MM/dd HH:mm:ss'));

    }

    function delete_user(user) {
        console.log("[CALL] confirm_delete");

        deleteConfirmMessage(
            getText("000-80017", "実行確認"),
            getText("000-83005", "以下のユーザーを削除してよろしいですか？"),
            user.preferred_username,
            getText("000-83006", "削除したユーザーは以降ログインできなくなります。"),
            CommonAuth.getRealm() + "/" + user.preferred_username,
            () => {
                disabled_button();
                show_progress();

                // APIを呼出す
                call_api_promise({
                    type: "DELETE",
                    url: api_conf.api.users.delete.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{user_id}/g, user_id),
                    headers: {
                        Authorization: "Bearer " + CommonAuth.getToken(),
                    },
                }).then(() => {
                    hide_progress();
                    alertMessage(getText("000-80018", "処理結果"), getText("000-83007", "ユーザーを削除しました。"),
                        () => {
                            window.location.href = location_conf.href.users.list.replace(/{organization_id}/g, CommonAuth.getRealm());
                        });
                }).catch(() => {
                    hide_progress();
                    enabled_button(user);
                });
            }
        );
    }

    function disabled_button() {
        $(".button_edit_user").prop("disabled", true );
        $(".button_delete_user").prop("disabled", true );
    }
    function enabled_button(user) {
        const isUpdateAbleRow = UsersCommon.isAllowedEditUser(user); // 更新可能か
        const isSystemAccount = UsersCommon.isSystemUser(user);

        $(".button_edit_user").prop("disabled",  isSystemAccount || !isUpdateAbleRow);
        $(".button_delete_user").prop("disabled", isSystemAccount || !isUpdateAbleRow);
    }
});
