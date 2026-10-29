#   Copyright 2026 NEC Corporation
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

"""
services/ai_assistant/system_prompt_loader.py の単体テスト

globals.loggerの初期化のためだけに、各テストの引数にconnexion_clientを含める(HTTPリクエストは行わない)。
"""

import pytest

from services.ai_assistant import system_prompt_loader
from services.ai_assistant.system_prompt_loader import (
    SystemPromptLoader,
    get_system_prompt_loader,
    load_menu_prompt,
    load_system_prompt,
)


def _make_loader(tmp_path, system_files=None, menu_files=None):
    """tmp_path配下にsystem/menuディレクトリとプロンプトファイルを作成し、ローダーを返す"""
    system_dir = tmp_path / "system"
    menu_dir = tmp_path / "menu"
    system_dir.mkdir()
    menu_dir.mkdir()
    for name, content in (system_files or {}).items():
        (system_dir / name).write_text(content, encoding="utf-8")
    for name, content in (menu_files or {}).items():
        (menu_dir / name).write_text(content, encoding="utf-8")
    return SystemPromptLoader(prompts_dir=str(system_dir))


# ==================== load_prompt ====================

def test_load_prompt_language_specific_appended(connexion_client, tmp_path):
    """言語別プロンプトがあればベースプロンプトの後ろに追記される"""
    loader = _make_loader(tmp_path, system_files={
        "llmeditor_base.md": "BASE",
        "llmeditor_jp.md": "JAPANESE",
        "llmeditor_en.md": "ENGLISH",
    })
    assert loader.load_prompt("LLMEditor", "jp") == "BASE\n\nJAPANESE"
    assert loader.load_prompt("LLMEditor", "en") == "BASE\n\nENGLISH"


def test_load_prompt_empty_language_file_not_appended(connexion_client, tmp_path):
    """言語別プロンプトが空の場合は何も追記しない"""
    loader = _make_loader(tmp_path, system_files={
        "llmeditor_base.md": "BASE",
        "llmeditor_jp.md": "\n",
    })
    assert loader.load_prompt("LLMEditor", "jp") == "BASE"


def test_load_prompt_falls_back_to_base(connexion_client, tmp_path):
    """言語別プロンプトが無い場合はベースプロンプトのみを使う"""
    loader = _make_loader(tmp_path, system_files={"llmeditor_base.md": "BASE"})
    assert loader.load_prompt("LLMEditor", "en") == "BASE"


def test_load_prompt_without_language_uses_base(connexion_client, tmp_path):
    """user_languageがNoneの場合は言語別プロンプトがあってもベースを使う"""
    loader = _make_loader(tmp_path, system_files={
        "llmeditor_base.md": "BASE",
        "llmeditor_jp.md": "JAPANESE",
    })
    assert loader.load_prompt("LLMEditor", None) == "BASE"


def test_load_prompt_profile_is_case_insensitive(connexion_client, tmp_path):
    """prompt_profileは小文字に正規化してファイル名に使う"""
    loader = _make_loader(tmp_path, system_files={"agenticai_base.md": "AGENTIC"})
    assert loader.load_prompt("AgenticAI") == "AGENTIC"
    assert loader.load_prompt("AGENTICAI") == "AGENTIC"


def test_load_prompt_strips_whitespace(connexion_client, tmp_path):
    """読み込んだ内容の前後の空白・改行は取り除かれる"""
    loader = _make_loader(tmp_path, system_files={"llmeditor_base.md": "\n\n  BASE PROMPT  \n\n"})
    assert loader.load_prompt("LLMEditor") == "BASE PROMPT"


def test_load_prompt_not_found_raises(connexion_client, tmp_path):
    """ベース・言語別のいずれも無い場合はFileNotFoundError"""
    loader = _make_loader(tmp_path)
    with pytest.raises(FileNotFoundError, match="prompt_profile=Unknown"):
        loader.load_prompt("Unknown", "jp")
    with pytest.raises(FileNotFoundError):
        loader.load_prompt("Unknown", None)


def test_load_prompt_base_required(connexion_client, tmp_path):
    """ベースプロンプトは必須。言語別プロンプトのみの場合もFileNotFoundError"""
    loader = _make_loader(tmp_path, system_files={"llmeditor_jp.md": "JAPANESE"})
    with pytest.raises(FileNotFoundError, match="llmeditor_base.md"):
        loader.load_prompt("LLMEditor", "jp")


