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
        new CommonUi(`#container`);
        load_main();
    });

    function load_main() {
        Promise.all([
            // Load Common Contents
            loadCommonContents(),

            // get settings mailserver
            call_api_promise_get_settings_mailserver(),

        ]).then(function(results) {
            // Display Menu
            displayMenu('menu_settings_mailserver');
            // Display Topic Path
            displayTopicPath([
                {"text": getText("000-88002", "メール送信サーバー設定"), "href": location_conf.href.settings.mailserver.replace(/{organization_id}/g, CommonAuth.getRealm())}
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

    function call_api_promise_get_settings_mailserver() {
        return call_api_promise({
            type: "GET",
            url: api_conf.api.settings.mailserver.get.replace(/{organization_id}/g, CommonAuth.getRealm()),
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            },
            contentType: "application/json",
            dataType: "json",
        });
    }

    function display_main(row) {
        console.log("[CALL] display_main");
        console.log("row: " + row);

        //
        // display Delete settings notification destination button
        //
        $('#button_reset').on('click',() => {
            delete_destination();
        });
        if(CommonAuth.hasAuthority(RolesCommon.ORG_AUTH_UPDATE)) {
            $('#button_reset').prop('disabled', false);
        } else {
            $('#button_reset').prop('disabled', true);
            $('#button_reset').css('cursor', 'not-allowed');
        }

        //
        // display mailserver detail
        //
        $("#form_smtp_host").val(row.smtp_host);
        $("#form_smtp_port").val(row.smtp_port);
        $("#form_send_from").val(row.send_from);
        $("#form_send_name").val(row.send_name);
        $("#form_replay_to").val(row.replay_to);
        $("#form_replay_name").val(row.replay_name);
        $("#form_envelope_from").val(row.envelope_from);
        $('#form_ssl_enable').prop("checked", fn.cv(row.ssl_enable, false, false));
        $('#form_start_tls_enable').prop("checked", fn.cv(row.start_tls_enable, false, false));
        $('#form_authentication_enable').prop("checked", fn.cv(row.authentication_enable, false, false));
        if (row.authentication_enable){
            $("#form_authentication_user").val(row.authentication_user);
        }
        $('#form_authentication_enable').attr("checked", "checked").change();

        //
        // register button
        //
        $('#button_register').on('click',() => {
            $('#button_register').prop('disabled',true);
            if( ! validate_register() ) {
                $('#button_register').prop('disabled',false);
                return;
            }
            settings_mailserver_register();
        });

        //
        // authentication_enable change
        //
        $('input[id="form_authentication_enable"]').change(function() {
            tr_id = $(this).attr('tr-id');
            if ($(this).is(':checked')){
                $("." + tr_id).css('display', '');
            }
            else{
                $("." + tr_id).css('display', 'None');
            }
        });
    }

    function delete_destination() {
        console.log("[CALL] confirm_delete");

        deleteConfirmMessage(
            getText("000-80017", "実行確認"),
            getText("000-87010", "メール送信サーバーの設定をリセットしてもよろしいですか？"),
            CommonAuth.getRealm() + getText("000-88002", "メール送信サーバー設定"),
            getText("000-87011", "通知種別メールのメッセージ通知は一切できなくなります。"),
            getText("000-00199", "リセット"),
            () => {
                disabled_button();
                show_progress();

                // APIを呼出す
                call_api_promise({
                    type: "DELETE",
                    url: api_conf.api.settings.mailserver.delete.replace(/{organization_id}/g, CommonAuth.getRealm()),
                    headers: {
                        Authorization: "Bearer " + CommonAuth.getToken(),
                    },
                }).then(() => {
                    hide_progress();
                    alertMessage(getText("000-80018", "処理結果"), getText("000-87012", "メール送信サーバー設定をリセットしました。"),
                        () => {
                            window.location.href = location_conf.href.settings.mailserver.replace(/{organization_id}/g, CommonAuth.getRealm());
                        });
                }).catch(() => {
                    hide_progress();
                });
            }
        );
    }

    //
    // validate register
    //
    function validate_register() {
        console.log("--- validate check start ----");
        let result=true;

        // validate smtp_host
        validate = settings_mailserver_common.validate.smtp_host($("#form_smtp_host").val());
        result = result && validate.result;
        $("#message_smtp_host").text(validate.message);

        // validate smtp_port
        validate = settings_mailserver_common.validate.smtp_port($("#form_smtp_port").val());
        result = result && validate.result;
        $("#message_smtp_port").text(validate.message);

        // validate send_from
        validate = settings_mailserver_common.validate.send_from($("#form_send_from").val());
        result = result && validate.result;
        $("#message_send_from").text(validate.message);

        // validate ssl_and_start_tls
        validate = settings_mailserver_common.validate.ssl_and_start_tls($('#form_ssl_enable').prop("checked"), $('#form_start_tls_enable').prop("checked"));
        result = result && validate.result;
        $("#message_start_tls_enable").text(validate.message);

        // Checks to be made when authentication is enabled
        if ($('#form_authentication_enable').prop("checked")){
            // validate authentication_user
            validate = settings_mailserver_common.validate.authentication_user($("#form_authentication_user").val());
            result = result && validate.result;
            $("#message_authentication_user").text(validate.message);

            // validate authentication_password
            validate = settings_mailserver_common.validate.authentication_password($("#form_authentication_password").val());
            result = result && validate.result;
            $("#message_authentication_password").text(validate.message);
        }

        console.log("--- validate check end [" + result + "] ----");

        return result;
    }

    //
    // register setting mailserver
    //
    function settings_mailserver_register() {
        let reqbody = {
            "smtp_host": $('#form_smtp_host').val(),
            "smtp_port": $('#form_smtp_port').val(),
            "send_from": $('#form_send_from').val(),
            "send_name": $('#form_send_name').val(),
            "replay_to": $('#form_replay_to').val(),
            "replay_name": $('#form_replay_name').val(),
            "envelope_from": $('#form_envelope_from').val(),
            "ssl_enable": $('#form_ssl_enable').prop("checked"),
            "start_tls_enable": $('#form_start_tls_enable').prop("checked"),
            "authentication_enable": $('#form_authentication_enable').prop("checked"),
            "authentication_user": $('#form_authentication_enable').prop("checked") ? $('#from_authentication_user').val() : '',
            "authentication_password": $('#form_authentication_enable').prop("checked") ? $('#from_authentication_password').val() : '',
        }

        show_progress();
        call_api_promise(
            {
                type: "POST",
                url: api_conf.api.settings.mailserver.post.replace(/{organization_id}/g, CommonAuth.getRealm()),
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                data: JSON.stringify(reqbody),
                contentType: "application/json",
                dataType: "json",
            }
        ).then(() => {
            hide_progress();
            alertMessage(getText("000-80018", "処理結果"), getText("000-88022", "メール送信サーバー設定を登録しました"),
            () => {
                window.location = location_conf.href.settings.mailserver.replace(/{organization_id}/g, CommonAuth.getRealm());
            });
        }).catch(() => {
            hide_progress();
            $('#button_register').prop('disabled',false);
        })
    }

    function disabled_button() {
        $('#button_register').prop('disabled', true);
        $('#button_reset').prop('disabled', true);
    }
});
