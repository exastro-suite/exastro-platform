/*
#   Copyright 2025 NEC Corporation
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

            // get organizations
            call_api_promise_get_organizations(),

            // get plans
            call_api_promise_get_plans(),

        ]).then(function(results) {
            // Display Menu
            displayMenu('menu_organizations');
            // Display Topic Path
            displayTopicPath([
                {"text": getText("000-85001", "オーガナイゼーション一覧"), "href": location_conf.href.organizations.list }
            ]);

            display_main(results[1].data, results[2].data);

            finish_onload_progress();

            // To be implemented in the future
            // enabled_button();
        }).catch((e) => {
            console.log('[ERROR] load_main catch');
            finish_onload_progress_at_error();
            if(typeof e != "undefined") console.log(e);
            return;
        });
    }

    function call_api_promise_get_organizations() {
        return call_api_promise({
            type: "GET",
            url: api_conf.api.organizations.get,
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

    function display_main(organizations, plans) {
        console.log("[CALL] display_main");

        //
        // new organization button
        //
        $('#new_organization').on('click',() => {
            window.location = location_conf.href.organizations.new;
        });

        //
        // display organization list
        //
        if ( organizations.length == 0 ) {
            $("#organization_list .notfound").css('display', '');
            $("#organization_list .datarow").remove();
        } else {
            $("#organization_list .notfound").css('display', 'none');
            $("#organization_list .datarow").remove();

            //
            // sort organization list
            //
            const sortKey = 'id';
            const sortreverse = -1;
            organizations.sort(function(a, b){
                const as = a[sortKey].toLowerCase(), bs = b[sortKey].toLowerCase();
                if ( as < bs ) {
                    return sortreverse * 1;
                } else if ( as > bs ) {
                    return sortreverse * -1;
                } else {
                    return 0;
                }
            });

            //
            // display organization list
            //
            const row_template = $('#organization_list .datarow-template').clone(true).removeClass('datarow-template').addClass('datarow').prop('outerHTML');
            let html='';
            for(var row of organizations) {
                const plan_name = (plans.find(plan => plan.id == row.active_plan.id)??{name:"_default plan"}).name

                html += row_template
                    .replace(/\${organization_id}/g, fn.cv(row.id,'',true))
                    .replace(/\${organization_name}/g, fn.cv(row.name,'',true))
                    .replace(/\${active_plan_name}/g, fn.cv(plan_name,'',true))
                    .replace(/\${enabled}/g, (row.enabled) ? '<span class="icon icon-check"></span>' : '')
                    .replace(/\${status}/g, fn.cv(row.status,'',true))
            }
            $("#organization_list tbody").append(html);
            $("#organization_list .datarow").css('display', '');

            $('#organization_list .to_detail').on('click', function() {
                let organization_id = $(this).attr('data-id');
                window.location = location_conf.href.organizations.detail.replace(/{organization_id}/g, organization_id);
            });
            $('#organization_list .button_edit_organization').on('click', function() {
                let organization_id = $(this).attr('data-id');
                window.location = location_conf.href.organizations.edit.replace(/{organization_id}/g, organization_id);
            });

            $('#organization_list .button_delete_organization').on('click', function() {
                confirm_delete($(this).attr('data-id'), $(this).attr('data-name'));
            })

            enabled_button();
        }
    }

    function confirm_delete(organization_id, organization_name) {
        console.log("[CALL] confirm_delete");

        deleteConfirmMessage(
            getText("000-80017", "実行確認"),
            getText("000-85007", "以下のオーガナイゼーションを削除してよろしいですか？"),
            organization_id,
            getText("000-85008", "削除したオーガナイゼーションのユーザーは以降一切アクセスできなくなります。"),
            "platform/" + organization_id,
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
                    // 一覧の再取得
                    return Promise.all([
                        // get organizations
                        call_api_promise_get_organizations(),
                        // get plans
                        call_api_promise_get_plans(),
                    ]);
                }).then((results) => {
                    // 一覧の再描画
                    display_main(results[0].data, results[1].data);
                    enabled_button();
                    hide_progress();
                    alertMessage(getText("000-80018", "処理結果"), getText("000-85009", "オーガナイゼーションを削除しました。"));
                }).catch(() => {
                    enabled_button();
                    hide_progress();
                });
            }
        );
    }

    function disabled_button() {
        $("#new_organization").prop('disabled', true);
        $(".button_edit_organization").prop('disabled', true);
        $(".button_delete_organization").prop('disabled', true);
    }

    function enabled_button() {
        $("#new_organization").prop('disabled', false);
        $(".button_delete_organization").prop('disabled', false);

        $('#organization_list .button_edit_organization').each(function(index, element) {
            let $element = $(element);
            if(OrganizationsCommon.enabled_check.edit_button($element.attr('data-status'))) {
                $element.prop('disabled', false);
            } else {
                $element.prop('disabled', true);
                $element.css('cursor', 'not-allowed');
            }
        });
    }
});
