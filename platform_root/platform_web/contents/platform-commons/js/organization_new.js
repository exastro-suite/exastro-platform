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
                { "text": getText("000-82014", "新規オーガナイゼーション"), "href": location_conf.href.organizations.new },
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
            $('#button_register').prop('disabled',true);
            if( ! validate_register() ) {
                $('#button_register').prop('disabled',false);
                return;
            }
            organization_register();
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
            $('#form_plan_id').append($('<option>').html(fn.cv(row.plan_id,'',true)+':'+fn.cv(row.plan_name,'',true)).val(fn.cv(row.plan_id,'',true)));
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

        console.log("--- validate check end [" + result + "] ----");

        return result;
    }

    //
    // register organization
    //
    function organization_register() {
        let plan_id = "";
        if($("#form_plan_id").val() != "") {
                plan_id = { "plan": {
                    "plan_id": $("#form_plan_id").val()
                }
            }
        }

        let reqbody =   {
            "id": $('#form_organization_id').val(),
            "name": $('#form_organization_name').val(),
            plan_id,
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
            alertMessage(getText("000-80018", "処理結果"), getText("000-82020", "オーガナイゼーションを作成しました"),
            () => {
                window.location = location_conf.href.organizations.list;
            });
        }).catch(() => {
            hide_progress();
            $('#button_register').prop('disabled',false);
        })
    }
});
