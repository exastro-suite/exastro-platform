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
    const organization_id = window.location.pathname.split("/")[3];

    CommonAuth.onAuthSuccess(() => {
        new CommonUi(`#container`);
        // maintenanceMode();
        load_main();
    });

    function load_main() {
        Promise.all([
            // Load Common Contents
            loadCommonContents(),
            // get organization List
            call_api_promise({
                type: "GET",
                url: api_conf.api.organizations.detail.get.replace('{organization_id}', organization_id),
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                contentType: "application/json",
                dataType: "json",
            }),
        ]).then(function(results) {
            // Display Menu
            displayMenu('menu_organizations');
            // Display Topic Path
            displayTopicPath([
                {"text": getText("000-85001", "オーガナイゼーション一覧"), "href": location_conf.href.organizations.list },
                {"text": getText("000-85027", "オーガナイゼーション詳細"), "href": location_conf.href.organizations.detail.replace(/{organization_id}/g, organization_id) },
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

    function display_main(row) {
        console.log("[CALL] display_main");

        //
        // display Edit Organizations button
        //
        $('.button_edit_organization').on('click',() => {
            window.location = location_conf.href.organizations.edit.replace(/{organization_id}/g, organization_id);
        });
        if(OrganizationsCommon.enabled_check.edit_button(row.status)) {
            $('.button_edit_organization').prop('disabled', false);
        } else {
            $('.button_edit_organization').prop('disabled', true);
            $('.button_edit_organization').css('cursor', 'not-allowed');
        }

        //
        // display Delete Organizations button
        //
        $('.button_delete_organization').on('click',() => {
            delete_organization();
        });
        $('.button_delete_organization').prop('disabled', false);

        //
        // display Organizations detail
        //
        $("#text_organization_id").text(row.id);
        $("#text_organization_name").text(row.name);
        try { $("#text_active_plan").text(row.active_plan.id)} catch(e) { }
        try { $("#text_status").text(row.status)} catch(e) { }

        //
        // オーガナイゼーション管理者一覧の表示 - organization managers list display
        //
        display_organization_managers_list(row.organization_managers);


    }

    //
    // オーガナイゼーション管理者一覧の表示 - display organization managers list
    //
    function display_organization_managers_list(users) {

        // 明細行を削除
        $('#organization_managers_list .datarow').remove();

        if (users.length == 0) {
            // 0件の時はnotfoudの表示
            $('#organization_managers_list .notfound').css('display','');
        } else {
            // 1件以上の時はnotfoudの表示を消す
            $('#organization_managers_list .notfound').css('display','none');
            // 明細のテンプレート行からhtmlを取り出す
            // ※class名を"datarow-template"から"datarow"に変更しておく
            const row_template = $('#organization_managers_list .datarow-template').clone(true).removeClass('datarow-template').addClass('datarow').prop('outerHTML');

            // 明細にデータを埋め込み行を明細を作りこむ
            for(let i = 0; i < users.length; ++i) {
                const user = users[i];

                row_html = row_template
                    .replace(/\${user_id}/g, fn.cv(user.id,'',true))
                    .replace(/\${username}/g, fn.cv(user.username,'',true))
                    .replace(/\${firstName}/g, fn.cv(user.firstName,'',true))
                    .replace(/\${lastName}/g, fn.cv(user.lastName,'',true))
                    .replace(/\${enabled}/g, user.enabled ? '<span class="icon icon-check"></span>' : '')
                    .replace(/\${create_timestamp}/g, fn.date(new Date(user.create_timestamp),'yyyy/MM/dd HH:mm:ss'))
                $("#organization_managers_list tbody").append(row_html);
            }

        }
        $('#organization_managers_list .datarow').css('display','');
    }

    function delete_organization() {
        console.log("[CALL] confirm_delete");

        deleteConfirmMessage(
            getText("000-80017", "実行確認"),
            getText("000-85007", "以下のオーガナイゼーションを削除してよろしいですか？"),
            organization_id,
            getText("000-85008", "削除したオーガナイゼーションのアクセスは以降一切できなくなります。"),
            organization_id,
            () => {
                disabled_button();
                show_progress();

                // APIを呼出す
                call_api_promise({
                    type: "DELETE",
                    url: api_conf.api.organizations.delete.replace(/{organization_id}/g, organization_id),
                    headers: {
                        Authorization: "Bearer " + CommonAuth.getToken(),
                    },
                }).then(() => {
                    hide_progress();
                    alertMessage(getText("000-80018", "処理結果"), getText("000-85009", "オーガナイゼーションを削除しました。"),
                        () => {
                            window.location.href = location_conf.href.organizations.list.replace(/{organization_id}/g, CommonAuth.getRealm());
                        });
                }).catch(() => {
                    hide_progress();
                });
            }
        );
    }

    function disabled_button() {
        $('.button_edit_organization').prop('disabled', true);
        $('.button_delete_organization').prop('disabled', true);
    }
});
