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
                {"text": getText("000-85035", "オーガナイゼーション編集"), "href": location_conf.href.organizations.edit.replace(/{organization_id}/g, organization_id) },
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
        // display Organizations detail
        //
        $("#text_organization_id").text(row.id);
        $("#form_organization_name").val(row.name);
        try { $("#text_active_plan").text(row.active_plan.id)} catch(e) { }
        try { $("#text_status").text(row.status)} catch(e) { }
        $("#form_organization_enabled").prop("checked", row.enabled);

        //
        // オーガナイゼーション管理者一覧の表示 - organization managers list display
        //
        display_organization_managers_list(row.organization_managers);

        //
        // register button
        //
        $('#button_register').on('click',() => {
            $('#button_register').prop('disabled',true);
            if( ! validate_register() ) {
                $('#button_register').prop('disabled',false);
                return;
            }
            organization_register();
        });

        if(OrganizationsCommon.enabled_check.edit_button(row.status)) {
            $('#button_register').prop('disabled', false);
        } else {
            $('#button_register').prop('disabled', true);
            $('#button_register').css('cursor', 'not-allowed');
        }

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

    //
    // validate register
    //
    function validate_register() {
        console.log("--- validate check start ----");
        let result=true;

        // validate organization name
        validate = OrganizationsCommon.validate.organization_name($("#form_organization_name").val());
        result = result && validate.result;
        $("#message_organization_name").text(validate.message);

        console.log("--- validate check end [" + result + "] ----");

        return result;
    }

    //
    // register organization
    //
    function organization_register() {

        let reqbody =   {
            "name": $('#form_organization_name').val(),
            "enabled": ($('#form_organization_enabled').prop('checked') ? true : false),
        }

        show_progress();
        call_api_promise(
            {
                type: "PUT",
                url: api_conf.api.organizations.detail.put.replace(/{organization_id}/g, organization_id),
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                data: JSON.stringify(reqbody),
                contentType: "application/json",
                dataType: "json",
            }
        ).then(() => {
            hide_progress();
            alertMessage(getText("000-80018", "処理結果"), getText("000-85038", "オーガナイゼーションを変更しました"),
            () => {
                window.location = location_conf.href.organizations.list;
            });
        }).catch(() => {
            hide_progress();
            $('#button_register').prop('disabled',false);
        })
    }

});
