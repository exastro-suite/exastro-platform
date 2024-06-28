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
            loadCommonContents()

        ]).then(function(results) {
            // Display Menu
            displayMenu('menu_auditlog');
            // Display Topic Path
            displayTopicPath([
                {"text": getText("000-91002", "監査ログ"), "href": location_conf.href.auditlog.download.replace(/{organization_id}/g, CommonAuth.getRealm())}
            ]);

            finish_onload_progress();
        }).catch((e) => {
            console.log('[ERROR] load_main catch');
            finish_onload_progress_at_error();
            if(typeof e != "undefined") console.log(e);
            return;
        });
    }

    //
    // get auditlog setting common api call
    //
    function call_api_promise_settings_common(config_key) {
        return  call_api_promise({
            type: "GET",
            url: api_conf.api.settings.common.get.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{config_key}/g, config_key),
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            }
        });
    }

    //
    // get auditlog download list api call
    //
    function call_api_promise_auditlog_download_list(download_id='') {
        let url = api_conf.api.auditlog.download.get.replace(/{organization_id}/g, CommonAuth.getRealm());

        if(download_id !== ''){
            url = api_conf.api.auditlog.download.get.replace(/{organization_id}/g, CommonAuth.getRealm()) + `?download_id=${download_id}`;
        }
        return  call_api_promise({
            type: "GET",
            url: url,
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            }
        });
    }


    //
    // post auditlog download reserve api call
    //
    function call_post_auditlog_download_reserve(reqbody) {
        //
        // CALL API
        //
        // show_progress();
        return call_api_promise({
            type: "POST",
            url: api_conf.api.auditlog.download.post.replace(/{organization_id}/g, CommonAuth.getRealm()),
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            },
            data: JSON.stringify(reqbody),
            contentType: "application/json",
            dataType: "json"
        });
    }

    //
    // post auditlog download api call
    //
    function call_post_auditlog_download(job_id) {
        console.log("[CALL] call_post_auditlog_download");

        $("#authorization").val("Bearer " + CommonAuth.getToken());
        document.download.action = api_conf.api.auditlog.download.postId.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{download_id}/g, job_id);
        document.download.submit();
    }

    //
    // display auditlog download list
    //
    function display_auditlog_download_list(exp_days, file_limit, auditlogs) {
        console.log("[CALL] display_auditlog_download_list");

        $('#auditlog_message').text(getText("000-91015", "監査ログのダウンロード履歴は{0}日後に削除されます。監査ログのダウンロード最大件数は{1}件です。", exp_days.value, file_limit.value));
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
                const target_date = JSON.parse(auditlog.conditions);
                const from_date = target_date.ts_from.replaceAll('-', '/');
                const to_date = target_date.ts_to.replaceAll('-', '/');

                row_html = row_template
                    .replace(/\${job_id}/g, fn.cv(auditlog.download_id,'',true))
                    .replace(/\${job_status}/g, fn.cv(auditlog.status,'',true))
                    .replace(/\${conditions}/g, fn.cv(`${from_date} ～ ${to_date}`,'',true))
                    .replace(/\${count_export}/g, fn.cv(auditlog.count_export,'',true))
                    .replace(/\${message}/g, fn.cv(auditlog.message,'',true))
                    .replace(/\${create_user}/g, fn.cv(auditlog.create_user_name,'',true))
                    .replace(/\${create_timestamp}/g, fn.date(new Date(auditlog.create_timestamp),'yyyy/MM/dd HH:mm:ss'))
                $("#auditlog_download_list tbody").append(row_html);
            }

            $('#auditlog_download_list .button_re_download').on('click', function() {
                let job_id = $(this).attr('data-id');
                call_post_auditlog_download(job_id);
            });
        }
        $('#auditlog_download_list .datarow').css('display','');
    }

    //
    // download list tab
    //
    $('#tab_list').on('click',() => {
        Promise.all([
            // get Setting Common
            call_api_promise_settings_common(AuditlogCommon.DOWNLOAD_EXP_DAYS),
            call_api_promise_settings_common(AuditlogCommon.DOWNLOAD_FILE_LIMIT),
            // get Auditlog Download List
            call_api_promise_auditlog_download_list()

        ]).then(function(results) {
            display_auditlog_download_list(results[0].data, results[1].data, results[2].data);
            enabled_button();

        }).catch((e) => {
            console.log('[ERROR] display_auditlog_download_list catch');
            finish_onload_progress_at_error();
            if(typeof e != "undefined") console.log(e);
            return;
        });
    });

    // target date button
    $('#btn_target_date').on('click', function() {
        const date = { from: '', to: ''};
        $from_date = $("#from_date");
        $to_date = $("#to_date");

        fn.datePickerDialog('fromTo', true, getText("000-91006", "対象期間"), date ).then(function( result ){
            if ( result !== 'cancel') {
                $from_date.val(result.from).change().focus().trigger('input');
                $to_date.val(result.to).change().focus().trigger('input');
            }
        });
    });

    //
    // download button
    //
    $('#btn_download').on('click',() => {
        download_button();
    });

    function download_button() {
        console.log("[CALL] download_button");

        if(!validate_download()){
            return;
        }

        show_progress();

        let reqbody = {
            "ts_from": $("#from_date").val().replaceAll( '/', '-' ),
            "ts_to": $("#to_date").val().replaceAll( '/', '-' )
        }
        // call_post_auditlog_download_reserve(reqbody).then((result) => {
        //     return wait_job_complete(result.data.download_id);
        // }).then((download_id) => {
        //     call_post_auditlog_download(download_id);
        //     hide_progress();
        // }).catch(() => {
        //     hide_progress();
        // })

        call_post_auditlog_download_reserve(reqbody).then((result) => {
            return waitUntilJobCompletes(
                // APIを呼び出すAjaxパラメータ
                {
                    type: "GET",
                    url: api_conf.api.auditlog.download.get.replace(/{organization_id}/g, CommonAuth.getRealm()) + `?download_id=${result.data.download_id}`,
                    headers: {
                        Authorization: "Bearer " + CommonAuth.getToken(),
                    }
                },
                // APIの応答でJOBが完了したか判定する
                (result) => {
                    console.log("CHECK STATUS!!");
                    switch(result.data[0].status) {
                        case AuditlogCommon.JOB_STATUS_NOT_EXEC:
                        case AuditlogCommon.JOB_STATUS_EXEC:
                            return false;
                        default:
                            return true;
                    }
                },
                // ポーリング間隔
                3
            )
        }).then((result) => {
            switch(result.data[0].status) {
                case AuditlogCommon.JOB_STATUS_COMPLETION:
                    // JOBが成功
                    call_post_auditlog_download(result.data[0].download_id);
                    break;
                case AuditlogCommon.JOB_STATUS_NO_DATA:
                    // データなし
                    alertMessage("エラー", "でーたがない");
                    break;
                case AuditlogCommon.JOB_STATUS_FAILD:
                    // JOB失敗
                    alertMessage("エラー", "JOBが失敗");
                    break;
                default:
                    // 不明なステータス
                    alertMessage("エラー", "JOBのステータスが不正");
                    throw new Error('undefined status');
            }
            hide_progress();
        }).catch((e) => {
            hide_progress();
        })
    }
    //
    // post auditlog download api call
    //
    function call_post_auditlog_download(job_id) {
        console.log("[CALL] call_post_auditlog_download");

        const organization_id = CommonAuth.getRealm();
        $("#authorization").val("Bearer " + CommonAuth.getToken());
        document.download.action = `/api/${organization_id}/platform/auditlog/download/${job_id}`
        document.download.submit();
    }

    function wait_job_complete(download_id) {
        return new Promise((resolve, reject) => {
            is_job_complite(download_id).then((data) => {
                if(data.status === AuditlogCommon.JOB_STATUS_COMPLETION) {
                    resolve(download_id);
                } else if(data.result !== "200") {
                    reject();
                } else {
                    setTimeout(() => {
                        wait_job_complete(download_id).then(() => {
                            resolve(download_id);
                        }).catch(() => {
                            reject();
                        })}, 3000)
                }
            })
        })
    }

    /// apiでステータス取ってくるPromise
    function is_job_complite(download_id) {
        return new Promise((resolve) => {
            call_api_promise_auditlog_download_list(download_id).then((result) => {
                resolve(result.data[0]);
            })
        })
    }

    function download(reserve){
        const download_id = reserve.download_id;

        new Promise((resolve) => {
            let data = is_job_complite(download_id);
            resolve(data);
        }).then((result)=>{
            let status = result.status;

            if(status == AuditlogCommon.JOB_STATUS_COMPLETION){
                call_post_auditlog_download(download_id);
                return;
            }

            const intervalId = setInterval(()=>{
                new Promise((resolve) => {
                    let data = is_job_complite(download_id);
                    resolve(data);
                }).then((result)=>{
                    let status = result.status;
                    if(status !== AuditlogCommon.JOB_STATUS_COMPLETION){
                        return;
                    }
                })
                clearInterval(intervalId);
                call_post_auditlog_download(download_id);
            }, 1000)
        })
    }

    //
    // validate download
    //
    function validate_download() {
        console.log("--- validate check start ----");
        let result=true;

        // validate from_date
        validate = AuditlogCommon.validate.from_date($("#from_date").val());
        result = result && validate.result;
        $("#message_from_date").text(validate.message);

        // validate to_date
        validate = AuditlogCommon.validate.to_date($("#to_date").val());
        result = result && validate.result;
        $("#message_to_date").text(validate.message);

        console.log("--- validate check end [" + result + "] ----");

        return result;
    }

    //
    // enabled button
    //
    function enabled_button(){
        $('#auditlog_download_list .button_re_download').each(function(index, element) {
            let $element = $(element);
            if($element.attr('data-status') == 'Completion') {
                $element.prop('disabled', false);
            }
        });
    }
});
