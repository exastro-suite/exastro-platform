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

            // get plans
            call_api_promise_get_plans(),

        ]).then(function(results) {
            // Display Menu
            displayMenu('menu_plans');
            // Display Topic Path
            displayTopicPath([
                {"text": getText("000-86001", "リソースプラン一覧"), "href": location_conf.href.plans.list }
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

    function display_main(plans) {
        console.log("[CALL] display_main");

        //
        // new plan button
        //
        $('#new_plan').on('click',() => {
            window.location = location_conf.href.plans.new;
        });

        //
        // display plan list
        //
        if ( plans.length == 0 ) {
            $("#plan_list .notfound").css('display', '');
            $("#plan_list .datarow").remove();
        } else {
            $("#plan_list .notfound").css('display', 'none');
            $("#plan_list .datarow").remove();

            //
            // sort plan list
            //
            const sortKey = 'id';
            const sortreverse = 1; // 昇順
            plans.sort(function(a, b){
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
            // display plan list
            //
            const row_template = $('#plan_list .datarow-template').clone(true).removeClass('datarow-template').addClass('datarow').prop('outerHTML');
            let html='';
            for(var row of plans) {
                let htmllimit='';
                for(var limit in row.limits){
                    htmllimit += '<div class="ci"><span>' + limit + '</span> ： <span style="font-weight: bold;">' + row.limits[limit] + '</span></div>'
                }

                html += row_template
                    .replace(/\${plan_id}/g, fn.cv(row.id,'',true))
                    .replace(/\${plan_name}/g, fn.cv(row.name,'',true))
                    .replace(/\${plan_description}/g, fn.cv(row.informations.description,'',true))
                    .replace(/\${plan_limit}/g, htmllimit)
                    .replace(/\${plan_create_timestamp}/g, fn.date(row.create_timestamp,'yyyy/MM/dd HH:mm:ss'));
            }
            $("#plan_list tbody").append(html);
            $("#plan_list .datarow").css('display', '');
        }
    }


    function disabled_button() {
        $("#new_plan").prop('disabled', true);
    }

    function enabled_button() {
        $("#new_plan").prop('disabled', false);
    }
});
