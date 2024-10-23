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
    const workspace_id = window.location.pathname.split("/")[4];
    const destination_id = window.location.pathname.split("/")[7];

    CommonAuth.onAuthSuccess(() => {
        new CommonUi(`#container`);
        maintenanceMode();
        load_main();
    });

    function load_main() {
        Promise.all([
            // Load Common Contents
            loadCommonContents(),
            // get Workspace List
            call_api_promise({
                type: "GET",
                url: api_conf.api.workspaces.settings.notifications.detail.get.replace('{organization_id}', CommonAuth.getRealm()).replace('{workspace_id}', workspace_id).replace('{destination_id}', destination_id),
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                contentType: "application/json",
                dataType: "json",
            })
        ]).then(function(results) {
            // Display Menu
            displayMenu('menu_settings_notifications');
            // Display Topic Path
            displayTopicPath([
                {"text": getText("000-87006", "通知先ワークスペース一覧"), "href": location_conf.href.workspaces.settings.notifications.workspaces.replace(/{organization_id}/g, CommonAuth.getRealm())},
                {"text": getText("000-87002", "通知先設定一覧"), "href": location_conf.href.workspaces.settings.notifications.list.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id)},
                {"text": getText("000-87029", "通知先設定詳細"), "href": location_conf.href.workspaces.settings.notifications.new.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id)},
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

    function display_main(destination_row) {
        console.log("[CALL] display_main");

        //
        // display Edit settings notification destination button
        //
        $('.button_edit_destination').on('click',() => {
            window.location = location_conf.href.workspaces.settings.notifications.edit.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id).replace(/{destination_id}/g, destination_id);
        });
        if(CommonAuth.getAdminWorkspaces().indexOf(workspace_id) !== -1 || CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_WS_MAINTE)) {
            $('.button_edit_destination').prop('disabled', false);
        } else {
            $('.button_edit_destination').prop('disabled', true);
            $('.button_edit_destination').css('cursor', 'not-allowed');
        }

        //
        // display Delete settings notification destination button
        //
        $('.button_delete_destination').on('click',() => {
            delete_destination(destination_row.name);
        });
        if(CommonAuth.getAdminWorkspaces().indexOf(workspace_id) !== -1 || CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_WS_MAINTE)) {
            $('.button_delete_destination').prop('disabled', false);
        } else {
            $('.button_delete_destination').prop('disabled', true);
            $('.button_delete_destination').css('cursor', 'not-allowed');
        }

        if(CommonAuth.getAdminWorkspaces().indexOf(workspace_id) !== -1 || CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_WS_MAINTE)) {
            $('#button_test').prop('disabled', false);
        } else {
            $('#button_test').prop('disabled', true);
            $('#button_test').css('cursor', 'not-allowed');
        }

        //
        // display workspace detail
        //
        $("#text_destination_id").text(destination_row.id);
        $("#text_destination_name").text(destination_row.name);
        if(destination_row.kind == "Teams"){
            $("#text_destination_kind").text("Teams(Webhook)");
            $("#text_destination_kind").append('<p class="notification_alert_msg">');
            $(".notification_alert_msg").append(getText("000-00215", "※廃止された通知方法が選択されています。"));
        } else if(destination_row.kind == "Teams_WF"){
            $("#text_destination_kind").text("Teams(Workflows)");
        }else{
            $("#text_destination_kind").text(destination_row.kind);
        }
        settings_notifications_common.set_destination_informations_text(destination_row.kind, destination_row.destination_informations);

        try { $("#text_last_update_date_time").text(fn.date(new Date(destination_row.last_update_timestamp),'yyyy/MM/dd HH:mm:ss'))} catch(e) { }

        var ita_event_type_new = fn.cv(destination_row.conditions.ita.event_type.new,false,false) ? getText("000-00184", 'する') : getText("000-00185", 'しない');
        var ita_event_type_evaluated = fn.cv(destination_row.conditions.ita.event_type.evaluated,false,false) ? getText("000-00184", 'する') : getText("000-00185", 'しない');
        var ita_event_type_timeout = fn.cv(destination_row.conditions.ita.event_type.timeout,false,false) ? getText("000-00184", 'する') : getText("000-00185", 'しない');
        var ita_event_type_undetected = fn.cv(destination_row.conditions.ita.event_type.undetected,false,false) ? getText("000-00184", 'する') : getText("000-00185", 'しない');

        const row_template_top = $('#conditions_list .datarow-template-top').clone(true).removeClass('datarow-template').addClass('datarow').prop('outerHTML');
        const row_template_2nd = $('#conditions_list .datarow-template-2nd').clone(true).removeClass('datarow-template-sub').addClass('datarow').prop('outerHTML');
        const row_template_3rd = $('#conditions_list .datarow-template-3rd').clone(true).removeClass('datarow-template-sub').addClass('datarow').prop('outerHTML');
        // 固定のイベントタイプを指定
        // Specify a fixed event type
        let html='';
        html += row_template_top
            .replace(/\${conditions_all_count}/g, 4)
            .replace(/\${conditions_group_name}/g, getText("000-87022", "OASE／イベント種別"))
            .replace(/\${conditions_group_count}/g, 4)
            .replace(/\${conditions_name}/g, getText("000-00153", '新規'))
            .replace(/\${conditions_value}/g, ita_event_type_new);
        html += row_template_3rd
            .replace(/\${conditions_name}/g, getText("000-00154", '既知（判定済み）'))
            .replace(/\${conditions_value}/g, ita_event_type_evaluated);
        html += row_template_3rd
            .replace(/\${conditions_name}/g, getText("000-00155", '既知（時間切れ）'))
            .replace(/\${conditions_value}/g, ita_event_type_timeout);
        html += row_template_3rd
            .replace(/\${conditions_name}/g, getText("000-00156", '未知'))
            .replace(/\${conditions_value}/g, ita_event_type_undetected);
        $("#conditions_list tbody").append(html);
        $("#conditions_list .datarow").css('display', '');

        //
        // notification test button
        //
        $('#button_test').on('click',() => {
            confirmMessage(getText("000-80030", "確認"), getText("000-87036", "テスト通知を行いますか？<br><br>タイトル・本文：notification testで通知されます。"),
                () => {
                    // OK
                    $('#button_test').prop('disabled',true);
                    notification_test(destination_row);
                },
                () => {
                    // Cancel
                    return;
                }
            )
        });
    }

    function delete_destination(destination_name) {
        console.log("[CALL] confirm_delete");

        deleteConfirmMessage(
            getText("000-80017", "実行確認"),
            getText("000-87010", "以下の通知先設定を削除してよろしいですか？"),
            destination_id + ":" + destination_name,
            getText("000-87011", "削除した通知先設定へのメッセージ通知は一切できなくなります。"),
            workspace_id + "/" + destination_id,
            () => {
                disabled_button();
                show_progress();

                // APIを呼出す
                call_api_promise({
                    type: "DELETE",
                    url: api_conf.api.workspaces.settings.notifications.delete.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id).replace(/{destination_id}/g, destination_id),
                    headers: {
                        Authorization: "Bearer " + CommonAuth.getToken(),
                    },
                }).then(() => {
                    hide_progress();
                    alertMessage(getText("000-80018", "処理結果"), getText("000-87012", "通知先設定を削除しました。"),
                        () => {
                            window.location.href = location_conf.href.workspaces.settings.notifications.list.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id);
                        });
                }).catch(() => {
                    hide_progress();
                });
            }
        );
    }

    function disabled_button() {
        $('.button_edit_destination').prop('disabled', true);
        $('.button_delete_destination').prop('disabled', true);
        $('.button_test').prop('disabled', true);
    }

    //
    // register setting notification destination
    //
    function notification_test(destination_row) {

        var message = {}
        message = {
            "title": "notification test",
            "message": "notification test"
        };

        let reqbody = [
            {
                "destination_id": destination_row.id,
                "func_id": "TEST",
                "func_informations": {},
                "message": message
            }
        ];

        show_progress();
        new Promise((resolve, reject) => {
            if(destination_row.kind === DESTINATION_KIND_MAIL) {
                // メールの場合、メールサーバ設定情報を確認する
                call_api_promise({
                    type: "GET",
                    url: api_conf.api.settings.mailserver.get.replace(/{organization_id}/g, CommonAuth.getRealm()),
                    headers: {
                        Authorization: "Bearer " + CommonAuth.getToken(),
                    },
                    contentType: "application/json",
                    dataType: "json",
                }).then((response_json) => {
                    if(typeof response_json.data.smtp_host !== "undefined") {
                        resolve();
                    } else {
                        reject();
                        alertMessage(getText("000-80018", "処理結果"), getText("000-87039", "メール通知を行う前にメール送信サーバー設定を実施してください"));
                    }
                }).catch(() => {
                    reject();
                });
            } else {
                resolve();
            }
        }).then(() => {
            return call_api_promise(
                {
                    type: "POST",
                    url: api_conf.api.workspaces.notifications.post.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id),
                    headers: {
                        Authorization: "Bearer " + CommonAuth.getToken(),
                    },
                    data: JSON.stringify(reqbody),
                    contentType: "application/json",
                    dataType: "json",
                });
        }).then(() => {
            hide_progress();
            $('#button_test').prop('disabled',false);
            alertMessage(getText("000-80018", "処理結果"), getText("000-87035", "テスト通知を完了しました。結果が通知先に送信されるまでお待ちください。"));
        }).catch(() => {
            hide_progress();
            $('#button_test').prop('disabled',false);
        })
    }
});
