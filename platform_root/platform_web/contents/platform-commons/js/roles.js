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
            call_api_promise({
                type: "GET",
                url: api_conf.api.roles.get.replace(/{organization_id}/g, CommonAuth.getRealm()),
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                contentType: "application/json",
                dataType: "json",
            }),
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
                {"text": "ロール一覧", "href": location_conf.href.roles.list.replace(/${organization_id}/g, CommonAuth.getRealm()) }
            ]);

            display_main(results[1].data, results[2].data);
            finish_onload_progress();
        }).catch((e) => {
            console.log('[ERROR] load_main catch');
            if(typeof e != "undefined") console.log(e);
            return;
        });
    }

    function display_main(roles, workspaces) {
        console.log("[CALL] display_main");
        let adminWorkspaces = CommonAuth.getAdminWorkspaces();

        //
        // new role button
        //
        if (CommonAuth.hasAuthority('_og-ws-role-mt') || adminWorkspaces.length > 0) {
            $('#new_role').css('display','');
            $('#new_role').on('click',() => {
                window.location = location_conf.href.roles.new.replace(/{organization_id}/g, CommonAuth.getRealm());
            });
        }
        //
        // display role list
        //
        if (roles.length == 0) {
            $('#roles_list notfound').css('dispaly','');
        } else {
            const row_template = $('#roles_list .datarow').prop('outerHTML');
            let html = '';
            for(let role of roles.sort((a,b) => {
                return (((a.kind + ":" + a.name) == (b.kind + ":" + b.name))? 0 : ((a.kind + ":" + a.name) > (b.kind + ":" + b.name))? 1: -1); })) {

                const authorityTexts = getAuthorityTexts(role, workspaces);
                html += row_template
                    .replace(/\${role_name}/g, fn.cv(role.name,'',true))
                    .replace(/\${role_description}/g, fn.cv(role.description,'',true))
                    .replace(/\${role_kind}/g, fn.cv(role.kind,'',true))
                    .replace(/\${role_authority}/g, authorityTexts.map((t) => {return '<span class="auth_item">' + fn.cv(t,'',true) +'</span>'}).join("\n"))
            }
            $('#roles_list tbody').html(html);
            $('#roles_list .datarow').css('display','');

            //
            // display edit role button
            //
            $('#roles_list .btn_edit').on('click',function() {
                window.location = location_conf.href.roles.edit.replace('{organization_id}',CommonAuth.getRealm()).replace('{role_name}',$(this).attr('data-id'));
            });

            let adminWorkspaces = CommonAuth.getAdminWorkspaces();
            $('#roles_list .btn_edit').each(function(index, element) {
                let $element = $(element);
                let button_display = true;
                let button_disable = true;
                try {
                    let rolename = $element.attr('data-id');
                    let rolesIndex = roles.findIndex((i) => {return i.name == rolename});

                    if (rolename.match(/^_/)) {
                        button_disable = true;
                        button_display = false;
                    } else if(rolesIndex === -1) {
                        button_disable = true;
                    } else {
                        let role = roles[rolesIndex];
                        switch(role.kind) {
                            case "organization":
                                button_disable = true;
                                break;
                            case "workspace":
                                if(CommonAuth.hasAuthority('_og-ws-role-mt')) {
                                    button_disable = false;
                                } else {
                                    if(role.workspaces.findIndex((workspace) => {return (adminWorkspaces.indexOf(workspace.id) === -1)}) !== -1) {
                                        button_disable = true;
                                    } else {
                                        button_disable = false;
                                    }
                                }
                                break;
                            default:
                                button_disable = true;
                        }
                    }
                } catch(e) {}
                
                $element.css('display', button_display? '': 'none');
                $element.prop('disabled', button_disable);
                if(button_disable) {
                    $element.css('cursor', 'not-allowed');
                }
            });

            //
            // display role member button
            //
            $('#roles_list .btn_member').each(function(index, element) {
                let $element = $(element);
                let button_disable = true;
                try {
                    let rolename = $element.attr('data-id');
                    let rolesIndex = roles.findIndex((i) => {return i.name == rolename});

                    if(rolesIndex === -1) {
                        button_disable = true;
                    } else {
                        let role = roles[rolesIndex];
                        switch(role.kind) {
                            case "organization":
                                if(role.authorities.findIndex((auth) => {return auth == '_og-own-mt'}) !== -1) {
                                    button_disable = !CommonAuth.hasAuthority('_og-own-mt');
                                } else {
                                    button_disable = !CommonAuth.hasAuthority('_og-role-usr');
                                }
                                break;
                            case "workspace":
                                if(CommonAuth.hasAuthority('_og-ws-role-usr')) {
                                    button_disable = false;
                                } else {
                                    if(role.workspaces.findIndex((workspace) => {return (adminWorkspaces.indexOf(workspace.id) === -1)}) !== -1) {
                                        button_disable = true;
                                    } else {
                                        button_disable = false;
                                    }
                                }
                                break;
                            default:
                                button_disable = true;
                        }
                    }
                } catch(e) {}
                
                $element.prop('disabled', button_disable);
                if(button_disable) {
                    $element.css('cursor', 'not-allowed');
                }
            });
        }
    }

    function getAuthorityTexts(role, workspaces) {
        const orgAuthText = {
            "_og-upd":          getText("000-00109", "オーガナイゼーション更新"),
            "_og-own-mt":       getText("000-00110", "オーガナイゼーション管理者変更"),
            "_og-role-usr":     getText("000-00111", "オーガナイゼーションロール付与"),
            "_og-plan-mt":      getText("000-00112", "プラン変更"),
            "_og-usage":        getText("000-00113", "利用状況確認"),
            "_og-usr-mt":       getText("000-00114", "ユーザー管理"),
            "_og-ws-role-mt":   getText("000-00115", "ワークスペースロール管理"),
            "_og-ws-role-usr":  getText("000-00116", "ワークスペースロール付与"),
            "_og-ws-mt":        getText("000-00117", "ワークスペース管理"),
        }

        switch(role.kind) {
            case 'organization':
                return role.authorities
                    .filter((i) => {return orgAuthText[i.name]? true: false})
                    .map((i) => {return orgAuthText[i.name]? orgAuthText[i.name]: "undefined:" + i.name});

            case 'workspace':
                if(!role.authorities) return [];

                let roleText = [];
                role.authorities.forEach((authority) => {
                    try {
                        let workspacesIndex = workspaces.findIndex((i) => {return i.id == authority.name});
                        if( workspacesIndex != -1) {
                            roleText.push(getText("400-00118", workspaces[workspacesIndex].name + ":使用", workspaces[workspacesIndex].name));

                        } else if(CommonAuth.isAdminWorkspaceAuthority(authority.name)) {
                            let workspace_id = CommonAuth.authorityNameToWorkspaceId(authority.name);
                            let workspacesIndex = workspaces.findIndex((i) => {return i.id == workspace_id});
                            if( workspacesIndex != -1) {
                                roleText.push(getText("400-00119", workspaces[workspacesIndex].name + ":管理", workspaces[workspacesIndex].name));
                            } else {
                                roleText.push(getText("400-00120", "権限の無いワークスペース"));
                            }
                        } else {
                            roleText.push(getText("400-00120", "権限の無いワークスペース"));
                        }
                    } catch(e) { console.log(e); return [];}
                });
                return Array.from(new Set(roleText)).sort();
            default:
                return [];
        }
    }
});
