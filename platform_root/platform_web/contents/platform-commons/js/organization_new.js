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
            loadCommonContents(),
            // get plans List
            call_api_promise({
                type: "GET",
                url: api_conf.api.plans.get,
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                contentType: "application/json",
                dataType: "json",
            })
        ]).then(function(results) {
            // Display Menu
            displayMenu('menu_organizations');
            // Display Topic Path
            displayTopicPath([
                { "text": getText("000-85001", "オーガナイゼーション一覧"), "href": location_conf.href.organizations.list },
                { "text": getText("000-85011", "新規オーガナイゼーション"), "href": location_conf.href.organizations.new },
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

    function display_main(plans) {
        console.log("[CALL] display_main");

        //
        // display plans list
        //
        display_plans_list(plans);

        //
        // register button
        //
        $('#button_register').on('click',() => {
            confirmMessage(getText("000-80042", "作成確認"), getText("000-85025", "オーガナイゼーションを作成しますか？"),
                () => {
                    // OK
                    $('#button_register').prop('disabled',true);
                    if( ! validate_register() ) {
                        $('#button_register').prop('disabled',false);
                        return;
                    }
                    organization_register();
                },
                () => {
                    // Cancel
                    return;
                }
            );
        });
    }

    //
    // display plans list
    //
    function display_plans_list(plans) {

        //
        // List configurable plans list
        // プラン一覧をリスト化する
        //

        planListData = [];
        for(let row of plans) {
            planListData.push({
                plan_id: row.id,
                plan_name: row.name,
                last_update_timestamp: row.last_update_timestamp,
            });
        }

        //
        // Display a list of plans
        // プラン一覧を表示する
        //

        const sortKey = 'last_update_timestamp';
        const sortreverse = -1;
        planListData.sort(function(a, b){
            const as = a[sortKey].toLowerCase(), bs = b[sortKey].toLowerCase();
            if ( as < bs ) {
                return sortreverse * -1;
            } else if ( as > bs ) {
                return sortreverse * 1;
            } else {
                return 0;
            }
        });

        let html = '';

        $('#form_plan_id').append($('<option>').html('').val(''));
        for(var row of planListData) {
            if (fn.cv(row.plan_id,'',true).charAt(0) != '_')
            {
                $('#form_plan_id').append($('<option>').html(fn.cv(row.plan_id,'',true)+':'+fn.cv(row.plan_name,'',true)).val(fn.cv(row.plan_id,'',true)));
            }
        }
    }

    //
    // validate register
    //
    function validate_register() {
        console.log("--- validate check start ----");
        let result=true;

        // validate organization id
        validate = OrganizationsCommon.validate.organization_id($("#form_organization_id").val());
        result = result && validate.result;
        $("#message_organization_id").text(validate.message);

        // validate organization name
        validate = OrganizationsCommon.validate.organization_name($("#form_organization_name").val());
        result = result && validate.result;
        $("#message_organization_name").text(validate.message);

        // validate user username
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

        // validate user password
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
    // register organization
    //
    function organization_register() {
        let plan_id = "";
        if($("#form_plan_id").val() != "") {
            plan_id = $("#form_plan_id").val();
        }
        let no_install_driver = [];
        $('input[name=form_ita_no_install_driver]:not(:checked)').each(function() {
            no_install_driver.push( $(this).val() );
        });
        console.log("--- no_install_driver: [" + no_install_driver + "] ----");

        let reqbody =   {
            "id": $('#form_organization_id').val(),
            "name": $('#form_organization_name').val(),
            "organization_managers": [{
                "username": $('#form_user_username').val(),
                "email": $('#form_user_email').val(),
                "firstName": $('#form_user_first_name').val(),
                "lastName": $('#form_user_last_name').val(),
                "credentials": [
                    {
                        "type": "password",
                        "value": $('#form_user_password').val(),
                        "temporary": ($('#form_user_password_temporary').prop('checked') ? true : false),
                    }
                ],
                "requiredActions": [
                    "UPDATE_PROFILE"
                ],
                "enabled": ($('#form_user_enabled').prop('checked') ? true : false),
            }]
        }
        if (plan_id != ""){
            reqbody.plan = { "id": plan_id };
        }
        if(no_install_driver.length > 0) {
            reqbody.optionsIta = { "no_install_driver" : no_install_driver };
        }

        show_progress();
        call_api_promise(
            {
                type: "POST",
                url: api_conf.api.organizations.post,
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                data: JSON.stringify(reqbody),
                contentType: "application/json",
                dataType: "json",
            }
        ).then(() => {
            hide_progress();
            alertMessage(getText("000-80018", "処理結果"), getText("000-85024", "オーガナイゼーションを作成しました"),
            () => {
                window.location = location_conf.href.organizations.list;
            });
        }).catch(() => {
            hide_progress();
            $('#button_register').prop('disabled',false);
        })
    }
});
