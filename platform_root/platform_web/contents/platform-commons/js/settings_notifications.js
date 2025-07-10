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

    CommonAuth.onAuthSuccess(() => {
        new CommonUi(`#container`);
        maintenanceMode();
        load_main();
    });

    function load_main() {
        Promise.all([
            // Load Common Contents
            loadCommonContents(),

            // get settings notification destination List
            call_api_promise_get_settings_notofication_destination(),

        ]).then(function(results) {
            // Display Menu
            displayMenu('menu_settings_notifications');
            // Display Topic Path
            displayTopicPath([
                {"text": getText("000-87006", "通知先ワークスペース一覧"), "href": location_conf.href.workspaces.settings.notifications.workspaces.replace(/{organization_id}/g, CommonAuth.getRealm())},
                {"text": getText("000-87002", "通知先設定一覧"), "href": location_conf.href.workspaces.settings.notifications.list.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id)},
            ]);

            display_main(results[1].data);
            finish_onload_progress();
            enabled_button();
        }).catch((e) => {
            console.log('[ERROR] load_main catch');
            finish_onload_progress_at_error();
            if(typeof e != "undefined") console.log(e);
            return;
        });
    }

    function call_api_promise_get_settings_notofication_destination() {
        return call_api_promise({
            type: "GET",
            url: api_conf.api.workspaces.settings.notifications.get.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id),
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            },
            contentType: "application/json",
            dataType: "json",
        });
    }

    function display_main(settings_notifications) {
        console.log("[CALL] display_main");

        //
        // display new settings notification destination button
        //
        if (CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_WS_MAINTE)) {
            $('#new_notification').css('display','');
            $('#new_notification').on('click',() => {
                window.location = location_conf.href.workspaces.settings.notifications.new.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id);
            });
        }

        //
        // display settings notification destination list
        //
        if ( settings_notifications.length == 0 ) {
            $("#settings_notification_list .notfound").css('display', '');
            $("#settings_notification_list .datarow").remove();
        } else {
            $("#settings_notification_list .notfound").css('display', 'none');
            $("#settings_notification_list .datarow").remove();

            //
            // sort settings notification destination list
            //
            const sortKey = 'name';       // 通知先名
            const sortreverse = 1;      // 昇順
            settings_notifications.sort(function(a, b){
                const as = a[sortKey].toLowerCase(), bs = b[sortKey].toLowerCase();
                if ( as < bs ) {
                    return sortreverse * -1;
                } else if ( as > bs ) {
                    return sortreverse * 1;
                } else {
                    return 0;
                }
            });

            //
            // display settings notification destination list
            //
            const row_template = $('#settings_notification_list .datarow-template').clone(true).removeClass('datarow-template').addClass('datarow').prop('outerHTML');
            let html='';
            for(var row of settings_notifications) {
                var ita_event_type_new = fn.cv(row.conditions.ita.event_type.new,false,false) ? getText("000-00184", 'する') : getText("000-00185", 'しない');
                var ita_event_type_evaluated = fn.cv(row.conditions.ita.event_type.evaluated,false,false) ? getText("000-00184", 'する') : getText("000-00185", 'しない');
                var ita_event_type_timeout = fn.cv(row.conditions.ita.event_type.timeout,false,false) ? getText("000-00184", 'する') : getText("000-00185", 'しない');
                var ita_event_type_undetected = fn.cv(row.conditions.ita.event_type.undetected,false,false) ? getText("000-00184", 'する') : getText("000-00185", 'しない');

                str_conditions = "";
                str_conditions += getText("000-87022", "OASE／イベント種別") + ":" + getText("000-00153", '新規') + ":" + ita_event_type_new + "<br>";
                str_conditions += getText("000-87022", "OASE／イベント種別") + ":" + getText("000-00154", '既知（判定済み）') + ":" + ita_event_type_evaluated + "<br>";
                str_conditions += getText("000-87022", "OASE／イベント種別") + ":" + getText("000-00155", '既知（時間切れ）') + ":" + ita_event_type_timeout + "<br>";
                str_conditions += getText("000-87022", "OASE／イベント種別") + ":" + getText("000-00156", '未知') + ":" + ita_event_type_undetected + "<br>";

                notification_alert_msg = "";
                if (row.kind == "Teams"){
                    row.kind = "Teams(Webhook)";
                    notification_alert_msg = getText("000-00215", "※廃止された通知方法が選択されています。")
                }else if(row.kind == "Teams_WF"){
                    row.kind = "Teams(Workflows)";
                }

                html += row_template
                    .replace(/\${destination_id}/g, fn.cv(row.id,'',true))
                    .replace(/\${destination_name}/g, fn.cv(row.name,'',true))
                    .replace(/\${destination_kind}/g, fn.cv(row.kind,'',true))
                    .replace(/\${notification_alert_msg}/g, fn.cv(notification_alert_msg,'',true))
                    .replace(/\${destination_conditions}/g, str_conditions)
                    .replace(/\${last_update_date_time}/g, fn.date(new Date(row.last_update_timestamp),'yyyy/MM/dd HH:mm:ss'));
            }
            $("#settings_notification_list tbody").append(html);
            $("#settings_notification_list .datarow").css('display', '');
            $(".notification_alert_msg").css('display', '');

            $('#settings_notification_list .to_detail').on('click', function() {
                if (!$(this).prop('disabled')){
                    let destination_id = $(this).attr('data-id');
                    window.location = location_conf.href.workspaces.settings.notifications.detail.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id).replace(/{destination_id}/g, destination_id);
                }
            });

            $('#settings_notification_list .button_edit_notification').on('click', function() {
                let destination_id = $(this).attr('data-id');
                window.location = location_conf.href.workspaces.settings.notifications.edit.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id).replace(/{destination_id}/g, destination_id);
            });

            $('#settings_notification_list .button_delete_notification').on('click', function() {
                confirm_delete($(this).attr('data-id'), $(this).attr('data-name'));
            })
        }
    }

    function confirm_delete(destination_id, destination_name) {
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
                    // 一覧の再取得
                    return call_api_promise_get_settings_notofication_destination();
                }).then((result) => {
                    // 一覧の再描画
                    display_main(result.data);
                    enabled_button();
                    hide_progress();
                    alertMessage(getText("000-80018", "処理結果"), getText("000-87012", "通知先設定を削除しました。"));
                }).catch(() => {
                    enabled_button();
                    hide_progress();
                });
            }
        );
    }

    function disabled_button() {
        $("#new_notification").prop('disabled', true);
        $("#settings_notification_list button").prop('disabled', true);
    }

    function enabled_button() {
        $("#new_notification").prop('disabled', false);

        const adminWorkspaces = CommonAuth.getAdminWorkspaces();
        const accessibleWorkspaces = CommonAuth.getAccessibleWorkspaces();

        $('#settings_notification_list .button_delete_notification').each(function(index, element) {
            let $element = $(element);
            if(CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_WS_MAINTE)) {
                $element.prop('disabled', false);
                return;
            }
            if(adminWorkspaces.indexOf($element.attr('data-id')) !== -1) {
                $element.prop('disabled', false);
            } else {
                $element.prop('disabled', true);
                $element.css('cursor', 'not-allowed');
            }
        });

        $('#settings_notification_list .button_edit_notification').each(function(index, element) {
            let $element = $(element);
            if(CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_WS_MAINTE)) {
                $element.prop('disabled', false);
                return;
            }
            if(adminWorkspaces.indexOf($element.attr('data-id')) !== -1) {
                $element.prop('disabled', false);
            } else {
                $element.prop('disabled', true);
                $element.css('cursor', 'not-allowed');
            }
        });

        $('#workspace_list .to_detail').each(function(index, element) {
            let $element = $(element);
            if(accessibleWorkspaces.indexOf($element.attr('data-id')) !== -1) {
                $element.prop('disabled', false);
            } else {
                $element.prop('disabled', true);
                $element.css('cursor', 'auto');
            }
        });
    }
});
