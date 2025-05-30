/*
#   Copyright 2024 NEC Corporation
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
    const user_id = window.location.pathname.split("/")[7];

    CommonAuth.onAuthSuccess(() => {
        let ui = new CommonUi(`#container`);
        ui.contentTabEvent();
        load_main();
    });

    function load_main() {
        console.log("[CALL] load_main");
        Promise.all([
            // Load Common Contents
            loadCommonContents(),

            // get Token List
            call_api_promise_getTokenList()

        ]).then(function(results) {
            // Display Menu
            displayMenu('menu_service_account_management');

            // Display Topic Path
            displayTopicPath([
                {"text": getText("000-93001", "ワークスペース選択"), "href": location_conf.href.workspaces.settings.service_account_users.workspace.replace(/{organization_id}/g, CommonAuth.getRealm())},
                {"text": getText("000-93005", "サービスアカウントユーザー一覧"), "href": location_conf.href.workspaces.settings.service_account_users.list.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id)},
                {"text": getText("000-93023", "サービスアカウントユーザートークン発行"), "href": location_conf.href.workspaces.settings.service_account_users.token.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id).replace(/{user_id}/g, user_id)},
            ]);

            // Display Token List
            displayTokenList(results[1].data);

            display_main();

            finish_onload_progress();
        }).catch((e) => {
            console.log('[ERROR] load_main catch');
            finish_onload_progress_at_error();
            if(typeof e != "undefined") console.log(e);
            return;
        });
    }

    // 
    // refresh token取得APIの呼出
    // Call refresh token get API
    // 
    function call_api_promise_getTokenList() {
        console.log("[CALL] call_api_promise_getTokenList");
        return call_api_promise({
            type: "GET",
            url: api_conf.api.token.service_account_user_site.get.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id).replace(/{user_id}/g, user_id),
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            },
            contentType: "application/json",
            dataType: "json",
        })
    }

    // 
    // リフレッシュ トークンの一覧を表示
    // display a list of refresh tokens
    // 
    function displayTokenList(list) {
        console.log("[CALL] displayTokenList");

        // 明細行を削除
        $("#token_list .datarow").remove();

        // データが無いときはnot foundを表示
        if( list == null || list.length == 0 ) {
            $("#token_list .notfound").css("display","");
            $("#button_delete_modal_open").prop("disabled", true);
            return;
        }

        $("#token_list .notfound").css("display","none");
        $("#button_delete_modal_open").prop("disabled", false);

        const row_template = $('#token_list .datarow-template').clone(true).removeClass('datarow-template').addClass('datarow').prop('outerHTML');

        for(i in list) {
            const row = list[i];
            const row_html = row_template
            .replace(/\${id}/g, fn.cv(row.id, '', true))
            .replace(/\${start_timestamp}/g, fn.date(new Date(row.start_timestamp),'yyyy/MM/dd HH:mm:ss'))
            .replace(/\${create_user_name}/g, fn.cv(row.create_user_name, '', true))
            .replace(/\${expire_timestamp}/g, fn.date(new Date(row.expire_timestamp),'yyyy/MM/dd HH:mm:ss'))
            .replace(/\${lastaccess_timestamp}/g, fn.date(new Date(row.lastaccess_timestamp),'yyyy/MM/dd HH:mm:ss'));
            $('#token_list tbody').append(row_html);
        }
        $('#token_list .datarow').css('display','');
    }

    //
    // 画面表示
    // screen display
    //
    function display_main(workspaces) {
        console.log("[CALL] display_main");

        //
        // 「発行」ボタン - create button
        //
        $("#button_token_issuance").on('click',() => {
            create_service_account_user_token();
        });

        //
        // 「削除」ボタン - delete button
        //
        $("#button_delete_modal_open").on('click',() => {
            delete_modal_open();
        });
        
        $('#button_register').prop('disabled',false);
        $('#button_register').on('click',() => {
            $('#button_register').prop('disabled',true);
            if( ! validate_register() ) {
                $('#button_register').prop('disabled',false);
                return;
            }
            service_account_user_register();
        });
    }

    // 
    // トークン発行
    // issuance token
    // 
    function create_service_account_user_token(){
        console.log("[CALL] create_service_account_user_token");

        let reqbody =   {
            "username": $('#form_service_account_user_username').val(),
            "service_account_user_type": $('#form_service_account_user_type').val(),
            "description": $('#form_description').val(),
        }

        // APIを呼出す
        return Promise.all([
            // refresh token発行 - create refresh token
            call_api_promise_create_service_account_user_token(reqbody),

        ]).then(function(result){
            // refresh tokenの発行結果の表示
            display_result_created(result[0].data, result[0].status, result[0].jqXHR);

        }).catch((e)=>{
            hide_progress();
            $('#button_token_issuance').prop('disabled',false);
        });
    }

    // 
    // サービスアカウントユーザートークン発行API呼出処理
    // Process to call service account user token creation API
    // 
    function call_api_promise_create_service_account_user_token(reqbody){
        console.log("[CALL] call_api_promise_create_service_account_user_token");
        
        // refresh tokenを発行 - create refresh token
        return call_api_promise({
            type: "POST",
            url: api_conf.api.token.service_account_user_site.post.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id).replace(/{user_id}/g, user_id),
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            },
            data: JSON.stringify(reqbody),
            contentType: "application/json",
            dataType: "json",
        })
    }

    // 
    // Display of result of issuing refresh token
    // refresh tokenの発行結果の表示
    // 
    function display_result_created(data, status, jqXHR) {
        console.log("[CALL] display_result_created");

        // 一覧の再描画
        call_api_promise_getTokenList().then((result) => {
            displayTokenList(result.data)
        });

        if(data.refresh_token) {
            const dialog_contents = $("#create_token_result_dialog").html().replace(/{refresh_token}/g, fn.cv(data.refresh_token,'',true)).replace(/{expiration_date}/g, fn.date(data.refresh_token_expire,'yyyy/MM/dd'));

            const dialog = new Dialog({
                mode: 'modeless',
                position: 'center',
                width: 'auto',
                header: {
                    title: getText("000-81018", "refresh token発行"),
                },
                footer: {
                    button: {
                        copy: { text: '<span class="iconButtonIcon icon icon-copy"></span>'+getText("000-80035", "クリップボードにコピー"), action: 'positive', style: 'width:250px;'},
                        close: { text: getText("000-80011", "閉じる"), action: "normal", style: 'width:200px;' }
                    }
                },
            },
            {
                copy: function() {
                    if ( navigator.clipboard ) {
                        navigator.clipboard.writeText(data.refresh_token).then( function(){
                            $(dialog.$.dbody).find(".copy_message").text(getText("000-81021", "クリップボードにコピーしました。"));
                        });
                    } else {
                        alert(getText("000-81022", "お使いのブラウザでは、クリップボードにコピーできません。"));
                    }
                },
                close: function() {
                    dialog.close();
                }
            });
            dialog.open(dialog_contents);

        } else {
            // When a normal response is returned but there is no refresh_token in data
            // 正常応答が返ってきているが、dataにrefresh_tokenが無いとき
            alert(getText("000-81026", "refresh tokenの取得に失敗しました。")+`\n\nstatus=${jqXHR.status}`)
        }
    }

    //
    // refresh tokenの削除
    // Delete refresh token
    //
    function delete_modal_open() {
        console.log("[CALL] delete_modal_open");

        deleteConfirmMessage(
            getText("000-80017", "実行確認"),
            getText("000-93028", "このサービスアカウントユーザー用に発行した以下の全てのrefresh tokenを削除(無効化)してよろしいですか？"),
            $("#token_list .datarow").map((i,elm) => {return fn.cv($(elm).attr("data-id"),"", true)}).get(),
            getText("000-81024", "削除したrefresh tokenを使ってAPIの呼出しを行っている場合、APIの呼び出しができなくなります。"),
            "yes",
            () => {
                // APIを呼出す
                show_progress();
                call_api_promise({
                    type: "DELETE",
                    url: CommonAuth.isPlatformAdminSite()?
                        api_conf.api.token.platform_admin_site.delete:
                        api_conf.api.token.service_account_user_site.delete.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id).replace(/{user_id}/g, user_id),
                    headers: {
                        Authorization: "Bearer " + CommonAuth.getToken(),
                    },
                }).then(() => {
                    // 一覧の再取得
                    return call_api_promise_getTokenList();
                }).then((result) => {
                    // 一覧の再描画
                    displayTokenList(result.data);
                    hide_progress();
                    alertMessage(getText("000-80018", "処理結果"),getText("000-93029", "このサービスアカウントユーザー用に発行した全てのrefresh tokenを削除(無効化)しました。"));
                });
            }
        );
    }
});

