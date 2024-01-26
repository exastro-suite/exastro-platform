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
            // Get Backyard Execution
            call_api_promise_get_backyard_execution(),
            // /// Get Maintenancemode
            call_api_promise_get_Maintenancemode(),

        ]).then(function(results) {
            // Display Menu
            displayMenu('menu_settings_running_state');
            // Display Topic Path
            displayTopicPath([
                {"text": getText("000-89011", "システム状態一覧"), "href": location_conf.href.settings_running_state.top }
            ]);

            display_main(results[1].data, results[2].data, results[3].data);

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
            url: api_conf.api.settings.ita.loglevel.get,
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            },
            contentType: "application/json",
            dataType: "json",
        });
    }

    function call_api_promise_get_backyard_execution(){
    // /api/ita/backyard-execute-check/をよぶ
        return call_api_promise({
            type: "GET",
            url: api_conf.api.settings.ita.backyard_execute_check.get,
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            },
            contentType: "application/json",
            dataType: "json",
        });
    }

    function call_api_promise_get_Maintenancemode(){
     // /api/platform/maintenance-mode-settingをよぶ
        return call_api_promise({
            type: "GET",
                url: api_conf.api.settings["maintenance-mode-setting"].get,
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                contentType: "application/json",
                dataType: "json",
        });
    }


    function display_main(loglevels, backyard_row, mainte_row) {
        console.log("[CALL] display_main");

        $('#backyard_execute_stop').prop("checked", fn.cv(mainte_row.backyard_execute_stop, false, "0")=="0"?false:true);
        $('#data_update_stop').prop("checked", fn.cv(mainte_row.data_update_stop, false, "0")=="0"?false:true);

        // backyard_exec_status list
        backyard_status_list = {};

        // test data
        backyard_row = {
            "_execute_count": 0,
            "org": {
                "_execute_count": 0
            },
            "org1": {
                "_execute_count": 0,
                "ws1": {
                    "_execute_count": 0,
                    "ita-by-ansible-execute": [
                        {
                            "status_id": "5",
                            "last_update_timestamp": "2024-01-24 01:02:03.000004",
                            "status_name": "完了",
                            "id": "(uuid)"
                          },
                          {
                            "status_id": "1",
                            "last_update_timestamp": "2024-01-23 01:02:03.000004",
                            "status_name": "未実行",
                            "id": "(uuid)"
                          }
                    ],
                    "ita-by-conductor-synchronize": [],
                    "ita-by-excel-export-import": [
                        {
                            "status_id": "5",
                            "last_update_timestamp": "2024-01-24 01:02:03.000004",
                            "status_name": "完了",
                            "id": "(uuid)"
                          },
                          {
                            "status_id": "1",
                            "last_update_timestamp": "2024-01-23 01:02:03.000004",
                            "status_name": "未実行",
                            "id": "(uuid)"
                          },
                          {
                            "status_id": "5",
                            "last_update_timestamp": "2024-01-22 01:02:03.000004",
                            "status_name": "完了",
                            "id": "(uuid)"
                          },
                          {
                            "status_id": "1",
                            "last_update_timestamp": "2024-01-21 01:02:03.000004",
                            "status_name": "未実行",
                            "id": "(uuid)"
                          },
                          {
                            "status_id": "5",
                            "last_update_timestamp": "2024-01-20 01:02:03.000004",
                            "status_name": "完了",
                            "id": "(uuid)"
                          },
                          {
                            "status_id": "1",
                            "last_update_timestamp": "2024-01-19 01:02:03.000004",
                            "status_name": "未実行",
                            "id": "(uuid)"
                          }

                    ],
                    "ita-by-menu-create": [],
                    "ita-by-menu-export-import": [],
                    "ita-by-terraform-cli-execute": [],
                    "ita-by-terraform-cloud-ep-execute": []
                },
                "ws2": {
                    "_execute_count": 0,
                    "ita-by-ansible-execute": [],
                    "ita-by-conductor-synchronize": [],
                    "ita-by-excel-export-import": [],
                    "ita-by-menu-create": [],
                    "ita-by-menu-export-import": [],
                    "ita-by-terraform-cli-execute": [],
                    "ita-by-terraform-cloud-ep-execute": []
                },
                "ws3": {
                    "_execute_count": 0,
                    "ita-by-ansible-execute": [],
                    "ita-by-conductor-synchronize": [],
                    "ita-by-excel-export-import": [],
                    "ita-by-menu-create": [],
                    "ita-by-menu-export-import": [],
                    "ita-by-terraform-cli-execute": [],
                    "ita-by-terraform-cloud-ep-execute": []
                }
            },
            "org10": {
                "_execute_count": 0
            },
            "org12": {
                "_execute_count": 0,
                "ws1": {
                    "_execute_count": 0,
                    "ita-by-ansible-execute": [],
                    "ita-by-conductor-synchronize": [],
                    "ita-by-excel-export-import": [],
                    "ita-by-menu-create": [],
                    "ita-by-menu-export-import": [],
                    "ita-by-terraform-cli-execute": [],
                    "ita-by-terraform-cloud-ep-execute": []
                },
                "ws2": {
                    "_execute_count": 0,
                    "ita-by-ansible-execute": [],
                    "ita-by-conductor-synchronize": [],
                    "ita-by-excel-export-import": [],
                    "ita-by-menu-create": [],
                    "ita-by-menu-export-import": [],
                    "ita-by-terraform-cli-execute": [],
                    "ita-by-terraform-cloud-ep-execute": []
                }
            },
            "org13": {
                "_execute_count": 0
            },
            "org14": {
                "WS1-_----1----_----2----_----3----_-": {
                    "_execute_count": 0,
                    "ita-by-ansible-execute": [],
                    "ita-by-conductor-synchronize": [],
                    "ita-by-excel-export-import": [],
                    "ita-by-menu-create": [],
                    "ita-by-menu-export-import": [],
                    "ita-by-terraform-cli-execute": [],
                    "ita-by-terraform-cloud-ep-execute": []
                },
                "WS2-_----1----_----2----_----3----_-": {
                    "_execute_count": 0,
                    "ita-by-ansible-execute": [],
                    "ita-by-conductor-synchronize": [],
                    "ita-by-excel-export-import": [],
                    "ita-by-menu-create": [],
                    "ita-by-menu-export-import": [],
                    "ita-by-terraform-cli-execute": [],
                    "ita-by-terraform-cloud-ep-execute": []
                },
                "_execute_count": 0
            },
            "org2": {
                "_execute_count": 0
            },
            "org21": {
                "_execute_count": 0
            },
            "org3": {
                "_execute_count": 0,
                "ws1": {
                    "_execute_count": 0,
                    "ita-by-ansible-execute": [],
                    "ita-by-conductor-synchronize": [],
                    "ita-by-excel-export-import": [],
                    "ita-by-menu-create": [],
                    "ita-by-menu-export-import": [],
                    "ita-by-terraform-cli-execute": [],
                    "ita-by-terraform-cloud-ep-execute": []
                }
            },
            "org4": {
                "_execute_count": 0
            },
            "org5": {
                "_execute_count": 0
            },
            "org6": {
                "_execute_count": 0
            },
            "org7": {
                "_execute_count": 0
            }
        }

        //
        // display organization list
        //
        if ( loglevels.length == 0 ) {
            $("#loglevel_list .notfound").css('display', '');
            $("#loglevel_list .datarow").remove();
        } else {
            $("#loglevel_list .notfound").css('display', 'none');
            $("#loglevel_list .datarow").remove();

            org_id = "";
            ws_id = "";
            by_name = "";
            Object.keys(backyard_row).forEach(function (org_id) {
                if (org_id == "_execute_count")  return;
                Object.keys(backyard_row[org_id]).forEach(function (ws_id) {
                    if (ws_id == "_execute_count")    return;
                    Object.keys(backyard_row[org_id][ws_id]).forEach(function (by_name) {
                        if (by_name == "_execute_count")    return;
                        backyard_status_list[by_name] = set_execute_info(backyard_status_list[by_name], by_name, org_id, ws_id, backyard_row[org_id][ws_id][by_name]);
                    });
                });
            });

            //
            // display loglevel list
            //
            const row_template = $('#loglevel_list .datarow-template').clone(true).removeClass('datarow-template').addClass('datarow').prop('outerHTML');
            let html='';
            const keyList = Object.keys(loglevels)

            const organization_display = getText("000-00103", "オーガナイゼーションID")
            const workspace_display = getText("000-00101", "ワークスペースID")

            for(let i in keyList) {
                service_name = keyList[i];
                backyard_execute_info = "";
                if (backyard_status_list[service_name] != undefined){
                    for(let j in backyard_status_list[service_name]) {
                        let org_id = backyard_status_list[service_name][j]["org_id"];
                        let ws_id = backyard_status_list[service_name][j]["ws_id"];
                        let status_name = backyard_status_list[service_name][j]["status_name"];
                        let last_update_timestamp = fn.date(new Date(backyard_status_list[service_name][j]["last_update_timestamp"]),'yyyy/MM/dd HH:mm:ss');
                        backyard_execute_info += last_update_timestamp + " [" + status_name + "] " + organization_display + ":" + org_id + " " + workspace_display + ":" + ws_id + "<br>";
                    }
                }
                else{
                    backyard_execute_info = "-";
                }
                html += row_template
                    .replace(/\${service}/g, fn.cv(keyList[i],'',true))
                    .replace(/\${i}/g, i)
                    .replace(/\${loglevel}/g, fn.cv(loglevels[keyList[i]],'',true))
                    .replace(/\${backyard_execute_info}/g, backyard_execute_info)
            }
            $("#loglevel_list tbody").append(html);
            $("#loglevel_list .datarow").css('display', '');

            // register button
            $('#button_register').on('click',() => {
                loglevel_register(loglevels);
            });

        }

    }

    //
    // 実行情報取得
    // Get execution information
    //
    function set_execute_info(execute_infos, by_name, org_id, ws_id, execute_list) {
        if (execute_infos == undefined){
            execute_infos = [];
        }

        for(let i in execute_list){
            execute_info = {
                "backyard_name": by_name,
                "org_id": org_id,
                "ws_id": ws_id,
                "status_name": execute_list[i]["status_name"],
                "last_update_timestamp": execute_list[i]["last_update_timestamp"],
            }
            execute_infos.push(execute_info);
        }
        return execute_infos;
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
                url: api_conf.api.settings.ita.loglevel.patch,
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                data: JSON.stringify(reqbody),
                contentType: "application/json",
                dataType: "json",
            }
        ).then(() => {
            return mainte_register();
        }).then(() => {
            hide_progress();
            alertMessage(getText("000-80018", "処理結果"), getText("000-89014", "メンテナンスモード・ログレベル設定を変更しました"),
                () => {
                    window.location = location_conf.href.settings_running_state.top;
                });
        }).catch(() => {
            hide_progress();
            $('#button_register').prop('disabled',false);
        })
    }

    //
    // register setting maintenance mode
    //

    function mainte_register() {
        let reqbody = {
            "backyard_execute_stop": $('#backyard_execute_stop').prop("checked")?"1":"0",
            "data_update_stop": $('#data_update_stop').prop("checked")?"1":"0"
        }

        show_progress();
        call_api_promise(
            {
                type: "PATCH",
                url: api_conf.api.settings["maintenance-mode-setting"].patch,
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                data: JSON.stringify(reqbody),
                contentType: "application/json",
                dataType: "json",
        });
    }
});
