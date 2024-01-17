/*
#   Copyright 2024 NEC Corporation
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
            // Get loglevel
            call_api_promise_get_loglevels(),

        ]).then(function(results) {
            // Display Menu
            displayMenu('menu_loglevel_settings');
            // Display Topic Path
            displayTopicPath([
                {"text": getText("000-85001", "ログレベル設定"), "href": location_conf.href.loglevel_settings.top }
            ]);

            display_main(results[1].data);

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

    function call_api_promise_get_loglevels() {
        return call_api_promise({
            type: "GET",
            url: api_conf.api.settings.loglevel.get,
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            },
            contentType: "application/json",
            dataType: "json",
        });
    }

    function display_main(loglevels) {
        console.log("[CALL] display_main");

        //
        // display organization list
        //
        if ( loglevels.length == 0 ) {
            $("#loglevel_list .notfound").css('display', '');
            $("#loglevel_list .datarow").remove();
        } else {
            $("#loglevel_list .notfound").css('display', 'none');
            $("#loglevel_list .datarow").remove();

            //
            // display loglevel list
            //
            const row_template = $('#loglevel_list .datarow-template').clone(true).removeClass('datarow-template').addClass('datarow').prop('outerHTML');
            let html='';
            const keyList = Object.keys(loglevels)

            for(let i in keyList) {
                html += row_template
                    .replace(/\${service}/g, fn.cv(keyList[i],'',true))
                    .replace(/\${i}/g, i)
                    .replace(/\${loglevel}/g, fn.cv(loglevels[keyList[i]],'',true))
            }
            $("#loglevel_list tbody").append(html);
            $("#loglevel_list .datarow").css('display', '');

            // register button
            $('#button_register').on('click',() => {
                loglevel_register(loglevels);
            });

        }
    }


    function loglevel_register(loglevels) {
        console.log("[CALL] loglevel_register");

        var reqbody = {};

        const keyList = Object.keys(loglevels)

        for(let i in keyList){
            reqbody[keyList[i]] = $("#form_loglevel" + i).val();
        }

        console.log(reqbody);

        show_progress();
        call_api_promise(
            {
                type: "PATCH",
                url: api_conf.api.settings.loglevel.patch,
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                data: JSON.stringify(reqbody),
                contentType: "application/json",
                dataType: "json",
            }
        ).then(() => {
            hide_progress();
            alertMessage(getText("000-80018", "処理結果"), getText("", "ログレベルを変更しました"),
                () => {
                    window.location = location_conf.href.loglevel_settings.top;
                });
        }).catch(() => {
            hide_progress();
            $('#button_register').prop('disabled',false);
        })
    }
});
