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

from contextlib import closing
import os
import pymysql
import json


class DBconnector:
    """database connection class
    """

    SQL_ORGANIZATION_DB_INFO = """
    SELECT DB_HOST, DB_PORT, DB_DATABASE, DB_USER, DB_PASSWORD
    FROM T_ORGANIZATION_DB
    WHERE ORGANIZATION_ID = %s
    """

    SQL_ORGANIZATION_PRIVATE_INFO = """
    SELECT ID, INFORMATIONS
    FROM T_ORGANIZATION_PRIVATE
    WHERE ID = 1
    """

    SQL_PLATFORM_PRIVATE_INFO = """
    SELECT ID, INFORMATIONS
    FROM T_PLATFORM_PRIVATE
    WHERE ID = 1
    """

    class DBinfo:
        """dbinfo
        """
        db_host: str
        db_port: int
        db_database: str
        db_user: str
        db_password: str

        def __init__(self):
            self.db_host = ""
            self.db_port = 3306
            self.db_database = ""
            self.db_user = ""
            self.db_password = ""

    def __get_dbinfo_platform(self):
        """get platformdb dbinfo

        Returns:
            DBinfo: platformdb dbinfo
        """
        platformdb = self.DBinfo()
        platformdb.db_host = os.environ.get('DB_HOST')
        platformdb.db_port = 3306
        platformdb.db_database = os.environ.get('DB_DATABASE')
        platformdb.db_user = os.environ.get('DB_USER')
        platformdb.db_password = os.environ.get('DB_PASSWORD')
        return platformdb

    def __get_dbinfo_root(self):
        """get root dbinfo

        Returns:
            DBinfo: root dbinfo
        """
        db_root = self.DBinfo()
        db_root.db_host = os.environ.get('DB_HOST')
        db_root.db_port = 3306
        db_root.db_database = ""
        db_root.db_user = "root"
        db_root.db_password = os.environ.get('DB_ROOT_PASSWORD')
        return db_root

    def __get_dbinfo_organization(self, organization_id):
        """get organization dbinfo

        Returns:
            DBinfo: organization dbinfo
        """
        with closing(self.connect_platformdb()) as conn:
            with conn.cursor() as cursor:
                sql = self.SQL_ORGANIZATION_DB_INFO
                cursor.execute(sql, (organization_id, ))
                result = cursor.fetchone()

        orgdb = self.DBinfo()
        if result:
            orgdb.db_host = result.get('DB_HOST')
            orgdb.db_port = result.get('DB_PORT')
            orgdb.db_database = result.get('DB_DATABASE')
            orgdb.db_user = result.get('DB_USER')
            orgdb.db_password = result.get('DB_PASSWORD')
        return orgdb

    def connection(self, dbinfo: DBinfo):
        """connect database

        Args:
            dbinfo (DBinfo): dbinfo

        Returns:
            pymysql.connections.Connection: connection
        """
        conn = pymysql.connect(
            host=dbinfo.db_host,
            database=dbinfo.db_database,
            user=dbinfo.db_user,
            password=dbinfo.db_password,
            port=dbinfo.db_port,
            cursorclass=pymysql.cursors.DictCursor,
        )
        return conn

    def connect_root(self) -> pymysql.connections.Connection:
        """connect database at root

        Returns:
            pymysql.connections.Connection: root connection
        """
        db_root = self.__get_dbinfo_root()
        conn = self.connection(db_root)
        return conn

    def connect_platformdb(self) -> pymysql.connections.Connection:
        """connect database at platform

        Returns:
            pymysql.connections.Connection: platform connection
        """
        platformdb = self.__get_dbinfo_platform()
        conn = self.connection(platformdb)
        return conn

    def connect_orgdb(self, organization_id: str) -> pymysql.connections.Connection:
        """connect database at organization

        Args:
            organization_id (str): organization_id

        Returns:
            pymysql.connections.Connection: organization connection
        """
        orgdb = self.__get_dbinfo_organization(organization_id)
        conn = self.connection(orgdb)
        return conn

    class organization_private:
        """organization_private info
        """

        user_token_client_clientid: str
        """XXX clientid"""
        user_token_client_id: str
        """XXX ID"""

        internal_api_client_clientid: str
        """XXX-workspaces clientid"""
        internal_api_client_id: str
        """XXX-workspaces ID"""
        internal_api_client_secret: str
        """XXX-workspaces secret"""

        token_check_client_clientid: str
        """system-XXX-auth clientid"""
        token_check_client_id: str
        """system-XXX-auth ID"""
        token_check_client_secret: str
        """system-XXX-auth secret"""

        def __init__(self):
            self.user_token_client_clientid = ""
            self.user_token_client_id = ""
            self.internal_api_client_clientid = ""
            self.internal_api_client_id = ""
            self.internal_api_client_secret = ""
            self.token_check_client_clientid = ""
            self.token_check_client_id = ""
            self.token_check_client_secret = ""

    def get_organization_private(self, organization_id) -> organization_private:
        """get organization_private informations

        Args:
            organization_id (str): organization_id

        Returns:
            organization_private: organization_private informations
        """

        data = None

        with closing(self.connect_orgdb(organization_id)) as conn:
            with conn.cursor() as cursor:
                cursor.execute(self.SQL_ORGANIZATION_PRIVATE_INFO)
                result = cursor.fetchone()

                infoormations = result.get("INFORMATIONS")
                json_dict = json.loads(infoormations)

                data = self.organization_private()
                data.user_token_client_clientid = json_dict.get("USER_TOKEN_CLIENT_CLIENTID")
                data.user_token_client_id = json_dict.get("USER_TOKEN_CLIENT_ID")
                data.token_check_client_clientid = json_dict.get("TOKEN_CHECK_CLIENT_CLIENTID")
                data.token_check_client_id = json_dict.get("TOKEN_CHECK_CLIENT_ID")
                data.token_check_client_secret = json_dict.get("TOKEN_CHECK_CLIENT_SECRET")
                data.internal_api_client_clientid = json_dict.get("INTERNAL_API_CLIENT_CLIENTID")
                data.internal_api_client_id = json_dict.get("INTERNAL_API_CLIENT_ID")
                data.internal_api_client_secret = json_dict.get("INTERNAL_API_CLIENT_SECRET")

        return data

    class platform_private:
        """platform_private info
        """

        token_check_realm_id: str
        """_platform realm_id  """
        token_check_client_clientid: str
        """_platform clientid"""
        token_check_client_id: str
        """_platform ID"""
        token_check_client_secret: str
        """_platform secret"""

        def __init__(self):
            self.token_check_realm_id = ""
            self.token_check_client_clientid = ""
            self.token_check_client_id = ""
            self.token_check_client_secret = ""

    def get_platform_private(self) -> platform_private:
        """get platform_private informations

        Returns:
            platform_private: platform_private informations
        """

        data = None

        with closing(self.connect_platformdb()) as conn:
            with conn.cursor() as cursor:
                cursor.execute(self.SQL_PLATFORM_PRIVATE_INFO)
                result = cursor.fetchone()

                infoormations = result.get("INFORMATIONS")
                json_dict = json.loads(infoormations)

                data = self.platform_private()
                data.token_check_realm_id = json_dict.get("TOKEN_CHECK_REALM_ID")
                data.token_check_client_clientid = json_dict.get("TOKEN_CHECK_CLIENT_CLIENTID")
                data.token_check_client_id = json_dict.get("TOKEN_CHECK_CLIENT_ID")
                data.token_check_client_secret = json_dict.get("TOKEN_CHECK_CLIENT_SECRET")

        return data
