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
                {"text": getText("000-87032", "通知先設定編集"), "href": location_conf.href.workspaces.settings.notifications.edit.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id)},
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

        settings_notifications_common.set_conditions();
        settings_notifications_common.set_destination_informations(destination_row.kind, destination_row.destination_informations, destination_row.enable_batch, destination_row.batch_period_seconds, destination_row.batch_count_limit);

        $('#text_destination_id').text(destination_row.id);
        $("#form_destination_name").val(destination_row.name);

        $('#ita_event_type_new').prop("checked", fn.cv(destination_row.conditions.ita.event_type.new, false, false));
        $('#ita_event_type_evaluated').prop("checked", fn.cv(destination_row.conditions.ita.event_type.evaluated, false, false));
        $('#ita_event_type_timeout').prop("checked", fn.cv(destination_row.conditions.ita.event_type.timeout, false, false));
        $('#ita_event_type_undetected').prop("checked", fn.cv(destination_row.conditions.ita.event_type.undetected, false, false));

        $('.description_Mail').html(getText('000-87017', 'email形式 (最大{0}メールアドレス)<br>※複数のメールアドレスを指定する場合は「;（セミコロン）」「,（カンマ）」記号<br>または、改行を区切り文字として使用します', MAX_MAIL_COUNT));
        $('.description_Teams').html(getText('000-87018', 'URL形式'));
        $('.description_Teams_WF').html(getText('000-87018', 'URL形式'));
        $('.description_Webhook').html(getText('000-87019', '1行目 URL形式<br>2行目 ヘッダー内容'));
        $('.description_ServiceNow').html(getText('000-87050', 'ServiceNow API URL (個別登録用): ServiceNow テーブルAPIのURLを入力します。<br><br>※バッチAPIを利用して一括で登録を行いたい場合は「一括登録」にチェックを入れ、以下を入力します。<br>ServiceNow API URL (一括登録用): ServiceNow バッチAPIのURLを入力します。<br>送信間隔 (秒): 一括登録を実行する間隔を指定します。ここで指定した秒数毎にバッチAPIがコールされます。入力可能範囲 1～3600<br>一回に送信する最大件数: 一括登録を実行する際に送信されるメッセージの最大件数を指定します。入力可能範囲 1～10000'));

        $('.destination_informations').css('display', 'none');
        $('.description_no_select').css('display', '');

        //
        // condition kind click
        //
        $('input[name="form_destination_kind"]').on('click',function() {
            $('.destination_informations').css('display', 'none');
            let id = $(this).val();
            console.log("id: "+id);
            $('.description_' + id).css('display', '');
            $('.destination_informations_' + id).css('display', '');

            $('input[name="form_destination_informations_' + id + '"]').css('display', '');
            $('textarea[name="form_destination_informations_' + id + '"]').css('display', '');
        });

        //
        // condition ServiceNow password check
        //
        $('#form_destination_informations_servicenow_password_check').on('click',function() {
            if ($(this).prop("checked")) {
                $("#form_destination_informations_servicenow_password").prop('disabled',false);
            } else {
                $("#form_destination_informations_servicenow_password").prop('disabled',true);
            }
        });

        //
        // condition ServiceNow bulk check
        //
        $('#form_destination_informations_servicenow_batch_check').on('click',function() {
            if ($(this).prop("checked")) {
                $("#form_destination_informations_servicenow_batch_url").prop('disabled',false);
                $("#form_destination_informations_servicenow_interval").prop('disabled',false);
                $("#form_destination_informations_servicenow_limit").prop('disabled',false);
            } else {
                $("#form_destination_informations_servicenow_batch_url").prop('disabled',true);
                $("#form_destination_informations_servicenow_interval").prop('disabled',true);
                $("#form_destination_informations_servicenow_limit").prop('disabled',true);
            }
        });

        //
        // register button
        //
        $('#button_register').on('click',() => {
            $('#button_register').prop('disabled',true);
            if( ! validate_register() ) {
                $('#button_register').prop('disabled',false);
                return;
            }
            var destination_kind = $("input[name=form_destination_kind]:checked").val();
            notification_destination_register(destination_kind);
        });

        if (destination_row.kind === DESTINATION_KIND_MAIL){
            $('#form_destination_kind_mail').trigger('click');
        }
        else if (destination_row.kind === DESTINATION_KIND_TEAMS){
            $('#form_destination_kind_teams').trigger('click');
        }
        else if (destination_row.kind === DESTINATION_KIND_TEAMS_WF){
            $('#form_destination_kind_teams_wf').trigger('click');
        }
        else if (destination_row.kind === DESTINATION_KIND_WEBHOOK){
            $('#form_destination_kind_webhook').trigger('click');
        }
        else if (destination_row.kind === DESTINATION_KIND_SERVICENOW){
            $('#form_destination_kind_servicenow').trigger('click');
        }
    }

    //
    // validate register
    //
    function validate_register() {
        console.log("--- validate check start ----");
        let result=true;

        // validate destination name
        validate = settings_notifications_common.validate.destination_name($("#form_destination_name").val());
        result = result && validate.result;
        $("#message_destination_name").text(validate.message);

        // validate destination kind
        validate = settings_notifications_common.validate.destination_kind($("input[name=form_destination_kind]:checked"));
        result = result && validate.result;
        $("#message_destination_kind").text(validate.message);

        var destination_kind = $("input[name=form_destination_kind]:checked").val();
        if (destination_kind === "Mail"){
            // validate destination informations (mail)
            validate = settings_notifications_common.validate.destination_informations_mail($("#form_destination_informations_mail_to").val(), $("#form_destination_informations_mail_cc").val(), $("#form_destination_informations_mail_bcc").val());
            result = result && validate.result;
            $("#message_destination_informations").text(validate.message);
        }
        else if (destination_kind === "Teams"){
            // validate destination informations (teams)
            validate = settings_notifications_common.validate.destination_informations_teams($("#form_destination_informations_teams").val());
            result = result && validate.result;
            $("#message_destination_informations").text(validate.message);
        }
        else if (destination_kind === "Teams_WF"){
            // validate destination informations (teams powar automate)
            validate = settings_notifications_common.validate.destination_informations_teams_wf($("#form_destination_informations_teams_wf").val());
            result = result && validate.result;
            $("#message_destination_informations").text(validate.message);
        }
        else if (destination_kind === "Webhook"){
            // validate destination informations (webhook)
            validate = settings_notifications_common.validate.destination_informations_webhook($("#form_destination_informations_webhook").val(), $("#form_destination_informations_webhook_header").val());
            result = result && validate.result;
            $("#message_destination_informations").text(validate.message);
        }
        else if (destination_kind === "ServiceNow"){
            // validate destination informations (ServiceNow)
            validate = settings_notifications_common.validate.destination_informations_servicenow(
                $("#form_destination_informations_servicenow_url").val(),
                $("#form_destination_informations_servicenow_user").val(),
                $("#form_destination_informations_servicenow_password_check").prop("checked"),
                $("#form_destination_informations_servicenow_password").val(),
                $("#form_destination_informations_servicenow_batch_check").prop("checked"),
                $("#form_destination_informations_servicenow_batch_url").val(),
                $("#form_destination_informations_servicenow_interval").val(),
                $("#form_destination_informations_servicenow_limit").val(),
            );
            result = result && validate.result;
            $("#message_destination_informations").text(validate.message);
        }

        console.log("--- validate check end [" + result + "] ----");

        return result;
    }

    //
    // register setting notification destination
    //
    function notification_destination_register(destination_kind) {
        var destination_informations = settings_notifications_common.get_destination_informations();

        let reqbody = {
            "id": destination_id,
            "name": $('#form_destination_name').val(),
            "kind": $("input[name=form_destination_kind]:checked").val(),
            "conditions": {
                "ita": {
                    "event_type": {
                        "new": $('#ita_event_type_new').prop("checked"),
                        "evaluated": $('#ita_event_type_evaluated').prop("checked"),
                        "timeout": $('#ita_event_type_timeout').prop("checked"),
                        "undetected": $('#ita_event_type_undetected').prop("checked"),
                    },
                },
            },
            "destination_informations": destination_informations,
        }

        if (destination_kind === "ServiceNow"){
            let enable_batch = $("#form_destination_informations_servicenow_batch_check").prop("checked");
            reqbody.enable_batch = enable_batch;
            if (enable_batch == true) {
                let form_destination_informations_servicenow_interval = $("#form_destination_informations_servicenow_interval").val();
                let form_destination_informations_servicenow_limit = $("#form_destination_informations_servicenow_limit").val();
                reqbody.batch_period_seconds = Number(form_destination_informations_servicenow_interval);
                reqbody.batch_count_limit = Number(form_destination_informations_servicenow_limit);
            } else {
                reqbody.batch_period_seconds = null;
                reqbody.batch_count_limit = null;
            }
        }

        show_progress();
        call_api_promise(
            {
                type: "PUT",
                url: api_conf.api.workspaces.settings.notifications.put.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id).replace(/{destination_id}/g, destination_id),
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                data: JSON.stringify(reqbody),
                contentType: "application/json",
                dataType: "json",
            }
        ).then(() => {
            hide_progress();
            alertMessage(getText("000-80018", "処理結果"), getText("000-87034", "通知先設定を変更しました"),
            () => {
                window.location = location_conf.href.workspaces.settings.notifications.detail.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id).replace(/{destination_id}/g, destination_id);
            });
        }).catch(() => {
            hide_progress();
            $('#button_register').prop('disabled',false);
        })
    }
});
