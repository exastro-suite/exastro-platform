
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

from . import realm_update
from . import create_service_account_user_role
from . import update_organization_db

def main():

    # エラーがあっても処理を継続する
    # continue processing even if there is an error
    result = []

    # master realmの更新 / 各オーガナイゼーションrealmの更新
    # master realm update / organizations realm  update
    api = realm_update.realm_update()
    result.append(api.start())

    # エラーがあっても処理を継続する
    # continue processing even if there is an error

    # サービスアカウントユーザー用ロールの作成
    # Create a service account user roles
    api = create_service_account_user_role.create_service_account_user_role()
    result.append(api.start())

    # エラーがあっても処理を継続する
    # continue processing even if there is an error

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
