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
            // get plans List
            call_api_promise({
                type: "GET",
                url: api_conf.api.plans.getPlanItem,
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                contentType: "application/json",
                dataType: "json",
            })
        ]).then(function(results) {
            // Display Menu
            displayMenu('menu_plans');
            // Display Topic Path
            displayTopicPath([
                { "text": getText("000-86001", "リソースプラン一覧"), "href": location_conf.href.plans.list },
                { "text": getText("000-86005", "新規リソースプラン"), "href": location_conf.href.plans.new },
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

    function display_main(plans) {
        console.log("[CALL] display_main");

        //
        // display plans list
        //
        // display_plans_list(plans);

        //
        // display plan_item
        //
        const row_template = $('#plan_item .datarow-template').clone(true).removeClass('datarow-template').addClass('datarow').prop('outerHTML');
        let html='';

        for(var row of plans) {
            html += row_template
                .replace(/\${plan_item}/g, fn.cv(row.id,'',true))
                .replace(/\${plan_description}/g, fn.cv(row.informations.description,'',true))
                .replace(/\${form_plan_limit}/g, fn.cv(row.id,'',true))
        }
        $("#plan_item .tbodylimit").append(html);
        $("#plan_item .datarow").css('display', '');


        //
        // register button
        //
        $('#button_register').on('click',() => {
            confirmMessage(getText("000-80042", "作成確認"), getText("000-86011", "リソースプランを作成しますか？"),
                () => {
                    // OK
                    $('#button_register').prop('disabled',true);
                    if( ! validate_register() ) {
                        $('#button_register').prop('disabled',false);
                        return;
                    }
                    plan_register();
                },
                () => {
                    // Cancel
                    return;
                }
            );
        });
    }


    //
    // validate register
    //
    function validate_register() {
        console.log("--- validate check start ----");
        let result=true;

        // validate plan id
        validate = PlansCommon.validate.plan_id($("#form_plan_id").val());
        result = result && validate.result;
        $("#message_plan_id").text(validate.message);

        // validate plan name
        validate = PlansCommon.validate.plan_name($("#form_plan_name").val());
        
        result = result && validate.result;
        $("#message_plan_name").text(validate.message);

        // validate plan_limit
        var elems = $("[id=form_plan_value]");
        var msg_elems =  $("[id=message_plan_limit]");
        var idx = 0;
        for(var elem of elems){
            msg_elem = msg_elems[idx];
            if(($(elem).attr('plan-id'))=="${form_plan_limit}"){
                    // なにもしない
            } else if(($(elem).val()) === "") {
                $($(msg_elem)).text(
                    getText("400-00011", "必須項目が不足しています。({0})", getText("000-00124", "リミット値")));
                result = false;

            } else if(($(elem).val()).replace(/[0-9]/g,"") !== "") {
                $($(msg_elem)).text(
                    getText("400-00017", "指定できない文字が含まれています。(項目:{0},指定可能な文字:{1})",
                        getText("000-00124", "リミット値"),
                        getText("000-80043", "半角数字")));
                result = false;
    
            } else {
                $($(msg_elem)).text("");
            }
            idx ++;
        }

        console.log("--- validate check end [" + result + "] ----");

        return result;
    }

    //
    // register organization
    //
    function plan_register() {

        // plan-idを取ってくる prop
        // var plan_id = $('#form_plan_value').prop('plan-id');
        var elems = $("[id=form_plan_value]");
        var limits = {};
        for(var elem of elems) {
            if(($(elem).attr('plan-id'))=="${form_plan_limit}"){
                // なにもしない
            }else{
                var planid = $(elem).attr('plan-id');
                limits[planid] = parseInt($(elem).val());
            }
        }

        
        let reqbody =   {
            "id": $('#form_plan_id').val(),
            "name": $('#form_plan_name').val(),
            "informations": {
                "description": $('#form_plan_description').val()
            },
            "limits": limits
        }

        show_progress();
        call_api_promise(
            {
                type: "POST",
                url: api_conf.api.plans.post,
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                data: JSON.stringify(reqbody),
                contentType: "application/json",
                dataType: "json",
            }
        ).then(() => {
            hide_progress();
            alertMessage(getText("000-80018", "処理結果"), getText("000-86012", "リソースプランを作成しました。"),
            () => {
                window.location = location_conf.href.plans.list;
            });
        }).catch(() => {
            hide_progress();
            $('#button_register').prop('disabled',false);
        })
    }
});
