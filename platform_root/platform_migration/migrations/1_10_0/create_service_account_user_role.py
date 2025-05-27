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
from common_library.common import bl_service_account_user

from .libs import queries_db_workspace


class create_service_account_user_role:

    failed_count = 0
    complete = 0
    skip_count = 0
    ignore_count = 0
    ok_count = 0

    organization_count = 0
    organization_max = 0
    workspace_count = 0
    workspace_max = 0
    role_count = 0
    role_max = 2
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

        # デフォルトオプション
        # default option
        role_options = {
            "attributes": {
                "kind": [common_const.ROLE_KIND_WORKSPACE]
            }
        }
        
        try:
            self.step_count = 1
            self.step_max = 1
            
            # オーガナイゼーションDB情報取得
            # Get organization_db rows
            organization_db_rows = self.__organization_db_get()
            
            self.organization_max = len(organization_db_rows)
            self.step_max += 3 * self.organization_max

            for row in organization_db_rows:
                self.organization_count += 1
                self.workspace_count = 0
                
                organization_id = row.get("ORGANIZATION_ID")
                globals.logger.info(f"[Organization:{self.organization_count}/{self.organization_max}] - ORGANIZATION_ID:{organization_id}")
                
                self.step_count += 1
                
                # オーガナイゼーション専用情報取得
                # Get orgnization private info
                organization_private = self.__organization_private_get(organization_id)
                
                self.step_count += 1
                
                # アクセストークンを取得
                # Get an access token
                private = DBconnector().get_platform_private()
                access_token = self.__access_token_get(self.realm, private.token_check_client_clientid, private.token_check_client_secret)
                
                self.step_count += 1

                # ワークスペース情報取得
                # Get workspace rows
                workspace_rows = self.__workspace_get(organization_id)
                
                self.workspace_max = len(workspace_rows)
                self.step_max += 5 * self.workspace_max
                
                for ws_row in workspace_rows:
                    self.workspace_count += 1
                    self.role_count = 0
                    
                    workspace_id = ws_row.get("WORKSPACE_ID")
                    globals.logger.info(f"[Workspace:{self.workspace_count}/{self.workspace_max}] - WORKSPACE_ID:{workspace_id}")
                    
                    # サービスアカウントユーザーロール名の作成
                    # Create a service account user role name
                    builtin_roles = self.__service_account_user_roles_name(workspace_id)
                    
                    self.step_count += 1
                    
                    # ロールに紐づけるwsロールを取得する
                    # get ws role
                    roles_ws = []
                    roles_ws.append(self.__workspace_role_get(
                        organization_id=organization_id, internal_api_client_id=organization_private.internal_api_client_id, workspace_id=workspace_id, access_token=access_token,
                    ))
                    
                    for builtin_role in builtin_roles:
                        self.role_count += 1
                        
                        globals.logger.info(f"[Role:{self.role_count}/{self.role_max}] - ROLE_NAME:{builtin_role}")
                        
                        self.step_count += 1
                        
                        # サービスアカウントユーザー用ロール作成
                        # Generate searvice account users roles
                        r_create_role = self.__service_account_user_role_create(organization_id, organization_private.user_token_client_id, builtin_role, access_token,role_options)
                        
                        self.step_count += 1
                        
                        # ロールにwsロールを紐づける
                        # role composite ws
                        r_create_composite = self.__workspace_role_composites_create(organization_id, organization_private.user_token_client_id, builtin_role, roles_ws, access_token)
                        
                        self.ok_count += 1

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
            last_message = "service account user role create failed..."

        except Exception as err:
            self.failed_count += 1
            globals.logger.info("=" * 50)
            globals.logger.error(f'exception:\n args:[{err.args}]')
            globals.logger.info("-" * 50)
            globals.logger.error(''.join(list(traceback.TracebackException.from_exception(err).format())))
            last_message = "service account user role create failed..."

        globals.logger.info("-" * 50)
        globals.logger.info(f"service account user role create status: [OK:{self.ok_count}] [SKIP:{self.skip_count}] [IGNORE:{self.ignore_count}] [NG:{self.failed_count}]")     # noqa: E501
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

                except Exception as e:
                    globals.logger.info(f"[{self.step_count}/{self.step_max}] -- NG: get organization_db:")
                    globals.logger.error(f"exception:{e.args}")
                    message_id = "500-90006"
                    message = multi_lang.get_text(message_id,
                                                  "get organization_db failed.")
                    raise common.InternalErrorException(message_id=message_id, message=message)

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Succeed func:{inspect.currentframe().f_code.co_name}")

        return result

    def __organization_private_get(self, organization_id):
        """オーガナイゼーション専用情報取得

        Args:
            organization_id (str): organization id
            
        Returns:
            row: organization private
        """
        
        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Start func:{inspect.currentframe().f_code.co_name}")
        
        # データベース接続
        # connection database
        db = DBconnector()
        try:
            # オーガナイゼーション専用情報取得
            # Get orgnization private info
            globals.logger.info(f"[{self.step_count}/{self.step_max}] - get organization private:")
            organization_private = db.get_organization_private(organization_id)
            
            globals.logger.info(f"[{self.step_count}/{self.step_max}] -- OK: get organization private:")
        
        except Exception as e:
            globals.logger.info(f"[{self.step_count}/{self.step_max}] -- NG: get organization private:")
            globals.logger.error(f"exception:{e.args}")
            message_id = "500-90027"
            message = multi_lang.get_text(message_id,
                                            "オーガナイゼーション情報の取得に失敗しました(organization id:{0})",
                                            organization_id)
            raise common.InternalErrorException(message_id=message_id, message=message)
        
        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Succeed func:{inspect.currentframe().f_code.co_name}")
        
        return organization_private
        
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
                message_id = "500-90028"
                message = multi_lang.get_text(
                    message_id,
                    "アクセストークンの取得に失敗しました(realm:{0})",
                    realm
                )
                raise common.AuthException(message_id=message_id, message=message)

            globals.logger.info(f"[{self.step_count}/{self.step_max}] -- OK: get token:")

            access_token = json.loads(access_token_response.text)["access_token"]

            globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Succeed func:{inspect.currentframe().f_code.co_name}")

            return access_token

        except Exception:
            raise

    def __workspace_get(self, organization_id):
        """ワークスペース情報取得 - get workspace

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
                    # self.ok_count += 1

                except Exception as e:
                    globals.logger.info(f"[{self.step_count}/{self.step_max}] -- NG: get workspace:")
                    globals.logger.error(f"exception:{e.args}")
                    message_id = "500-90008"
                    message = multi_lang.get_text(message_id,
                                                  "get workspace failed. organization_id:[{0}]",
                                                  organization_id)
                    raise common.InternalErrorException(message_id=message_id, message=message)

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Succeed func:{inspect.currentframe().f_code.co_name}")

        return result

    def __service_account_user_roles_name(self, workspace_id):
        """service account user roles

        Args:
            workspace_id (str): workspace id

        Returns:
            list: _description_
        """
        return [i['role'] for i in bl_service_account_user.service_account_user_type_info(workspace_id)]

    def __workspace_role_get(self, organization_id, internal_api_client_id, workspace_id, access_token):
        """ワークスペースロースの取得 - get clients role

        Args:
            organization_id (str): organization id
            internal_api_client_id (str): internal api client id
            workspace_id (str): workspace id
            access_token (str): access token

        Raises:
            common.InternalErrorException: 取得失敗

        Returns:
            _type_: _description_
        """
        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Start func:{inspect.currentframe().f_code.co_name}")
        
        try:
            globals.logger.info(f"[{self.step_count}/{self.step_max}] - get workspace role:")
            r_get_role_ws = api_keycloak_roles.clients_role_get(
                realm_name=organization_id, client_id=internal_api_client_id, role_name=workspace_id, token=access_token,
            )
            
            globals.logger.info(f"[{self.step_count}/{self.step_max}] -- OK: get workspace role:")

        except Exception as e:
            globals.logger.info(f"[{self.step_count}/{self.step_max}] -- NG: get workspace role:")
            globals.logger.error(f"exception:{e.args}")
            message_id = "500-90002"
            message = multi_lang.get_text(message_id,
                                            "client roleの取得に失敗しました(対象ID:{0} client:{1})",
                                            organization_id,
                                            internal_api_client_id)
            raise common.InternalErrorException(message_id=message_id, message=message)
        
        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Succeed func:{inspect.currentframe().f_code.co_name}")

        return json.loads(r_get_role_ws.text)
    
    def __service_account_user_role_create(self, organization_id, user_token_client_id, builtin_role, access_token, role_options):
        """サービスアカウントユーザー用ロール作成 - create service account user role

        Args:
            organization_id (str): organization id
            organization_private
            builtin_role
            access_token
            role_options

        Raises:
            common.InternalErrorException: _description_
        """

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Start func:{inspect.currentframe().f_code.co_name}")
        
        globals.logger.info(f"[{self.step_count}/{self.step_max}] - get service account user role:")
        
        # サービスアカウントユーザー用ロール作成
        # Generate searvice account users roles
        response = api_keycloak_roles.clients_role_create(
            realm_name=organization_id, client_uid=user_token_client_id, role_name=builtin_role, token=access_token,
            role_options=role_options,
        )
        
        if response.status_code not in [200, 201, 409]:     # 409 exists role
            globals.logger.info(f"[{self.step_count}/{self.step_max}] -- NG: create service account user role:")
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = "500-90029"
            message = multi_lang.get_text(
                message_id,
                "サービスアカウントユーザーロールの作成に失敗しました(target role:{0})",
                builtin_role
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        # 存在した場合はスキップ
        # skip if present
        if response.status_code in [409]:
            globals.logger.info(f"[{self.step_count}/{self.step_max}] -- SKIP: create service account user role:")
            self.skip_count += 1
        else:
            globals.logger.info(f"[{self.step_count}/{self.step_max}] -- OK: create service account user role:")
            
        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Succeed func:{inspect.currentframe().f_code.co_name}")

        return
    
    def __workspace_role_composites_create(self, organization_id, user_token_client_id, builtin_role, roles_ws, access_token):
        """ワークスペースロールの紐付け - composite workspace role

        Args:
            organization_id (str): _description_
            user_token_client_id (str): _description_
            builtin_role (str): _description_
            roles_ws (str): _description_
            access_token (str): _description_
        """
        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Start func:{inspect.currentframe().f_code.co_name}")
        
        try:
            globals.logger.info(f"[{self.step_count}/{self.step_max}] - composite workspace role:")
            
            r_create_composite = api_keycloak_roles.clients_role_composites_create(
                realm_name=organization_id, client_uid=user_token_client_id, role_name=builtin_role, add_roles=roles_ws, token=access_token,
            )
            
            globals.logger.info(f"[{self.step_count}/{self.step_max}] -- OK: composite workspace role:")
            
        except Exception as e:
            globals.logger.info(f"[{self.step_count}/{self.step_max}] -- NG: composite workspace role:")
            globals.logger.error(f"exception:{e.args}")
            message_id = "500-90030"
            message = multi_lang.get_text(message_id,
                                            "サービスアカウントユーザーロールへのロール設定に失敗しました(organization id:{0} role name:{1})",
                                            organization_id,
                                            builtin_role)
            raise common.InternalErrorException(message_id=message_id, message=message)
        
        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Succeed func:{inspect.currentframe().f_code.co_name}")
        
        return