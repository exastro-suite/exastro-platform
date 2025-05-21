#   Copyright 2023 NEC Corporation
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
import inspect
import traceback
import os
import json
import requests
from contextlib import closing

import globals
from common_library.common.db import DBconnector
# from common_library.common.db_init import DBinit
from common_library.common import common, api_keycloak_tokens, api_keycloak_roles
from common_library.common import multi_lang
from common_library.common import const
import common_library.common.const as common_const

from .libs import queries_db_workspace


MSG_FUNCTION_ID = "90"


class create_service_account_user_role:

    failed_count = 0
    complete = 0
    skip_count = 0
    ignore_count = 0
    ok_count = 0

    organization_count = 0
    step_count = 0
    step_max = 0

    def __init__(self, realm="master"):
        """初期化処理 initialize setting

        """
        self.realm = realm

    def start(self):
        """マイグレーション処理 migration start processing

        """
        globals.logger.info('service account user role create start')

        try:
            self.step_count = 1
            self.step_max = 3
            
            # デフォルトオプション
            # default option
            role_options = {
                "attributes": {
                    "kind": [common_const.ROLE_KIND_WORKSPACE]
                }
            }

            # オーガナイゼーションDB情報取得
            # Get organization_db rows
            organization_db_rows = self.__organization_db_get()
            self.step_count += 1

            for row in organization_db_rows:
                organization_id = row.get("ORGANIZATION_ID")
                
                # オーガナイゼーション専用情報取得
                # Get orgnization private info
                organization_private = DBconnector().get_organization_private(organization_id)
                
                # アクセストークンを取得
                # Get an access token
                private = DBconnector().get_platform_private()
                access_token = self.__access_token_get(self.realm, private.token_check_client_clientid, private.token_check_client_secret)

                # ワークスペース情報取得
                # Get workspace rows
                workspace_rows = self.__workspace_get(organization_id)
                
                for ws_row in workspace_rows:
                    workspace_id = ws_row.get("WORKSPACE_ID")
                    
                    # サービスアカウントユーザーロール名の作成
                    # Create a service account user role name
                    builtin_roles = self.service_account_user_roles_name(workspace_id)
                    
                    # ロールに紐づけるwsロールを取得する
                    # get ws role
                    roles_ws = []
                    r_get_role_ws = api_keycloak_roles.clients_role_get(
                        realm_name=organization_id, client_id=organization_private.internal_api_client_id, role_name=workspace_id, token=access_token,
                    )
                    if r_get_role_ws.status_code != 200:
                        globals.logger.debug(f"response:{r_get_role_ws.text}")
                        raise common.InternalErrorException(None, f"500-{MSG_FUNCTION_ID}001", "ワークスペースロールの取得に失敗しました(対象ID:{})".format(workspace_id))

                    roles_ws.append(json.loads(r_get_role_ws.text))

                    for builtin_role in builtin_roles:
                        # サービスアカウントユーザー用ロール作成
                        # Generate searvice account users roles
                        r_create_role = api_keycloak_roles.clients_role_create(
                            realm_name=organization_id, client_uid=organization_private.user_token_client_id, role_name=builtin_role, token=access_token,
                            role_options=role_options,
                        )
                        
                        # すでに存在していた場合、処理継続
                        # If it already exists, continue processing.
                        if r_create_role.status_code == 409:
                            return 0
                        
                        # ロールにwsロールを紐づける
                        # role composite ws
                        r_create_composite = api_keycloak_roles.clients_role_composites_create(
                            realm_name=organization_id, client_uid=organization_private.user_token_client_id, role_name=builtin_role, add_roles=roles_ws, token=access_token,
                        )

            self.step_count += 1

            last_message = "service account user role create successful !!"

        except (common.BadRequestException,
                common.AuthException,
                common.NotAllowedException,
                common.InternalErrorException,
                common.OtherException) as err:
            self.failed_count += 1
            globals.logger.info("=" * 50)
            globals.logger.error(f'exception handler:\n status_code:[{err.status_code}]\n message_id:[{err.message_id}]\n message:[{err.message}]')
            globals.logger.info("-" * 50)
            globals.logger.error(''.join(list(traceback.TracebackException.from_exception(err).format())))
            last_message = "workspace database create and update failed..."

        except Exception as err:
            self.failed_count += 1
            globals.logger.info("=" * 50)
            globals.logger.error(f'exception:\n args:[{err.args}]')
            globals.logger.info("-" * 50)
            globals.logger.error(''.join(list(traceback.TracebackException.from_exception(err).format())))
            last_message = "workspace database create and update failed..."

        globals.logger.info("-" * 50)
        globals.logger.info(f"workspace database create and update status: [OK:{self.ok_count}] [SKIP:{self.skip_count}] [IGNORE:{self.ignore_count}] [NG:{self.failed_count}]")     # noqa: E501
        globals.logger.info("-" * 50)
        globals.logger.info(last_message)

        if self.failed_count > 0:
            return -1
        else:
            return 0

    def __organization_db_get(self):
        """get organization db

        Raises:
            common.InternalErrorException: _description_

        Returns:
            row: organization_db data rows
        """

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Start func:{inspect.currentframe().f_code.co_name}")

        # データベース接続
        # connection database
        db = DBconnector()
        with closing(db.connect_platformdb()) as conn:
            with conn.cursor() as cursor:

                try:
                    globals.logger.info(f"[{self.step_count}/{self.step_max}] - get organization_db:")
                    cursor.execute(queries_db_workspace.SQL_SELECT_ORGANIZATION_DB)

                    result = cursor.fetchall()

                    globals.logger.info(f"[{self.step_count}/{self.step_max}] -- OK: get organization_db:")
                    self.ok_count += 1

                except Exception as e:
                    globals.logger.info(f"[{self.step_count}/{self.step_max}] -- NG: get organization_db:")
                    globals.logger.error(f"exception:{e.args}")
                    message_id = f"500-{MSG_FUNCTION_ID}006"
                    message = multi_lang.get_text(message_id,
                                                  "get organization_db failed.")
                    raise common.InternalErrorException(message_id=message_id, message=message)

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Succeed func:{inspect.currentframe().f_code.co_name}")

        return result

    def __access_token_get(self, realm, token_check_client_clientid, token_check_client_secret):
        """アクセストークン取得 Get access token

        Args:
            realm (str): realm
            token_check_client_clientid (str): token_check_client_clientid
            token_check_client_secret (str): token_check_client_secret

        Returns:
            str: access_token
        """
        try:
            globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Start func:{inspect.currentframe().f_code.co_name}")

            globals.logger.info(f"[{self.step_count}/{self.step_max}] - get token:")
            # アクセストークン取得
            # get access token
            access_token_response = api_keycloak_tokens.service_account_get_token(realm, token_check_client_clientid, token_check_client_secret)

            if access_token_response.status_code not in [200]:
                globals.logger.info(f"[{self.step_count}/{self.step_max}] -- NG: get token:")
                message_id = f"500-{MSG_FUNCTION_ID}001"
                message = multi_lang.get_text(
                    message_id,
                    "get access token failed."
                )
                raise common.AuthException(message_id=message_id, message=message)

            globals.logger.info(f"[{self.step_count}/{self.step_max}] -- OK: get token:")
            self.ok_count += 1

            access_token = json.loads(access_token_response.text)["access_token"]

            globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Succeed func:{inspect.currentframe().f_code.co_name}")

            return access_token

        except Exception:
            raise

    def __workspace_get(self, organization_id):
        """get workspace

        Args:
            organization_id (str): organization id

        Raises:
            common.InternalErrorException: _description_

        Returns:
            row: workspace data row
        """

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Start func:{inspect.currentframe().f_code.co_name}")

        # データベース接続
        # connection database
        db = DBconnector()
        with closing(db.connect_orgdb(organization_id)) as conn:
            with conn.cursor() as cursor:

                try:
                    # workspace 情報取得
                    # get workspace info
                    globals.logger.info(f"[{self.step_count}/{self.step_max}] - get workspace:")
                    cursor.execute(queries_db_workspace.SQL_SELECT_WORKSPACE)

                    result = cursor.fetchall()

                    globals.logger.info(f"[{self.step_count}/{self.step_max}] -- OK: get workspace:")
                    self.ok_count += 1

                except Exception as e:
                    globals.logger.info(f"[{self.step_count}/{self.step_max}] -- NG: get workspace:")
                    globals.logger.error(f"exception:{e.args}")
                    message_id = f"500-{MSG_FUNCTION_ID}008"
                    message = multi_lang.get_text(message_id,
                                                  "get workspace failed. organization_id:[{0}]",
                                                  organization_id)
                    raise common.InternalErrorException(message_id=message_id, message=message)

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Succeed func:{inspect.currentframe().f_code.co_name}")

        return result

    def service_account_user_roles_name(self, workspace_id):
        """service account user roles

        Args:
            workspace_id (str): workspace id

        Returns:
            list: _description_
        """
        return [i['role'] for i in self.service_account_user_type_info(workspace_id)]

    def clients_role_create(self, realm_name, client_uid, role_name, token, role_options=None):
        """クライアントロール作成 user client role create

        Args:
            realm_name (str): realm name
            client_uid (str): client id
            role_name (str): role name
            toekn (str): token
            description (str): role description
            role_options (json): role options

        Returns:
            Response: HTTP Respose (success : .status_code=204)
        """
        globals.logger.info(
            'Create keycloak client role. client_uid={}, role_name={}'.format(client_uid, role_name)
        )

        header_para = {
            "Content-Type": "application/json",
            "Authorization": "Bearer {}".format(token),
        }

        data_para = {
            "name": role_name,
        }

        if role_options:
            data_para.update(role_options)

        globals.logger.debug("client role post send")
        # 呼び出し先設定 requests setting
        api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

        request_response = requests.post(
            "{}/auth/admin/realms/{}/clients/{}/roles".format(api_url, realm_name, client_uid),
            headers=header_para,
            json=data_para
        )

        # globals.logger.debug(request_response.text)

        return request_response

    def service_account_user_type_info(self, workspace_id):
        """service account user type information

        Args:
            workspace_id (str): workspace id

        Returns:
            list: service account user type information
        """
        return [
            {"type": const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE, "role": f"_{workspace_id}-ansible-execution-agent"},
            {"type": const.SERVICE_ACCOUNT_USER_TYPE_OASE, "role": f"_{workspace_id}-oase-agent"},
        ]
