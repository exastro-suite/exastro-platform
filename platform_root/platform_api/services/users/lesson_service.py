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
Lesson Service

ユーザー・ワークスペースごとの学習事項（過去の会話から得られた失敗・教訓・注意点）の管理。
AIアシスタントのシステムプロンプトへの注入に使用する。
"""

import os
from datetime import datetime
from typing import Optional, List, Tuple, Dict
from dataclasses import dataclass
from contextlib import closing
import ulid

from common_library.common.db import DBconnector
from libs import queries_ai_assistant

import globals

# 学習事項をシステムプロンプトへ注入する際の最大件数(環境変数で上書き可能)
# conversation_service.pyの_build_lessons_prompt_sectionが常に明示的に渡すため、
# 実質的にこの関数のデフォルト値が使われるのは他から呼ばれた場合のみ
# Maximum number of lessons to inject into the system prompt (overridable via env var)
# conversation_service.py's _build_lessons_prompt_section always passes this explicitly,
# so this function's default is only actually used when called from elsewhere
AI_ASSISTANT_LESSONS_MAX_ITEMS = int(os.getenv("AI_ASSISTANT_LESSONS_MAX_ITEMS", "20"))

# ユーザー1人・Workspace1つあたりに登録できる学習事項の最大件数(環境変数で上書き可能)
# Maximum number of lessons a single user may register within a single workspace (overridable via env var)
AI_ASSISTANT_LESSONS_MAX_COUNT = int(os.getenv("AI_ASSISTANT_LESSONS_MAX_COUNT", "200"))


@dataclass
class Lesson:
    """User Lesson（学習事項）"""
    lesson_id: str
    lesson: str
    category: Optional[str]
    prompt_profile: Optional[str]
    priority: int
    enabled: bool
    conversation_id: Optional[str]
    created_at: Optional[str]
    updated_at: Optional[str]


class LessonLimitExceeded(Exception):
    """学習事項の登録件数が上限を超えている"""
    pass


class LessonService:
    """
    Lesson Service

    ユーザーごとの学習事項を管理
    """

    def create_lesson(
        self,
        organization_id: str,
        workspace_id: str,
        user_id: str,
        lesson: str,
        prompt_profile: str,
        category: Optional[str] = None,
        priority: int = 5,
        enabled: bool = True,
        conversation_id: Optional[str] = None,
    ) -> Lesson:
        """
        学習事項を作成

        Args:
            organization_id: Organization ID (DB接続用、テーブルには保存しない)
            workspace_id: Workspace ID (DB接続用、テーブルには保存しない)
            user_id: User ID
            lesson: 学習事項の内容
            prompt_profile: システムプロンプトへの反映対象prompt_profile (必須。LLMEditor/AgenticAIのみ)
            category: 分類 (任意)
            priority: 重要度 (1〜10。デフォルト5)
            enabled: 有効/無効フラグ (デフォルトTrue)
            conversation_id: 学習元の会話ID (任意。ワークスペースDB側のIDのため外部キーではない)

        Returns:
            Lesson: 作成した学習事項

        Raises:
            LessonLimitExceeded: このユーザー・このWorkspaceの登録件数が上限(AI_ASSISTANT_LESSONS_MAX_COUNT)に達している
        """
        lesson_id = ulid.new().str
        now = datetime.now()

        with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
            with closing(conn.cursor()) as cursor:
                # 登録件数の上限チェック(このユーザー・このWorkspaceでの件数)
                # Check the registration count limit (for this user, within this workspace)
                cursor.execute(
                    queries_ai_assistant.SQL_COUNT_LESSONS,
                    {"user_id": user_id},
                )
                current_count = cursor.fetchone()["total_count"]
                if current_count >= AI_ASSISTANT_LESSONS_MAX_COUNT:
                    raise LessonLimitExceeded(
                        f"Lesson limit exceeded: user={user_id}, workspace={workspace_id}, "
                        f"count={current_count}, limit={AI_ASSISTANT_LESSONS_MAX_COUNT}"
                    )

                cursor.execute(
                    queries_ai_assistant.SQL_INSERT_LESSON,
                    {
                        "lesson_id": lesson_id,
                        "user_id": user_id,
                        "lesson": lesson,
                        "category": category,
                        "prompt_profile": prompt_profile,
                        "priority": priority,
                        "enabled": enabled,
                        "conversation_id": conversation_id,
                    },
                )
                conn.commit()

        globals.logger.debug(
            f"Lesson created: id={lesson_id}, user={user_id}, category={category}, "
            f"prompt_profile={prompt_profile}, priority={priority}"
        )

        return Lesson(
            lesson_id=lesson_id,
            lesson=lesson,
            category=category,
            prompt_profile=prompt_profile,
            priority=priority,
            enabled=enabled,
            conversation_id=conversation_id,
            created_at=now.isoformat(),
            updated_at=now.isoformat(),
        )

    def get_lesson(
        self,
        organization_id: str,
        workspace_id: str,
        user_id: str,
        lesson_id: str,
    ) -> Optional[Lesson]:
        """
        学習事項を取得

        Args:
            organization_id: Organization ID (DB接続用、テーブルには保存しない)
            workspace_id: Workspace ID (DB接続用、テーブルには保存しない)
            user_id: User ID
            lesson_id: Lesson ID

        Returns:
            Lesson。見つからない場合はNone
        """
        with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
            with closing(conn.cursor()) as cursor:
                cursor.execute(
                    queries_ai_assistant.SQL_SELECT_LESSON,
                    {"lesson_id": lesson_id, "user_id": user_id},
                )
                row = cursor.fetchone()

        if not row:
            return None

        return self.__row_to_lesson(row)

    def list_lessons(
        self,
        organization_id: str,
        workspace_id: str,
        user_id: str,
        enabled: Optional[bool] = None,
        category: Optional[str] = None,
        prompt_profile: Optional[str] = None,
        limit: int = 50,
        offset: int = 0,
    ) -> Tuple[List[Lesson], int]:
        """
        学習事項一覧を取得

        Args:
            organization_id: Organization ID (DB接続用、テーブルには保存しない)
            workspace_id: Workspace ID (DB接続用、テーブルには保存しない)
            user_id: User ID
            enabled: 有効/無効フィルター (任意)
            category: 分類フィルター (任意)
            prompt_profile: 対象prompt_profileフィルター (任意。NULL(全プロファイル共通)の学習事項は含まない、完全一致のみ)
            limit: 取得件数
            offset: オフセット

        Returns:
            Tuple[List[Lesson], int]: (学習事項一覧, LIMIT/OFFSET適用前の総件数)
        """
        params = {"user_id": user_id}

        # ENABLED/CATEGORY/PROMPT_PROFILEの絞り込みは任意なので、指定された場合のみAND句を連結する
        # Filtering by ENABLED/CATEGORY/PROMPT_PROFILE is optional, so append the AND clause only when specified
        extra_where = ""
        if enabled is not None:
            extra_where += " AND ENABLED = %(enabled)s"
            params["enabled"] = enabled
        if category is not None:
            extra_where += " AND CATEGORY = %(category)s"
            params["category"] = category
        if prompt_profile is not None:
            extra_where += " AND PROMPT_PROFILE = %(prompt_profile)s"
            params["prompt_profile"] = prompt_profile

        list_query = queries_ai_assistant.SQL_LIST_LESSONS + extra_where + queries_ai_assistant.SQL_LIST_LESSONS_ORDER_LIMIT
        count_query = queries_ai_assistant.SQL_COUNT_LESSONS + extra_where

        with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
            with closing(conn.cursor()) as cursor:
                cursor.execute(
                    list_query,
                    {**params, "limit": limit, "offset": offset},
                )
                rows = cursor.fetchall()

                cursor.execute(count_query, params)
                total_count = cursor.fetchone()["total_count"]

        lessons = [self.__row_to_lesson(row) for row in rows]

        globals.logger.debug(
            f"Listed {len(lessons)} lessons (total_count={total_count}): "
            f"org={organization_id}, user={user_id}, enabled={enabled}, category={category}"
        )

        return lessons, total_count

    def update_lesson(
        self,
        organization_id: str,
        workspace_id: str,
        user_id: str,
        lesson_id: str,
        lesson: Optional[str] = None,
        category: Optional[str] = None,
        prompt_profile: Optional[str] = None,
        priority: Optional[int] = None,
        enabled: Optional[bool] = None,
    ) -> Optional[Lesson]:
        """
        学習事項を部分更新（PATCH。指定された項目のみ更新する）

        Args:
            organization_id: Organization ID (DB接続用、テーブルには保存しない)
            workspace_id: Workspace ID (DB接続用、テーブルには保存しない)
            user_id: User ID
            lesson_id: Lesson ID
            lesson: 変更後の学習事項の内容 (省略時は変更しない)
            category: 変更後の分類 (省略時は変更しない)
            prompt_profile: 変更後の対象prompt_profile (省略時は変更しない)
            priority: 変更後の重要度 (省略時は変更しない)
            enabled: 変更後の有効/無効フラグ (省略時は変更しない)

        Returns:
            Lesson。見つからない場合はNone
        """
        with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
            with closing(conn.cursor()) as cursor:
                cursor.execute(
                    queries_ai_assistant.SQL_SELECT_LESSON,
                    {"lesson_id": lesson_id, "user_id": user_id},
                )
                existing = cursor.fetchone()

                if not existing:
                    return None

                cursor.execute(
                    queries_ai_assistant.SQL_UPDATE_LESSON,
                    {
                        "lesson_id": lesson_id,
                        "user_id": user_id,
                        "lesson": lesson,
                        "category": category,
                        "prompt_profile": prompt_profile,
                        "priority": priority,
                        "enabled": enabled,
                    },
                )
                conn.commit()

        globals.logger.debug(
            f"Lesson updated: id={lesson_id}, user={user_id}"
        )

        # COALESCEで更新した内容をDBへ再度問い合わせずに反映する（未指定の項目は更新前の値を維持）
        # Reflect the COALESCE-based update without re-querying the DB (fields not specified keep their prior value)
        return Lesson(
            lesson_id=lesson_id,
            lesson=lesson if lesson is not None else existing["LESSON"],
            category=category if category is not None else existing["CATEGORY"],
            prompt_profile=prompt_profile if prompt_profile is not None else existing["PROMPT_PROFILE"],
            priority=priority if priority is not None else existing["PRIORITY"],
            enabled=enabled if enabled is not None else bool(existing["ENABLED"]),
            conversation_id=existing["CONVERSATION_ID"],
            created_at=existing["CREATE_TIMESTAMP"].isoformat() if existing["CREATE_TIMESTAMP"] else None,
            updated_at=datetime.now().isoformat(),
        )

    def bulk_update_enabled(
        self,
        organization_id: str,
        workspace_id: str,
        user_id: str,
        lessons: List[Dict],
    ) -> int:
        """
        複数の学習事項の有効/無効フラグを一括更新(1件ごとに異なる有効/無効を指定できる。混在した状態を1回の呼び出しで反映する)

        Args:
            organization_id: Organization ID (DB接続用、テーブルには保存しない)
            workspace_id: Workspace ID (DB接続用、テーブルには保存しない)
            user_id: User ID
            lessons: 更新対象。[{"lesson_id": str, "enabled": bool}, ...]

        Returns:
            int: 実際に更新された件数（他ユーザーの所有物や存在しないIDが含まれる場合、len(lessons)より少なくなることがある）
        """
        # enabledの値ごとにlesson_idをグルーピングし、値ごとに1回のUPDATE(IN句)で更新する。
        # (要素数に関わらず、区別される有効/無効の値の種類数だけクエリを発行する。通常は最大2回)
        # Group lesson_ids by their target enabled value, and issue one UPDATE (with an IN clause) per distinct value.
        # (Regardless of the number of items, this issues at most as many queries as there are distinct enabled values — normally 2.)
        ids_by_enabled: Dict[bool, List[str]] = {}
        for item in lessons:
            ids_by_enabled.setdefault(bool(item["enabled"]), []).append(item["lesson_id"])

        updated_count = 0
        with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
            with closing(conn.cursor()) as cursor:
                for enabled, lesson_ids in ids_by_enabled.items():
                    # IN句のプレースホルダをID数に応じて動的に生成する（生の値を直接SQL文へ埋め込まない）
                    # Dynamically build the IN clause placeholders based on the number of ids (never interpolate raw values into the SQL text)
                    id_params = {f"id_{i}": lesson_id for i, lesson_id in enumerate(lesson_ids)}
                    in_clause = ", ".join(f"%({key})s" for key in id_params)

                    query = f"""
                        UPDATE T_USER_LESSON
                        SET ENABLED = %(enabled)s,
                            LAST_UPDATE_TIMESTAMP = NOW(),
                            LAST_UPDATE_USER = %(user_id)s
                        WHERE USER_ID = %(user_id)s AND LESSON_ID IN ({in_clause})
                    """

                    cursor.execute(
                        query,
                        {"enabled": enabled, "user_id": user_id, **id_params},
                    )
                    updated_count += cursor.rowcount
                conn.commit()

        globals.logger.debug(
            f"Bulk lesson update: user={user_id}, requested={len(lessons)}, updated={updated_count}"
        )

        return updated_count

    def delete_lesson(
        self,
        organization_id: str,
        workspace_id: str,
        user_id: str,
        lesson_id: str,
    ) -> bool:
        """
        学習事項を削除

        Args:
            organization_id: Organization ID (DB接続用、テーブルには保存しない)
            workspace_id: Workspace ID (DB接続用、テーブルには保存しない)
            user_id: User ID
            lesson_id: Lesson ID

        Returns:
            削除した学習事項があったかどうか（存在しない場合はFalse）
        """
        with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
            with closing(conn.cursor()) as cursor:
                cursor.execute(
                    queries_ai_assistant.SQL_DELETE_LESSON,
                    {"lesson_id": lesson_id, "user_id": user_id},
                )
                deleted = cursor.rowcount > 0
                conn.commit()

        if deleted:
            globals.logger.debug(f"Lesson deleted: id={lesson_id}, user={user_id}")

        return deleted

    def get_enabled_lessons_for_prompt(
        self,
        organization_id: str,
        workspace_id: str,
        user_id: str,
        prompt_profile: str,
        limit: int = AI_ASSISTANT_LESSONS_MAX_ITEMS,
    ) -> List[Lesson]:
        """
        有効な学習事項を優先度・更新日時の降順で取得する（AIアシスタントのシステムプロンプトへの注入用）

        対象prompt_profile(PROMPT_PROFILE)が未設定(NULL)の学習事項は全プロファイル共通として扱い、
        指定したprompt_profileに関わらず含める。特定のprompt_profileが設定されている場合は、
        一致するもののみを含める。

        Args:
            organization_id: Organization ID (DB接続用、テーブルには保存しない)
            workspace_id: Workspace ID (DB接続用、テーブルには保存しない)
            user_id: User ID
            prompt_profile: 問い合わせ対象のprompt_profile
            limit: 取得件数

        Returns:
            List[Lesson]: 有効な学習事項一覧（lesson/category/priorityのみ設定済み）
        """
        with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn:
            with closing(conn.cursor()) as cursor:
                cursor.execute(
                    queries_ai_assistant.SQL_SELECT_ENABLED_LESSONS_FOR_PROMPT,
                    {"user_id": user_id, "prompt_profile": prompt_profile, "limit": limit},
                )
                rows = cursor.fetchall()

        return [
            Lesson(
                lesson_id=None,
                lesson=row["LESSON"],
                category=row["CATEGORY"],
                prompt_profile=None,
                priority=row["PRIORITY"],
                enabled=True,
                conversation_id=None,
                created_at=None,
                updated_at=None,
            )
            for row in rows
        ]

    @staticmethod
    def __row_to_lesson(row) -> Lesson:
        """DBの行データからLessonを構築する"""
        return Lesson(
            lesson_id=row["LESSON_ID"],
            lesson=row["LESSON"],
            category=row["CATEGORY"],
            prompt_profile=row["PROMPT_PROFILE"],
            priority=row["PRIORITY"],
            enabled=bool(row["ENABLED"]),
            conversation_id=row["CONVERSATION_ID"],
            created_at=row["CREATE_TIMESTAMP"].isoformat() if row["CREATE_TIMESTAMP"] else None,
            updated_at=row["LAST_UPDATE_TIMESTAMP"].isoformat() if row["LAST_UPDATE_TIMESTAMP"] else None,
        )


# シングルトンインスタンス
_lesson_service_instance: Optional[LessonService] = None


def get_lesson_service() -> LessonService:
    """
    Lesson Serviceのシングルトンインスタンスを取得

    Returns:
        LessonService
    """
    global _lesson_service_instance
    if _lesson_service_instance is None:
        _lesson_service_instance = LessonService()
    return _lesson_service_instance
