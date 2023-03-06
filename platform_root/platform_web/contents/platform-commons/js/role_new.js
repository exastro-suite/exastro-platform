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
            // get Workspace List
            call_api_promise({
                type: "GET",
                url: api_conf.api.workspaces.get.replace(/{organization_id}/g, CommonAuth.getRealm()),
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                contentType: "application/json",
                dataType: "json",
            })
        ]).then(function(results) {
            // Display Menu
            displayMenu('menu_role_management');
            // Display Topic Path
            displayTopicPath([
                {"text": getText("000-84001", "ロール一覧"), "href": location_conf.href.roles.list.replace(/{organization_id}/g, CommonAuth.getRealm()) },
                {"text": getText("000-84025", "新規ロール"), "href": location_conf.href.roles.new.replace(/{organization_id}/g, CommonAuth.getRealm()) },
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

    function display_main(workspaces) {
        console.log("[CALL] display_main");

        //
        // display workspace list
        //
        display_workspace_list(workspaces);

        //
        // role register button
        //
        $('#button_register').prop('disabled',false);
        $('#button_register').on('click',() => {
            $('#button_register').prop('disabled',true);
            if( ! validate_register() ) {
                $('#button_register').prop('disabled',false);
                return;
            }
            role_register();
        });
    }

    //
    // display workspace list
    //
    function display_workspace_list(workspaces) {
        //
        // List configurable workspace list
        // 設定可能なワークスペース一覧をリスト化する
        //
        let adminWorkspaces = CommonAuth.getAdminWorkspaces();

        workspaceListData = [];
        for(let row of workspaces) {
            if(CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_WS_ROLE_MAINTE) || adminWorkspaces.indexOf(row.id) !== -1) {
                workspaceListData.push({
                    workspace_id: row.id,
                    workspace_name: row.name,
                    last_update_timestamp: row.last_update_timestamp,
                });
            }
        }

        //
        // Display a list of configurable workspaces
        // 設定可能なワークスペース一覧を表示する
        //
        let data_row_template = $("#workspace_list").html();
        let html = '';

        const sortKey = 'last_update_timestamp';
        const sortreverse = -1;
        workspaceListData.sort(function(a, b){
            const as = a[sortKey].toLowerCase(), bs = b[sortKey].toLowerCase();
            if ( as < bs ) {
                return sortreverse * -1;
            } else if ( as > bs ) {
                return sortreverse * 1;
            } else {
                return 0;
            }
        });

        for(var row of workspaceListData) {
            var date = new Date(row.last_update_timestamp);
            format_last_update_timestamp = fn.date(date,'yyyy/MM/dd HH:mm:ss');

            html += data_row_template
                .replace(/\${workspace_id}/g, fn.cv(row.workspace_id,'',true))
                .replace(/\${workspace_name}/g, fn.cv(row.workspace_name,'',true))
                .replace(/\${workspace_description}/g, fn.cv(row.description,'',true))
                .replace(/\${last_update_date_time}/g, fn.cv(format_last_update_timestamp,'',true));
        }

        $("#workspace_list").html(html);
        $("#workspace_list").css('display', '');
        $("#workspace_list_notfound").css('display', (workspaceListData.length == 0? '': 'none'));
        if(!CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_WS_ROLE_MAINTE)) {
            $('#workspace_required').css('display','');
        }
    }

    //
    // validate input
    //
    function validate_register() {
        console.log("[CALL] validate_register");
        let result=true;

        //
        // validate role name
        //
        if($("#form_role_name").val() === "") {
            $("#message_role_name").text(
                getText("400-00011", "必須項目が不足しています。({0})", getText("000-00107", "ロール名")));
            result = false;

        } else if($("#form_role_name").val().replace(/[a-zA-Z0-9_-]/g,"") !== "") {
            $("#message_role_name").text(
                getText("400-00017", "指定できない文字が含まれています。(項目:{0},指定可能な文字:{1})",
                        getText("000-00107", "ロール名"),
                        getText("000-31001", "半角英数・ハイフン・アンダースコア")));
            result = false;

        } else if( ! $("#form_role_name").val().match(/^[a-zA-Z]/)) {
            $("#message_role_name").text(
                getText("400-00014", "先頭の文字にアルファベット以外が指定されています。({0})", getText("000-00107", "ロール名")));
            result = false;
        } else {
            $("#message_role_name").text("");
        }

        if(!CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_WS_ROLE_MAINTE)) {
            if($('.select_workspace:checked').length === 0) {
                $("#message_workspace").text(
                    getText("400-00011", "必須項目が不足しています。({0})", getText("000-00102", "ワークスペース名")));
                result = false;
            } else {
                $("#message_workspace").text("");
            }
        }

        console.log(`[END] validate_register : result=${result}`);
        return result;
    }

    //
    // role_register
    //
    function role_register() {
        console.log("[CALL] role_register");

        let checked_workspace_id = $('.select_workspace:checked').map(function() {return {"id": this.value};}).get();

        let reqbody =   {
            "name": $('#form_role_name').val(),
            "description": $('#form_role_description').val(),
            "kind": "workspace",
            "workspaces": checked_workspace_id
        }

        show_progress();
        call_api_promise(
            {
                type: "POST",
                url: api_conf.api.roles.post.replace(/{organization_id}/g, CommonAuth.getRealm()),
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                data: JSON.stringify(reqbody),
                contentType: "application/json",
                dataType: "json",
            }
        ).then(() => {
            hide_progress();
            alertMessage(getText("000-80018", "処理結果"), getText("000-84033", "ロールを作成しました"),
                () => {
                    window.location = location_conf.href.roles.list.replace(/{organization_id}/g, CommonAuth.getRealm());
                });
        }).catch(() => {
            hide_progress();
            $('#button_register').prop('disabled',false);
        })
    }
});
