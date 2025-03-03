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

    //
    // 起動時点の値の定義
    //
    let org_before = null;
    let plan_before = null;
    // 編集中のプランの定義
    let plan_after = null;

    let plan_master = null;

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
            // get all ita driver options
            call_api_promise_get_ita_all_drivers(),
        ]).then(function(results) {
            // Display Menu
            displayMenu('menu_organizations');
            // Display Topic Path
            displayTopicPath([
                {"text": getText("000-85001", "オーガナイゼーション一覧"), "href": location_conf.href.organizations.list },
                {"text": getText("000-85035", "オーガナイゼーション編集"), "href": location_conf.href.organizations.edit.replace(/{organization_id}/g, organization_id) },
            ]);
            org_before = results[1].data;
            plan_before = results[2].data.sort((a,b) => a.start_datetime > b.start_datetime? 1: -1);
            plan_after = JSON.parse(JSON.stringify(plan_before));
            plan_master = results[3].data;
            display_main(org_before, plan_after, plan_master, results[4].data);
            // register button
            $('#button_register').on('click',() => {
                on_click_button_register();
            });
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
        });
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
        });
    }

    function call_api_promise_get_ita_all_drivers() {
        return call_api_promise({
            type: "GET",
            url: api_conf.api["it-automation"].settings.get,
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            },
        });
    }

    function display_main(row, org_plans, plans, ita_all_drivers) {
        console.log("[CALL] display_main");

        //
        // display Organizations detail
        //
        $("#text_organization_id").text(row.id);
        $("#form_organization_name").val(row.name);
        const plan_name = (plans.find(plan => plan.id == row.active_plan.id)??{name:"_default plan"}).name
        try { $("#text_active_plan").text(plan_name)} catch(e) { }
        try { $("#text_status").text(row.status)} catch(e) { }
        $("#form_organization_enabled").prop("checked", row.enabled);

        //
        // オーガナイゼーションに紐づいているリソースプラン一覧の表示 - plan of the organization list display
        //
        display_organization_plan_list(org_plans);

        //
        //リソースプランIDの一覧をモーダルに表示
        //
        display_org_plans_list(plans);

        //
        // Ita drivers option
        //
        display_ita_drivers(ita_all_drivers, row.optionsIta);

        //
        // OASE check event
        //
        $("#ita-option-driver-oase").change(function(){
            if($(this).prop("checked")){
                $(".ita-option-services").show();
                $(".ita-option-services").addClass("add-oase-flag");

            }else{
                $(".ita-option-services").hide();
                $(".ita-option-services").removeClass("add-oase-flag");
            }
        });

        //
        // MongoDB owner check event
        //
        $("#ita-option-service-owner").change(function(){
            if($(this).prop("checked")){
                $("#connection-string-input").prop("inert", true);
                $("#ita-option-service-connection-string").val("");
                $("#ita-option-service-connection-string").prop("disabled", true);
            }else{
                $("#connection-string-input").prop("inert", false);
                $("#ita-option-service-connection-string").prop("disabled", false);
            }
        });

        //
        // オーガナイゼーションにリソースプランを設定 - set plan to the organization
        //
        $('.button_edit_organization_plan').prop('disabled', false);

        if(OrganizationsCommon.enabled_check.edit_button(row.status)) {
            $('#button_register').prop('disabled', false);
        } else {
            $('#button_register').prop('disabled', true);
            $('#button_register').css('cursor', 'not-allowed');
        }

    }

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

        const sortKey = 'plan_id';  // リソースプランID
        const sortreverse = 1;  // 昇順
        planListData.sort(function(a, b){
            const as = a[sortKey].toLowerCase(), bs = b[sortKey].toLowerCase();
            if ( as < bs ) {
                return sortreverse * -1;
            } else if ( as > bs ) {
                return sortreverse * 1;
            } else {
                return 0;
            }
        });

        let html = '';
        $(".form_plan_id").children().remove();
        for(var row of planListData) {
            if (row["plan_id"].charAt(0) != '_')
            {
                $('.form_plan_id').append($('<option>').html(fn.cv(row.plan_id,'',true)+':'+fn.cv(row.plan_name,'',true)).val(row.plan_id));
            }
        }
    }

    function disabled_button() {
        $('#button_register').prop('disabled',true);
        $('.button_edit_organization').prop('disabled', true);
        $('.button_delete_organization').prop('disabled', true);
        $('.button_delete_organization_plan').prop('disabled', true);
        $('.button_edit_organization_plan').prop('disabled', true);
    }
    function enabled_button() {
        $('#button_register').prop('disabled',false);
        $('.button_edit_organization').prop('disabled', false);
        $('.button_delete_organization').prop('disabled', false);
        $('.button_delete_organization_plan').not('.deleted').prop('disabled', false);
        $('.button_edit_organization_plan').prop('disabled', false);
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
                } else if(a.delete === true && typeof b.delete === "undefined") {
                    return sortreverse * 1;
                } else if(typeof a.delete === "undefined" && b.delete === true) {
                    return sortreverse * -1;
                } else if(typeof a.create_timestamp !== "undefined" && typeof b.create_timestamp === "undefined") {
                    return sortreverse * 1;
                } else if(typeof a.create_timestamp === "undefined" && typeof b.create_timestamp !== "undefined") {
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
                const plan_name = (plan_master.find(plan_master_row => plan_master_row.id == plan.id)??{name:"_default plan"}).name

                // const view_start_datetime = plan.start_datetime;

                row_html = row_template
                    .replace(/\${plan_id}/g, fn.cv(plan.id,'',true))
                    .replace(/\${plan_name}/g, fn.cv(plan_name,'',true))
                    .replace(/\${plan_start_datetime}/g, fn.date(new Date(plan.start_datetime),'yyyy/MM/dd HH:mm:ss'))
                    .replace(/\${plan_create_timestamp}/g, (typeof plan.create_timestamp) !== "undefined"? fn.date(new Date(plan.create_timestamp),'yyyy/MM/dd HH:mm:ss'): "-")
                    .replace(/\${plan_create_user}/g, fn.cv(plan.create_user,'',true))
                    .replace(/\${changed}/g, plan.delete? "deleted": plan.add? "appended" : "")
                    .replace(/\${button_disabled}/g, plan.delete? "disabled": "")

                $("#organization_plan_list tbody").append(row_html);
            }
        }
        //
        // オーガナイゼーションに紐づいているリソースプランの削除 - delete plan to the organization
        //
        $('.button_delete_organization_plan').on('click',function() {
            delete_organization_plan($(this).attr('data-id'), $(this).attr('data-start-datetime'));
        });
        //$('.button_delete_organization_plan').prop('disabled', false);

        $('#organization_plan_list .datarow').css('display','');
    }

    function display_ita_drivers(ita_all_drivers, optionsIta) {

        if(typeof optionsIta === "undefined" || optionsIta === null) {
            alertMessage(getText("000-80018", "処理結果"), getText("000-80050", "情報取得に失敗したため編集できません"));
            throw new Error("failed get optionIta");
        } else {
            const row_template = $('.ita-option-drivers .datarow-template').clone(true).removeClass('datarow-template').addClass('datarow').prop('outerHTML');
            let html='';
            for(var row of ita_all_drivers.drivers.options.sort((a,b) => a.name.toLowerCase() === b.name.toLowerCase()? 0: a.name.toLowerCase() > b.name.toLowerCase()? 1 : -1 )) {
                html += row_template
                .replace(/\${id}/g, fn.cv(row.id,'',true))
                .replace(/\${name}/g, fn.cv(row.name,'',true))
                .replace(/\${checked}/g, optionsIta.drivers[row.id]? "checked": "")
                .replace(/\${installed}/g, optionsIta.drivers[row.id]? "installed": "")
                .replace(/\${description-text}/g, typeof row.description === "undefined"? "" : fn.cv(row.description,'',true))
                .replace(/\${description-display}/g, typeof row.description === "undefined"? "display: none;" : "")

                // Add mongodb info for oase
                if(row.id == "oase"){
                    if(optionsIta.drivers.oase == true){
                        mongodb_info_area = OrganizationsCommon.ita_option_service_settings.add_mongodb_info_edit(optionsIta.services.document_store);
                    }else{
                        mongodb_info_area = OrganizationsCommon.ita_option_service_settings.add_mongodb_info_new(false, row.enable);
                    }
                    html += mongodb_info_area;
                }
            }
            $(".ita-option-drivers").append(html);
            $(".ita-option-drivers .datarow").css('display', '');
        }
    }

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
                if( ! validate_register_plan(edit_dialog) ) {
                    return;
                }
                modal_edit_button(edit_dialog);
                edit_dialog.close();
            },
            cancel: function() {
                edit_dialog.close();
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
    function validate_register_plan(dialog) {
        const dialogBody = $(dialog.$.dbody);

        console.log("--- validate check start ----");
        let result=true;

        // validate plan id
        dialogBody.find("#message_edit_plan_id").text("");

        if(dialogBody.find("#edit_plan_id").val() === "") {
            dialogBody.find("#message_edit_plan_id").text(getText("400-00011", "必須項目が不足しています。({0})", getText("000-00121", "リソースプランID")));
            result = false;
        }

        // validate start time
        dialogBody.find("#message_edit_start_time").text("");

        if(dialogBody.find("#edit_start_time").val() === "") {
            dialogBody.find("#message_edit_start_time").text(
                getText("400-00011", "必須項目が不足しています。({0})", getText("000-00125", "プラン開始日時")));
            result = false;

        } else if(!fn.checkDate(dialogBody.find("#edit_start_time").val())) {
            dialogBody.find("#message_edit_start_time").text(
                getText("400-00020", "日時形式以外が指定されています。({0})",getText("000-00125", "プラン開始日時")));
            result = false;

        }
        for(let i = 0; i < plan_after.length; ++i){
            if(dialogBody.find("#edit_start_time").val().replaceAll( '/', '-' ) === plan_after[i].start_datetime && typeof plan_after[i].delete === "undefined"){
                dialogBody.find("#message_edit_start_time").text(
                    getText("400-00033", "指定されたプラン開始日時は既に登録されています。({0})",getText("000-00125", "プラン開始日時")));
                result = false;
            }
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
            "add":true,
        }

        plan_after.push(reqbody);

        display_organization_plan_list(plan_after);
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

                for(let i = 0; i < plan_after.length; ++i){
                    if(plan_after[i].start_datetime === plan_start_datetime.replaceAll( '/', '-' )){
                        plan_after[i].delete = true;
                    }
                }
                plan_after = plan_after.filter((r) => !(r.delete === true && typeof r.create_timestamp === "undefined"))

                // for(let i = plan_after.length -1; i >= 0; --i){
                //     if(plan_after[i].start_datetime === plan_start_datetime.replaceAll( '/', '-' )){
                //         if(typeof r.create_timestamp === "undefined") {
                //             plan_after.splice(i,1);
                //         } else {
                //             plan_after[i].delete = true;
                //         }
                //     }
                // }

                display_organization_plan_list(plan_after);
            }
        );
    }

    //
    // validate register
    //
    function validate_register_org_name() {
        console.log("--- validate check start ----");
        let result=true;

        // validate organization name
        validate = OrganizationsCommon.validate.organization_name($("#form_organization_name").val());
        result = result && validate.result;
        $("#message_organization_name").text(validate.message);

        //validate connection string
        if($("#ita-option-driver-oase").prop("checked") == true && $(".ita-option-services").hasClass("add-oase-flag") == true) {
            if($("#ita-option-service-owner").prop("checked") == false && $("#ita-option-service-connection-string").val() === "") {
                $("#message_connection_string").text(getText("000-85056", "自動払い出しにチェックがない場合は、接続文字列の入力が必須です。"));
                result = false;
            } else {
                $("#message_connection_string").text("");
            }
        }

        console.log("--- validate check end [" + result + "] ----");

        return result;
    }

    function on_click_button_register() {
        disabled_button();
        if( ! validate_register_org_name() ) {
            enabled_button();
            return;
        }

        // ドライバの削除がある場合は確認モーダル画面を表示
        delete_modal_flag = false;
        delete_driver_list = [];

        $(".ita-option-driver-select").each(function(){
            $input = $(this).find(".ita-option-driver");
            if ($input.hasClass("installed") && !$input.prop("checked")){
                delete_modal_flag = true;
                driver_name = $(this).find(".itaOptionsDriversLabel").text();
                delete_driver_list.push(driver_name)
            }
        });

        if(delete_modal_flag){
            check_delete_driver();
        }else{
            edit_register_organizaton();
        }
    }

    function check_delete_driver() {
        console.log("[CALL] confirm_delete");
        caution_message = [getText("000-85060", "削除したドライバに関連するデータはすべて削除されます。"), getText("000-85061", "削除後にデータを元に戻すことはできません。")]
        deleteConfirmMessage(
            getText("000-80017", "実行確認"),
            getText("000-85062", "インストール済みの以下のドライバが削除されます。"),
            delete_driver_list,
            caution_message,
            'delete',
            () => {
                show_progress();

                // APIを呼出す
                edit_register_organizaton();
            },
            () => {
                enabled_button();
            }
        );
    }

    function edit_register_organizaton() {
        new Promise((resolve, reject) => {
            show_progress();
            resolve();
        }).then(() => {
            return org_exclusion_check();
        }).then(() => {
            return organization_register();
        }).then(() => {
            return organization_plan_delete();
        }).then(() => {
            return organization_plan_register();
        }).then(() => {
            console.log("then :on_click_button_register");
            hide_progress();
            alertMessage(getText("000-80018", "処理結果"), getText("000-85038", "オーガナイゼーションを変更しました"),
            () => {
                window.location = location_conf.href.organizations.list;
            });
        }).catch((e) => {
            console.log("catch:on_click_button_register");
            console.log(e);
            hide_progress();
            enabled_button();
        });
    }

    function org_exclusion_check() {
        return new Promise((resolve, reject) => {
            Promise.all([
                // get organization List
                call_api_promise_get_organization_detail(),
                call_api_promise_get_organization_plans(),
            ]).then(function(results) {
                console.log("-- org_exclusion_check --");
                let org_latest = results[0].data;
                let plan_latest = results[1].data.sort((a,b) => a.start_datetime > b.start_datetime? 1: -1);
                if (JSON.stringify(org_latest) !== JSON.stringify(org_before)) {
                    hide_progress();
                    alertMessage(getText("000-80018", "処理結果"),
                    getText("000-85048",'編集中に他のユーザーによって変更されました。{0}に戻り、再度編集してください。',
                    getText("000-85001", "オーガナイゼーション一覧")),
                    () => {
                        reject();
                    });
                    return;
                }
                if (JSON.stringify(plan_latest) !== JSON.stringify(plan_before)) {
                    hide_progress();
                    alertMessage(getText("000-80018", "処理結果"),
                    getText("000-85048",'編集中に他のユーザーによって変更されました。{0}に戻り、再度編集してください。',
                    getText("000-85001", "オーガナイゼーション一覧")),
                    () => {
                        reject();
                    });
                    return;
                }
                resolve();

            }).catch((e) => {
                reject();
                /*
                console.log("org exclusion error");
                console.log(e);
                hide_progress();
                $('#button_register').prop('disabled',false);
                */
            });
        });
    }

    //
    // register organization
    //
    function organization_register() {
        const ita_install_drivers = {}
        $('.ita-option-drivers .datarow .ita-option-driver').each(function() {
            ita_install_drivers[$(this).val()] = $(this).prop("checked");
        })

        // OASEが既に有効かつ自動払い出しなしで、接続文字列を変更するケース
        const ita_services = {};
        let connection_string = $("#ita-option-service-connection-string").val();

        if($("#ita-option-driver-oase").prop("checked") == true && $(".ita-option-services").hasClass("add-oase-flag") == true){
            // OASE利用なしから有りに変更したケース
            ita_services["document_store"] = {
                "name": "mongodb",
                "owner": ($('#ita-option-service-owner').prop("checked") ? true : false),
                "connection_string": connection_string
            }
        }else{
            // OASEが既に有効かつ自動払い出しなしで、接続文字列を変更するケース
            if(connection_string){
                ita_services["document_store"] = {
                    "owner": ($('#ita-option-service-owner').prop("checked") ? true : false),
                    "connection_string": connection_string
                }
            }
        }

        let reqbody = {
            "name": $('#form_organization_name').val(),
            "enabled": ($('#form_organization_enabled').prop('checked') ? true : false),
            "optionsIta": {
                "drivers": ita_install_drivers
            }
        }

        if(Object.keys(ita_services).length > 0) {
            reqbody.optionsIta["services"] = ita_services
        }

        return call_api_promise(
            {
                type: "PUT",
                url: api_conf.api.organizations.detail.put.replace(/{organization_id}/g, organization_id),
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                data: JSON.stringify(reqbody),
                contentType: "application/json",
                dataType: "json",
        });
    }

    //
    // delete organization plan
    //
    function organization_plan_delete() {
        const promises = [];

        // delete organization plan
        for(let i = 0; i < plan_after.length; ++i){
            if(plan_after[i].delete === true && typeof plan_after[i].create_timestamp !== "undefined"){
                const promise = call_api_promise({
                    type: "DELETE",
                    url: api_conf.api.organizations.plans.delete.replace(/{organization_id}/g, organization_id).replace(/{plan_start_datetime}/g, plan_after[i].start_datetime),
                    headers: {
                        Authorization: "Bearer " + CommonAuth.getToken(),
                    },
                });
                promises.push(promise);
            }
        }
        return Promise.all(promises);
    }

    //
    // register organization plan
    //
    function organization_plan_register() {
        const promises = [];

        // delete organization plan
        for(let i = 0; i < plan_after.length; ++i){
            if(plan_after[i].add === true && typeof plan_after[i].delete === "undefined"){
                let reqbody = {
                    "id":plan_after[i].id,
                    "start_datetime":plan_after[i].start_datetime
                }
                const promise = call_api_promise(
                    {
                        type: "POST",
                        url: api_conf.api.organizations.plans.post.replace(/{organization_id}/g, organization_id),
                        headers: {
                            Authorization: "Bearer " + CommonAuth.getToken(),
                        },
                        data: JSON.stringify(reqbody),
                        contentType: "application/json",
                        dataType: "json",
                    }
                );
                promises.push(promise);
            }
        }
        return Promise.all(promises);
    }
});