def test_load_prompt_read_error_raises(connexion_client, tmp_path):
    """ファイルの読み込み自体に失敗した場合(例: 同名のディレクトリ)は例外をそのまま送出する"""
    loader = _make_loader(tmp_path)
    (tmp_path / "system" / "llmeditor_base.md").mkdir()
    with pytest.raises(OSError):
        loader.load_prompt("LLMEditor")


# ==================== load_menu_prompt ====================

def test_load_menu_prompt_language_specific_appended(connexion_client, tmp_path):
    """メニュー固有プロンプトも言語別がベースの後ろに追記される"""
    loader = _make_loader(tmp_path, menu_files={
        "menu_001_base.md": "MENU_BASE",
        "menu_001_jp.md": "MENU_JP",
    })
    assert loader.load_menu_prompt("menu_001", "jp") == "MENU_BASE\n\nMENU_JP"


def test_load_menu_prompt_falls_back_to_base(connexion_client, tmp_path):
    """言語別が無い場合はメニューのベースプロンプトを使う(menu_idは小文字に正規化される)"""
    loader = _make_loader(tmp_path, menu_files={"menu_001_base.md": "MENU_BASE"})
    assert loader.load_menu_prompt("MENU_001", "en") == "MENU_BASE"
    assert loader.load_menu_prompt("menu_001", None) == "MENU_BASE"


def test_load_menu_prompt_not_found_returns_none(connexion_client, tmp_path):
    """メニュー固有プロンプトが無い場合はエラーにせずNoneを返す"""
    loader = _make_loader(tmp_path)
    assert loader.load_menu_prompt("no_such_menu", "jp") is None
    assert loader.load_menu_prompt("no_such_menu", None) is None


def test_load_menu_prompt_base_required(connexion_client, tmp_path):
    """メニュー固有プロンプトもベースが無い場合は言語別があってもNone"""
    loader = _make_loader(tmp_path, menu_files={"menu_001_jp.md": "MENU_JP"})
    assert loader.load_menu_prompt("menu_001", "jp") is None


# ==================== get_available_services ====================

def test_get_available_services(connexion_client, tmp_path):
    """*_base.mdが存在するprompt_profileの一覧をソートして返す(言語別ファイルのみのものは含まない)"""
    loader = _make_loader(tmp_path, system_files={
        "llmeditor_base.md": "x",
        "agenticai_base.md": "x",
        "onlyjp_jp.md": "x",
    })
    assert loader.get_available_services() == ["agenticai", "llmeditor"]


def test_get_available_services_missing_dir(connexion_client, tmp_path):
    """プロンプトディレクトリ自体が無い場合は空リスト"""
    loader = SystemPromptLoader(prompts_dir=str(tmp_path / "does-not-exist"))
    assert loader.get_available_services() == []


# ==================== 実ファイル(prompts/配下)・シングルトン ====================

@pytest.mark.parametrize("prompt_profile", ["LLMEditor", "AgenticAI", "Lessons", "GenerateTitle"])
@pytest.mark.parametrize("user_language", [None, "jp", "en"])
def test_real_prompt_files_exist_for_all_profiles(connexion_client, prompt_profile, user_language):
    """会話作成APIで指定可能な全prompt_profileについて、実際のプロンプトファイルが読み込める
    (常にベースプロンプトが含まれ、言語別があればその後ろに追記される)
    """
    loader = SystemPromptLoader()
    prompt = loader.load_prompt(prompt_profile, user_language)
    base = loader.load_prompt(prompt_profile, None)
    assert prompt, f"prompt for {prompt_profile}/{user_language} is not empty"
    assert prompt.startswith(base), f"prompt for {prompt_profile}/{user_language} starts with base prompt"


def test_real_default_dirs(connexion_client):
    """デフォルトのディレクトリはplatform_api/prompts/system・prompts/menuを指す"""
    loader = SystemPromptLoader()
    assert loader.prompts_dir.parts[-2:] == ("prompts", "system")
    assert loader.menu_prompts_dir.parts[-2:] == ("prompts", "menu")
    assert "llmeditor" in loader.get_available_services()


def test_shortcut_functions_use_singleton(connexion_client, monkeypatch):
    """load_system_prompt/load_menu_promptはシングルトンのローダーを使う"""
    monkeypatch.setattr(system_prompt_loader, "_loader_instance", None)
    first = get_system_prompt_loader()
    assert get_system_prompt_loader() is first, "singleton"

    assert load_system_prompt("LLMEditor", "jp") == first.load_prompt("LLMEditor", "jp")
    assert load_menu_prompt("menu_001", "jp") == first.load_menu_prompt("menu_001", "jp")
    assert load_menu_prompt("no_such_menu") is None
