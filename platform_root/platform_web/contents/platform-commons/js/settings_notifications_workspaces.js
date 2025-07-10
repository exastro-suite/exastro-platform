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
            displayMenu('menu_settings_notifications');
            // Display Topic Path
            displayTopicPath([
                {"text": getText("000-87006", "通知先ワークスペース一覧"), "href": location_conf.href.workspaces.settings.notifications.workspaces.replace(/{organization_id}/g, CommonAuth.getRealm())}
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
            const sortKey = 'name'; // ワークスペース名
            const sortreverse = 1;  // 昇順
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
                if (!$(this).prop('disabled')){
                    let workspace_id = $(this).attr('data-id');
                    window.location = location_conf.href.workspaces.settings.notifications.list.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id);
                }
            });

            $('#workspace_list .button_edit_workspace').on('click', function() {
                let workspace_id = $(this).attr('data-id');
                window.location = location_conf.href.workspaces.settings.notifications.list.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id);
            });
        }
    }

    function enabled_button() {
        $('#workspace_list .button_edit_workspace').each(function(index, element) {
            let $element = $(element);
            $element.prop('disabled', false);
        });

        $('#workspace_list .to_detail').each(function(index, element) {
            let $element = $(element);
            $element.prop('disabled', false);
        });
    }
});
