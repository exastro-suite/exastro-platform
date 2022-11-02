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
    const role_name = window.location.pathname.split("/")[4];
    let role = null;

    CommonAuth.onAuthSuccess(() => {
        let ui = new CommonUi(`#container`);
        ui.contentTabEvent();
        load_main();
    });

    function load_main() {
        Promise.all([
            // Load Common Contents
            loadCommonContents(),
            // get User List
            call_api_promise({
                type: "GET",
                url: api_conf.api.users.get.replace(/{organization_id}/g, CommonAuth.getRealm()),
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                contentType: "application/json",
                dataType: "json",
            }),
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
            }),
            // get Role User List
            call_api_promise({
                type: "GET",
                url: api_conf.api.roles.users.get.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{role_name}/g, role_name),
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                contentType: "application/json",
                dataType: "json",
            }),
        ]).then(function(results) {
            // Display Menu
            displayMenu('menu_role_management');
            // Display Topic Path
            displayTopicPath([
                {"text": "ロール一覧", "href": location_conf.href.roles.list.replace(/{organization_id}/g, CommonAuth.getRealm()) },
                {"text": "ロール付与・解除", "href": location_conf.href.roles.edit.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{role_name}/g, role_name) },
            ]);
            display_main(results[1].data, results[2].data, results[3].data, results[4].data);
            finish_onload_progress();
        }).catch((e) => {
            console.log('[ERROR] load_main catch');
            finish_onload_progress_at_error();
            if(typeof e != "undefined") console.log(e);
            return;
        });
    }

    function display_main(users, roles, workspaces, roles_users) {
        console.log("[CALL] display_main");

        //
        // ロール情報の表示
        //
        let rolesIndex = roles.findIndex((r) => {return r.name === role_name});
        if(rolesIndex === -1) {
            alert("ロールが存在しません");
            return;
        }
        role = roles[rolesIndex];
        $('#form_role_name').text(role_name);
        $('#form_role_kind').text(role.kind);
        $('#form_role_description').val(role.description);

        const authorityTexts = RolesCommon.getAuthorityTexts(role, workspaces);
        $('#form_role_authorities').html(authorityTexts.map((t) => {return '<span class="auth_item">' + fn.cv(t,'',true) +'</span>'}).join("\n"));

        // ロールユーザーを配列化 - Array role user
        if (roles_users.length > 0) {
            var arr_roles_users = [];
            for(var key of Object.keys(roles_users)){
                if(key == "preferred_username"){
                    // 配列に格納 - Store in array
                    arr_roles_users.push(roles_users[key]);
                }
            }
        }
        console.log("roles_users:" + roles_users)
        console.log("arr_roles_users:" + arr_roles_users)

        //
        // ユーザー一覧の表示 - user list display
        //
        if (users.length == 0) {
            $('#user_list notfound').css('dispaly','');
        } else {
            const row_template = $('#user_list .datarow').prop('outerHTML');
            let html = '';
            for(let user of users.sort((a,b) => { return (a.create_timestamp == b.create_timestamp? 0 : (a.create_timestamp < b.create_timestamp)? 1: -1); })) {
                html += row_template
                    .replace(/\${user_before_checked}/, (arr_roles_users === undefined) ? '' : (arr_roles_users.includes(user.preferred_username)) ? 'checked':'')
                    .replace(/\${user_after_checked}/, (arr_roles_users === undefined) ? '' : (arr_roles_users.includes(user.preferred_username)) ? 'checked':'')
                    .replace(/\${preferred_username}/, fn.cv(user.preferred_username,'',true))
                    .replace(/\${user_name}/g, fn.cv(user.name? user.name: user.preferred_username,'',true))
                    .replace(/\${user_id}/g, fn.cv(user.id,'',true))
                    .replace(/\${create_timestamp}/g, fn.date(new Date(user.create_timestamp),'yyyy/MM/dd HH:mm:ss'))
            }
            $('#user_list tbody').html(html);
            $('#user_list .datarow').css('display','');
        }

        //
        // ボタンの有効化 - bottun enabled
        //
        $('#button_apply').prop('disabled', false);
        $('#button_apply').on('click',() => {
            apply_button();
        });
    }

    function apply_button() {
        console.log("[CALL] apply_button");
        $('#button_apply').prop('disabled', true);

        //
        // 画面指定の収集
        //
        let post_users = [];
        let delete_users = [];

        $('#user_list .datarow').each((index, row) => {
            const $row = $(row);
            const user_id = $row.attr('data-id');
            const preferred_username = $row.attr('preferred_username');
            const check_before = $row.find('.form_check_before').prop('checked');
            const check_after = $row.find('.form_check_after').prop('checked');

            if(!check_before && check_after) {
                post_users.push({
                    "id" : user_id,
                    "preferred_username": preferred_username
                });
            }
            if(check_before && !check_after) {
                delete_users.push({
                    "id" : user_id,
                    "preferred_username": preferred_username
                });
            }
        });

        //
        // 入力の確認
        //
        if($("#user_list .form_check_after:checked").length === 0) {
            if(role_name === RolesCommon.ORG_ROLE_ORG_MANAGER) {
                alert("オーガナイゼーション管理者は最低１人必要です");
                $('#button_apply').prop('disabled', false);
                return;
            }
            if(CommonAuth.isAdminWorkspaceAuthority(role_name)) {
                if(!confirm("ワークスペース管理者がいない状態になりますが、よろしいですか？")) {
                    $('#button_apply').prop('disabled', false);
                    return;
                }
            }
        }

        if(post_users.length === 0 && delete_users.length === 0) {
            alert("変更箇所はありません");
            $('#button_apply').prop('disabled', false);
            return;
        }

        //
        // APIの呼び出し
        //
        new Promise((resolve, reject) => {
            if(post_users.length === 0) {
                resolve();
            } else {
                call_api_promise(
                    {
                        type: "POST",
                        url: api_conf.api.roles.users.post.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{role_name}/g, role_name),
                        headers: {
                            Authorization: "Bearer " + CommonAuth.getToken(),
                        },
                        data: JSON.stringify(post_users),
                        contentType: "application/json",
                        dataType: "json",
                    }
                ).then(() => {
                    resolve();
                }).catch((e) => {
                    reject(e);
                });
            }
        }).then(() => { return new Promise((resolve, reject) => {
            if(delete_users.length === 0) {
                resolve();
            } else {
                call_api_promise(
                    {
                        type: "PATCH",
                        url: api_conf.api.roles.users.patch.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{role_name}/g, role_name),
                        headers: {
                            Authorization: "Bearer " + CommonAuth.getToken(),
                        },
                        data: JSON.stringify(delete_users),
                        contentType: "application/json",
                        dataType: "json",
                    }
                ).then(() => {
                    resolve();
                }).catch((e) => {
                    reject(e);
                });
            }
        })}).then(() => {
            alert("ロールをユーザに適用しました");

            CommonAuth.refreshTokenForce().then(() =>{
                if(RolesCommon.isAllowedGrantRole(role)) {
                    // 画面を開く権限がある場合は、roloadする
                    window.location.reload();
                } else {
                    // 画面を開く権限がなくなってしまった場合は、topへ
                    alert("画面を開く権限が無くなったので、トップページに戻ります");
                    window.location = location_conf.href.menu.toppage.replace(/{organization_id}/g, CommonAuth.getRealm());
                }
            });

        }).catch(() => {
            $('#button_apply').prop('disabled', false);
        });
    }
});
