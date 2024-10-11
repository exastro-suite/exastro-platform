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
                { "text": getText("000-92002", "ユーザー一括登録・削除"), "href": location_conf.href.users.bulk_actions.replace(/{organization_id}/g, CommonAuth.getRealm()) }
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
    // get setting common api call
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
    // results tab
    //
    $('#tab_list').on('click', () => {
        display_bulk_action_results();
    });

    //
    // dataRefresh
    //
    $('#dataRefresh').on('click', () => {
        display_bulk_action_results();
    });

    //
    // display bulk_action_results
    //
    function display_bulk_action_results() {
        console.log("[CALL] display_bulk_action_results");

        Promise.all([
            // get Setting Common
            call_api_promise_settings_common(UserBulkActionsCommon.USER_EXPORT_IMPORT_EXP_DAYS),
            // get bulk_status
            call_api_promise_bulk_status()
        ]).then(function (results) {
            let exp_days = results[0].data;
            let bulk_status = results[1].data;
            create_bulk_action_results(exp_days, bulk_status);

            enabled_download_list_button();

        }).catch((e) => {
            console.log('[ERROR] display_bulk_action_results catch');
            finish_onload_progress_at_error();
            if (typeof e != "undefined") console.log(e);
            return;
        });
    }

    //
    // display bulk_action_results
    //
    function create_bulk_action_results(exp_days, bulk_status) {
        console.log("[CALL] display_bulk_action_results");

        $('#bulk_action_results_message').text(getText("000-92029", "ユーザー一括登録・削除の処理結果は{0}日後に削除されます。", exp_days.value));
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
                    : status.job_type === UserBulkActionsCommon.JOB_TYPE_USER_BULK_DELETE ? bulk_delete
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
    // post bulk_status download api call
    //
    function call_post_bulk_status_download(job_id) {
        console.log("[CALL] call_post_bulk_status_download");

        $("#authorization").val("Bearer " + CommonAuth.getToken());
        document.download.action = api_conf.api.jobs_users.bulk_status.detail.post.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{job_id}/g, job_id);
        document.download.submit();
    }

    //
    // newDwonloadExcel
    //
    $('#newDwonloadExcel').on('click', function () {
        call_post_bulk_format_download();
    });

    //
    // post export download api call
    //
    function call_post_bulk_format_download() {
        console.log("[CALL] call_post_bulk_format_download");

        $("#authorization").val("Bearer " + CommonAuth.getToken());
        document.download.action = api_conf.api.jobs_users.bulk_format.post.replace(/{organization_id}/g, CommonAuth.getRealm());
        document.download.submit();
    }

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
            let job_id = result.data.id;
            switch (result.data.job_status) {
                case UserBulkActionsCommon.JOB_STATUS_COMPLETION:
                    // JOBが成功
                    call_post_export_download(job_id);
                    break;
                case UserBulkActionsCommon.JOB_STATUS_NO_DATA:
                    // データなし
                    alertMessage(getText("000-80029", "エラー"), getText("000-92023", "対象のレコードが存在しません。"));
                    break;
                case UserBulkActionsCommon.JOB_STATUS_FAILD:
                    // JOB失敗
                    alertMessage(getText("000-80029", "エラー"), getText("000-92024", "ダウンロードに失敗しました。 (対象ID:{0})", job_id));
                    break;
                default:
                    // 不明なステータス
                    alertMessage(getText("000-80029", "エラー"), getText("000-92024", "ダウンロードに失敗しました。 (対象ID:{0})", job_id));
                    throw new Error('undefined status');
            }

            hide_progress();
            enabled_button();
        }).catch((e) => {
            console.log("catch:on_click_allDwonloadExcel");
            console.log(e);
            hide_progress();
            enabled_button();
        });
    }

    //
    // post export reserve api call
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
    // post export download api call
    //
    function call_post_export_download(job_id) {
        console.log("[CALL] call_post_export_download");

        $("#authorization").val("Bearer " + CommonAuth.getToken());
        document.download.action = api_conf.api.jobs_users.export.detail.post.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{job_id}/g, job_id);
        document.download.submit();
    }

    //
    // excelUploadImport button
    //
    $('#excelUploadImport').on('click', () => {
        bulk_action(UserBulkActionsCommon.JOB_TYPE_USER_BULK_IMPORT);
    });

    //
    // excelUploadDelete button
    //
    $('#excelUploadDelete').on('click', () => {
        bulk_action(UserBulkActionsCommon.JOB_TYPE_USER_BULK_DELETE);
    });

    function bulk_action(job_type) {
        console.log(`[CALL] bulk_action ${job_type}`);

        disabled_button();

        let execute = false;
        let selectFile = null;

        const fileType = 'file',
            fileMime = 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
            restUrl = `excel/maintenance/`;

        // ファイル選択
        fn.fileSelect(fileType, null, fileMime)
            .then(function (file) {
                selectFile = file;

                // 登録するか確認する
                const confirm_title = (job_type === UserBulkActionsCommon.JOB_TYPE_USER_BULK_IMPORT) ? getText("000-92025", "一括登録確認") : getText("000-92026", "一括削除確認");

                const table = { tbody: [] };
                table.tbody.push([getText("000-00209", "ファイルネーム"), selectFile.name]);
                table.tbody.push([getText("000-00210", "ファイルサイズ"), selectFile.size.toLocaleString() + ' byte']);

                const buttons = {
                    ok: { text: getText("000-80012", "ＯＫ"), action: 'positive' },
                    cancel: { text: getText("000-80013", "キャンセル"), action: 'normal' }
                };
                return fn.alert(confirm_title, fn.html.table(table, 'fileSelectTable', 1), 'confirm', buttons);
            }).then(function (flag) {
                if (flag) {
                    // OK
                    execute = true;
                    show_progress();
                    call_post_bulk_action(job_type, selectFile);
                }
            }).then(function () {
                hide_progress();
                enabled_button();

                if (execute) {
                    let ui = new CommonUi(`#container`);
                    ui.contentTabOpen(`#bulkActionResults`);
                    $('#tab_list').click();

                    const msg = (job_type === UserBulkActionsCommon.JOB_TYPE_USER_BULK_IMPORT) ? getText("000-92027", "一括登録を受け付けました。<br>結果については、一括処理結果を確認してください。") : getText("000-92028", "一括削除を受け付けました。<br>結果については、一括処理結果を確認してください。");
                    alertMessage(getText("000-80018", "処理結果"), msg);
                }
            }).catch(function (e) {
                if (e !== 'cancel') {
                    console.log(`[catch] bulk_action ${job_type}`);
                    console.log(e);
                }
                hide_progress();
                enabled_button();
            });
    }

    //
    // post bulk_import api call
    //
    function call_post_bulk_action(job_type, selectFile) {
        let url = null;
        if (job_type === UserBulkActionsCommon.JOB_TYPE_USER_BULK_IMPORT) {
            url = api_conf.api.jobs_users.bulk_import.post.replace(/{organization_id}/g, CommonAuth.getRealm());

        } else if (job_type === UserBulkActionsCommon.JOB_TYPE_USER_BULK_DELETE) {
            url = api_conf.api.jobs_users.bulk_delete.post.replace(/{organization_id}/g, CommonAuth.getRealm());
        }

        let postData = new FormData();
        postData.append('import_file', selectFile);

        return call_api_promise({
            type: "POST",
            url: url,
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            },
            contentType: false,
            processData: false,
            data: postData
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
            if ($element.attr('data-status') == UserBulkActionsCommon.JOB_STATUS_COMPLETION  && $element.attr('count_failed') > 0) {
                $element.prop('disabled', false);
            }
        });
    }
});
