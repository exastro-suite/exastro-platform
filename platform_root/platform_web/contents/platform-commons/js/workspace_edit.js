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
        Promise.all([
            // Load Common Contents
            loadCommonContents(),
            // get Workspace List
            call_api_promise({
                type: "GET",
                url: api_conf.api.workspaces.detail.get.replace('{organization_id}', CommonAuth.getRealm()).replace('{workspace_id}', workspace_id),
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                contentType: "application/json",
                dataType: "json",
            }),
        ]).then(function(results) {
            // Display Menu
            displayMenu('menu_workspace');
            // Display Topic Path
            displayTopicPath([
                {"text": getText("000-82001", "ワークスペース一覧"), "href": location_conf.href.workspaces.list.replace(/{organization_id}/g, CommonAuth.getRealm()) },
                {"text": getText("000-82021", "ワークスペース編集"), "href": location_conf.href.workspaces.edit.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id) },
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

    function display_main(workspace) {
        console.log("[CALL] display_main");

        //
        // display fields
        //
        $("#display_workspace_id").text(workspace_id);
        $("#form_workspace_id").val(workspace_id);
        $("#form_workspace_name").val(workspace.name);
        $("#form_workspace_environments").val(workspace.informations.environments.map((item,index) => { return item.name}).join("\n"));
        $("#form_workspace_description").val(workspace.informations.description);

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
            "name": $('#form_workspace_name').val(),
            "informations": {
                "description": $('#form_workspace_description').val(),
                "environments": env_json
            }
        }

        show_progress();
        call_api_promise(
            {
                type: "PUT",
                url: api_conf.api.workspaces.put.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id),
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                data: JSON.stringify(reqbody),
                contentType: "application/json",
                dataType: "json",
            }
        ).then(() => {
            hide_progress();
            alertMessage(getText("000-80018", "処理結果"), getText("000-82024", "ワークスペースを変更しました。"),
            () => {
                window.location = location_conf.href.workspaces.list.replace(/{organization_id}/g, CommonAuth.getRealm());
            });
        }).catch(() => {
            hide_progress();
            $('#button_register').prop('disabled',false);
        })
    }
});
