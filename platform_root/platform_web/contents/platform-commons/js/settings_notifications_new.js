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
            loadCommonContents()
        ]).then(function(results) {
            // Display Menu
            displayMenu('menu_settings_notifications');
            // Display Topic Path
            displayTopicPath([
                {"text": getText("000-87006", "通知先ワークスペース一覧"), "href": location_conf.href.workspaces.settings.notifications.workspaces.replace(/{organization_id}/g, CommonAuth.getRealm())},
                {"text": getText("000-87002", "通知先設定一覧"), "href": location_conf.href.workspaces.settings.notifications.list.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id)},
                {"text": getText("000-87014", "新規通知先設定"), "href": location_conf.href.workspaces.settings.notifications.new.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id)},
            ]);
            display_main();
            finish_onload_progress();

        }).catch((e) => {
            console.log('[ERROR] load_main catch');
            finish_onload_progress_at_error();
            if(typeof e != "undefined") console.log(e);
            return;
        });
    }

    function display_main() {
        console.log("[CALL] display_main");

        settings_notifications_common.set_conditions();

        let destination_id = ULID.ulid();
        $('#form_destination_id').val('ND' + destination_id.toUpperCase());

        $('.description_Mail').html(getText('000-87017', 'email形式 (最大{0}メールアドレス)<br>※複数のメールアドレスを指定する場合は「;（セミコロン）」「,（カンマ）」記号<br>または、改行を区切り文字として使用します', MAX_MAIL_COUNT));
        // $('.description_Teams').html(getText('000-87018', 'URL形式'));
        $('.description_Teams_WF').html(getText('000-87018', 'URL形式'));
        $('.description_Webhook').html(getText('000-87019', '1行目 URL形式<br>2行目 ヘッダー内容'));

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
        // register button
        //
        $('#button_register').on('click',() => {
            $('#button_register').prop('disabled',true);
            if( ! validate_register() ) {
                $('#button_register').prop('disabled',false);
                return;
            }
            notification_destination_register();
        });
    }

    //
    // validate register
    //
    function validate_register() {
        console.log("--- validate check start ----");
        let result=true;

        // validate destination id
        validate = settings_notifications_common.validate.destination_id($("#form_destination_id").val());
        result = result && validate.result;
        $("#message_destination_id").text(validate.message);

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
        // else if (destination_kind === "Teams"){
        //     // validate destination informations (teams)
        //     validate = settings_notifications_common.validate.destination_informations_teams($("#form_destination_informations_teams").val());
        //     result = result && validate.result;
        //     $("#message_destination_informations").text(validate.message);
        // }
        else if (destination_kind === "Teams_WF"){
            // validate destination informations (teams workflows)
            validate = settings_notifications_common.validate.destination_informations_teams($("#form_destination_informations_teams_wf").val());
            result = result && validate.result;
            $("#message_destination_informations").text(validate.message);
        }
        else if (destination_kind === "Webhook"){
            // validate destination informations (webhook)
            validate = settings_notifications_common.validate.destination_informations_webhook($("#form_destination_informations_webhook").val(), $("#form_destination_informations_webhook_header").val());
            result = result && validate.result;
            $("#message_destination_informations").text(validate.message);
        }

        console.log("--- validate check end [" + result + "] ----");

        return result;
    }

    //
    // register setting notification destination
    //
    function notification_destination_register() {
        var destination_informations = [];
        var destination_kind = $("input[name=form_destination_kind]:checked").val();
        if (destination_kind === "Mail"){
            split_informations_mail_to = $("#form_destination_informations_mail_to").val();
            split_informations_mail_cc = $("#form_destination_informations_mail_cc").val();
            split_informations_mail_bcc = $("#form_destination_informations_mail_bcc").val();
            if (split_informations_mail_to !== ""){
                split_informations_mail_to.split(/,|\n|;/).forEach(address => {
                    address = address.trim();
                    if (address !== ""){
                        var mail = {
                            "address_header": "to",
                            "email": address,
                        }
                        destination_informations.push(mail);
                    }
                });
            }
            if (split_informations_mail_cc !== ""){
                split_informations_mail_cc.split(/,|\n|;/).forEach(address => {
                    address = address.trim();
                    if (address !== ""){
                            var mail = {
                            "address_header": "cc",
                            "email": address,
                        }
                        destination_informations.push(mail);
                    }
                });
            }
            if (split_informations_mail_bcc !== ""){
                split_informations_mail_bcc.split(/,|\n|;/).forEach(address => {
                    address = address.trim();
                    if (address !== ""){
                            var mail = {
                            "address_header": "bcc",
                            "email": address,
                        }
                        destination_informations.push(mail);
                    }
                });
            }
        }
        // else if (destination_kind === "Teams"){
        //     var teams = { "webhook": $("#form_destination_informations_teams").val() }
        //     destination_informations.push(teams);
        // }
        else if (destination_kind === "Teams_WF"){
            var teams_wf = { "url": $("#form_destination_informations_teams_wf").val() }
            destination_informations.push(teams_wf);
        }
        else if (destination_kind === "Webhook"){
            var webhook = {
                "url": $("#form_destination_informations_webhook").val(),
                "header": $("#form_destination_informations_webhook_header").val()
            }
            destination_informations.push(webhook);
        }

        let reqbody = [
            {
                "id": $('#form_destination_id').val(),
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
        ]

        show_progress();
        call_api_promise(
            {
                type: "POST",
                url: api_conf.api.workspaces.settings.notifications.post.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id),
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                data: JSON.stringify(reqbody),
                contentType: "application/json",
                dataType: "json",
            }
        ).then(() => {
            hide_progress();
            alertMessage(getText("000-80018", "処理結果"), getText("000-87021", "通知先を作成しました"),
            () => {
                window.location = location_conf.href.workspaces.settings.notifications.detail.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id).replace(/{destination_id}/g, $('#form_destination_id').val());
            });
        }).catch(() => {
            hide_progress();
            $('#button_register').prop('disabled',false);
        })
    }
});
