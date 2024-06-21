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
        let ui = new CommonUi(`#container`);
        ui.contentTabEvent();
        load_main();
    });

    function load_main() {
        Promise.all([
            // Load Common Contents
            loadCommonContents(),
            // get Setting Common
            call_api_promise_settings_common(),
            // get Auditlog Download List
            call_api_promise_auditlog_download_list(),

        ]).then(function(results) {
            // Display Menu
            displayMenu('menu_auditlog');
            // Display Topic Path
            displayTopicPath([
                {"text": getText("000-80052", "監査ログ"), "href": location_conf.href.auditlog.download.replace(/{organization_id}/g, CommonAuth.getRealm())}
            ]);

            display_main(results[1].data,results[2].data);
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
    function call_api_promise_settings_common() {
        return  call_api_promise({
            type: "GET",
            url: api_conf.api.settings.common.get,
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            }
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
            }
        });
    }

    //
    // onload display
    //
    function display_main(settings,auditlogs) {
        console.log("[CALL] display_main");

        display_message(settings);
        //
        // 監査ログ一覧の表示 - auditlog download list display
        //
        display_auditlog_download_list(auditlogs);
    }

    function display_message(settings) {
        $exp_days = $("#exp_days");
        $file_limit = $("#file_limit");

        for(let i = 0; i < settings.length; ++i) {
            const setting = settings[i];

            if(setting.key == "platform.system.audit_log.download_exp_days"){
                $exp_days.val(`監査ログのダウンロード履歴は${setting.value}日後に削除されます。`)
            }

            if(setting.key == "platform.system.audit_log.download_file_limit"){
                $file_limit.val(`監査ログのダウンロード最大件数は${setting.value}件です。`)
            }
        }
    }

    //
    // 監査ログの一覧表示 - display auditlog download list
    //
    function display_auditlog_download_list(auditlogs) {

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
            for(let i = 0; i < auditlogs.length; ++i) {
                const auditlog = auditlogs[i];
                let target_date = JSON.parse(auditlog.conditions)
                row_html = row_template
                    .replace(/\${job_id}/g, fn.cv(auditlog.download_id,'',true))
                    .replace(/\${job_status}/g, fn.cv(auditlog.status,'',true))
                    .replace(/\${conditions}/g, fn.cv(`${target_date.ts_from} ～ ${target_date.ts_to}`,'',true))
                    .replace(/\${count_export}/g, fn.cv(auditlog.count_export,'',true))
                    .replace(/\${message}/g, fn.cv(auditlog.message,'',true))
                    .replace(/\${create_user}/g, fn.cv(auditlog.create_user_name,'',true))
                    .replace(/\${create_timestamp}/g, fn.date(new Date(auditlog.create_timestamp),'yyyy/MM/dd HH:mm:ss'))
                $("#auditlog_download_list tbody").append(row_html);
            }

            $('#auditlog_download_list .button_re_download').on('click', function() {
                let job_id = $(this).attr('data-id');
                call_post_auditlog_re_download(job_id);
            });
        }
        $('#auditlog_download_list .datarow').css('display','');
    }

    // set event
    $('#btn_target_time').on('click', function() {
        const date = { from: '', to: ''};
        $from_date = $("#from_date");
        $to_date = $("#to_date");

        fn.datePickerDialog('fromTo', true, getText("000-00125", "対象期間"), date ).then(function( result ){
            if ( result !== 'cancel') {
                $from_date.val( result.from ).change().focus().trigger('input');
                $to_date.val( result.to ).change().focus().trigger('input');
            }
        });
    });

    //
    // ダウンロードボタン
    //
    $('#btn_download').on('click',() => {
        download_button();
    });

    function download_button() {
        console.log("[CALL] download_button");

        let reqbody =   {
            "ts_from":$("#from_date").val().replaceAll( '/', '-' ),
            "ts_to":$("#to_date").val().replaceAll( '/', '-' )
        }

        // CALL API
        call_post_auditlog_download(reqbody);
    }

    function call_post_auditlog_download(reqbody) {
        //
        // CALL API
        //
        show_progress();
        call_api_promise({
            type: "POST",
            url: api_conf.api.auditlog.download.post.replace(/{organization_id}/g, CommonAuth.getRealm()),
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            },
            data: JSON.stringify(reqbody),
            contentType: "application/json",
            dataType: "json",
        }).then(() => {
            hide_progress();
            alertMessage(getText("000-80018", "処理結果"), getText("000-84019", "ダウンロードを開始しました。"),
            () => {
                window.location = location_conf.href.auditlog.download.replace(/{organization_id}/g, CommonAuth.getRealm());
            });
        }).catch(() => {
            hide_progress();
        });
    }

    function download2() {
        $("#authorization").val("Bearer " + CommonAuth.getToken());
        document.download2.submit();
    }

    function call_post_auditlog_re_download(job_id) {
        console.log("[CALL] re_download_button");
        //
        // CALL API
        //
        show_progress();
        call_api_promise({
            type: "POST",
            url: api_conf.api.auditlog.download.postId.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{download_id}/g, job_id),
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            },
            contentType: "application/x-www-form-urlencoded"
        }).then(() => {
            hide_progress();
            alertMessage(getText("000-80018", "処理結果"), getText("000-84019", "ダウンロードを開始しました。"),
            () => {
                window.location = location_conf.href.auditlog.download.replace(/{organization_id}/g, CommonAuth.getRealm());
            });
        }).catch(() => {
            hide_progress();
        });
    }
});
