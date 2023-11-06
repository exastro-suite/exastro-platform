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
    const organization_id = window.location.pathname.split("/")[3];

    CommonAuth.onAuthSuccess(() => {
        new CommonUi(`#container`);
        // maintenanceMode();
        load_main();
    });

    function load_main() {
        Promise.all([
            // Load Common Contents
            loadCommonContents(),
            // get organization List
            call_api_promise_get_organization_detail(),
            // get plan of the organization
            call_api_promise_get_organization_plans(),
            // get plans
            call_api_promise_get_plans(),

        ]).then(function(results) {
            // Display Menu
            displayMenu('menu_organizations');
            // Display Topic Path
            displayTopicPath([
                {"text": getText("000-85001", "オーガナイゼーション一覧"), "href": location_conf.href.organizations.list },
                {"text": getText("000-85027", "オーガナイゼーション詳細"), "href": location_conf.href.organizations.detail.replace(/{organization_id}/g, organization_id) },
            ]);
            // display_main(results[1].data);
            display_main(results[1].data, results[2].data, results[3].data);
            finish_onload_progress();

        }).catch((e) => {
            console.log('[ERROR] load_main catch');
            finish_onload_progress_at_error();
            if(typeof e != "undefined") console.log(e);
            return;
        });
    }

    function call_api_promise_get_organization_detail() {
        return call_api_promise({
            type: "GET",
                url: api_conf.api.organizations.detail.get.replace('{organization_id}', organization_id),
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                contentType: "application/json",
                dataType: "json",
        })
    }

    function call_api_promise_get_organization_plans() {
        return call_api_promise({
            type: "GET",
                url: api_conf.api.organizations.plans.get.replace('{organization_id}', organization_id),
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                contentType: "application/json",
                dataType: "json",
        });
    }

    function call_api_promise_get_plans() {
        return call_api_promise({
            type: "GET",
                url: api_conf.api.plans.get,
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                contentType: "application/json",
                dataType: "json",
                
        })
    }

    function display_main(row, org_plans,plans) {
        console.log("[CALL] display_main");

        //
        // display Edit Organizations button
        //
        $('.button_edit_organization').on('click',() => {
            window.location = location_conf.href.organizations.edit.replace(/{organization_id}/g, organization_id);
        });
        if(OrganizationsCommon.enabled_check.edit_button(row.status)) {
            $('.button_edit_organization').prop('disabled', false);
        } else {
            $('.button_edit_organization').prop('disabled', true);
            $('.button_edit_organization').css('cursor', 'not-allowed');
        }

        //
        // display Delete Organizations button
        //
        $('.button_delete_organization').prop('disabled', false);

        //
        // display Organizations detail
        //
        $("#text_organization_id").text(row.id);
        $("#text_organization_name").text(row.name);
        try { $("#text_active_plan").text(row.active_plan.id)} catch(e) { }
        try { $("#text_status").text(row.status)} catch(e) { }

        //
        // オーガナイゼーション管理者一覧の表示 - organization managers list display
        //
        display_organization_managers_list(row.organization_managers);

        //
        // オーガナイゼーションに紐づいているリソースプラン一覧の表示 - plan of the organization list display
        //
        display_organization_plan_list(org_plans);

        //
        //リソースプランIDの一覧をモーダルに表示
        //
        display_org_plans_list(plans);
    
        //
        // オーガナイゼーションにリソースプランを設定 - set plan to the organization
        //
        $('.button_edit_organization_plan').prop('disabled', false);

        //
        // オーガナイゼーションに紐づいているリソースプランの削除 - delete plan to the organization
        //
        $('.button_delete_organization_plan').on('click',function() {
            delete_organization_plan($(this).attr('data-id'), $(this).attr('data-start-datetime'));
        });
        $('.button_delete_organization_plan').prop('disabled', false);

    }

    //
    //以下今後共通化する部分(~206)
    //

    function display_org_plans_list(plans){

        //
        // List configurable plans list
        // プラン一覧をリスト化する
        //

        planListData = [];
        for(let row of plans) {
            planListData.push({
                plan_id: row.id,
                plan_name: row.name,
                last_update_timestamp: row.last_update_timestamp,
            });
        }

        //
        // Display a list of plans
        // プラン一覧を表示する
        //

        const sortKey = 'last_update_timestamp';
        const sortreverse = 1;
        planListData.sort(function(a, b){
            const as = a[sortKey].toLowerCase(), bs = b[sortKey].toLowerCase();
            if ( as < bs ) {
                return sortreverse * 1;
            } else if ( as > bs ) {
                return sortreverse * -1;
            } else {
                return 0;
            }
        });

        let html = '';
        $(".form_plan_id").children().remove();
        $('.form_plan_id').append($('<option>').html('').val(''));
        for(var row of planListData) {
            if (row["plan_id"].charAt(0) != '_')
            {
                $('.form_plan_id').append($('<option>').html(fn.cv(row.plan_id,'',true)+':'+fn.cv(row.plan_name,'',true)).val(row.plan_id));
            }
        }
    }


    //
    // オーガナイゼーション管理者一覧の表示 - display organization managers list
    //
    function display_organization_managers_list(users) {

        // 明細行を削除
        $('#organization_managers_list .datarow').remove();

        if (users.length == 0) {
            // 0件の時はnotfoudの表示
            $('#organization_managers_list .notfound').css('display','');
        } else {
            // 1件以上の時はnotfoudの表示を消す
            $('#organization_managers_list .notfound').css('display','none');
            // 明細のテンプレート行からhtmlを取り出す
            // ※class名を"datarow-template"から"datarow"に変更しておく
            const row_template = $('#organization_managers_list .datarow-template').clone(true).removeClass('datarow-template').addClass('datarow').prop('outerHTML');

            // 明細にデータを埋め込み行を明細を作りこむ
            for(let i = 0; i < users.length; ++i) {
                const user = users[i];

                row_html = row_template
                    .replace(/\${user_id}/g, fn.cv(user.id,'',true))
                    .replace(/\${username}/g, fn.cv(user.username,'',true))
                    .replace(/\${firstName}/g, fn.cv(user.firstName,'',true))
                    .replace(/\${lastName}/g, fn.cv(user.lastName,'',true))
                    .replace(/\${enabled}/g, user.enabled ? '<span class="icon icon-check"></span>' : '')
                    .replace(/\${create_timestamp}/g, fn.date(new Date(user.create_timestamp),'yyyy/MM/dd HH:mm:ss'))
                $("#organization_managers_list tbody").append(row_html);
            }

        }
        $('#organization_managers_list .datarow').css('display','');
    }

    $('.button_delete_organization').on('click',() => {
        delete_organization();
    });

    function delete_organization() {
        console.log("[CALL] confirm_delete");

        deleteConfirmMessage(
            getText("000-80017", "実行確認"),
            getText("000-85007", "以下のオーガナイゼーションを削除してよろしいですか？"),
            organization_id,
            getText("000-85008", "削除したオーガナイゼーションのアクセスは以降一切できなくなります。"),
            organization_id,
            () => {
                disabled_button();
                show_progress();

                // APIを呼出す
                call_api_promise({
                    type: "DELETE",
                    url: api_conf.api.organizations.delete.replace(/{organization_id}/g, organization_id),
                    headers: {
                        Authorization: "Bearer " + CommonAuth.getToken(),
                    },
                }).then(() => {
                    hide_progress();
                    alertMessage(getText("000-80018", "処理結果"), getText("000-85009", "オーガナイゼーションを削除しました。"),
                        () => {
                            window.location.href = location_conf.href.organizations.list.replace(/{organization_id}/g, CommonAuth.getRealm());
                        });
                }).catch(() => {
                    hide_progress();
                });
            }
        );
    }

    function disabled_button() {
        $('.button_edit_organization').prop('disabled', true);
        $('.button_delete_organization').prop('disabled', true);
        $('.button_delete_organization_plan').prop('disabled', true);
        $('.button_edit_organization_plan').prop('disabled', true);
    }

    //
    // リソースプラン一覧の表示 - display plans list
    //
    function display_organization_plan_list(plans) {

        // 明細行を削除
        $('#organization_plan_list .datarow').remove();

        if (plans.length == 0) {
            // 0件の時はnotfoudの表示
            $('#organization_plan_list .notfound').css('display','');
        } else {
            // 1件以上の時はnotfoudの表示を消す
            $('#organization_plan_list .notfound').css('display','none');

            //
            // sort organization plan list
            //
            const sortKey = 'start_datetime';
            const sortreverse = 1;
            plans.sort(function(a, b){
                const as = a[sortKey].toLowerCase(), bs = b[sortKey].toLowerCase();
                if ( as < bs ) {
                    return sortreverse * 1;
                } else if ( as > bs ) {
                    return sortreverse * -1;
                } else {
                    return 0;
                }
            });

            // 明細のテンプレート行からhtmlを取り出す
            // ※class名を"datarow-template"から"datarow"に変更しておく
            const row_template = $('#organization_plan_list .datarow-template').clone(true).removeClass('datarow-template').addClass('datarow').prop('outerHTML');

            // 明細にデータを埋め込み行を明細を作りこむ
            for(let i = 0; i < plans.length; ++i) {
                const plan = plans[i];
                // const view_start_datetime = plan.start_datetime;

                row_html = row_template
                    .replace(/\${plan_id}/g, fn.cv(plan.id,'',true))
                    .replace(/\${plan_start_datetime}/g, fn.date(new Date(plan.start_datetime),'yyyy/MM/dd HH:mm:ss'))
                    .replace(/\${plan_create_timestamp}/g, fn.date(new Date(plan.create_timestamp),'yyyy/MM/dd HH:mm:ss'))
                    .replace(/\${plan_create_user}/g, fn.cv(plan.create_user,'',true))
                $("#organization_plan_list tbody").append(row_html);
            }

        }
        $('#organization_plan_list .datarow').css('display','');
    }

    //
    // オーガナイゼーションにリソースプランを設定 - set plan to the organization
    //
    // モーダル画面表示
    $('#button_detail_modal_open').on('click',() => {
        edit_organization_plan_open();
    });

    function edit_organization_plan_open() {
        console.log("[CALL] edit_organization_plan_open");

        const edit_dialog = new Dialog({
            mode: 'modeless',
            position: 'center',
            width: 'auto',
            header: {
                title: getText("000-85044", "リソースプラン設定"),
            },
            footer: {
                button: {
                    set: { text: getText("000-80046", "適用"), action: "positive" },
                    cancel: { text: getText("000-80013", "キャンセル"), action: "normal" }
                }
            },
        },
        {
            set: function() {
                if( ! validate_register(edit_dialog) ) {
                    return;
                }
                modal_edit_button(edit_dialog);
                edit_dialog.close();
                if(onSet !== null) {
                    onSet();
                }
            },
            cancel: function() {
                edit_dialog.close();
        //         if(onCancel !== null) {
        //             onCancel();
        //         }
            }
        });
        edit_dialog.open($("#organization_plan_detail_dialog").html());
        console.log("edit_dialog:");
        console.log(edit_dialog);

        const dialogBody = $(edit_dialog.$.dbody);

        // set event
        dialogBody.find('#btn_start_time').on('click', function() {

            $input = dialogBody.find("#edit_start_time");

            fn.datePickerDialog('date', true, getText("000-00125", "プラン開始日時"), $input.val() ).then(function( result ){
                if ( result !== 'cancel') {
                    $input.val( result.date ).change().focus().trigger('input');
                }
            });
        });
    }
    
    //
    // validate register
    //
    function validate_register(dialog) {
        const dialogBody = $(dialog.$.dbody);
        
        console.log("--- validate check start ----");
        let result=true;

        // validate plan id
        if(dialogBody.find("#edit_plan_id").val() === "") {
            dialogBody.find("#message_edit_plan_id").text(getText("400-00011", "必須項目が不足しています。({0})", getText("000-00121", "リソースプランID")));
            result = false;
        } else {
            dialogBody.find("#message_edit_plan_id").text("");
        }

        // validate start time
        if(dialogBody.find("#edit_start_time").val() === "") {
            dialogBody.find("#message_edit_start_time").text(
                getText("400-00011", "必須項目が不足しています。({0})", getText("000-00125", "プラン開始日時")));
            result = false;

        } else if(!fn.checkDate(dialogBody.find("#edit_start_time").val())) {
            dialogBody.find("#message_edit_start_time").text(
                getText("400-00020", "日時形式以外が指定されています。({0})",getText("000-00125", "プラン開始日時")));
            result = false;

        } else {
            dialogBody.find("#message_edit_start_time").text("");
        }


        console.log("--- validate check end [" + result + "] ----");

        return result;
    }
        

    //
    // モーダル画面の設定ボタン
    //
    function modal_edit_button(dialog) {
        const dialogBody = $(dialog.$.dbody)

        let reqbody =   {
            "id":dialogBody.find("#edit_plan_id").val(),
            "start_datetime":dialogBody.find("#edit_start_time").val().replaceAll( '/', '-' ),
        }

        // APIを呼出す
        show_progress();
        call_api_promise({
            type: "POST",
            url: api_conf.api.organizations.plans.post.replace(/{organization_id}/g, organization_id),
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            },
            data: JSON.stringify(reqbody),
            contentType: "application/json",
            dataType: "json",
        }).then(() => {
            // 一覧の再取得
            return Promise.all([
                // get organization List
                call_api_promise_get_organization_detail(),
                // get plan of the organization
                call_api_promise_get_organization_plans(),
                // get plans
                call_api_promise_get_plans(),
            ]);
        }).then((results) => {
            // 一覧の再描画
            display_main(results[0].data, results[1].data, results[2].data);
            // enabled_button();
            hide_progress();
            alertMessage(getText("000-80018", "処理結果"),getText("000-85047", "リソースプランを設定しました"),() => {
                dialog.close();
            })
        }).catch(() => {
            // enabled_button();
            hide_progress();
        });
    }

    //
    // オーガナイゼーションに紐づいているリソースプランの削除 - delete plan to the organization
    //
    
    function delete_organization_plan(plan_id, plan_start_datetime) {
        console.log("[CALL] confirm_delete");

        CancellationConfirmMessage(
            getText("000-85041", "解除確認"),
            getText("000-85042", "以下のリソースプランを解除してよろしいですか？"),
            [ getText("000-00121", "リソースプランID") + " : " + plan_id,
              getText("000-00125", "プラン開始日時") + " : " + plan_start_datetime ],
            getText("000-85043", "解除した場合は、現在適用中のリソースプランが変更される可能性があります"),
            plan_id,
            () => {
                disabled_button();
                show_progress();

                // APIを呼出す
                call_api_promise({
                    type: "DELETE",
                    url: api_conf.api.organizations.plans.delete.replace(/{organization_id}/g, organization_id).replace(/{plan_start_datetime}/g, plan_start_datetime.replaceAll("/", "-")),
                    headers: {
                        Authorization: "Bearer " + CommonAuth.getToken(),
                    },
                }).then(() => {
                    // 一覧の再取得
                    return Promise.all([
                        // gget organization List
                        call_api_promise_get_organization_detail(),
                        // get plan of the organization
                        call_api_promise_get_organization_plans(),
                        // get plans
                        call_api_promise_get_plans(),
                    ]);
                }).then((results) => {
                    // 一覧の再描画
                    display_main(results[0].data, results[1].data, results[2].data);
                    // enabled_button();
                    hide_progress();
                    alertMessage(getText("000-80018", "処理結果"), getText("000-85046", "リソースプランを解除しました。"));
                }).catch(() => {
                    // enabled_button();
                    hide_progress();
                });
            }
        );
    }
});
