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

import connexion
import json
import inspect

from common_library.common import common, api_keycloak_tokens, api_keycloak_roles
from common_library.common import validation, check_authority
from common_library.common.db import DBconnector
from common_library.common import multi_lang
import common_library.common.const as common_const
from common_library.common import bl_plan_service
from common_library.common import resources

import globals

MSG_FUNCTION_ID = "24"


@common.platform_exception_handler
def role_create(body, organization_id):
    """Create creates an role

    Args:
        body (dict | bytes): _description_
        organization_id (str): _description_. Defaults to None.

    Returns:
        InlineResponse2001: _description_
    """

    # 上限チェック
    # upper limit check
    # role limit get
    limits = bl_plan_service.organization_limits_get(organization_id, common_const.RESOURCE_COUNT_ROLES)
    if common_const.RESOURCE_COUNT_ROLES in limits:
        # 上限値がある場合にチェックする
        # Check if there is an upper limit
        rc = resources.counter(organization_id)
        globals.logger.info("### roles count :{}".format(rc(common_const.RESOURCE_COUNT_ROLES)))

        if rc(common_const.RESOURCE_COUNT_ROLES) >= limits[common_const.RESOURCE_COUNT_ROLES]:
            message_id = "400-00022"
            message = multi_lang.get_text(
                message_id,
                "{0}の上限数({1})を超えるため、新しい{0}は作成できません。",
                multi_lang.get_text('000-00126', "ロール"),
                limits[common_const.RESOURCE_COUNT_ROLES]
            )
            raise common.BadRequestException(message_id=message_id, message=message)

    body = connexion.request.get_json()
    if not body:
        message_id = "400-000002"
        message = multi_lang.get_text(
            message_id,
            "リクエストボディのパラメータ({0})が不正です。",
            'Json',
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    role_name = body.get("name")
    role_kind = body.get("kind")
    role_description = body.get("description") if body.get("description") else ""
    workspaces = body.get("workspaces") if body.get("workspaces") else []

    # validation check
    validate = validation.validate_role_name(role_name)
    if not validate.ok:
        return common.response_validation_error(validate)
    validate = validation.validate_role_kind(role_kind)
    if not validate.ok:
        return common.response_validation_error(validate)
    validate = validation.validate_role_description(role_description)
    if not validate.ok:
        return common.response_validation_error(validate)
    validate = validation.validate_role_workspaces(workspaces)
    if not validate.ok:
        return common.response_validation_error(validate)

    workspace_ids = [w.get("id") for w in workspaces]
    cauth = check_authority.CheckAuthority(organization_id, connexion.request.headers)
    is_auth = cauth.is_workspaces_authority(workspace_ids, is_maintenance=True)
    if not is_auth:
        raise common.BadRequestException(
            message_id=f"400-{MSG_FUNCTION_ID}001", message='ワークスペースの指定が不正または操作対象として指定する権限がありません。'
        )

    db = DBconnector()
    private = db.get_organization_private(organization_id)

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token_response = api_keycloak_tokens.service_account_get_token(
        organization_id, private.internal_api_client_clientid, private.internal_api_client_secret,
    )
    if token_response.status_code != 200:
        raise common.AuthException(
            "client_user_get_token error status:{}, response:{}".format(token_response.status_code, token_response.text)
        )

    token = json.loads(token_response.text)["access_token"]

    # ロールに紐づけるwsロールを取得する
    # get ws role
    roles_ws = []
    for role_name_ws in workspace_ids:
        r_get_role_ws = api_keycloak_roles.clients_role_get(
            realm_name=organization_id, client_id=private.internal_api_client_id, role_name=role_name_ws, token=token,
        )
        if r_get_role_ws.status_code != 200:
            globals.logger.debug(f"response:{r_get_role_ws.text}")

            raise common.InternalErrorException(None, f"500-{MSG_FUNCTION_ID}001", "ワークスペースロールの取得に失敗しました(対象ID:{})".format(role_name_ws))

        roles_ws.append(json.loads(r_get_role_ws.text))

    role_options = {
        "description": role_description,
        "attributes": {
            "kind": [role_kind]
        },
    }

    # ロール作成
    # create role
    r_create = api_keycloak_roles.clients_role_create(
        realm_name=organization_id, client_uid=private.user_token_client_id, token=token,
        role_name=role_name, role_options=role_options
    )
    if r_create.status_code == 409:
        globals.logger.debug(f"response:{r_create.text}")

        raise common.OtherException(409, None, f"409-{MSG_FUNCTION_ID}001", "指定されたロールはすでに存在しているため作成できません。")
    elif r_create.status_code not in [201, 409]:
        globals.logger.debug(f"response:{r_create.text}")

        raise common.InternalErrorException(None, f"500-{MSG_FUNCTION_ID}002", "ロール作成に失敗しました(対象ロール:{})".format(role_name))

    # ロールにwsロールを紐づける
    # role composite ws
    r_create_composite = api_keycloak_roles.clients_role_composites_create(
        realm_name=organization_id, client_uid=private.user_token_client_id, role_name=role_name, add_roles=roles_ws, token=token,
    )
    if r_create_composite.status_code != 204:
        globals.logger.debug(f"response:{r_create_composite.text}")

        raise common.InternalErrorException(
            None,
            f"500-{MSG_FUNCTION_ID}003",
            "ロールとワークスペースロールの紐づけに失敗しました(対象ロール:{})".format(role_name)
        )

    return common.response_200_ok(data=None)


@common.platform_exception_handler
def role_delete(organization_id, role_name):  # noqa: E501
    """Delete a role

    Args:
        organization_id (str): organization id
        role_name (str): role name

    Returns:
        response: HTTP Response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # validation check
    validate = validation.validate_role_name(role_name)
    if not validate.ok:
        return common.response_validation_error(validate)

    db = DBconnector()
    private = db.get_organization_private(organization_id)

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token_response = api_keycloak_tokens.service_account_get_token(
        organization_id, private.internal_api_client_clientid, private.internal_api_client_secret,
    )
    if token_response.status_code != 200:
        raise common.AuthException(
            "client_user_get_token error status:{}, response:{}".format(token_response.status_code, token_response.text)
        )

    token = json.loads(token_response.text)["access_token"]

    r_cust_role = api_keycloak_roles.clients_role_get(
        realm_name=organization_id, client_id=private.user_token_client_id, role_name=role_name, token=token,
    )

    if r_cust_role.status_code == 404:
        globals.logger.debug(f"response:{r_cust_role.text}")
        message_id = f"404-{MSG_FUNCTION_ID}001"
        message = multi_lang.get_text(
            message_id,
            "ロールが存在しません(対象ID:{0})",
            role_name,
        )
        raise common.NotFoundException(message_id=message_id, message=message)

    elif r_cust_role.status_code != 200:
        globals.logger.debug(f"response:{r_cust_role.text}")
        message_id = f"500-{MSG_FUNCTION_ID}001"
        raise common.InternalErrorException(
            None, message_id, multi_lang.get_text(message_id, "ワークスペースロールの取得に失敗しました(対象ID:{0})", role_name)
        )

    # Get composite role before change
    # 変更前のcomposite roleを取得する
    r_comp_role = api_keycloak_roles.clients_role_composites_get(
        realm_name=organization_id, client_uid=private.user_token_client_id, role_name=role_name, token=token
    )
    if r_comp_role.status_code == 200:
        comp_roles = json.loads(r_comp_role.text)
    elif r_comp_role.status_code == 404:
        comp_roles = []
    else:
        globals.logger.error(f"response.status_code:{r_comp_role.status_code}")
        globals.logger.error(f"response.text:{r_comp_role.text}")
        message_id = f"500-{MSG_FUNCTION_ID}006"
        message = multi_lang.get_text(
            message_id,
            "composite roleの取得に失敗しました(対象ID:{0} client:{1})",
            organization_id,
            private.token_check_client_clientid
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    # Check if the information before change can be updated
    # 変更前の情報が更新できるかチェックする
    workspace_ids = [w.get("name") for w in comp_roles]
    cauth = check_authority.CheckAuthority(organization_id, connexion.request.headers)
    is_auth = cauth.is_workspaces_authority(workspace_ids, is_maintenance=True)
    if not is_auth and len(comp_roles) > 0:
        raise common.BadRequestException(
            message_id=f"400-{MSG_FUNCTION_ID}003", message='指定されたロールを削除する権限がありません。'
        )

    # Delete a Role
    # ロールを削除する
    r_delete_role = api_keycloak_roles.clients_role_delete(
        realm_name=organization_id, client_uid=private.user_token_client_id, role_name=role_name, token=token,
    )
    if r_delete_role.status_code not in [200, 204, 404]:
        globals.logger.debug(f"response:{r_cust_role.text}")
        message_id = f"500-{MSG_FUNCTION_ID}008"
        raise common.InternalErrorException(
            None, message_id, multi_lang.get_text(message_id, "ロールの削除に失敗しました(対象ロール:{0})", role_name)
        )

    return common.response_200_ok(data=None)


@common.platform_exception_handler
def role_list(organization_id, kind=None):
    """List returns list of roles

    Args:
        organization_id (str): _description_
        kind (str, optional): role kind. Defaults to None.

    Returns:
        InlineResponse2004: _description_
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    db = DBconnector()
    private = db.get_organization_private(organization_id)

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token_response = api_keycloak_tokens.service_account_get_token(
        organization_id, private.internal_api_client_clientid, private.internal_api_client_secret,
    )
    if token_response.status_code != 200:
        raise common.AuthException(
            "client_user_get_token error status:{}, response:{}".format(token_response.status_code, token_response.text)
        )

    token = json.loads(token_response.text)["access_token"]

    response = api_keycloak_roles.clients_roles_get(
        realm_name=organization_id, client_id=private.user_token_client_id, token=token, briefRepresentation=False
    )
    if response.status_code != 200:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = f"500-{MSG_FUNCTION_ID}005"
        message = multi_lang.get_text(
            message_id,
            "ロールの取得に失敗しました(対象ID:{0} client:{1})",
            organization_id,
            private.user_token_client_clientid
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    roles = json.loads(response.text)

    all_data = []

    # 取得したロールを戻り値に設定
    # Set the acquired role to the return value
    for role in roles:
        globals.logger.debug("attributes:{}".format(role.get("attributes")))

        role_kind_list = role.get("attributes", {}).get("kind")
        if role_kind_list:
            role_kind = role_kind_list[0]
        else:
            role_kind = ""

        if kind:
            # 条件フィルタがある場合は、該当のkindと一致しない場合は返却しない
            # If there is a conditional filter, do not return if the kind does not match
            if role_kind != kind:
                continue

        # 共通の戻り値設定
        # Common return value settin
        ret_role = {
            "name": role.get("name"),
            "description": role.get("description"),
            "kind": role_kind,
        }

        if role.get("composite"):
            # 子ロールの取得
            # get composite role
            response = api_keycloak_roles.clients_role_composites_get(
                realm_name=organization_id, client_uid=private.user_token_client_id, role_name=role.get("name"), token=token
            )
            if response.status_code == 200:
                composite_roles = json.loads(response.text)
                globals.logger.debug(f"composite_roles:{composite_roles}")

                if role_kind in [common_const.ROLE_KIND_ORGANIZATION, common_const.ROLE_KIND_WORKSPACE]:
                    # organization role or workspace role
                    composite_list = {"authorities": []}
                else:
                    composite_list = None

                if role_kind == common_const.ROLE_KIND_WORKSPACE:
                    # workspace role
                    workspaces = {"workspaces": []}
                else:
                    workspaces = None

                for composite_role in composite_roles:
                    if role_kind in [common_const.ROLE_KIND_ORGANIZATION, common_const.ROLE_KIND_WORKSPACE]:
                        # organization role or workspace role
                        composite_list["authorities"].append({"name": composite_role.get("name")})
                    # ワークスペースかつ"_"以外で始まるnameの場合は、Workspace idと判断して、返却値の設定を行う
                    # If it is a workspace and the name starts with something other than "_",
                    # it is determined as Workspace id and the return value is set.
                    if role_kind == common_const.ROLE_KIND_WORKSPACE and \
                       composite_role.get("name")[0:1] != "_":
                        # workspace role
                        workspaces["workspaces"].append({"id": composite_role.get("name")})

            elif response.status_code == 404:
                composite_list = None
                workspaces = None
            else:
                globals.logger.error(f"response.status_code:{response.status_code}")
                globals.logger.error(f"response.text:{response.text}")
                message_id = f"500-{MSG_FUNCTION_ID}006"
                message = multi_lang.get_text(
                    message_id,
                    "composite roleの取得に失敗しました(対象ID:{0} client:{1})",
                    organization_id,
                    private.token_check_client_clientid
                )
                raise common.InternalErrorException(message_id=message_id, message=message)
        else:

            if role_kind in [common_const.ROLE_KIND_ORGANIZATION, common_const.ROLE_KIND_WORKSPACE]:
                # organization role or workspace role
                composite_list = {"authorities": []}
            else:
                composite_list = None

            if role_kind == common_const.ROLE_KIND_WORKSPACE:
                # workspace role
                workspaces = {"workspaces": []}
            else:
                workspaces = None

        if composite_list:
            ret_role.update(composite_list)

        if workspaces:
            ret_role.update(workspaces)

        all_data.append(ret_role)

    # 許可されているロールを抽出する
    # Extract roles that allowed to get
    data = []
    cauth = check_authority.CheckAuthority(organization_id, connexion.request.headers)
    for role in all_data:
        ret = cauth.is_role_authority(role)
        if ret:
            data.append(role)

    globals.logger.debug(f"data:{data}")

    globals.logger.info(f"### Succeed func:{inspect.currentframe().f_code.co_name}")

    return common.response_200_ok(data)


@common.platform_exception_handler
def role_update(body, organization_id, role_name):
    """Update updates an role

    Args:
        body (dict | bytes): _description_
        organization_id (str): _description_. Defaults to None.

    Returns:
        InlineResponse2001: _description_
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    body = connexion.request.get_json()
    if not body:
        message_id = "400-000002"
        message = multi_lang.get_text(
            message_id,
            "リクエストボディのパラメータ({0})が不正です。",
            'Json',
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    role_kind = body.get("kind")
    role_description = body.get("description") if body.get("description") else ""
    workspaces = body.get("workspaces") if body.get("workspaces") else []

    # validation check
    validate = validation.validate_role_name(role_name)
    if not validate.ok:
        return common.response_validation_error(validate)
    validate = validation.validate_role_kind(role_kind)
    if not validate.ok:
        return common.response_validation_error(validate)
    validate = validation.validate_role_description(role_description)
    if not validate.ok:
        return common.response_validation_error(validate)
    validate = validation.validate_role_workspaces(workspaces)
    if not validate.ok:
        return common.response_validation_error(validate)

    db = DBconnector()
    private = db.get_organization_private(organization_id)

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token_response = api_keycloak_tokens.service_account_get_token(
        organization_id, private.internal_api_client_clientid, private.internal_api_client_secret,
    )
    if token_response.status_code != 200:
        raise common.AuthException(
            "client_user_get_token error status:{}, response:{}".format(token_response.status_code, token_response.text)
        )

    token = json.loads(token_response.text)["access_token"]

    r_cust_role = api_keycloak_roles.clients_role_get(
        realm_name=organization_id, client_id=private.user_token_client_id, role_name=role_name, token=token,
    )

    if r_cust_role.status_code == 404:
        globals.logger.debug(f"response:{r_cust_role.text}")
        message_id = f"404-{MSG_FUNCTION_ID}001"
        message = multi_lang.get_text(
            message_id,
            "ロールが存在しません(対象ID:{0})",
            role_name,
        )
        raise common.NotFoundException(message_id=message_id, message=message)

    elif r_cust_role.status_code != 200:
        globals.logger.debug(f"response:{r_cust_role.text}")
        raise common.InternalErrorException(None, f"500-{MSG_FUNCTION_ID}001", "ワークスペースロールの取得に失敗しました(対象ID:{})".format(role_name))

    # Get composite role before change
    # 変更前のcomposite roleを取得する
    r_comp_role = api_keycloak_roles.clients_role_composites_get(
        realm_name=organization_id, client_uid=private.user_token_client_id, role_name=role_name, token=token
    )
    if r_comp_role.status_code == 200:
        comp_roles = json.loads(r_comp_role.text)
    elif r_comp_role.status_code == 404:
        comp_roles = []
    else:
        globals.logger.error(f"response.status_code:{r_comp_role.status_code}")
        globals.logger.error(f"response.text:{r_comp_role.text}")
        message_id = f"500-{MSG_FUNCTION_ID}006"
        message = multi_lang.get_text(
            message_id,
            "composite roleの取得に失敗しました(対象ID:{0} client:{1})",
            organization_id,
            private.token_check_client_clientid
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    # Check if the information before change can be updated
    # 変更前の情報が更新できるかチェックする
    workspace_ids = [w.get("name") for w in comp_roles]
    cauth = check_authority.CheckAuthority(organization_id, connexion.request.headers)
    is_auth = cauth.is_workspaces_authority(workspace_ids, is_maintenance=True)
    if not is_auth and len(comp_roles) > 0:
        raise common.BadRequestException(
            message_id=f"400-{MSG_FUNCTION_ID}002", message='指定されたロールを更新する権限がありません。'
        )

    # Check if it can be updated with changed information
    # 変更後の情報で更新できるかチェックする
    workspace_ids = [w.get("id") for w in workspaces]
    is_auth = cauth.is_workspaces_authority(workspace_ids, is_maintenance=True)
    if not is_auth:
        raise common.BadRequestException(
            message_id=f"400-{MSG_FUNCTION_ID}001", message='ワークスペースの指定が不正または操作対象として指定する権限がありません。'
        )

    # 登録済みの権限から今回登録対象と削除対象を抽出する
    # Extract the current registration target and deletion target from the registered authority
    role_ids = [w.get("name") for w in comp_roles]
    workspace_ids = [w.get("id") for w in workspaces]
    roles_ws = []
    del_roles = []

    # 未登録の抽出(今回登録対象)
    # unregistered extract(current registration target)
    for workspace_id in workspace_ids:
        if workspace_id not in role_ids:
            # ロールに紐づけるwsロールを取得する
            # get ws role
            r_get_role_ws = api_keycloak_roles.clients_role_get(
                realm_name=organization_id, client_id=private.internal_api_client_id, role_name=workspace_id, token=token,
            )
            if r_get_role_ws.status_code != 200:
                globals.logger.error(f"response.status_code:{r_get_role_ws.status_code}")
                globals.logger.error(f"response.text:{r_get_role_ws.text}")

                raise common.InternalErrorException(None, f"500-{MSG_FUNCTION_ID}001", "ワークスペースロールの取得に失敗しました(対象ID:{0})".format(workspace_id))

            roles_ws.append(json.loads(r_get_role_ws.text))

    # 削除対象の抽出
    # deletion target extract
    for comp_role in comp_roles:
        if comp_role.get("name") not in workspace_ids:
            del_roles.append(comp_role)

    role_options = {
        "description": role_description,
        "attributes": {
            "kind": [role_kind]
        },
    }

    # ロールの更新
    # role update
    response = api_keycloak_roles.clients_role_update(
        realm_name=organization_id, client_uid=private.user_token_client_id, role_name=role_name, token=token, role_options=role_options,
    )
    if response.status_code not in [200, 204]:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")

        raise common.InternalErrorException(
            None,
            f"500-{MSG_FUNCTION_ID}007",
            "ロールの更新に失敗しました(対象ロール:{0})".format(role_name)
        )

    # ロールにwsロールを紐づける
    # role composite ws
    r_create_composite = api_keycloak_roles.clients_role_composites_create(
        realm_name=organization_id, client_uid=private.user_token_client_id, role_name=role_name, add_roles=roles_ws, token=token,
    )
    if r_create_composite.status_code != 204:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")

        raise common.InternalErrorException(
            None,
            f"500-{MSG_FUNCTION_ID}003",
            "ロールとワークスペースロールの紐づけに失敗しました(対象ロール:{0})".format(role_name)
        )

    # 削除対象ロールを削除する
    # Delete the role to be deleted
    r_create_composite = api_keycloak_roles.clients_role_composites_delete(
        realm_name=organization_id, client_uid=private.user_token_client_id, role_name=role_name, del_roles=del_roles, token=token,
    )
    if r_create_composite.status_code != 200 and r_create_composite.status_code != 204:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")

        raise common.InternalErrorException(
            None,
            f"500-{MSG_FUNCTION_ID}004",
            "composite roleの削除に失敗しました(対象ロール:{0})".format(role_name)
        )

    return common.response_200_ok(data=None)
