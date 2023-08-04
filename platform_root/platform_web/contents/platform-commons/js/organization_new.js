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
            displayMenu('menu_organizations');
            // Display Topic Path
            displayTopicPath([
                { "text": getText("000-85001", "オーガナイゼーション一覧"), "href": location_conf.href.organizations.list },
                { "text": getText("000-82014", "新規オーガナイゼーション"), "href": location_conf.href.organizations.new },
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
    // validate register
    //
    function validate_register() {
        console.log("--- validate check start ----");
        let result=true;

        // validate workspace id
        validate = WorkspacesCommon.validate.workspace_id($("#form_workspace_id").val());
        result = result && validate.result;
        $("#message_workspace_id").text(validate.message);

        // validate workspace name
        validate = WorkspacesCommon.validate.workspace_name($("#form_workspace_name").val());
        result = result && validate.result;
        $("#message_workspace_name").text(validate.message);

        // validate environments
        validate = WorkspacesCommon.validate.environments($('#form_workspace_environments').val());
        result = result && validate.result;
        $("#message_workspace_environments").text(validate.message);

        console.log("--- validate check end [" + result + "] ----");

        return result;
    }

    //
    // register workspace
    //
    function organization_register() {
        environments = $('#form_workspace_environments').val();
        env_json = environments.split(/\r\n|\r|\n/).map(i => i.trim()).filter(i => i.length > 0).map(i => {return {"name": i}});

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

        show_progress();
        call_api_promise(
            {
                type: "POST",
                url: api_conf.api.organization.post,
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
                window.location = location_conf.href.workspaces.list.replace(/{organization_id}/g, CommonAuth.getRealm());
            });
        }).catch(() => {
            hide_progress();
            $('#button_register').prop('disabled',false);
        })
    }
});
