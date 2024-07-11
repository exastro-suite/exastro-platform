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

$(function () {

    CommonAuth.onAuthSuccess(() => {
        let ui = new CommonUi(`#container`);
        ui.contentTabEvent();
        load_main();
    });

    function load_main() {
        Promise.all([
            // Load Common Contents
            loadCommonContents()

        ]).then(function (results) {
            // Display Menu
            displayMenu('menu_account_bulk_actions');
            // Display Topic Path
            displayTopicPath([
                { "text": getText("000-92002", "ユーザー一括登録・更新"), "href": location_conf.href.users.bulk_actions.replace(/{organization_id}/g, CommonAuth.getRealm()) }
            ]);

            finish_onload_progress();
        }).catch((e) => {
            console.log('[ERROR] load_main catch');
            finish_onload_progress_at_error();
            if (typeof e != "undefined") console.log(e);
            return;
        });
    }

    //
    // get auditlog setting common api call
    //
    function call_api_promise_settings_common(config_key) {
        return call_api_promise({
            type: "GET",
            url: api_conf.api.settings.common.get.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{config_key}/g, config_key),
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            }
        });
    }

    //
    // get bulk_status api call
    //
    function call_api_promise_bulk_status(job_id = '') {
        let url = null;

        if (job_id !== '') {
            url = api_conf.api.jobs_users.bulk_status.detail.get.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{job_id}/g, job_id);
        }
        else {
            url = api_conf.api.jobs_users.bulk_status.get.replace(/{organization_id}/g, CommonAuth.getRealm());
        }
        return call_api_promise({
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
    function call_post_export_reserve() {
        return call_api_promise({
            type: "POST",
            url: api_conf.api.jobs_users.export.post.replace(/{organization_id}/g, CommonAuth.getRealm()),
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            }
        });
    }

    //
    // post bulk_status download api call
    //
    function call_post_bulk_status_download(job_id) {
        console.log("[CALL] call_post_bulk_status_download");

        $("#authorization").val("Bearer " + CommonAuth.getToken());
        document.download.action = api_conf.api.jobs_users.bulk_status.detail.post.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{job_id}/g, job_id);
        document.download.submit();
    }

    //
    // post export download api call
    //
    function call_post_export_download(job_id) {
        console.log("[CALL] call_post_export_download");

        $("#authorization").val("Bearer " + CommonAuth.getToken());
        document.download.action = api_conf.api.jobs_users.export.detail.post.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{job_id}/g, job_id);
        document.download.submit();
    }

    //
    // display auditlog download list
    //
    function display_bulk_action_results(exp_days, file_limit, bulk_status) {
        console.log("[CALL] display_bulk_action_results");

        $('#bulk_action_results_message').text(getText("000-91015", "監査ログのダウンロード履歴は{0}日後に削除されます。監査ログのダウンロード最大件数は{1}件です。", exp_days.value, file_limit.value));
        // 明細行を削除
        $('#bulk_action_results .datarow').remove();

        if (bulk_status.length == 0) {
            // 0件の時はnotfoudの表示
            $('#bulk_action_results .notfound').css('display', '');
        } else {
            // 1件以上の時はnotfoudの表示を消す
            $('#bulk_action_results .notfound').css('display', 'none');

            // 明細のテンプレート行からhtmlを取り出す
            // ※class名を"datarow-template"から"datarow"に変更しておく
            const row_template = $('#bulk_action_results .datarow-template').clone(true).removeClass('datarow-template').addClass('datarow').prop('outerHTML');

            // 明細にデータを埋め込み行を明細を作りこむ
            const bulk_import = getText("000-92010", "ファイル一括登録");
            const bulk_delete = getText("000-92012", "ファイル一括削除");
            for (let i = 0; i < bulk_status.length; ++i) {
                const status = bulk_status[i];
                const job_type = status.job_type === UserBulkActionsCommon.JOB_TYPE_USER_BULK_IMPORT ? bulk_import
                                : status.job_type === UserBulkActionsCommon.JOB_TYPE_USER_BULK_IMPORT ? bulk_delete
                                : status.job_type;
                const count_total = Number(fn.cv(status.count_register, 0, true)) + Number(fn.cv(status.count_update, 0, true)) + Number(fn.cv(status.count_delete, 0, true));
                const count_success = Number(fn.cv(status.success_register, 0, true)) + Number(fn.cv(status.success_update, 0, true)) + Number(fn.cv(status.success_delete, 0, true));
                const count_failed = Number(fn.cv(status.failed_register, 0, true)) + Number(fn.cv(status.failed_update, 0, true)) + Number(fn.cv(status.failed_delete, 0, true));

                row_html = row_template
                    .replace(/\${job_id}/g, fn.cv(status.id, '', true))
                    .replace(/\${job_type}/g, fn.cv(job_type, '', true))
                    .replace(/\${job_status}/g, fn.cv(status.job_status, '', true))
                    .replace(/\${count_total}/g, count_total)
                    .replace(/\${count_success}/g, count_success)
                    .replace(/\${count_failed}/g, count_failed)
                    .replace(/\${message}/g, fn.cv(status.message, '', true))
                    .replace(/\${create_user}/g, fn.cv(status.create_user_name, '', true))
                    .replace(/\${create_timestamp}/g, fn.date(new Date(status.create_timestamp), 'yyyy/MM/dd HH:mm:ss'))
                ;
                $("#bulk_action_results tbody").append(row_html);
            }

            $('#bulk_action_results .button_re_download').on('click', function () {
                let job_id = $(this).attr('data-id');
                call_post_bulk_status_download(job_id);
            });
        }
        $('#bulk_action_results .datarow').css('display', '');
    }

    //
    // download list tab
    //
    $('#tab_list').on('click', () => {
        Promise.all([
            // get Setting Common
            call_api_promise_settings_common(UserBulkActionsCommon.DOWNLOAD_EXP_DAYS),
            call_api_promise_settings_common(UserBulkActionsCommon.DOWNLOAD_FILE_LIMIT),
            // get bulk_status
            call_api_promise_bulk_status()

        ]).then(function (results) {
            display_bulk_action_results(results[0].data, results[1].data, results[2].data);
            enabled_download_list_button();

        }).catch((e) => {
            console.log('[ERROR] display_bulk_action_results catch');
            finish_onload_progress_at_error();
            if (typeof e != "undefined") console.log(e);
            return;
        });
    });

    //
    // allDwonloadExcel button
    //
    $('#allDwonloadExcel').on('click', () => {
        download_allDwonloadExcel();
    });

    function download_allDwonloadExcel() {
        console.log("[CALL] download_allDwonloadExcel");

        disabled_button();
        show_progress();

        call_post_export_reserve().then((result) => {
            return waitUntilJobCompletes(
                // APIを呼び出すAjaxパラメータ
                {
                    type: "GET",
                    url: api_conf.api.jobs_users.export.detail.get.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{job_id}/g, result.data.job_id),
                    headers: {
                        Authorization: "Bearer " + CommonAuth.getToken(),
                    }
                },
                // APIの応答でJOBが完了したか判定する
                (result) => {
                    console.log("CHECK STATUS!!");
                    switch (result.data.job_status) {
                        case UserBulkActionsCommon.JOB_STATUS_NOT_EXEC:
                        case UserBulkActionsCommon.JOB_STATUS_EXEC:
                            return false;
                        default:
                            return true;
                    }
                },
                // ポーリング間隔
                3
            )
        }).then((result) => {
            switch (result.data.job_status) {
                case UserBulkActionsCommon.JOB_STATUS_COMPLETION:
                    // JOBが成功
                    call_post_export_download(result.data.job_id);
                    break;
                case UserBulkActionsCommon.JOB_STATUS_NO_DATA:
                    // データなし
                    alertMessage(getText("000-80029", "エラー"), getText("000-92022", "対象のレコードが存在しません。"));
                    break;
                case UserBulkActionsCommon.JOB_STATUS_FAILD:
                    // JOB失敗
                    alertMessage(getText("000-80029", "エラー"), getText("000-92023", "ダウンロードに失敗しました。 (対象ID:{0})", result.data.job_id));
                    break;
                default:
                    // 不明なステータス
                    alertMessage(getText("000-80029", "エラー"), getText("000-92023", "ダウンロードに失敗しました。 (対象ID:{0})", result.data.job_id));
                    throw new Error('undefined status');
            }

            hide_progress();
            enabled_button();
        }).catch((e) => {
            console.log("catch:on_click_btn_download");
            console.log(e);
            hide_progress();
            enabled_button();
        });
    }

    function disabled_button() {
        $('#newDwonloadExcel').prop('disabled', true);
        $('#allDwonloadExcel').prop('disabled', true);
        $('#excelUploadImport').prop('disabled', true);
        $('#excelUploadDelete').prop('disabled', true);
    }
    function enabled_button() {
        $('#newDwonloadExcel').prop('disabled', false);
        $('#allDwonloadExcel').prop('disabled', false);
        $('#excelUploadImport').prop('disabled', false);
        $('#excelUploadDelete').prop('disabled', false);
    }
    function enabled_download_list_button() {
        $('#bulk_action_results .button_re_download').each(function (index, element) {
            let $element = $(element);
            if ($element.attr('data-status') == 'Completion') {
                $element.prop('disabled', false);
            }
        });
    }
});
