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
        let ui = new CommonUi(`#container`);
        ui.contentTabEvent();
        load_main();
    });

    function load_main() {
        Promise.all([
            // Load Common Contents
            loadCommonContents(),

            // get Token List
            call_api_promise_getTokenList()

        ]).then(function(results) {
            // Display Menu
            displayMenu(null);
            // Display Topic Path
            displayTopicPath([
                {"text": getText("000-81006", "アカウント管理"), "href": location_conf.href.account.main_page.replace(/{organization_id}/g, CommonAuth.getRealm()) },
            ]);
            $("#ifra_account_edit").prop("src",location_conf.href.account.account_edit.replace(/{organization_id}/g, CommonAuth.getRealm()));
            $("#ifra_password_change").prop("src",location_conf.href.account.update_password.replace(/{organization_id}/g, CommonAuth.getRealm()));
            $("#ifra_two_factor_auth").prop("src",location_conf.href.account.two_factor_auth.replace(/{organization_id}/g, CommonAuth.getRealm()));

            // Display Token List
            displayTokenList(results[1].data);

            // Button Action
            $("#button_create_modal_open").on('click',() => {
                create_modal_open();
            });
            // Delete Action
            $("#button_delete_modal_open").on('click',() => {
                delete_modal_open();
            });

            finish_onload_progress();
        }).catch((e) => {
            console.log('[ERROR] load_main catch');
            finish_onload_progress_at_error();
            if(typeof e != "undefined") console.log(e);
            return;
        });
    }

    // Call refresh token get API
    // refresh token取得APIの呼出
    function call_api_promise_getTokenList() {
        return call_api_promise({
            type: "GET",
            url: api_conf.api.token.get.replace(/{organization_id}/g, CommonAuth.getRealm()),
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            },
            contentType: "application/json",
            dataType: "json",
        })
    }

    // display a list of refresh tokens
    // リフレッシュ トークンの一覧を表示
    function displayTokenList(list) {
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
            .replace(/\${expire_timestamp}/g, fn.date(new Date(row.expire_timestamp),'yyyy/MM/dd HH:mm:ss'))
            .replace(/\${lastaccess_timestamp}/g, fn.date(new Date(row.lastaccess_timestamp),'yyyy/MM/dd HH:mm:ss'));
            $('#token_list tbody').append(row_html);
        }
        $('#token_list .datarow').css('display','');
    }

    // Display refresh token issuance modal screen
    // refresh tokenの発行モーダル画面を表示
    function create_modal_open() {
        const dialog = new Dialog({
            mode: 'modeless',
            position: 'center',
            width: 'auto',
            header: {
                title: getText("000-81018", "refresh token発行"),
            },
            footer: {
                button: {
                    append: { text: '<span class="iconButtonIcon icon icon-plus"></span>'+getText("000-80034", "発行"), action: 'positive', style: 'width:200px;'},
                    close: { text: getText("000-80011", "閉じる"), action: "normal", style: 'width:200px;' }
                }
            },
        },
        {
            append: function() {
                modal_create_button(dialog);
            },
            close: function() {
                dialog.close();
            }
        });
        dialog.open($("#create_token_dialog").html());
    }

    // Press the refresh token issue button
    // refresh tokenの発行ボタンを押下
    function modal_create_button(dialog) {

        // Validate input
        if ($(dialog.$.dbody).find("#form_password").val() == "") {
            $(dialog.$.dbody).find("#message_password").text(getText("400-00011", "必須項目が不足しています。({0})", getText("000-00132", "パスワード")));
            return;
        }

        // clear message Validate input
        $(dialog.$.dbody).find("#message_password").text("");
        $(dialog.$.dbody).find("#message_onetime_password").text("");

        show_progress();

        // Post dataの生成
        const post_data = {
            client_id: "_{organization_id}-api".replace(/{organization_id}/g, CommonAuth.getRealm()),
            grant_type: "password",
            scope: "openid offline_access",
            username: CommonAuth.getPreferredUsername(),
            password: $(dialog.$.dbody).find("#form_password").val()
        }
        if ($(dialog.$.dbody).find("#form_onetime_password").val() != "") {
            // ontime passwordは指定した時のみ付与
            post_data.totp = $(dialog.$.dbody).find("#form_onetime_password").val();
        }

        // APIの呼出(401応答を処理したいのでnoMessage版を使う)
        call_api_promise_noMessage({
            type: "POST",
            url: api_conf.api.token.post.replace(/{organization_id}/g, CommonAuth.getRealm()),
            headers: {
                contentType: "application/x-www-form-urlencoded",
            },
            data: post_data
        }).then((result) => {
            hide_progress();
            dialog.close();

            // refresh tokenの発行結果の表示
            display_result_created(result.data, result.status, result.jqXHR);

        }).catch((error) => {
            hide_progress();
            if(error.jqXHR) {
                // APIのエラー応答
                switch(error.jqXHR.status) {
                    case 401:
                        alertMessage(getText("000-80018", "処理結果"),getText("000-81019", "入力に誤りがあるため、refresh tokenの発行に失敗しました。"), () => {
                            $(dialog.$.dbody).find("#form_password").val("");
                            $(dialog.$.dbody).find("#form_onetime_password").val("");
                        });
                        break;
                    default:
                        alertMessageApiError(error.jqXHR, error.textStatus, error.errorThrown);
                        break;
                }
            } else {
                const detail = "";
                try { detail += "" + error.toString() } catch {}
                alert(getText("000-81020", "エラーが発生しました。") + detail);
            }
        });
    }

    // Display of result of issuing refresh token
    // refresh tokenの発行結果の表示
    function display_result_created(data, status, jqXHR) {
        // 一覧の再描画
        call_api_promise_getTokenList().then((result) => {
            displayTokenList(result.data)
        });

        if(data.refresh_token) {
            const dialog_contents = $("#create_token_result_dialog").html().replace(/{refresh_token}/g, fn.cv(data.refresh_token,'',true));

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

    // Delete refresh token
    // refresh tokenの削除
    function delete_modal_open() {
        deleteConfirmMessage(
            getText("000-80017", "実行確認"),
            getText("000-81023", "あなたが発行した以下の全てのrefresh tokenを削除(無効化)してよろしいですか？"),
            $("#token_list .datarow").map((i,elm) => {return fn.cv($(elm).attr("data-id"),"", true)}).get(),
            getText("000-81024", "削除したrefresh tokenを使ってAPIの呼出しを行っている場合、APIの呼び出しができなくなります。"),
            "yes",
            () => {
                // APIを呼出す
                show_progress();
                call_api_promise({
                    type: "DELETE",
                    url: api_conf.api.token.delete.replace(/{organization_id}/g, CommonAuth.getRealm()),
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
                    alertMessage(getText("000-80018", "処理結果"),getText("000-81025", "あなたが発行した全てのrefresh tokenを削除(無効化)しました。"));
                });
            });
    }
});

