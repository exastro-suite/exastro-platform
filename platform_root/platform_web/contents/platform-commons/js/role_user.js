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

    const paging = {
        display_page_no: 1,
        move_to_page_no: 1,
        rows_per_page: DEFAULT_ROWS_PER_PAGE,
        enable_next_page: false,
        filter: ""
    }

    CommonAuth.onAuthSuccess(() => {
        let ui = new CommonUi(`#container`);
        ui.contentTabEvent();
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
            }),
            // get Role User List
            call_api_promise_role_users(),

        ]).then(function(results) {
            // Display Menu
            displayMenu('menu_role_management');
            // Display Topic Path
            displayTopicPath([
                {"text": getText("000-80004", "ロール一覧"), "href": location_conf.href.roles.list.replace(/{organization_id}/g, CommonAuth.getRealm()) },
                {"text": getText("000-84010", "ロール付与・解除"), "href": location_conf.href.roles.edit.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{role_name}/g, role_name) },
            ]);
            display_main(results[1].data, results[2].data, results[3].data);
            finish_onload_progress();
        }).catch((e) => {
            console.log('[ERROR] load_main catch');
            finish_onload_progress_at_error();
            if(typeof e != "undefined") console.log(e);
            return;
        });
    }

    //
    // get role user list api call
    //
    function call_api_promise_role_users() {
        return  call_api_promise({
            type: "GET",
            url: api_conf.api.roles.users.get.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{role_name}/g, role_name),
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            },
            data: {
                "first": ( paging.move_to_page_no - 1) * paging.rows_per_page,
                "max": paging.rows_per_page + 1     // 次ページがあるかの判別用に、ページ表示より1件多く取得する
            }
        });
    }

    //
    // onload display
    //
    function display_main(roles, workspaces, role_users) {
        console.log("[CALL] display_main");

        //
        // ロール情報の表示
        //
        let rolesIndex = roles.findIndex((r) => {return r.name === role_name});
        if(rolesIndex === -1) {
            alert(getText("404-24001", "ロールが存在しません"));
            return;
        }
        role = roles[rolesIndex];
        $('#form_role_name').text(role_name);
        $('#form_role_kind').text(role.kind);
        $('#form_role_description').val(role.description);

        const authorityTexts = RolesCommon.getAuthorityTexts(role, workspaces);
        $('#form_role_authorities').html(authorityTexts.map((t) => {return '<span class="auth_item">' + fn.cv(t,'',true) +'</span>'}).join("\n"));

        //
        // ユーザー一覧の表示 - user list display
        //
        display_role_users_list(role_users);

        //
        // ボタンの有効化 - bottun enabled
        //
        disable_event_elements(false);
    }

    //
    // ボタンの制御（メイン画面） - button control (main window)
    //
    function disable_event_elements(desabled) {
        $('#button_apply').prop('disabled', desabled);
        $('#button_append_modal_open').prop('disabled', desabled);
        if (desabled) {
            $("#role_user_list_pager .pagingMoveButton").prop("disabled", true);
        } else {
            $("#role_user_list_pager .pagingMoveButton[data-type=first]").prop("disabled", (paging.display_page_no > 1? false: true));
            $("#role_user_list_pager .pagingMoveButton[data-type=prev]").prop("disabled", (paging.display_page_no > 1? false: true));
            $("#role_user_list_pager .pagingMoveButton[data-type=next]").prop("disabled", !paging.enable_next_page);
        }
    }

    //
    // ロールユーザーの一覧表示 - display role user list
    //
    function display_role_users_list(role_users) {
        // ページング用変数を移動後のページに設定
        paging.display_page_no = paging.move_to_page_no;
        paging.enable_next_page = paging.rows_per_page < role_users.length;

        // 明細行を削除
        $('#role_user_list .datarow').remove();

        if (role_users.length == 0) {
            // 0件の時はnotfoudの表示
            $('#role_user_list .notfound').css('display','');
        } else {
            // 1件以上の時はnotfoudの表示を消す
            $('#role_user_list .notfound').css('display','none');
            // 明細のテンプレート行からhtmlを取り出す
            // ※class名を"datarow-template"から"datarow"に変更しておく
            const row_template = $('#role_user_list .datarow-template').clone(true).removeClass('datarow-template').addClass('datarow').prop('outerHTML');

            // 明細にデータを埋め込み行を明細を作りこむ
            for(let i = 0; i < Math.min(role_users.length, paging.rows_per_page); ++i) {
                const role_user = role_users[i];
                row_html = row_template
                    .replace(/\${user_id}/g, fn.cv(role_user.id,'',true))
                    .replace(/\${preferred_username}/g, fn.cv(role_user.preferred_username,'',true))
                    .replace(/\${firstName}/g, fn.cv(role_user.firstName,'',true))
                    .replace(/\${lastName}/g, fn.cv(role_user.lastName,'',true))
                    .replace(/\${enabled}/g, role_user.enabled ? '<span class="icon icon-check"></span>' : '')
                    .replace(/\${affiliation}/g, fn.cv(role_user.affiliation,'',true))
                    .replace(/\${create_timestamp}/g, fn.date(new Date(role_user.create_timestamp),'yyyy/MM/dd HH:mm:ss'))
                $("#role_user_list tbody").append(row_html);
            }
        }
        $('#role_user_list .datarow').css('display','');
        $("#role_user_list_pager .pagingCurrentPage").text(paging.display_page_no);
    }

    //
    // ページ遷移
    //
    function movePage() {
        // 処理中の表示
        show_progress();
        // ボタンを非活性に設定
        disable_event_elements(true);
        // APIの呼出
        call_api_promise_role_users().then((result) => {
            if(result.data.length == 0 && paging.move_to_page_no > 1) {
                // 表示するデータが無くなってしまった時は１ページ前に移動する
                paging.move_to_page_no -= 1;
                movePage();
                return;
            }
            // 一覧の表示
            display_role_users_list(result.data);
            // ボタンを活性化
            disable_event_elements(false);
            // 処理中表示を消す
            hide_progress();
        });
    }
    // set event - paging　（main window)
    $("#role_user_list_pager .pagingMoveButton[data-type=first]").on('click', function () {
        paging.move_to_page_no = 1;
        movePage();
    });
    $("#role_user_list_pager .pagingMoveButton[data-type=prev]").on('click', function () {
        paging.move_to_page_no = paging.display_page_no - 1;
        movePage();
    });
    $("#role_user_list_pager .pagingMoveButton[data-type=next]").on('click', function () {
        paging.move_to_page_no = paging.display_page_no + 1;
        movePage();
    });


    //
    // 解除ボタン
    //
    $('#button_apply').on('click',() => {
        apply_button();
    });

    function apply_button() {
        console.log("[CALL] apply_button");
        // ボタンを非活性に設定
        disable_event_elements(true);

        // チェックしている対象を検索し、配列に入れる
        let revoke_users = [];

        $('#role_user_list .datarow').each((index, row) => {
            const $row = $(row);
            const user_id = $row.attr('data-id');
            const preferred_username = $row.attr('preferred_username');
            const form_check_revoke = $row.find('.form_check_revoke').prop('checked');
            if (form_check_revoke) {
                revoke_users.push({
                    "id" : user_id,
                    "preferred_username": preferred_username
                })
            }
        });

        // 選択したものが無いとき
        if(revoke_users.length === 0) {
            alertMessage(getText("000-80029", "エラー"), getText("000-84016", "解除するユーザが選択されていません"),() => { disable_event_elements(false); });
            return;
        }

        if(paging.display_page_no == 1 && !paging.enable_next_page ) {
            if( $('#role_user_list .datarow').length === revoke_users.length ) {
                // １ページ目を表示していて、次ページが無い（表示しているものが全て）を解除した時

                if(role_name === RolesCommon.ORG_ROLE_ORG_MANAGER) {
                    alertMessage(getText("000-80029", "エラー"), getText("000-84017", "オーガナイゼーション管理者は最低１人必要です"),() => { disable_event_elements(false); });
                    return;
                }
                if(CommonAuth.isAdminWorkspaceAuthority(role_name)) {
                    confirmMessage(getText("000-80030", "確認"), getText("000-84018", "ワークスペース管理者がいない状態になりますが、よろしいですか？"),
                        () => {
                            // OK
                            // CALL API
                            call_patch_role_users(revoke_users);
                        },
                        () => {
                            // Cancel
                            disable_event_elements(false);
                        }
                    );
                    return;
                }
            }
        }

        // CALL API
        call_patch_role_users(revoke_users);
    }

    function call_patch_role_users(revoke_users) {
        //
        // CALL API
        //
        show_progress();
        call_api_promise({
            type: "PATCH",
            url: api_conf.api.roles.users.patch.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{role_name}/g, role_name),
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            },
            data: JSON.stringify(revoke_users),
            contentType: "application/json",
            dataType: "json",
        }).then(() => {
            hide_progress();
            alertMessage(getText("000-80018", "処理結果"), getText("000-84019", "ロールを解除しました"),() => {
                CommonAuth.refreshTokenForce().then(() =>{
                    if(RolesCommon.isAllowedGrantRole(role)) {
                        // 画面を開く権限がある場合は、roloadする
                        movePage();
                    } else {
                        // 画面を開く権限がなくなってしまった場合は、topへ
                        alert(getText("000-84020", "画面を開く権限が無くなったので、トップページに戻ります"));
                        window.location = location_conf.href.menu.toppage.replace(/{organization_id}/g, CommonAuth.getRealm());
                    }
                });
            });
        }).catch(() => {
            hide_progress();
            disable_event_elements(false);
        });
    }

    // 付与ボタン（モーダル画面表示）
    $('#button_append_modal_open').on('click',() => {
        append_modal_open();
    });

    function append_modal_open() {
        console.log("[CALL] append_modal_open");

        const paging = {
            display_page_no: 1,
            move_to_page_no: 1,
            rows_per_page: DEFAULT_ROWS_PER_PAGE,
            enable_next_page: false,
            filter: ""
        };

        const append_dialog = new Dialog({
            mode: 'modeless',
            position: 'center',
            width: 'auto',
            header: {
                title: getText("000-84021", "ロール付与"),
            },
            footer: {
                button: {
                    append: { text: '<span class="iconButtonIcon icon icon-plus"></span>'+getText("000-84013", '付与'), action: 'positive', style: 'width:200px;'},
                    close: { text: getText("000-80011", "閉じる"), action: "normal", style: 'width:200px;' }
                }
            },
        },
        {
            append: function() {
                modal_apply_button(append_dialog, paging);
            },
            cancel: function() {
                append_dialog.close();
            }
        });
        append_dialog.open($("#role_user_grant_dialog").html());
        console.log("append_dialog:");
        console.log(append_dialog);

        const dialogBody = $(append_dialog.$.dbody);
        // call get user list
        get_modal_user_list(append_dialog, paging);

        // set event
        dialogBody.find('.button-filter').on('click', function() {
            paging.move_to_page_no = 1;
            paging.filter = dialogBody.find('.text-filter').val();
            get_modal_user_list(append_dialog, paging);
        });
        // set event - paging
        dialogBody.find('.pagingMove .pagingMoveButton[data-type=first]').on('click', function() {
            paging.move_to_page_no = 1;
            get_modal_user_list(append_dialog, paging);
        });
        dialogBody.find('.pagingMove .pagingMoveButton[data-type=prev]').on('click', function() {
            paging.move_to_page_no = paging.display_page_no - 1;
            get_modal_user_list(append_dialog, paging);
        });
        dialogBody.find('.pagingMove .pagingMoveButton[data-type=next]').on('click', function() {
            paging.move_to_page_no = paging.display_page_no + 1;
            get_modal_user_list(append_dialog, paging);
        });
    }

    //
    // 付与モーダルのユーザ取得処理
    //
    function get_modal_user_list(dialog, paging) {
        // 処理中の表示
        show_progress();
        // 付与モーダルのボタンを非活性に設定
        modal_disable_event_elements(dialog, paging, true);

        // APIの呼出
        call_api_promise({
            type: "GET",
            url: api_conf.api.users.get.replace(/{organization_id}/g, CommonAuth.getRealm()),
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            },
            data: {
                "first": ( paging.move_to_page_no - 1) * paging.rows_per_page,
                "max": paging.rows_per_page + 1, // 次ページがあるかの判別用に、ページ表示より1件多く取得する
                "search": paging.filter
            },
            contentType: "application/json",
            dataType: "json",
        }).then((result) => {
            // 付与モーダルのユーザ表示処理
            display_modal_user_list(dialog, paging, result.data);
            // 付与モーダルのボタンを活性化
            modal_disable_event_elements(dialog, paging, false);
            // 処理中表示を消す
            hide_progress();
        });
    }

    //
    // 付与モーダルのユーザ表示処理
    //
    function display_modal_user_list(dialog, paging, users) {
        // ページング用変数を移動後のページに設定
        paging.display_page_no = paging.move_to_page_no;
        paging.enable_next_page = users.length > paging.rows_per_page

        const dialogBody = $(dialog.$.dbody);

        // 明細行を削除
        dialogBody.find('.user_list .datarow').remove();

        if (users.length == 0) {
            // 0件の時はnotfoudの表示
            dialogBody.find('.user_list .notfound').css('display','');
        } else {
            // 1件以上の時はnotfoudの表示を消す
            dialogBody.find('.user_list .notfound').css('display','none');

            // 明細のテンプレート行からhtmlを取り出す
            // ※class名を"datarow-template"から"datarow"に変更しておく
            const row_template = dialogBody.find('.user_list .datarow-template').clone(true).removeClass('datarow-template').addClass('datarow').prop('outerHTML');

            // 明細にデータを埋め込み行を明細を作りこむ
            for(let i = 0; i < Math.min(users.length, paging.rows_per_page); ++i) {
                const user = users[i];
                row_html = row_template
                    .replace(/\${user_id}/g, fn.cv(user.id,'',true))
                    .replace(/\${preferred_username}/g, fn.cv(user.preferred_username,'',true))
                    .replace(/\${firstName}/g, fn.cv(user.firstName,'',true))
                    .replace(/\${lastName}/g, fn.cv(user.lastName,'',true))
                    .replace(/\${enabled}/g, user.enabled ? '<span class="icon icon-check"></span>' : '')
                    .replace(/\${affiliation}/g, fn.cv(user.affiliation,'',true))
                    .replace(/\${create_timestamp}/g, fn.date(new Date(user.create_timestamp),'yyyy/MM/dd HH:mm:ss'));
                dialogBody.find('.user_list tbody').append(row_html);
            }
        }
        // 明細のテンプレート行はdisplay:noneになっていて、それを使って明細を作っているので、作った明細を表示する
        dialogBody.find('.user_list .datarow').css('display','');
        // ページャーのページ番号を表示
        dialogBody.find('.pagingMove .pagingCurrentPage').text(paging.display_page_no);
    }

    //
    // モーダル画面の付与ボタン
    //
    function modal_apply_button(dialog, paging) {
        const dialogBody = $(dialog.$.dbody)

        // モーダル画面のボタンをdisableにする
        modal_disable_event_elements(dialog, paging, true);

        // チェックしている対象を検索し、配列に入れる
        post_users = [];
        dialogBody.find('.user_list .datarow').each((index, row) => {
            const $row = $(row);
            const user_id = $row.attr('data-id');
            const preferred_username = $row.attr('preferred_username');
            const checked = $row.find('.form_check_grant').prop('checked');

            if(checked) {
                post_users.push({
                    "id" : user_id,
                    "preferred_username": preferred_username
                });
            }
        });

        // 選択したものが無いとき
        if(post_users.length == 0) {
            alertMessage(getText("000-80029", "エラー"), getText("000-84022", "付与するユーザが選択されていません"), () => {
                modal_disable_event_elements(dialog, paging, false);
            });
            return;
        }

        // APIを呼出す
        show_progress();
        call_api_promise({
            type: "POST",
            url: api_conf.api.roles.users.post.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{role_name}/g, role_name),
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            },
            data: JSON.stringify(post_users),
            contentType: "application/json",
            dataType: "json",
        }).then(() => {
            hide_progress();
            alertMessage(getText("000-80018", "処理結果"),getText("000-84023", "ロールを付与しました"),() => {
                dialog.close();
                movePage();
            });
        });
    }

    //
    // モーダル画面のボタンの制御
    //
    function modal_disable_event_elements(dialog, paging, disabled) {
        const dialogBody = $(dialog.$.dbody)
        const dialogFooter = $(dialog.$.footer)
        if(disabled) {
            dialogBody.find('button').prop("disabled", true);
            dialogFooter.find('button[data-kind=append]').prop("disabled", true);
            dialogBody.find('.pagingMove .pagingMoveButton[data-type=first]').prop("disabled", true);
            dialogBody.find('.pagingMove .pagingMoveButton[data-type=prev]').prop("disabled", true);
            dialogBody.find('.pagingMove .pagingMoveButton[data-type=next]').prop("disabled", true);
        } else {
            dialogBody.find('button').prop("disabled", false);
            dialogFooter.find('button[data-kind=append]').prop("disabled", false);
            dialogBody.find('.pagingMove .pagingMoveButton[data-type=first]').prop("disabled", (paging.display_page_no > 1? false: true));
            dialogBody.find('.pagingMove .pagingMoveButton[data-type=prev]').prop("disabled", (paging.display_page_no > 1? false: true));
            dialogBody.find('.pagingMove .pagingMoveButton[data-type=next]').prop("disabled", !paging.enable_next_page);
        }
    }
});

