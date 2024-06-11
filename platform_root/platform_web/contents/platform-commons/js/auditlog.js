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
            // get Auditlog Download List
            call_api_promise_auditlog_download_list(),

        ]).then(function(results) {
            // Display Menu
            displayMenu('menu_auditlog');
            // Display Topic Path
            displayTopicPath([
                {"text": getText("000-80052", "監査ログ"), "href": location_conf.href.auditlog.download.replace(/{organization_id}/g, CommonAuth.getRealm())}
            ]);

            // display_main(results[1].data);
            finish_onload_progress();

        }).catch((e) => {
            console.log('[ERROR] load_main catch');
            finish_onload_progress_at_error();
            if(typeof e != "undefined") console.log(e);
            return;
        });
    }

    //
    // get auditlog download list api call
    //
    function call_api_promise_auditlog_download_list() {
        return  call_api_promise({
            type: "GET",
            url: api_conf.api.auditlog.download.get.replace(/{organization_id}/g, CommonAuth.getRealm()),
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
    function display_main(auditlogs) {
        console.log("[CALL] display_main");

        //
        // 監査ログ一覧の表示 - auditlog download list display
        //
        display_auditlog_download_list(auditlogs);

        //
        // ボタンの有効化 - bottun enabled
        //
        disable_event_elements(false);
    }

    //
    // ボタンの制御（メイン画面） - button control (main window)
    //
    function disable_event_elements(desabled) {
        if (desabled) {
            $("#auditlog_download_list_pager .pagingMoveButton").prop("disabled", true);
        } else {
            $("#auditlog_download_list_pager .pagingMoveButton[data-type=first]").prop("disabled", (paging.display_page_no > 1? false: true));
            $("#auditlog_download_list_pager .pagingMoveButton[data-type=prev]").prop("disabled", (paging.display_page_no > 1? false: true));
            $("#auditlog_download_list_pager .pagingMoveButton[data-type=next]").prop("disabled", !paging.enable_next_page);
        }
    }

    //
    // 監査ログの一覧表示 - display auditlog download list
    //
    function display_auditlog_download_list(auditlogs) {
        // ページング用変数を移動後のページに設定
        paging.display_page_no = paging.move_to_page_no;
        paging.enable_next_page = paging.rows_per_page < auditlogs.length;

        // 明細行を削除
        $('#auditlog_download_list .datarow').remove();

        if (auditlogs.length == 0) {
            // 0件の時はnotfoudの表示
            $('#auditlog_download_list .notfound').css('display','');
        } else {
            // 1件以上の時はnotfoudの表示を消す
            $('#auditlog_download_list .notfound').css('display','none');
            // 明細のテンプレート行からhtmlを取り出す
            // ※class名を"datarow-template"から"datarow"に変更しておく
            const row_template = $('#auditlog_download_list .datarow-template').clone(true).removeClass('datarow-template').addClass('datarow').prop('outerHTML');

            // 明細にデータを埋め込み行を明細を作りこむ
            for(let i = 0; i < Math.min(auditlogs.length, paging.rows_per_page); ++i) {
                const auditlog = auditlogs[i];
                row_html = row_template
                    .replace(/\${job_id}/g, fn.cv(auditlog.job_id,'',true))
                    .replace(/\${job_type}/g, fn.cv(auditlog.job_type,'',true))
                    .replace(/\${job_status}/g, fn.cv(auditlog.job_status,'',true))
                    .replace(/\${conditions}/g, fn.cv(auditlog.conditions,'',true))
                    .replace(/\${count_export}/g, fn.cv(auditlog.count_export,'',true))
                    .replace(/\${message}/g, fn.cv(auditlog.message,'',true))
                    .replace(/\${create_user}/g, fn.cv(auditlog.create_user,'',true))
                    .replace(/\${create_timestamp}/g, fn.date(new Date(auditlog.create_timestamp),'yyyy/MM/dd HH:mm:ss'))
                $("#auditlog_download_list tbody").append(row_html);
            }
        }
        $('#auditlog_download_list .datarow').css('display','');
        $("#auditlog_download_list .pagingCurrentPage").text(paging.display_page_no);
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
        call_api_promise_auditlog_download_list().then((result) => {
            if(result.data.length == 0 && paging.move_to_page_no > 1) {
                // 表示するデータが無くなってしまった時は１ページ前に移動する
                paging.move_to_page_no -= 1;
                movePage();
                return;
            }
            // 一覧の表示
            display_auditlog_download_list(result.data);
            // ボタンを活性化
            disable_event_elements(false);
            // 処理中表示を消す
            hide_progress();
        });
    }
    // set event - paging　（main window)
    $("#auditlog_download_list_pager .pagingMoveButton[data-type=first]").on('click', function () {
        paging.move_to_page_no = 1;
        movePage();
    });
    $("#auditlog_download_list_pager .pagingMoveButton[data-type=prev]").on('click', function () {
        paging.move_to_page_no = paging.display_page_no - 1;
        movePage();
    });
    $("#auditlog_download_list_pager .pagingMoveButton[data-type=next]").on('click', function () {
        paging.move_to_page_no = paging.display_page_no + 1;
        movePage();
    });


    function disabled_button() {
        $('#button_register').prop('disabled', true);
    }
});
