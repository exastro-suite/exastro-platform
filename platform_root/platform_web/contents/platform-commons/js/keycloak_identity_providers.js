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

        ]).then(function() {
            // Display Menu
            displayMenu('menu_identity_providers');
            // Display Topic Path
            displayTopicPath([
                {
                    "text": getText("000-80051", "アイデンティティー・プロバイダー"),
                    "href": location_conf.href.keycloak.identity_providers.replace(/{organization_id}/g, CommonAuth.getRealm())
                },
            ]);
            $("#ifra_keycloak").prop("src", location_conf.href.keycloak.identity_providers_frame.replace(/{organization_id}/g, CommonAuth.getRealm()));
            $("#ifra_keycloak").on('load', () => {
                $("#ifra_keycloak").contents().find('head').append('<link rel="stylesheet" href="/_/platform-commons/css/keycloak_identity_providers.css?ver=__BUILD_VERSION__">');
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

