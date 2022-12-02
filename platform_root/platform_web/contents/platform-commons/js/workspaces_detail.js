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
            call_api_promise({
                type: "GET",
                url: api_conf.api.workspaces.detail.members.get.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id),
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                contentType: "application/json",
                dataType: "json",
            })
        ]).then(function(results) {
            // Display Menu
            displayMenu('menu_workspace');
            // Display Topic Path
            displayTopicPath([
                {"text": "ワークスペース一覧", "href": location_conf.href.workspaces.list.replace(/{organization_id}/g, CommonAuth.getRealm()) },
                {"text": "ワークスペース詳細", "href": location_conf.href.workspaces.detail.replace(/{organization_id}/g, CommonAuth.getRealm()).replace('{workspace_id}', workspace_id) },
            ]);
            display_main(results[1].data, results[2].data);
            finish_onload_progress();

        }).catch((e) => {
            console.log('[ERROR] load_main catch');
            finish_onload_progress_at_error();
            if(typeof e != "undefined") console.log(e);
            return;
        });
    }

    function display_main(workspace, member) {
        console.log("[CALL] display_main");

        //
        // display Exastro IT Automation button
        //
        $('.to_ita').on('click',() => { 
            window.location = location_conf.href.workspaces.ita.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id);
        });
        if(CommonAuth.getAccessibleWorkspaces().indexOf(workspace_id) !== -1) {
            $('.to_ita').prop('disabled', false);
        } else {
            $('.to_ita').prop('disabled', true);
            $('.to_ita').css('cursor', 'not-allowed');
        }

        //
        // display workspace detail
        //
        $("#text_workspace_id").text(workspace.id);
        $("#text_workspace_name").text(workspace.name);
        environments = workspace.informations.environments.sort((env1,env2) => { return env1.name < env2.name? -1: 1 });
        env_text = "";
        environments.forEach(function (value) {
            env_text += value.name + "\n";
        });

        $("#text_workspace_environments").text(env_text);

        try { $("#text_last_update_date_time").text(fn.date(new Date(workspace.last_update_timestamp),'yyyy/MM/dd HH:mm:ss'))} catch(e) { }
        try { $("#text_workspace_description").text(workspace.informations.description)} catch(e) { }

        //
        // display member list
        //
        memberList = "";
        for(var row of member.sort((mb1, mb2) => { return mb1.name < mb2.name? -1: 1})) {
            if ("name" in row){
                memberList = memberList + '<span class="member_name">' + fn.cv(row.name,'',true) + "</span>\n";
            }
        }
        $("#text_workspace_member").html(memberList);
    }
});
