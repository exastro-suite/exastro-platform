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

# pytest用初期データファイル生成
# Generate initial data file for pytest

import os
import json
import requests
import datetime
from contextlib import closing
import subprocess

from common_library.common import encrypt
from common_library.common.db import DBconnector


def main():
    # データ生成数 / Number of data generated
    number_of_make_organizations = 5
    number_of_make_workspaces = 3

    make_organizations = {}
    org_id_prefix='org'

    for i in range(1, number_of_make_organizations + 1):
        #
        # generate organization
        #
        org_info = create_organization(f'{org_id_prefix}{i}')
        make_organizations[org_info["organization_id"]] = {
            "user_id": org_info['user_id'],
            "workspace_id": [],
        } 

        #
        # generate workspace
        #
        for j in range(1, number_of_make_workspaces + 1):
            ws_info = create_workspace(org_info['organization_id'], f"ws{j}", org_info['user_id'])
            make_organizations[org_info["organization_id"]]["workspace_id"].append(ws_info["workspace_id"])

    print(f"Output {os.environ.get('TESTDATA_CREATEUSER_SQL')}")
    with open(os.environ.get('TESTDATA_CREATEUSER_SQL'), mode="w") as f,\
            closing(DBconnector().connect_admin()) as conn,\
            conn.cursor() as cursor:
        #
        # Database user generate script output
        #
        cursor.execute(f"SELECT * FROM mysql.user WHERE user like 'PF_%' or user in ('{os.environ.get('DB_USER')}','{os.environ.get('KEYCLOAK_DB_USERNAME')}')")
        users = cursor.fetchall()

        for user in users:
            cursor.execute(f"show create user '{user['User']}'@'{user['Host']}'")
            create_user = cursor.fetchone()
            f.writelines([
                f"{create_user[list(create_user.keys())[0]]};\n",
            ])

            cursor.execute(f"show grants for '{user['User']}'@'{user['Host']}'")
            grants_users = cursor.fetchall()
            f.writelines([
                f"{grant_user[list(grant_user.keys())[0]]};\n" for grant_user in grants_users
            ])

    with closing(DBconnector().connect_admin()) as conn,\
            conn.cursor() as cursor:
        #
        # get all database list
        #
        cursor.execute(f"SELECT * FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME LIKE 'PF_%' OR SCHEMA_NAME IN ('{os.environ.get('KEYCLOAK_DB_NAME')}', '{os.environ.get('DB_DATABASE')}')")
        databases = [database['SCHEMA_NAME'] for database in cursor.fetchall()]

        #
        # get all table list
        #
        cursor.execute(f"SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA LIKE 'PF_%' OR TABLE_SCHEMA IN ('{os.environ.get('KEYCLOAK_DB_NAME')}', '{os.environ.get('DB_DATABASE')}')")
        tables = cursor.fetchall()

        #
        # 接続先hostをunit test用に一時的に変更 / Temporarily change the connection destination host for unit test
        #
        cursor.execute(f"SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME IN ('T_ORGANIZATION_DB', 'T_WORKSPACE_DB')")
        db_tables = cursor.fetchall()
        for db_table in db_tables:
            conn.begin()
            cursor.execute(f"UPDATE {db_table['TABLE_SCHEMA']}.{db_table['TABLE_NAME']} SET DB_HOST = %(DB_HOST)s", {"DB_HOST": os.environ.get('UNITTEST_DB_HOST')})
            conn.commit()

    #
    # unit test用のデータ定義情報出力
    #
    print(f"Output {os.environ.get('TESTDATA_PYTHON')}")
    with open(os.environ.get('TESTDATA_PYTHON'), mode="w") as f:
        f.writelines([
                f"ENCRYPT_KEY='{os.environ.get('ENCRYPT_KEY')}'\n",
                f"KEYCLOAK_DB_NAME='{os.environ.get('KEYCLOAK_DB_NAME')}'\n",
                f"KEYCLOAK_ADMIN_USER='{os.environ.get('KEYCLOAK_ADMIN_USER')}'\n",
                f"KEYCLOAK_ADMIN_PASSWORD='{os.environ.get('KEYCLOAK_ADMIN_PASSWORD')}'\n",
                f"ORGANIZATIONS={json.dumps(make_organizations, indent=4)}\n",
                f"DATABASES={json.dumps(databases, indent=4)}\n",
            ])

    #
    # mysql initialize data
    #
    print(f"Output {os.environ.get('TESTDATA_DATABASE_DUMP')}")
    subprocess.run([
        *["mysqldump", "-u", os.environ.get('DB_ADMIN_USER'), f"-p{os.environ.get('DB_ADMIN_PASSWORD')}", "-h", os.environ.get('DB_HOST'),
            "--result-file", os.environ.get('TESTDATA_DATABASE_DUMP'),
            "--databases"], *databases])

    #
    # mysql restore data
    #
    print(f"Output {os.environ.get('TEST_RESTORE_DATABASE_DUMP')}")
    with open(os.environ.get('TEST_RESTORE_DATABASE_DUMP'), mode="w") as f:
        f.writelines([
            "SET foreign_key_checks = 0;\n"
        ])
        f.writelines([
            f"DELETE FROM {table['TABLE_SCHEMA']}.{table['TABLE_NAME']};\n" for table in tables
        ])

    subprocess.run(" ".join([
        *["mysqldump", "-u", os.environ.get('DB_ADMIN_USER'), f"-p{os.environ.get('DB_ADMIN_PASSWORD')}", "-h", os.environ.get('DB_HOST'),
            "--no-create-info", "--no-create-db", "--skip-disable-keys",
            "--databases"], *databases]) + " >> " + os.environ.get('TEST_RESTORE_DATABASE_DUMP'), shell=True)

    with open(os.environ.get('TEST_RESTORE_DATABASE_DUMP'), mode="a") as f:
        f.writelines([
            "SET foreign_key_checks = 1;\n"
        ])

    #
    # 接続先hostを元に戻す / Restore the connection destination host
    #
    with closing(DBconnector().connect_admin()) as conn,\
            conn.cursor() as cursor:
        cursor.execute(f"SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME IN ('T_ORGANIZATION_DB', 'T_WORKSPACE_DB')")
        db_tables = cursor.fetchall()
        for db_table in db_tables:
            conn.begin()
            cursor.execute(f"UPDATE {db_table['TABLE_SCHEMA']}.{db_table['TABLE_NAME']} SET DB_HOST = %(DB_HOST)s", {"DB_HOST": os.environ.get('DB_HOST')})
            conn.commit()


