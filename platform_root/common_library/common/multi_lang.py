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
        # Select the language to import by looking at local in the header
        if request.headers.get("Language", const.default_language) == "ja":
            from common_resources.ja import language
        else:
            from common_resources.en import language

        # text_id存在チェック
        # text_id Existence check
        text = None
        if (text_id in language.LanguageList.lang_array):
            text = (language.LanguageList.lang_array.get(text_id))

        if not text:
            text = origin_text
        # エラーは無視する
        # ignore the error
        try:
            text = text.format(*args)
        except Exception:
            pass
        return text

    except Exception:
        try:
            origin_text = origin_text.format(*args)
        except Exception:
            pass
        return origin_text


def get_text_spec(lang, text_id, origin_text, *args):
    """テキスト取得 Get text(言語指定あり)

    Args:
        lang(str): language
        text_id (str): text id
        origin_text (str): 原文 Original text
        args: {0}, {1}..に埋め込むパラメータ Parameters to be embedded in {0}, {1} ..

    Returns:
        text: 変換後のテキスト Converted text
    """

    try:
        # パラメータのlocalを見てimportする言語を選択
        # Select the language to import by looking at local in the header
        if lang == "ja":
            from common_resources.ja import language
        else:
            from common_resources.en import language

        # text_id存在チェック
        # text_id Existence check
        text = None
        if (text_id in language.LanguageList.lang_array):
            text = (language.LanguageList.lang_array.get(text_id))

        if not text:
            text = origin_text
        # エラーは無視する
        # ignore the error
        try:
            text = text.format(*args)
        except Exception:
            pass
        return text

    except Exception:
        try:
            origin_text = origin_text.format(*args)
        except Exception:
            pass
        return origin_text
