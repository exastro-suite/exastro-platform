#   Copyright 2022 NEC Corporation
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

from flask import request

import common_library.common.const as const


def get_text(text_id, origin_text, *args):
    """テキスト取得 Get text

    Args:
        text_id (str): text id
        origin_text (str): 原文 Original text
        args: {0}, {1}..に埋め込むパラメータ Parameters to be embedded in {0}, {1} ..

    Returns:
        text: 変換後のテキスト Converted text
    """

    try:
        # ヘッダーのlocalを見てimportする言語を選択
        if request.headers.get("Language", const.default_language) == "ja":
            from common_resources.ja import language
        else:
            from common_resources.en import language

        text = ""

        # text_id存在チェック text_id Existence check
        if (text_id in language.LanguageList.lang_array):
            text = (language.LanguageList.lang_array[text_id])

            i = 0

            for arg in args:
                # {0}, {1}..に埋め込む変数を第3引数以降（args）で指定した文字列に置き換える
                # Replace the variable to be embedded in {0}, {1} .. with the character string specified by the third argument and after (args).
                text = text.replace("{" + str(i) + "}", arg)
                i += 1

        else:
            # text_idが存在しない場合は、原文を返却
            # If text_id does not exist, return the original text
            text = origin_text

        return text

    except Exception:
        return origin_text
