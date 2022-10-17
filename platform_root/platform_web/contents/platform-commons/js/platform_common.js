/*
#   Copyright 2019 NEC Corporation
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

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   Get Text Multi Language Support
//
////////////////////////////////////////////////////////////////////////////////////////////////////
function getText(textId, originText, ...args){

    // textIdが存在しない場合は、原文を表示
    // If textId does not exist, display original
    let text = originText;

    try {
        // textId存在チェック
        // textId existence check
        if(textId in langArray){
            text = (langArray[textId]);
        }

        for(var i = 0; i < args.length; i++){
            // {0}, {1}..に埋め込む変数を第3引数以降（args）で指定した文字列に置き換える
            // Replace the variables embedded in {0}, {1}.. with the strings specified in the third and subsequent arguments (args)
            text = text.replace('{' + i + '}', args[i]);
        }
    } catch(e) {
        console.log( e.message );
    }
    return text;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   Append Script
//
////////////////////////////////////////////////////////////////////////////////////////////////////
function appendScript(url) {
	var el = document.createElement('script');

    // 指定されたurlのsrcを組み込む
    // include the src of the given url
    el.src = url;
	document.body.appendChild(el);
};

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   Finish Onload Progress
//
////////////////////////////////////////////////////////////////////////////////////////////////////
function finish_onload_progress() {
    $("ol.topichPathList").css("visibility", "");
    $("ul.menuList").css("display", "");
    $("#main").css("visibility", "");
    $(".containerLoading").css("display", "none");
}