def create_organization(id: str):
    """create organization

    Args:
        id (str): organization id

    Returns:
        dict: created organization info
    """
    print(f"Creating organization ({id}) ...")
    response = requests.post(
        f"{os.environ.get('PLATFORM_API_ORIGIN')}/api/platform/organizations",
        headers=http_headers(),
        json=sample_data_organization(id)
    )
    if response.status_code != 200:
        raise Exception(f"create organization ({id}): status_code:{response.status_code}\n{response.text}")

    print(f"Getting organization users ({id}) ...")
    response = requests.get(
        f"{os.environ.get('PLATFORM_API_ORIGIN')}/api/{id}/platform/users",
        headers=http_headers()
    )
    if response.status_code != 200:
        raise Exception(f"get organization users ({id}): status_code:{response.status_code}\n{response.text}")

    return {
        "organization_id": id,
        "user_id": json.loads(response.text)['data'][0]['id'],
    }


def create_workspace(org_id, ws_id, admin_user_id):
    """create workspace

    Args:
        org_id (str): organization id
        ws_id (str): workspace id
        admin_user_id (str): organization admin user id

    Returns:
        dict: created workspace info
    """
    print(f"Creating workspace ({org_id}/{ws_id}) ...")
    response = requests.post(
        f"{os.environ.get('PLATFORM_API_ORIGIN')}/api/{org_id}/platform/workspaces",
        headers=http_headers(user_id=admin_user_id),
        json=sample_data_workspace(ws_id, admin_user_id)
    )

    if response.status_code != 200:
        raise Exception(f"create workspace ({org_id}/{ws_id}): status_code:{response.status_code}\n{response.text}")

    return {
        "organization_id": org_id,
        "workspace_id": ws_id,
        "user_id": admin_user_id,
    }

def http_headers(user_id=None):
    """http header

    Args:
        user_id (str, optional): user id. Defaults to None.

    Returns:
        dict: http headers (platform-api call)
    """
    return {
        "User-id": (user_id if user_id is not None else "unittest-user01"),
        "Language": "en",
        "Roles": "",
        "Org-Roles": "",
    }


def sample_data_organization(id, update={}):
    """create organization parameter

    Args:
        id (str): organization id
        update (dict, optional): update dict. Defaults to {}.

    Returns:
        dict: create organization parameter
    """
    return dict({
        "id": id,
        "name": "name of organization",
        "organization_managers": [
            {
                "username": "admin",
                "email": "admin@example.com",
                "firstName": "admin",
                "lastName": "admin",
                "credentials": [
                    {
                        "type": "password",
                        "value": "password",
                        "temporary": False
                    }
                ],
                "requiredActions": [
                    "UPDATE_PROFILE"
                ],
                "enabled": True
            }
        ],
        "options": {},
        "optionsIta": {}
    }, **update)


def sample_data_workspace(id, admin_user_id, update={}):
    """create workspace parameter

    Args:
        id (str): workspace id
        update (dict, optional): update dict. Defaults to {}.

    Returns:
        dict: create workspace parameter
    """
    return dict({
        "id": id,
        "name": "name of workspace",
        "informations": {
            "description": "description of workspace",
            "environments": [
                {"name": "staging"},
                {"name": "production"},
            ],
            "workspace_administrators": [
                {"id": admin_user_id}
            ]
        }
    }, **update)


if __name__ == '__main__':
    main()
