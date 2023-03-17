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
            displayMenu('menu_workspace');
            // Display Topic Path
            displayTopicPath([
                {"text": getText("000-82001", "ワークスペース一覧"), "href": location_conf.href.workspaces.list.replace(/{organization_id}/g, CommonAuth.getRealm()) },
                {"text": getText("000-82014", "新規ワークスペース"), "href": location_conf.href.workspaces.new.replace(/{organization_id}/g, CommonAuth.getRealm()) },
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
            workspace_register();
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
    function workspace_register() {
        environments = $('#form_workspace_environments').val();
        env_json = environments.split(/\r\n|\r|\n/).map(i => i.trim()).filter(i => i.length > 0).map(i => {return {"name": i}});

        let reqbody =   {
            "id": $('#form_workspace_id').val(),
            "name": $('#form_workspace_name').val(),
            "informations": {
                "description": $('#form_workspace_description').val(),
                "environments": env_json,
                "workspace_administrators": [
                ]
            }
        }

        show_progress();
        call_api_promise(
            {
                type: "POST",
                url: api_conf.api.workspaces.post.replace(/{organization_id}/g, CommonAuth.getRealm()),
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                data: JSON.stringify(reqbody),
                contentType: "application/json",
                dataType: "json",
            }
        ).then(() => {
            hide_progress();
            alertMessage(getText("000-80018", "処理結果"), getText("000-82020", "ワークスペースを作成しました"),
            () => {
                window.location = location_conf.href.workspaces.list.replace(/{organization_id}/g, CommonAuth.getRealm());
            });
        }).catch(() => {
            hide_progress();
            $('#button_register').prop('disabled',false);
        })
    }
});
