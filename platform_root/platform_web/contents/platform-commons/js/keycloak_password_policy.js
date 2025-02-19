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
            displayMenu('menu_password_policy');
            // Display Topic Path
            displayTopicPath([
                {
                    "text": getText("000-80055", "パスワードポリシー"),
                    "href": location_conf.href.keycloak.password_policy.replace(/{organization_id}/g, CommonAuth.getRealm())
                },
            ]);
            $("#ifra_keycloak").prop("src", location_conf.href.keycloak.password_policy_frame.replace(/{organization_id}/g, CommonAuth.getRealm()));
            $("#ifra_keycloak").on('load', () => {
                $("#ifra_keycloak").contents().find('head').append(
                    '<link rel="stylesheet" href="/_/platform-commons/css/keycloak_password_policy.css?ver=__BUILD_VERSION__">\n' +
                    append_keycloak_stylesheet()
                );

            })
            setInterval(watch_keycloak_console, 100);
            finish_onload_progress();
        }).catch((e) => {
            console.log('[ERROR] load_main catch');
            finish_onload_progress_at_error();
            if(typeof e != "undefined") console.log(e);
            return;
        });
    }

    function watch_keycloak_console() {
        const $body = $("#ifra_keycloak").contents().find('body');

        /*
            ヘッダー部分の文言変更
        */
        $body.find('main > section:nth-of-type(2) h1[data-testid="view-header"]').text(getText("000-80055", "パスワードポリシー"));
        $body.find('main > section:nth-of-type(2) div#view-header-subkey p').text(getText("000-90006", "Password policy is an area where you can set mandatory policies for passwords."));
        /*
            [add policy] listbox item hidden
            styleシートのselectorでは消込できないので、表示するtextで判定し消込をを行う
        */
        const hiddenPolicyTexts = [
            "Hashing Iterations",
            "Password Blacklist",
            "Hashing Algorithm",
            "Regular Expression"
        ];
        $body.find('li.pf-c-select__menu-wrapper button.pf-c-select__menu-item').each((index, element) => {
            if(hiddenPolicyTexts.indexOf($(element).text()) != -1) {
                $(element).css("display", "none");
            }
        });
    }
    function append_keycloak_stylesheet() {
        /*
            設定済みの非表示対象のpolicyのstyle設定
        */
        return [
            '<style>',
            'form.keycloak__policies_authentication__form > div.pf-c-form__group:has(label.pf-c-form__label[for="hashIterations"]) {',
            '   display: none !important;',
            '}',
            'form.keycloak__policies_authentication__form > div.pf-c-form__group:has(label.pf-c-form__label[for="passwordBlacklist"]) {',
            '   display: none !important;',
            '}',
            'form.keycloak__policies_authentication__form > div.pf-c-form__group:has(label.pf-c-form__label[for="hashAlgorithm"]) {',
            '   display: none !important;',
            '}',
            'form.keycloak__policies_authentication__form > div.pf-c-form__group:has(label.pf-c-form__label[for="regexPattern"]) {',
            '   display: none !important;',
            '}',
            '</style>',
        ].join("\n");
    }
});

