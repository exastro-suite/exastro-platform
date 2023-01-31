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

    const paging = {
        display_page_no: 1,
        move_to_page_no: 1,
        rows_per_page: DEFAULT_ROWS_PER_PAGE,
        enable_next_page: false,
        filter: ""
    }

    CommonAuth.onAuthSuccess(() => {
        new CommonUi(`#container`);
        load_main();
    });

    function load_main() {
        Promise.all([
            // Load Common Contents
            loadCommonContents(),
            // Get User List
            call_api_promise_users(),
        ]).then(function(results) {
            // Display Menu
            displayMenu('menu_account_management');
            // Display Topic Path
            displayTopicPath([
                {"text": "ユーザー一覧", "href": location_conf.href.users.list.replace(/{organization_id}/g, CommonAuth.getRealm()) }
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

    function display_main(users) {
        console.log("[CALL] display_main");
        //
        // new user button
        //
        if(UsersCommon.isAlllowedCreateUser()) {
            $('#new_user').css('display','');
            $('#new_user').on('click',() => {
                window.location = location_conf.href.users.new.replace(/{organization_id}/g, CommonAuth.getRealm());
            });
        }

        //
        // 一覧の表示 - view lists
        //
        display_users_list(users);

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
        if (desabled) {
            $("#user_list_pager .pagingMoveButton").prop("disabled", true);
        } else {
            $("#user_list_pager .pagingMoveButton[data-type=first]").prop("disabled", (paging.display_page_no > 1? false: true));
            $("#user_list_pager .pagingMoveButton[data-type=prev]").prop("disabled", (paging.display_page_no > 1? false: true));
            $("#user_list_pager .pagingMoveButton[data-type=next]").prop("disabled", !paging.enable_next_page);
        }
    }

    //
    // get role user list api call
    //
    function call_api_promise_users() {
        return  call_api_promise({
            type: "GET",
            url: api_conf.api.users.get.replace(/{organization_id}/g, CommonAuth.getRealm()),
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            },
            data: {
                "first": ( paging.move_to_page_no - 1) * paging.rows_per_page,
                "max": paging.rows_per_page + 1,     // 次ページがあるかの判別用に、ページ表示より1件多く取得する
                "search": paging.filter
            }
        });
    }

    //
    // ユーザー一覧表示 - display users list
    //
    function display_users_list(users) {
        // ページング用変数を移動後のページに設定
        paging.display_page_no = paging.move_to_page_no;
        paging.enable_next_page = paging.rows_per_page < users.length;

        // 明細行を削除
        $('#users_list .datarow').remove();

        if (users.length == 0) {
            // 0件の時はnotfoudの表示
            $('#users_list .notfound').css('display','');
        } else {
            // 1件以上の時はnotfoudの表示を消す
            $('#users_list .notfound').css('display','none');
            // 明細のテンプレート行からhtmlを取り出す
            // ※class名を"datarow-template"から"datarow"に変更しておく
            // const row_template = $('#users_list .datarow').prop('outerHTML');
            const row_template = $('#users_list .datarow-template').clone(true).removeClass('datarow-template').addClass('datarow').prop('outerHTML');

            // 明細にデータを埋め込み行を明細を作りこむ
            for(let i = 0; i < Math.min(users.length, paging.rows_per_page); ++i) {
                const user = users[i];

                row_html = row_template
                    .replace(/\${user_id}/g, fn.cv(user.id,'',true))
                    .replace(/\${username}/g, fn.cv(user.preferred_username,'',true))
                    .replace(/\${email}/g, fn.cv(user.email,'',true))
                    .replace(/\${firstName}/g, fn.cv(user.firstName,'',true))
                    .replace(/\${lastName}/g, fn.cv(user.lastName,'',true))
                    .replace(/\${enabled}/g, (user.enabled) ? '<span class="icon icon-check"></span>' : '')
                    .replace(/\${create_timestamp}/g, fn.date(new Date(user.create_timestamp),'yyyy/MM/dd HH:mm:ss'))
                $("#users_list tbody").append(row_html);
            }


            //
            // edit user
            //
            $('#users_list .to_detail').on('click', function() {
                let user_id = $(this).attr('data-id');
                if (user_id != undefined){
                    window.location = location_conf.href.users.edit.replace('{organization_id}',CommonAuth.getRealm()).replace('{user_id}',user_id);
                }
            });

            //
            // delete user
            //
            $('#users_list .btn_delete').on('click', function() {
                if (confirm("delete ok"))
                {

                }
            });

            $('#users_list .btn_delete').each(function(index, element) {
                const $element = $(element);
                const id = $element.attr('data-id');
                const usersIndex = users.findIndex((i) => {return i.id == id});
                if(usersIndex === -1) {
                    allowedEditUser = false;
                } else {
                    allowedEditUser = UsersCommon.isAllowedEditUser(users[usersIndex]);
                    $element.css('display', UsersCommon.isSystemUser(users[usersIndex])? 'none': '');
                }
                $element.prop('disabled', !allowedEditUser);
                $element.css('cursor', allowedEditUser? '' :'not-allowed');
            });
        }
        $('#users_list .datarow').css('display','');
        $("#user_list_pager .pagingCurrentPage").text(paging.display_page_no);
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
        call_api_promise_users().then((result) => {
            if(result.data.length == 0 && paging.move_to_page_no > 1) {
                // 表示するデータが無くなってしまった時は１ページ前に移動する
                paging.move_to_page_no -= 1;
                movePage();
                return;
            }
            // 一覧の表示
            display_users_list(result.data);
            // ボタンを活性化
            disable_event_elements(false);
            // 処理中表示を消す
            hide_progress();
        });
    }

    // set event - filter　（main window)
    $('#filter').on('click', function() {
        paging.move_to_page_no = 1;
        paging.filter = $('#textFilter').val();
        movePage();
    });

    // set event - paging　（main window)
    $("#user_list_pager .pagingMoveButton[data-type=first]").on('click', function () {
        paging.move_to_page_no = 1;
        movePage();
    });
    $("#user_list_pager .pagingMoveButton[data-type=prev]").on('click', function () {
        paging.move_to_page_no = paging.display_page_no - 1;
        movePage();
    });
    $("#user_list_pager .pagingMoveButton[data-type=next]").on('click', function () {
        paging.move_to_page_no = paging.display_page_no + 1;
        movePage();
    });

});
