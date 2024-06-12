
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


def main():

    # master realmの更新 / 各オーガナイゼーションrealmおよびuser profileの更新
    # master realm update / organizations realm and user profile update
    api = realm_update.realm_update()
    result = api.start()

    if result != 0:
        return result

    return 0


if __name__ == '__main__':
    ret = main()
    exit(ret)
