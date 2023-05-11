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
            call_api_promise_get_workspaces(),

        ]).then(function(results) {
            // Display Menu
            displayMenu('menu_workspace');
            // Display Topic Path
            displayTopicPath([
                {"text": getText("000-82001", "ワークスペース一覧"), "href": location_conf.href.workspaces.list.replace(/{organization_id}/g, CommonAuth.getRealm()) }
            ]);

            display_main(results[1].data);
            finish_onload_progress();
            enabled_button();
        }).catch((e) => {
            console.log('[ERROR] load_main catch');
            finish_onload_progress_at_error();
            if(typeof e != "undefined") console.log(e);
            return;
        });
    }

    function call_api_promise_get_workspaces() {
        return call_api_promise({
            type: "GET",
            url: api_conf.api.workspaces.get.replace(/{organization_id}/g, CommonAuth.getRealm()),
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            },
            contentType: "application/json",
            dataType: "json",
        });
    }

    function display_main(workspaces) {
        console.log("[CALL] display_main");

        //
        // display new workspace button
        //
        if (CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_WS_MAINTE)) {
            $('#new_workspace').css('display','');
            $('#new_workspace').on('click',() => {
                window.location = location_conf.href.workspaces.new.replace(/{organization_id}/g, CommonAuth.getRealm());
            });
        }

        //
        // display workspace list
        //
        if ( workspaces.length == 0 ) {
            $("#workspace_list .notfound").css('display', '');
            $("#workspace_list .datarow").remove();
        } else {
            $("#workspace_list .notfound").css('display', 'none');
            $("#workspace_list .datarow").remove();

            //
            // sort workspace list
            //
            const sortKey = 'last_update_timestamp';
            const sortreverse = -1;
            workspaces.sort(function(a, b){
                const as = a[sortKey].toLowerCase(), bs = b[sortKey].toLowerCase();
                if ( as < bs ) {
                    return sortreverse * -1;
                } else if ( as > bs ) {
                    return sortreverse * 1;
                } else {
                    return 0;
                }
            });

            //
            // display workspace list
            //
            const row_template = $('#workspace_list .datarow-template').clone(true).removeClass('datarow-template').addClass('datarow').prop('outerHTML');
            let html='';
            for(var row of workspaces) {
                html += row_template
                    .replace(/\${workspace_id}/g, fn.cv(row.id,'',true))
                    .replace(/\${workspace_name}/g, fn.cv(row.name,'',true))
                    .replace(/\${workspace_description}/g, fn.cv(row.informations.description,'',true))
                    .replace(/\${last_update_date_time}/g, fn.date(new Date(row.last_update_timestamp),'yyyy/MM/dd HH:mm:ss'));
            }
            $("#workspace_list tbody").append(html);
            $("#workspace_list .datarow").css('display', '');

            $('#workspace_list .to_detail').on('click', function() {
                let workspace_id = $(this).attr('data-id');
                window.location = location_conf.href.workspaces.detail.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id);
            });
            $('#workspace_list .btn_ita').on('click', function() {
                let workspace_id = $(this).attr('data-id');
                window.location = location_conf.href.workspaces.ita.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id);
            });

            $('#workspace_list .button_edit_workspace').on('click', function() {
                let workspace_id = $(this).attr('data-id');
                window.location = location_conf.href.workspaces.edit.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id);
            });

            $('#workspace_list .button_delete_workspace').on('click', function() {
                confirm_delete($(this).attr('data-id'), $(this).attr('data-name'));
            })
        }
    }

    function confirm_delete(workspace_id, workspace_name) {
        console.log("[CALL] confirm_delete");

        deleteConfirmMessage(
            getText("000-80017", "実行確認"),
            getText("000-82005", "以下のワークスペースを削除してよろしいですか？"),
            workspace_id,
            getText("000-82006", "削除したワークスペースへのアクセスは以降一切できなくなります。"),
            CommonAuth.getRealm() + "/" + workspace_id,
            () => {
                disabled_button();
                show_progress();

                // APIを呼出す
                call_api_promise({
                    type: "DELETE",
                    url: api_conf.api.workspaces.delete.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id),
                    headers: {
                        Authorization: "Bearer " + CommonAuth.getToken(),
                    },
                }).then(() => {
                    // 一覧の再取得
                    return call_api_promise_get_workspaces();
                }).then((result) => {
                    // 一覧の再描画
                    display_main(result.data);
                    enabled_button();
                    hide_progress();
                    alertMessage(getText("000-80018", "処理結果"), getText("000-82007", "ワークスペースを削除しました。"));
                }).catch(() => {
                    enabled_button();
                    hide_progress();
                });
            }
        );
    }

    function disabled_button() {
        $("#new_workspace").prop('disabled', true);
        $("#workspace_list button").prop('disabled', true);
    }

    function enabled_button() {
        $("#new_workspace").prop('disabled', false);

        const accessibleWorkspaces = CommonAuth.getAccessibleWorkspaces();
        $('#workspace_list .btn_ita').each(function(index, element) {
            let $element = $(element);
            if(accessibleWorkspaces.indexOf($element.attr('data-id')) !== -1) {
                $element.prop('disabled', false);
            } else {
                $element.prop('disabled', true);
                $element.css('cursor', 'not-allowed');
            }
        });

        const adminWorkspaces = CommonAuth.getAdminWorkspaces();
        $('#workspace_list .button_delete_workspace').each(function(index, element) {
            let $element = $(element);
            if(CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_WS_MAINTE)) {
                $element.prop('disabled', false);
                return;
            }
            if(adminWorkspaces.indexOf($element.attr('data-id')) !== -1) {
                $element.prop('disabled', false);
            } else {
                $element.prop('disabled', true);
                $element.css('cursor', 'not-allowed');
            }
        });

        $('#workspace_list .button_edit_workspace').each(function(index, element) {
            let $element = $(element);
            if(CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_WS_MAINTE)) {
                $element.prop('disabled', false);
                return;
            }
            if(adminWorkspaces.indexOf($element.attr('data-id')) !== -1) {
                $element.prop('disabled', false);
            } else {
                $element.prop('disabled', true);
                $element.css('cursor', 'not-allowed');
            }
        });
    }
});
