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
        let ui = new CommonUi(`#container`);
        ui.contentTabEvent();
        load_main();
    });

    function load_main() {
        Promise.all([
            // Load Common Contents
            loadCommonContents(),

        ]).then(function(results) {
            // Display Menu
            displayMenu(null);
            // Display Topic Path
            displayTopicPath([
                {
                    "text": getText("000-90002", "Keycloakコンソール"),
                    "href": location_conf.href.keycloak.console,
                },
            ]);

            $("#ifra_keycloak_console").prop("src",location_conf.href.keycloak.console_frame);
            $("#ifra_keycloak_console").on('load', () => {
                // 追加cssの読み込み / Loading additional css
                $("#ifra_keycloak_console").contents().find('head').append('<link rel="stylesheet" href="/_/platform-commons/css/keycloak_console_custom.css?ver=__BUILD_VERSION__">');
            })
            finish_onload_progress();
        }).catch((e) => {
            console.log('[ERROR] load_main catch');
            finish_onload_progress_at_error();
            if(typeof e != "undefined") console.log(e);
            return;
        });
    }
});

