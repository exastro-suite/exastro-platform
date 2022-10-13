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
                {"text": "ワークスペース一覧", "href": location_conf.href.workspaces.list.replace(/${organization_id}/g, CommonAuth.getRealm()) },
                {"text": "新規ワークスペース", "href": location_conf.href.workspaces.new.replace(/${organization_id}/g, CommonAuth.getRealm()) },
            ]);
            display_main();
            finish_onload_progress();

        }).catch((e) => {
            console.log('[ERROR] load_main catch');
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

        //
        // validate workspace id
        //
        if($("#form_workspace_id").val() === "") {
            $("#message_workspace_id").text(
                getText("400-00011", "必須項目が不足しています。({0})", getText("000-00101", "ワークスペースID")));
            result = false;

        } else if($("#form_workspace_id").val().replace(/[a-zA-Z0-9_-]/g,"") !== "") {
            $("#message_workspace_id").text(
                getText("400-00017", "指定できない文字が含まれています。(項目:{0},指定可能な文字:{1})",
                    getText("000-00101", "ワークスペースID"),
                    getText("000-00101", "半角英数・ハイフン・アンダースコア")));
            result = false;

        } else if( ! $("#form_workspace_id").val().match(/^[a-zA-Z]/)) {
            $("#message_workspace_id").text(
                getText("400-00014", "先頭の文字にアルファベット以外が指定されています。({0})", getText("000-00101", "ワークスペースID")));
            result = false;
        } else {
            $("#message_workspace_id").text("");
        }

        //
        // validate workspace name
        //
        if($("#form_workspace_name").val() === "") {
            $("#message_workspace_name").text(getText("400-00011", "必須項目が不足しています。({0})", getText("000-00102", "ワークスペース名")));
            result = false;
        } else {
            $("#message_workspace_name").text("");
        }

        //
        // validate environments
        //
        // 文字数チェック
        // Character count check
        environments = $('#form_workspace_environments').val();
        environments_arr = environments.split(/\r\n|\r|\n/).map(i => i.trim()).filter(i => i.length > 0);

        if(environments_arr.filter(i => i.length > 40).length > 0) {
            $("#message_workspace_environments").text(getText("400-00012", "指定可能な文字数を超えています。(項目:{0},最大文字数:{1})", getText("000-00105", "環境名"), "40"));
            result = false;
        } else if(Array.from(new Set(environments_arr)).length !== environments_arr.length) {
            $("#message_workspace_environments").text(getText("400-00019", "指定された値が重複しています。（項目:{0}）", getText("000-00105", "環境名")));
            result = false;
        } else {
            $("#message_workspace_environments").text("");
        }

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
            alert("ワークスペースを作成しました");
            window.location = location_conf.href.workspaces.list.replace(/{organization_id}/g, CommonAuth.getRealm());
        }).catch(() => {
            $('#button_register').prop('disabled',false);
        })
    }
});
