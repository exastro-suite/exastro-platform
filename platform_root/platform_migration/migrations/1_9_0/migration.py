
#   Copyright 2025 NEC Corporation
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

from . import plan_limit_update
from . import system_config_update
from . import update_organization_db


def main():

    # エラーがあっても処理を継続する
    # continue processing even if there is an error
    result = []

    # プランの項目上限の型変更
    # Change the type of plan item limit
    api = plan_limit_update.plan_limit_update()
    result.append(api.start())

    # ユーザー一括インポート・エクスポート用の設定レコード追加
    # add audit log recode to system config
    api = system_config_update.system_config_update()
    result.append(api.start())

    # オーガナイゼーションデータベースの更新
    # Update organization database
    api = update_organization_db.update_organization_db()
    result.append(api.start())

    for i in result:
        if i != 0:
            return i

    return 0


if __name__ == '__main__':
    ret = main()
    exit(ret)
