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
System Prompt Loader

prompt_profile と user_language に基づいてシステムプロンプトを読み込む
"""

import os
from pathlib import Path
from typing import Optional

import globals


class SystemPromptLoader:
    """
    システムプロンプトローダー

    ファイル命名規則:
    - {prompt_profile}_base.md: 基本プロンプト（必須）
    - {prompt_profile}_jp.md: 日本語用の追加プロンプト（任意）
    - {prompt_profile}_en.md: 英語用の追加プロンプト（任意）

    言語別プロンプトはベースプロンプトの後ろに追記される
    The language-specific prompt is appended after the base prompt
    """

    def __init__(self, prompts_dir: Optional[str] = None):
        """
        初期化

        Args:
            prompts_dir: プロンプトファイルのディレクトリパス
                        （Noneの場合はデフォルトパスを使用）
        """
        if prompts_dir is None:
            # デフォルト: platform_api/prompts/system/
            api_root = Path(__file__).parent.parent.parent
            self.prompts_dir = api_root / "prompts" / "system"
            self.menu_prompts_dir = api_root / "prompts" / "menu"
        else:
            self.prompts_dir = Path(prompts_dir)
            self.menu_prompts_dir = Path(prompts_dir).parent / "menu"

        globals.logger.debug(
            f"SystemPromptLoader initialized: system={self.prompts_dir}, "
            f"menu={self.menu_prompts_dir}"
        )

    def load_prompt(
        self, prompt_profile: str, user_language: Optional[str] = None
    ) -> str:
        """
        システムプロンプトを読み込む
        (ベースプロンプト + 言語別の追加プロンプト)

        Args:
            prompt_profile: プロンプトプロファイル (LLMEditor, AgenticAI)
            user_language: ユーザー言語 (jp, en, None)

        Returns:
            システムプロンプト文字列

        Raises:
            FileNotFoundError: ベースプロンプトファイルが見つからない場合
        """
        # prompt_profile を小文字に正規化
        prompt_profile_lower = prompt_profile.lower()

        prompt = self._load_base_and_language(self.prompts_dir, prompt_profile_lower, user_language)
        if prompt is None:
            raise FileNotFoundError(
                f"System prompt not found for prompt_profile={prompt_profile}, "
                f"user_language={user_language}. "
                f"Expected file: {self.prompts_dir / f'{prompt_profile_lower}_base.md'}"
            )
        return prompt

    def load_menu_prompt(
        self, menu_id: str, user_language: Optional[str] = None
    ) -> Optional[str]:
        """
        メニュー固有の追加システムプロンプトを読み込む
        (ベースプロンプト + 言語別の追加プロンプト)

        Args:
            menu_id: メニューID (ITA画面ID)
            user_language: ユーザー言語 (jp, en, None)

        Returns:
            追加プロンプト文字列（ベースプロンプトファイルがない場合はNone）
        """
        # menu_id を小文字に正規化
        menu_id_lower = menu_id.lower()

        prompt = self._load_base_and_language(self.menu_prompts_dir, menu_id_lower, user_language)
        if prompt is None:
            # ベースが見つからない場合はNone（エラーにしない）
            globals.logger.debug(
                f"No menu-specific prompt found for menu_id={menu_id}, "
                f"user_language={user_language}"
            )
        return prompt

    def _load_base_and_language(
        self, prompts_dir: Path, name: str, user_language: Optional[str]
    ) -> Optional[str]:
        """
        ベースプロンプトを読み込み、言語別の追加プロンプトがあれば後ろに追記する
        Load the base prompt and append the language-specific prompt if it exists

        Args:
            prompts_dir: プロンプトファイルのディレクトリ
            name: ファイル名のプレフィックス (prompt_profile / menu_id を小文字にしたもの)
            user_language: ユーザー言語 (jp, en, None)

        Returns:
            プロンプト文字列（ベースプロンプトファイルがない場合はNone）
        """
        base_file = prompts_dir / f"{name}_base.md"
        if not base_file.exists():
            return None

        globals.logger.debug(f"Loading base prompt: {base_file}")
        prompt = self._read_file(base_file)

        if user_language:
            lang_file = prompts_dir / f"{name}_{user_language}.md"
            if lang_file.exists():
                globals.logger.debug(f"Appending language-specific prompt: {lang_file}")
                lang_prompt = self._read_file(lang_file)
                if lang_prompt:
                    prompt = f"{prompt}\n\n{lang_prompt}" if prompt else lang_prompt
            else:
                globals.logger.debug(f"No language-specific prompt: {lang_file}")

        return prompt

    def _read_file(self, file_path: Path) -> str:
        """
        ファイルを読み込む

        Args:
            file_path: ファイルパス

        Returns:
            ファイル内容
        """
        try:
            with open(file_path, "r", encoding="utf-8") as f:
                content = f.read().strip()
                globals.logger.debug(
                    f"Loaded prompt from {file_path}: {len(content)} characters"
                )
                return content
        except Exception as e:
            globals.logger.error(f"Failed to read prompt file {file_path}: {e}")
            raise

    def get_available_services(self) -> list[str]:
        """
        利用可能なプロンプトプロファイルのリストを取得

        Returns:
            プロンプトプロファイルのリスト
        """
        services = set()
        if self.prompts_dir.exists():
            for file_path in self.prompts_dir.glob("*_base.md"):
                prompt_profile = file_path.stem.replace("_base", "")
                services.add(prompt_profile)

        return sorted(services)


# シングルトンインスタンス
_loader_instance = None


def get_system_prompt_loader() -> SystemPromptLoader:
    """
    SystemPromptLoaderのシングルトンインスタンスを取得

    Returns:
        SystemPromptLoader
    """
    global _loader_instance
    if _loader_instance is None:
        _loader_instance = SystemPromptLoader()
    return _loader_instance


def load_system_prompt(
    prompt_profile: str, user_language: Optional[str] = None
) -> str:
    """
    システムプロンプトを読み込む（ショートカット関数）

    Args:
        prompt_profile: プロンプトプロファイル
        user_language: ユーザー言語

    Returns:
        システムプロンプト文字列
    """
    loader = get_system_prompt_loader()
    return loader.load_prompt(prompt_profile, user_language)


def load_menu_prompt(
    menu_id: str, user_language: Optional[str] = None
) -> Optional[str]:
    """
    メニュー固有の追加プロンプトを読み込む（ショートカット関数）

    Args:
        menu_id: メニューID
        user_language: ユーザー言語

    Returns:
        追加プロンプト文字列（なければNone）
    """
    loader = get_system_prompt_loader()
    return loader.load_menu_prompt(menu_id, user_language)
