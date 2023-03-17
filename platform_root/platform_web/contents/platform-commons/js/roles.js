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
            // Get Role List
            call_api_promise_get_roles(),
            // get Workspace List
            call_api_promise_get_workspaces(),
        ]).then(function(results) {
            // Display Menu
            displayMenu('menu_role_management');
            // Display Topic Path
            displayTopicPath([
                {"text": getText("000-84001", "ロール一覧"), "href": location_conf.href.roles.list.replace(/{organization_id}/g, CommonAuth.getRealm()) }
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

    function call_api_promise_get_roles() {
        return call_api_promise({
            type: "GET",
            url: api_conf.api.roles.get.replace(/{organization_id}/g, CommonAuth.getRealm()),
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            },
            contentType: "application/json",
            dataType: "json",
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

    function display_main(roles, workspaces) {
        console.log("[CALL] display_main");
        let adminWorkspaces = CommonAuth.getAdminWorkspaces();

        //
        // new role button
        //
        if(RolesCommon.isAlllowedCreateRole()) {
            $('#new_role').css('display','');
            $('#new_role').prop('disabled',false);
        }
        $('#new_role').on('click',() => {
            window.location = location_conf.href.roles.new.replace(/{organization_id}/g, CommonAuth.getRealm());
        });

        //
        // display role list
        //
        $('#roles_list .datarow').remove();
        if (roles.length == 0) {
            $('#roles_list notfound').css('dispaly','');
        } else {
            const row_template = $('#roles_list .datarow-template').clone(true).removeClass('datarow-template').addClass('datarow').prop('outerHTML');
            let html = '';
            for(let role of roles.sort((a,b) => {
                return (((a.kind + ":" + a.name) == (b.kind + ":" + b.name))? 0 : ((a.kind + ":" + a.name) > (b.kind + ":" + b.name))? 1: -1); })) {

                const authorityTexts = RolesCommon.getAuthorityTexts(role, workspaces);
                html += row_template
                    .replace(/\${role_name}/g, fn.cv(role.name,'',true))
                    .replace(/\${role_description}/g, fn.cv(role.description,'',true))
                    .replace(/\${role_kind}/g, fn.cv(role.kind,'',true))
                    .replace(/\${role_authority}/g, authorityTexts.map((t) => {return '<span class="auth_item">' + fn.cv(t,'',true) +'</span>'}).join("\n"))
            }
            $('#roles_list tbody').append(html);
            $('#roles_list .datarow').css('display','');

            // edit role button
            $('#roles_list .btn_edit').on('click',function() {
                window.location = location_conf.href.roles.edit.replace('{organization_id}',CommonAuth.getRealm()).replace('{role_name}',$(this).attr('data-id'));
            });

            // role member button
            $('#roles_list .btn_member').on('click',function() {
                window.location = location_conf.href.roles.user.replace('{organization_id}',CommonAuth.getRealm()).replace('{role_name}',$(this).attr('data-id'));
            });

            // role delete button
            $('#roles_list .button_delete').on('click',function() {
                click_deleteRole($(this).attr('data-id'));
            });

            //
            // display role edit button
            //
            $('#roles_list .btn_edit').each(function(index, element) {
                const $element = $(element);
                const rolename = $element.attr('data-id');
                const rolesIndex = roles.findIndex((i) => {return i.name == rolename});
                if(rolesIndex === -1) {
                    allowedEditRole = false;
                } else {
                    allowedEditRole = RolesCommon.isAllowedEditRole(roles[rolesIndex]);
                    $element.css('display', RolesCommon.isSystemRole(roles[rolesIndex])? 'none': '');
                }
                $element.prop('disabled', !allowedEditRole);
                $element.css('cursor', allowedEditRole? '' :'not-allowed');
            });

            //
            // display role member button
            //
            $('#roles_list .btn_member').each(function(index, element) {
                const $element = $(element);
                const rolename = $element.attr('data-id');
                const rolesIndex = roles.findIndex((i) => {return i.name == rolename});
                if(rolesIndex === -1) {
                    allowedGrantRole = false;
                } else {
                    allowedGrantRole = RolesCommon.isAllowedGrantRole(roles[rolesIndex]);
                }
                $element.prop('disabled', !allowedGrantRole);
                $element.css('cursor', allowedGrantRole? '' :'not-allowed');
            });

            //
            // display role delete button
            //
            $('#roles_list .button_delete').each(function(index, element) {
                const $element = $(element);
                const rolename = $element.attr('data-id');
                const rolesIndex = roles.findIndex((i) => {return i.name == rolename});
                if(rolesIndex === -1) {
                    allowedDeleteRole = false;
                } else {
                    allowedDeleteRole = RolesCommon.isAllowedDeleteRole(roles[rolesIndex]);
                    $element.css('display', RolesCommon.isSystemRole(roles[rolesIndex])? 'none': '');
                }
                $element.prop('disabled', !allowedDeleteRole);
                $element.css('cursor', allowedDeleteRole? '' :'not-allowed');
            });
        }
    }

    function click_deleteRole(role_name) {
        deleteConfirmMessage(
            getText("000-80017", "実行確認"),
            getText("000-84006", "以下のロールを削除してよろしいですか？"),
            role_name,
            getText("000-84007", "削除したロールに紐づくユーザからロールに紐づくワークスペースへのアクセス権限なくなります。"),
            CommonAuth.getRealm() + "/" + role_name,
            () => {
                disabled_button();
                show_progress();

                // APIを呼出す
                call_api_promise({
                    type: "DELETE",
                    url: api_conf.api.roles.delete.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{role_name}/g, role_name),
                    headers: {
                        Authorization: "Bearer " + CommonAuth.getToken(),
                    },
                }).then(() => {
                    return Promise.all([
                            // Get Role List
                            call_api_promise_get_roles(),
                            // get Workspace List
                            call_api_promise_get_workspaces(),
                        ]);
                }).then((results) => {
                    // 一覧の再描画
                    display_main(results[0].data, results[1].data);
                    hide_progress();
                    alertMessage(getText("000-80018", "処理結果"), getText("000-84008", "ロールを削除しました。"));
                }).catch(() => {
                    enabled_button();
                    hide_progress();
                });
            }
        );
    }

    function disabled_button() {
        $('#new_role').prop('disabled',true);

        $('#roles_list .btn_edit').each(function(index, element) {
            $(element).prop('disabled', true);
        });
        $('#roles_list .btn_member').each(function(index, element) {
            $(element).prop('disabled', true);
        });
        $('#roles_list .button_delete').each(function(index, element) {
            $(element).prop('disabled', true);
        });
    }

    function enabled_button() {
        $('#new_role').prop('disabled',false);

        $('#roles_list .btn_edit').each(function(index, element) {
            const $element = $(element);
            $element.prop('disabled', ($element.css("cursor") == "not-allowed"));
        });
        $('#roles_list .btn_member').each(function(index, element) {
            const $element = $(element);
            $element.prop('disabled', ($element.css("cursor") == "not-allowed"));
        });
        $('#roles_list .button_delete').each(function(index, element) {
            const $element = $(element);
            $element.prop('disabled', ($element.css("cursor") == "not-allowed"));
        });
    }
});
