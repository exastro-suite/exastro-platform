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
import six
import os
import pymysql

# from swagger_server.models.runtime_error import RuntimeError  # noqa: E501
# from swagger_server.models.workspace import Workspace  # noqa: E501
# from swagger_server.models.workspace_list import WorkspaceList  # noqa: E501
# from swagger_server import util


def workspace_create(body, organization_id):  # noqa: E501
    """Create creates an workspace

     # noqa: E501

    :param body: 
    :type body: dict | bytes
    :param organization_id: 
    :type organization_id: str

    :rtype: Workspace
    """
    if connexion.request.is_json:
        # body = Workspace.from_dict(connexion.request.get_json())  # noqa: E501
        body = ''
    return 'do some magic!'


def workspace_list(organization_id, workspace_name=None):  # noqa: E501
    """List returns list of workspaces

     # noqa: E501

    :param organization_id: 
    :type organization_id: str
    :param workspace_name: the workspace&#x27;s name.
    :type workspace_name: str

    :rtype: WorkspaceList
    """

    platformdb = __get_dbinfo_platform()
    orgdb = __dbinfo()

    with __connect_db(dbinfo=platformdb) as platform_connection:
        with platform_connection.cursor() as cursor:
            sql = "SELECT db_host, db_port, db_database, db_user, db_password FROM organization_db where organization_id = %s"
            cursor.execute(sql, (organization_id, ))
            result = cursor.fetchone()

            orgdb.db_host = result.get('db_host')
            orgdb.db_port = result.get('db_port')
            orgdb.db_database = result.get('db_database')
            orgdb.db_user = result.get('db_user')
            orgdb.db_password = result.get('db_password')

    with __connect_db(dbinfo=orgdb) as org_connection:
        with org_connection.cursor() as cursor:
            sql = "SELECT workspace_id, workspace_name, create_at, update_at FROM workspace"
            cursor.execute(sql)
            result = cursor.fetchall()

    return result


class __dbinfo():
    db_host: str
    db_port: int
    db_database: str
    db_user: str
    db_password: str


def __connection(host, database, user, password, port=3306):
    conn = pymysql.connect(
        host=host,
        database=database,
        user=user,
        password=password,
        port=port,
        cursorclass=pymysql.cursors.DictCursor,
    )
    return conn


def __connect_db(dbinfo: __dbinfo):
    conn = __connection(
        host=dbinfo.db_host,
        database=dbinfo.db_database,
        user=dbinfo.db_user,
        password=dbinfo.db_password,
        port=dbinfo.db_port,
    )
    return conn


def __get_dbinfo_platform():
    platformdb = __dbinfo()
    platformdb.db_host = os.environ.get('DB_ADDR')
    platformdb.db_port = 3306
    platformdb.db_database = os.environ.get('DB_DATABASE')
    platformdb.db_user = os.environ.get('DB_USER')
    platformdb.db_password = os.environ.get('DB_PASSWORD')
    return platformdb
