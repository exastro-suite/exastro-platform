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
from jobs.BaseJobExecutor import BaseJobExecutor

import ulid
from contextlib import closing
import traceback
import datetime
import time
import json
import random

from common_library.common.db import DBconnector
from common_library.common import const, common
from common_library.common import validation
from common_library.common import multi_lang
from common_library.common import user_import_file_common
from common_library.common import api_keycloak_users, api_keycloak_roles
from common_library.common import bl_plan_service
from common_library.common import resources

import globals
import job_manager_config
import job_manager_const
from jobs import jobs_common
from libs.exceptions import JobTimeoutException
from common_library.common.common import FileFormatErrorException
from libs import queries_user_import


class UserImportJobExecutor(BaseJobExecutor):
    """ユーザ情報インポート / User Import Job

    Args:
        BaseJobExecutor (_type_): _description_
    """
    def __init__(self, queue: dict):
        """constructor

        Args:
            queue (dict): queue
        """
        super().__init__(queue)
        self.organization_id = self.queue['ORGANIZATION_ID']
        self.job_id = self.queue['PROCESS_EXEC_ID']

        # organization_private情報 / organization_private information
        self.organization_private = None
        # keycloak token発行用インスタンス / keycloak token issuing instance
        self.organization_sa_token = None

        # 言語 / Language
        self.language = None

        # Excel制御用class instance / Excel control class instance
        self.imp_wb = None
        self.err_wb = None

        # 処理結果ファイルID / Processing result file ID
        self.result_id = ulid.new().str
        # 処理件数 / Number of cases processed
        self.count_register = None
        self.count_update = None
        self.count_delete = None
        self.success_register = 0
        self.success_update = 0
        self.success_delete = 0
        self.failed_register = 0
        self.failed_update = 0
        self.failed_delete = 0

    def execute(self):
        """ユーザ情報インポート実行 / User Import

        Raises:
            Exception: _description_
            Exception: _description_
        """
        with closing(DBconnector().connect_orgdb(self.organization_id)) as conn:
            try:
                # 実行中にステータス更新 / Update status during execution
                self.__update_t_jobs_user(conn, job_status=const.JOB_USER_EXEC, message=None)
                conn.commit()

                # Oranization private情報の取得 / Obtaining Oranization private information
                self.organization_private = DBconnector().get_organization_private(self.organization_id)
                # Token発行用classのインスタンス化 / Instantiation of Token issuing class
                self.organization_sa_token = jobs_common.organization_sa_token(self.organization_id, self.organization_private)

                # SELECT T_JOBS_USER
                with conn.cursor() as cursor:
                    cursor.execute(queries_user_import.SQL_QUERY_JOBS_USER, {"job_id": self.job_id})
                    t_jobs_user = cursor.fetchone()
                    if t_jobs_user is None:
                        message_id = "500-62001"
                        message = multi_lang.get_text(
                            message_id,
                            "処理対象のレコードの取得に失敗しました(テーブル:{0})",
                            "T_JOBS_USER"
                        )
                        raise common.InternalErrorException(message_id=message_id, message=message)

                # SELECT T_JOBS_USER_FILE
                with conn.cursor() as cursor:
                    cursor.execute(queries_user_import.SQL_QUERY_JOBS_USER_FILE, {"job_id": self.job_id})
                    t_jobs_user_file = cursor.fetchone()
                    if t_jobs_user_file is None:
                        message_id = "500-62001"
                        message = multi_lang.get_text(
                            message_id,
                            "処理対象のレコードの取得に失敗しました(テーブル:{0})",
                            "T_JOBS_USER_FILE"
                        )
                        raise common.InternalErrorException(message_id=message_id, message=message)

                # 言語情報 / Language information
                self.language = t_jobs_user["LANGUAGE"]

                # jobのタイプ
                job_type = t_jobs_user["JOB_TYPE"]

                # 指定可能なロールの一覧を取得する / Get a list of available roles
                specifiable_roles = self.__get_specifiable_roles()
                globals.logger.debug(f'Role lists : {[key for key in specifiable_roles.keys()]}')

                # リソースプランの最大ユーザー数を取得 / Get the maximum number of users for a resource plan
                limits = bl_plan_service.organization_limits_get(self.organization_id, const.RESOURCE_COUNT_USERS)

                # 結果雛形ファイルのOpen / Open result template file
                globals.logger.debug('Get excel template')
                self.err_wb = user_import_file_common.UserResultWorkbook(lang=self.language, error_column=True)

                # import Excelファイルイメージ取り込み / import Excel file image import
                globals.logger.debug('Load imports user excel')
                self.imp_wb = user_import_file_common.UserImportWorkbook(
                    self.language, t_jobs_user_file["FILE_DATA"],
                    job_manager_config.JOBS[const.PROCESS_KIND_USER_IMPORT]["extra_config"]["max_number_of_cols_allowd"],
                    job_manager_config.JOBS[const.PROCESS_KIND_USER_IMPORT]["extra_config"]["max_number_of_rows_allowd"],
                    job_manager_config.JOBS[const.PROCESS_KIND_USER_IMPORT]["extra_config"]["xl_buffered_rows"],
                )

                # ユーザー名の重複チェック / Check for duplicate usernames
                globals.logger.debug('Check for duplicate usernames')
                duplicate_user_list = self.imp_wb.check_duplicate_user_name()
                if 0 < len(duplicate_user_list):
                    globals.logger.debug("Failed users bulk import or delete. Duplicate Username.")
                    message_id = "409-62001"
                    message = multi_lang.get_text_spec(
                        self.language,
                        message_id,
                        "対象のユーザー名が重複しています(重複ユーザー名:[{0}])",
                        ", ".join(duplicate_user_list)
                    )
                    raise common.BadRequestException(message_id=message_id, message=message)

                # 全明細の件数をカウントする / Count the number of all items
                globals.logger.debug('Count of records to process')
                self.count_register, self.count_update, self.count_delete = self.imp_wb.count_proc_type()
                globals.logger.info(f'Count of records to process [count_register:{self.count_register}] [count_update:{self.count_update}] [count_delete:{self.count_delete}]')

                # ユーザー一括削除の場合「登録」「更新」がある場合はエラー判定
                if (job_type == const.JOB_TYPE_USER_BULK_DELETE) and (0 < self.count_register or 0 < self.count_update):
                    globals.logger.debug("Failed users bulk delete. When users bulk delete, cannot specify any type other than Delete.")
                    message_id = "409-62002"
                    message = multi_lang.get_text_spec(
                        self.language,
                        message_id,
                        "ユーザー一括削除の場合、実行処理種別に「削除」以外は指定できません。")
                    raise common.BadRequestException(message_id=message_id, message=message)

                # ユーザー一括インポートの場合「削除」がある場合はエラー判定
                if (job_type == const.JOB_TYPE_USER_BULK_IMPORT) and (0 < self.count_delete):
                    globals.logger.debug("Failed users bulk import. When users bulk import, cannot specify any type other than Registration or Update.")
                    message_id = "409-62003"
                    message = multi_lang.get_text_spec(
                        self.language,
                        message_id,
                        "ユーザー一括インポートの場合、実行処理種別に「登録」「更新」以外は指定できません。")
                    raise common.BadRequestException(message_id=message_id, message=message)

                # 全明細の件数を更新 / Update the number of all items
                self.__update_t_jobs_user(conn, job_status=const.JOB_USER_EXEC, message=None)
                conn.commit()

                # 全明細を処理する / Process all items
                while True:
                    cell_values = self.imp_wb.read_row()
                    if cell_values is None:
                        # 全明細が処理終了したので終了する / Close as all details have been processed.
                        break

                    try:
                        # 実行処理種別「登録」
                        if cell_values["PROC_TYPE"] in user_import_file_common.PROC_TYPE_ADD:
                            # ユーザ数がLimit値になっていないかチェックする / Check if the number of users is at the limit value
                            self.__check_users_limit(limits)

                            # validationチェック / validation check
                            validate = self.__validate_row(cell_values, specifiable_roles)
                            if validate.ok:
                                # ユーザーの追加 / Add user
                                user_id = self.__add_user(cell_values)
                                # ロールの付与 / Grant role
                                self.__add_roles(cell_values, user_id, specifiable_roles)
                                self.success_register += 1
                            else:
                                self.failed_register += 1
                                # 処理結果ファイルへ情報出力 / Output information to processing result file
                                cell_values["ERROR_TEXT"] = multi_lang.get_text_spec(self.language, validate.message_id, validate.base_message, *validate.args)
                                self.err_wb.write_row(cell_values)
                                globals.logger.debug(f'Failed User Registration(validate error) : [ROW:{self.imp_wb.get_row_idx()}] [USERNAME:{cell_values["USERNAME"]}] [ERROR_TEXT:{cell_values["ERROR_TEXT"]}]')

                        # 実行処理種別「更新」
                        if cell_values["PROC_TYPE"] in user_import_file_common.PROC_TYPE_UPD:
                            # validationチェック / validation check
                            validate = self.__validate_row(cell_values, specifiable_roles)
                            if validate.ok:
                                # ユーザーIDを取得
                                user_id = self.__get_user_id(cell_values["USERNAME"])

                                # 所属しているロールを取得
                                current_role_list = self.__get_role_list(user_id)

                                # ユーザーの更新 / Update user
                                self.__update_user(cell_values, user_id, current_role_list)

                                # ロールの更新 / Update role
                                self.__update_roles(cell_values, user_id, current_role_list, specifiable_roles)

                                self.success_update += 1
                            else:
                                self.failed_update += 1
                                # 処理結果ファイルへ情報出力 / Output information to processing result file
                                cell_values["ERROR_TEXT"] = multi_lang.get_text_spec(self.language, validate.message_id, validate.base_message, *validate.args)
                                self.err_wb.write_row(cell_values)
                                globals.logger.debug(f'Failed User Update(validate error) : [ROW:{self.imp_wb.get_row_idx()}] [USERNAME:{cell_values["USERNAME"]}] [ERROR_TEXT:{cell_values["ERROR_TEXT"]}]')

                        # 実行処理種別「削除」
                        if cell_values["PROC_TYPE"] in user_import_file_common.PROC_TYPE_DEL:
                            # validationチェック / validation check
                            validate = self.__validate_row(cell_values, specifiable_roles)
                            if validate.ok:
                                # ユーザーIDを取得
                                user_name = cell_values["USERNAME"]
                                user_id = self.__get_user_id(cell_values["USERNAME"])

                                # 所属しているロールを取得
                                current_role_list = self.__get_role_list(user_id)

                                # ユーザーの削除 / Delete user
                                self.__delete_user(user_id, user_name, current_role_list)
                                self.success_delete += 1
                            else:
                                self.failed_delete += 1
                                # 処理結果ファイルへ情報出力 / Output information to processing result file
                                cell_values["ERROR_TEXT"] = multi_lang.get_text_spec(self.language, validate.message_id, validate.base_message, *validate.args)
                                self.err_wb.write_row(cell_values)
                                globals.logger.debug(f'Failed User Delete(validate error) : [ROW:{self.imp_wb.get_row_idx()}] [USERNAME:{cell_values["USERNAME"]}] [ERROR_TEXT:{cell_values["ERROR_TEXT"]}]')

                    except JobTimeoutException as ex:
                        # Timeout発生時はThrowして処理を中断する
                        if cell_values["PROC_TYPE"] in user_import_file_common.PROC_TYPE_ADD:
                            self.failed_register += 1

                        if cell_values["PROC_TYPE"] in user_import_file_common.PROC_TYPE_UPD:
                            self.failed_update += 1

                        if cell_values["PROC_TYPE"] in user_import_file_common.PROC_TYPE_DEL:
                            self.failed_delete += 1

                        # 処理結果ファイルへ情報出力 / Output information to processing result file
                        cell_values["ERROR_TEXT"] = multi_lang.get_text_spec(self.language, '401-00021', 'タイムアウト発生のため、この行を処理中に中断しました。')
                        self.err_wb.write_row(cell_values)
                        raise ex

                    except (common.BadRequestException, common.InternalErrorException) as ex:
                        if cell_values["PROC_TYPE"] in user_import_file_common.PROC_TYPE_ADD:
                            # keycloakへの登録失敗
                            self.failed_register += 1

                        if cell_values["PROC_TYPE"] in user_import_file_common.PROC_TYPE_UPD:
                            # 更新失敗
                            self.failed_update += 1

                        if cell_values["PROC_TYPE"] in user_import_file_common.PROC_TYPE_DEL:
                            # 削除の失敗
                            self.failed_delete += 1

                        # 処理結果ファイルへ情報出力 / Output information to processing result file
                        cell_values["ERROR_TEXT"] = ex.message
                        self.err_wb.write_row(cell_values)
                        globals.logger.debug(f'Failed User Registration : [ROW:{self.imp_wb.get_row_idx()}] [USERNAME:{cell_values["USERNAME"]}] [ERROR_TEXT:{cell_values["ERROR_TEXT"]}]')

                    except Exception as ex:
                        # その他何らかの失敗
                        if cell_values["PROC_TYPE"] in user_import_file_common.PROC_TYPE_ADD:
                            self.failed_register += 1

                        if cell_values["PROC_TYPE"] in user_import_file_common.PROC_TYPE_UPD:
                            self.failed_update += 1

                        if cell_values["PROC_TYPE"] in user_import_file_common.PROC_TYPE_DEL:
                            self.failed_delete += 1

                        # 処理結果ファイルへ情報出力 / Output information to processing result file
                        cell_values["ERROR_TEXT"] = multi_lang.get_text_spec(self.language, '401-00020', 'エラーのため処理できませんでした。({0})', ex)
                        self.err_wb.write_row(cell_values)
                        globals.logger.debug(f'Failed User Registration : [ROW:{self.imp_wb.get_row_idx()}] [USERNAME:{cell_values["USERNAME"]}] [ERROR_TEXT:{cell_values["ERROR_TEXT"]}]')

                    if (self.imp_wb.get_row_idx() - user_import_file_common.EXCEL_HEADER_ROWS) % job_manager_config.JOBS[const.PROCESS_KIND_USER_IMPORT]["extra_config"]["status_update_interval"] == 0:
                        # 処理件数を更新
                        self.__update_t_jobs_user(conn, job_status=const.JOB_USER_EXEC, message=None)
                        conn.commit()

                    # 1JOBでリソースを占有しないようにsleepする / Sleep so that 1JOB does not occupy resources
                    time.sleep(job_manager_config.JOBS[const.PROCESS_KIND_USER_IMPORT]["extra_config"]["user_import_interval_millisecond"] / 1000)

                # 最終的なステータスに更新する / Update to final status
                msg = None
                if (self.failed_register + self.failed_update+ self.failed_delete  > 0):
                    msg = multi_lang.get_text('000-62028', "{0}件エラーがありました。 処理結果ファイルを確認してください。", self.failed_register + self.failed_update+ self.failed_delete)
                self.__update_t_jobs_user(conn, job_status=const.JOB_USER_COMP, message=msg)
                conn.commit()

            except FileFormatErrorException as ex:
                # ファイル形式のエラー / File format error
                self.__update_t_jobs_user(conn, job_status=const.JOB_USER_FAILED, message=ex.message)
                raise ex

            except JobTimeoutException as ex:
                # タイムアウトエラー / timeout error
                if self.imp_wb is not None:
                    self.__update_t_jobs_user(conn, job_status=const.JOB_USER_FAILED, message=multi_lang.get_text_spec(self.language, '401-00011', '{0}行目の処理中にタイムアウトしました。', self.imp_wb.get_row_idx()))
                else:
                    self.__update_t_jobs_user(conn, job_status=const.JOB_USER_FAILED, message=multi_lang.get_text_spec(self.language, '401-00012', '初期処理中にタイムアウトしました。'))
                raise ex

            except (common.BadRequestException, common.InternalErrorException) as ex:
                self.__update_t_jobs_user(conn, job_status=const.JOB_USER_FAILED, message=ex.message)
                raise ex

            except Exception as ex:
                globals.logger.error(f'{ex}\n-- stack trace --\n{traceback.format_exc()}')
                if self.imp_wb is not None:
                    self.__update_t_jobs_user(conn, job_status=const.JOB_USER_FAILED, message=multi_lang.get_text_spec(self.language, '401-00013', '{0}行目の処理中に想定外のエラーが発生し、処理を中断しました。({1})', self.imp_wb.get_row_idx()))
                else:
                    self.__update_t_jobs_user(conn, job_status=const.JOB_USER_FAILED, message=multi_lang.get_text_spec(self.language, '401-00014', '初期処理中に想定外のエラーが発生し、処理を中断しました。({0})'))
                raise ex

            finally:
                try:
                    globals.logger.info(f'Count of records processed [success_register:{self.success_register}] [success_update:{self.success_update}] [success_delete:{self.success_delete}] [failed_register:{self.failed_register}] [failed_update:{self.failed_update}] [failed_delete:{self.failed_delete}]')  # noqa: #E501

                    if self.failed_register > 0 or self.failed_update > 0 or self.failed_delete > 0:
                        # 結果ファイル保存
                        excel_bytes_image = self.err_wb.get_workbook_bytes_image()
                        with conn.cursor() as cursor:
                            cursor.execute(queries_user_import.SQL_INSERT_JOBS_USER_RESULT, {"result_id": self.result_id, "job_id": self.job_id, "file_data": excel_bytes_image})
                        del excel_bytes_image

                except Exception as ex:
                    globals.logger.debug(f'{ex}\n-- stack trace --\n{traceback.format_exc()}')

                conn.commit()

        return True

    def __get_specifiable_roles(self):
        """指定可能なロールの取得 / Get specifiable roles

        Returns:
            dict: ロール情報 / Role information
        """
        first = 0
        max = 50
        ret_roles = {}

        while True:
            # ロールを取得 / get role
            response = api_keycloak_roles.clients_roles_get(
                realm_name=self.organization_id, client_id=self.organization_private.user_token_client_id, token=self.organization_sa_token.get(), briefRepresentation=False,
                first=first, max=max
            )
            if response.status_code != 200:
                # keycloakから想定外の応答 / Unexpected response from keycloak
                message_id = "500-00010"
                message = multi_lang.get_text(
                    message_id,
                    "ロールの取得に失敗しました(対象ID:{0} client:{1})",
                    self.organization_id,
                    self.organization_private.user_token_client_clientid
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

            # ロールの情報を格納 / Stores role information
            response_json = json.loads(response.text)
            ret_roles = {**ret_roles, **{role["name"]: role for role in response_json}}

            if len(response_json) < max:
                # max件数まで取れなかった時は全て取得し終えたので終了する
                # If you cannot get the maximum number of items, exit because all have been obtained.
                break
            else:
                # max件数取れた時は次の明細を位置づける
                # When the max number of items is obtained, position the next item.
                first += max

        return ret_roles

    def __check_users_limit(self, limits):
        """ユーザーリミット値のチェック / Check user limit value

        Args:
            limits (dict): オーガナイゼーションのリミット情報 / Organization limit information

        Raises:
            common.BadRequestException: リミット値になっている場合 / If the limit value is reached
        """
        if const.RESOURCE_COUNT_USERS not in limits:
            # リミット値が無い時は何もしない / Do nothing when there is no limit value
            return

        # 現状のリソース数を取得してリミット値と比較し、リミット値に到達している場合は例外を発行する
        # Obtain the current number of resources, compare it with the limit value, and issue an exception if the limit value has been reached.
        resources_counter = resources.counter(self.organization_id)
        if resources_counter(const.RESOURCE_COUNT_USERS) >= limits[const.RESOURCE_COUNT_USERS]:
            message_id = "400-00022"
            message = multi_lang.get_text_spec(
                self.language,
                message_id,
                "{0}の上限数({1})を超えるため、新しい{0}は作成できません。",
                multi_lang.get_text_spec(self.language, '000-00135', "ユーザー"),
                limits[const.RESOURCE_COUNT_USERS]
            )
            raise common.BadRequestException(message_id=message_id, message=message)

    def __validate_row(self, cell_values, specifiable_roles):
        """validate row

        Args:
            cell_values (dict): cellの値 / cell value
            specifiable_roles (dict): 指定可能なロール / Roles that can be specified

        Returns:
            validation.result: vaidation result
        """
        # validation check
        validate = validation.validate_user_name(cell_values["USERNAME"], lang=self.language)
        if not validate.ok:
            return validate

        # USERNAME以外のチェックは削除以外の場合のみ
        if cell_values["PROC_TYPE"] not in user_import_file_common.PROC_TYPE_DEL:
            validate = validation.validate_user_email(cell_values["EMAIL"], lang=self.language)
            if not validate.ok:
                return validate
            validate = validation.validate_user_firstName(cell_values["FIRSTNAME"], lang=self.language)
            if not validate.ok:
                return validate
            validate = validation.validate_user_lastName(cell_values["LASTNAME"], lang=self.language)
            if not validate.ok:
                return validate

            # 登録時のみPASSWORDを必須とする / Require PASSWORD only during registration
            if cell_values["PROC_TYPE"] in user_import_file_common.PROC_TYPE_ADD:
                if cell_values["PASSWORD"] is None or cell_values["PASSWORD"] == "":
                    return validation.result(
                        False, 400, '400-00011', '必須項目が不足しています。({0})',
                        user_import_file_common.COLUMN_IDS["PASSWORD"]["text"]
                    )

            validate = validation.validate_user_affiliation(cell_values["AFFILIATION"] if cell_values["AFFILIATION"] is not None else "", lang=self.language)
            if not validate.ok:
                return validate
            validate = validation.validate_user_description(cell_values["DESCRIPTION"] if cell_values["DESCRIPTION"] is not None else "", lang=self.language)
            if not validate.ok:
                return validate
            validate = validation.validate_user_enabled(cell_values["ENABLED"], lang=self.language)
            if not validate.ok:
                return validate

            # ロールのチェック（カンマ毎に分割して指定可能なロールに含まれているかチェック）
            # Checking roles (divide by comma and check if it is included in the specifiable roles)
            if cell_values["ROLES"]:
                for role in cell_values["ROLES"].split(','):
                    if role != "" and role not in specifiable_roles:
                        return validation.result(
                            False, 400, '400-62001', '指定されたロール({0})は存在しません',
                            role
                        )

        return validate

    def __add_user(self, cell_values):
        """ユーザの追加 / add user

        Args:
            cell_values (dict): cellの値 / cell value

        Returns:
            str: user id
        """
        # keycloakに渡すBODYの生成 / Generate BODY to pass to keycloak
        user_json = {
            "username": cell_values["USERNAME"],
            "email": cell_values["EMAIL"],
            "firstName": cell_values["FIRSTNAME"],
            "lastName": cell_values["LASTNAME"],
            "credentials": [
                {
                    "type": "password",
                    "value": cell_values["PASSWORD"],
                    "temporary": True,
                }
            ],
            "attributes":
            {
                "affiliation": [cell_values["AFFILIATION"]],
                "description": [cell_values["DESCRIPTION"]],
            },
            "enabled": cell_values["ENABLED"]
        }

        # ユーザーの追加 / add user
        u_create = api_keycloak_users.user_create(
            realm_name=self.organization_id, user_json=user_json, token=self.organization_sa_token.get()
        )
        if u_create.status_code == 409:
            globals.logger.debug(f"response:{u_create.text}")
            message_id = "409-25001"
            message = multi_lang.get_text_spec(
                self.language,
                message_id,
                "指定されたユーザーはすでに存在しているため作成できません。[{0}]",
                json.loads(u_create.text)["errorMessage"])

            raise common.BadRequestException(message_id=message_id, message=message)
        elif u_create.status_code == 400:
            globals.logger.debug(f"response:{u_create.text}")
            message_id = "400-25001"
            message = multi_lang.get_text_spec(
                self.language,
                message_id,
                "ユーザー作成に失敗しました({0})",
                common.get_response_error_message(u_create.text))
            raise common.BadRequestException(message_id=message_id, message=message)

        elif u_create.status_code != 201:
            globals.logger.debug(f"response:{u_create.text}")
            message_id = "500-25002"
            message = multi_lang.get_text_spec(
                self.language,
                message_id,
                "ユーザー作成に失敗しました(対象ユーザー:{0})",
                cell_values["USERNAME"])

            raise common.InternalErrorException(message_id=message_id, message=message)

        # 作成したユーザーを取得 / Get created user
        u_get = api_keycloak_users.user_get(realm_name=self.organization_id, user_name=cell_values["USERNAME"], token=self.organization_sa_token.get())
        if u_get.status_code != 200:
            message_id = "500-25002"
            message = multi_lang.get_text_spec(
                self.language,
                message_id,
                "ユーザー作成に失敗しました({0})",
                "Failed Get Created User/" + common.get_response_error_message(u_get.text))
            raise common.InternalErrorException(message_id=message_id, message=message)

        u_get_json = json.loads(u_get.text)
        if len(u_get_json) == 0:
            message_id = "500-25002"
            message = multi_lang.get_text_spec(
                self.language,
                message_id,
                "ユーザー作成に失敗しました({0})",
                "Not Found Created User")
            raise common.InternalErrorException(message_id=message_id, message=message)

        user_id = u_get_json[0]["id"]
        globals.logger.info(f'User Created [OG:{self.organization_id}] [UID:{user_id}] [USERNAME:{cell_values["USERNAME"]}]')
        return user_id

    def __update_user(self, cell_values, user_id, current_role_list):
        """ユーザの更新 / update user

        Args:
            cell_values (dict): cellの値 / cell value
            user_id(str): user id
            current_role_list(list): current role list
        """
        # オーガナイゼーション管理者ロールに所属し、ENABLEDをFALSEに設定する場合はエラー判定
        if const.ORG_ROLE_ORG_MANAGER in current_role_list and cell_values["ENABLED"] is False:
            globals.logger.debug("Users with the Organization manager role cannot be disbled")
            message_id = "400-62004"
            message = multi_lang.get_text_spec(
                self.language,
                message_id,
                "オーガナイゼーション管理者は無効にできません")
            raise common.BadRequestException(message_id=message_id, message=message)

        # keycloakに渡すBODYの生成 / Generate BODY to pass to keycloak
        user_json = {
            "username": cell_values["USERNAME"],
            "email": cell_values["EMAIL"],
            "firstName": cell_values["FIRSTNAME"],
            "lastName": cell_values["LASTNAME"],
            "attributes":
            {
                "affiliation": [cell_values["AFFILIATION"]],
                "description": [cell_values["DESCRIPTION"]],
            },
            "enabled": cell_values["ENABLED"]
        }

        # ユーザーの更新 / update user
        u_update = api_keycloak_users.user_update(
            realm_name=self.organization_id, user_id=user_id, user_json=user_json, token=self.organization_sa_token.get()
        )

        if u_update.status_code == 400:
            globals.logger.debug(f"response:{u_update.text}")
            message_id = "400-25004"
            message = multi_lang.get_text(
                message_id,
                "ユーザー更新に失敗しました({0})",
                common.get_response_error_message(u_update.text))
            raise common.BadRequestException(message_id=message_id, message=message)

        elif u_update.status_code not in [200, 204]:
            globals.logger.debug(f"response:{u_update.text}")
            message_id = "500-25004"
            message = multi_lang.get_text(
                message_id,
                "ユーザー更新に失敗しました(対象ユーザーID:{0})[{1}]",
                user_id,
                json.loads(u_update.text)["errorMessage"])
            raise common.InternalErrorException(message_id=message_id, message=message)

        globals.logger.info(f'User Updated [OG:{self.organization_id}] [UID:{user_id}] [USERNAME:{cell_values["USERNAME"]}]')

    def __delete_user(self, user_id, user_name, current_role_list):
        """ユーザの削除 / delete user

        Args:
            user_id(str): user id
            user_name(str): user name
        """
        # オーガナイゼーション管理者ロールに所属している場合は削除不可
        if const.ORG_ROLE_ORG_MANAGER in current_role_list:
            globals.logger.debug("Users with the Organization manager role cannot be deleted")
            message_id = "400-62003"
            message = multi_lang.get_text_spec(
                self.language,
                message_id,
                "オーガナイゼーション管理者は削除できません")
            raise common.BadRequestException(message_id=message_id, message=message)

        # ユーザーの削除 / add user
        u_delete = api_keycloak_users.user_delete(
            realm_name=self.organization_id, user_id=user_id, token=self.organization_sa_token.get()
        )

        if u_delete.status_code != 204:
            globals.logger.debug(f"response:{u_delete.text}")
            message_id = "500-62004"
            message = multi_lang.get_text_spec(
                self.language,
                message_id,
                "ユーザー削除に失敗しました(対象ユーザーID:{0})[{1}]",
                user_id,
                json.loads(u_delete.text)["errorMessage"])
            raise common.InternalErrorException(message_id=message_id, message=message)

        globals.logger.info(f'User Deleted [OG:{self.organization_id}] [UID:{user_id}] [USERNAME:{user_name}]')

    def __add_roles(self, cell_values, user_id, specifiable_roles):
        """ロールの付与 / Grant role

        Args:
            cell_values (dict): cellの値 / cell value
            user_id (str): user id
            specifiable_roles (dict): ロール情報 / Role information
        """
        if not cell_values["ROLES"]:
            return

        # keycloakに渡す付与するロールの一覧を生成 / Generate a list of roles to grant to pass to keycloak
        client_roles = [specifiable_roles[role] for role in cell_values["ROLES"].split(',') if role != ""]

        # ロールの付与 / Grant role
        response = api_keycloak_roles.user_client_role_mapping_create(
            realm_name=self.organization_id, user_id=user_id, client_id=self.organization_private.user_token_client_id,
            client_roles=client_roles, token=self.organization_sa_token.get()
        )

        if response.status_code not in [200, 204]:
            message_id = "500-26002"
            message = multi_lang.get_text(
                message_id,
                "ロール設定に失敗しました(対象ID:{0} client:{1} username:{2})",
                self.organization_id,
                self.organization_private.user_token_client_clientid,
                cell_values["USERNAME"]
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

    def __update_roles(self, cell_values, user_id, current_role_list, specifiable_roles):
        """ロールの更新 / Update role

        Args:
            cell_values (dict): cellの値 / cell value
            user_id (str): user id
            specifiable_roles (dict): ロール情報 / Role information
        """
        # 指定のロールをリスト化
        if cell_values["ROLES"]:
            select_role_list = cell_values["ROLES"].split(',')
        else:
            select_role_list = []

        # 新たに付与するロールと削除するロールの一覧を生成 / Generate a list of roles to grant or remove to pass to keycloak
        # select_role_listにあり、current_role_listにないロールを追加対象とする
        add_role_list = list(set(select_role_list) - set(current_role_list))
        # select_role_listになく、current_role_listにあるロールを削除対象とする
        remove_role_list = list(set(current_role_list) - set(select_role_list))

        # オーガナイゼーション管理者ロールが削除するロールに含まれている場合はエラー判定
        if const.ORG_ROLE_ORG_MANAGER in remove_role_list:
            globals.logger.debug("The Organization manager role cannot be deleted")
            message_id = "409-62004"
            message = multi_lang.get_text_spec(
                self.language,
                message_id,
                "ユーザー一括更新ではオーガナイゼーション管理者ロールを解除できません")
            raise common.BadRequestException(message_id=message_id, message=message)

        # ロールの付与 / Grant role
        add_client_roles = [specifiable_roles[role] for role in add_role_list if role != ""]
        response = api_keycloak_roles.user_client_role_mapping_create(
            realm_name=self.organization_id, user_id=user_id, client_id=self.organization_private.user_token_client_id,
            client_roles=add_client_roles, token=self.organization_sa_token.get()
        )

        if response.status_code not in [200, 204]:
            message_id = "500-26002"
            message = multi_lang.get_text(
                message_id,
                "ロール設定に失敗しました(対象ID:{0} client:{1} username:{2})",
                self.organization_id,
                self.organization_private.user_token_client_clientid,
                cell_values["USERNAME"]
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        # ロールの削除 / Remove role
        remove_client_roles = [specifiable_roles[role] for role in remove_role_list if role != ""]
        response = api_keycloak_roles.user_client_role_mapping_delete(
            realm_name=self.organization_id, user_id=user_id, client_id=self.organization_private.user_token_client_id,
            client_roles=remove_client_roles, token=self.organization_sa_token.get(),
        )

        if response.status_code not in [200, 204]:
            message_id = "500-26003"
            message = multi_lang.get_text(
                message_id,
                "ロールとユーザーの紐づけ削除に失敗しました(対象ID:{0} username:{1})",
                self.organization_id,
                cell_values["USERNAME"]
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

    def __get_user_id(self, user_name):
        """usernameからuseridを取得 / Get userid from username

        Args:
            user_id (str): user id

        Returns:
            current_role_list(list)
        """
        # 対象のユーザーを取得 / Get target user
        u_get = api_keycloak_users.user_get(realm_name=self.organization_id, user_name=user_name, token=self.organization_sa_token.get())
        if u_get.status_code != 200:
            message_id = "500-62003"
            message = multi_lang.get_text_spec(
                self.language,
                message_id,
                "ユーザーの取得に失敗しました(対象ユーザー:{0})",
                user_name)
            raise common.InternalErrorException(message_id=message_id, message=message)

        u_get_json = json.loads(u_get.text)
        if len(u_get_json) == 0:
            message_id = "400-62002"
            message = multi_lang.get_text_spec(
                self.language,
                message_id,
                "指定されたユーザーが存在しません")
            raise common.InternalErrorException(message_id=message_id, message=message)

        user_id = u_get_json[0]["id"]

        return user_id

    def __get_role_list(self, user_id):
        """useridから所属しているロール一覧を取得 / Get a list of roles that a user belongs to from the userid

        Args:
            user_id (str): user id

        Returns:
            current_role_list(list)
        """
        # 現在所属しているロールを取得
        res = api_keycloak_roles.user_role_get(
            realm_name=self.organization_id,
            user_id=user_id,
            client_id=self.organization_private.user_token_client_id,
            token=self.organization_sa_token.get()
        )

        if res.status_code != 200:
            globals.logger.debug(f"response:{res.text}")
            # keycloakから想定外の応答 / Unexpected response from keycloak
            message_id = "500-00010"
            message = multi_lang.get_text_spec(
                self.language,
                message_id,
                "ロールの取得に失敗しました(対象ID:{0} client:{1})",
                self.organization_id,
                self.organization_private.user_token_client_id
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        # 所属しているロール名をリスト化
        current_role_list = [role.get("name") for role in json.loads(res.text)]

        return current_role_list

    def __update_t_jobs_user(self, conn, job_status, message):
        """JOBの状態、件数の更新 / Update of JOB status and number of jobs

        Args:
            conn (_type_): organization DB connection
            job_status (str): job_status
            message (str): message
        """
        with conn.cursor() as cursor:
            cursor.execute(
                queries_user_import.SQL_UPDATE_JOBS_USER,
                {
                    "job_id": self.job_id,
                    "job_status": job_status,
                    "count_register": self.count_register,
                    "count_update": self.count_update,
                    "count_delete": self.count_delete,
                    "success_register": self.success_register,
                    "success_update": self.success_update,
                    "success_delete": self.success_delete,
                    "failed_register": self.failed_register,
                    "failed_update": self.failed_update,
                    "failed_delete": self.failed_delete,
                    "message": message,
                    "last_update_user": job_manager_const.SYSTEM_USER_ID,
                    "job_status_comp": const.JOB_USER_COMP,
                    "job_status_failed": const.JOB_USER_FAILED,
                }
            )

    def cancel(self):
        """job cancel (timeout)
        """
        try:
            globals.logger.info(f'Cancel JOB [JOB_ID:{self.job_id}]')
            with closing(DBconnector().connect_orgdb(self.organization_id)) as conn:
                if self.imp_wb is not None:
                    self.__update_t_jobs_user(conn, job_status=const.JOB_USER_FAILED, message=multi_lang.get_text_spec(self.language, '401-00011', '{0}行目の処理中にタイムアウトしました。', self.imp_wb.get_row_idx()))
                else:
                    self.__update_t_jobs_user(conn, job_status=const.JOB_USER_FAILED, message=multi_lang.get_text_spec(self.language, '401-00012', '初期処理中にタイムアウトしました。'))

            return True
        except Exception as err:
            globals.logger.error(f'{err}\n-- stack trace --\n{traceback.format_exc()}')
            return False

    @classmethod
    def force_update_status(cls):
        """強制ステータス更新 / Force status update
        """
        try:
            with closing(DBconnector().connect_platformdb()) as conn_pf:

                # 全オーガナイゼーションを処理対象とする / Target all organizations
                organizations = jobs_common.get_organizations()

                # 実行順序を不定にする / Make the execution order undefined
                random.shuffle(organizations)

                for organization in organizations:
                    # 連続でconnectするとpymysql.err.OperationalError: (1040, 'Too many connections')が発生することがあるので、sleepする
                    # If you connect continuously, pymysql.err.OperationalError: (1040, 'Too many connections') may occur, so sleep
                    time.sleep(0.1)
                    globals.logger.debug(f"Start force update status : ORGANIZATION_ID:[{organization['ORGANIZATION_ID']}]")

                    try:
                        with closing(DBconnector().connect_orgdb(organization['ORGANIZATION_ID'])) as conn, conn.cursor() as cursor:

                            last_update_timestamp = (datetime.datetime.now() - datetime.timedelta(
                                seconds=job_manager_config.JOBS[job_manager_const.PROCESS_KIND_FORCE_UPDATE_STATUS]['extra_config']['prograss_seconds']))

                            # 未完了状態で一定時間経過したものを対象とする / Targets items that have been incomplete for a certain period of time
                            cursor.execute(
                                queries_user_import.SQL_QUERY_JOB_USER_TOO_OLD,
                                {"job_status_comp": const.JOB_USER_COMP, "job_status_failed": const.JOB_USER_FAILED, "last_update_timestamp": last_update_timestamp})

                            rows = cursor.fetchall()
                            for row in rows:
                                # queueに情報が残ってないか確認する / Check if there is any information left in the queue
                                if not jobs_common.exists_queue(conn_pf, row['JOB_ID']):
                                    # queueに情報が残ってない場合、FAILD状態に更新する
                                    # If there is no information left in the queue, update to FAILD status
                                    conn.begin()
                                    try:
                                        message = multi_lang.get_text_spec(row["LANGUAGE"], "500-62002", "処理が正しく起動されず終了しました。")
                                        cursor.execute(
                                            queries_user_import.SQL_UPDATE_JOBS_USER_FORCE_FAILD,
                                            {"job_id": row["JOB_ID"], "job_status": const.JOB_USER_FAILED, "message": message, "last_update_user": job_manager_const.SYSTEM_USER_ID}
                                        )
                                        conn.commit()
                                        globals.logger.info(f"Set failed job_id:{row['JOB_ID']}")

                                    except JobTimeoutException as err:
                                        conn.rollback()
                                        raise err  # TimeoutException時は即終了する
                                    except Exception as err:
                                        conn.rollback()
                                        globals.logger.error(f'{err}\n-- stack trace --\n{traceback.format_exc()}')

                    except JobTimeoutException as err:
                        raise err  # TimeoutException時は即終了する
                    except Exception as err:
                        globals.logger.error(f'{err}\n-- stack trace --\n{traceback.format_exc()}')

        except Exception as err:
            globals.logger.error(f'{err}\n-- stack trace --\n{traceback.format_exc()}')
            raise err
