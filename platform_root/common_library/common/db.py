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

from common_library.common import common
from common_library.common import encrypt
from common_library.common import multi_lang

import globals


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
        platformdb.db_password = encrypt.encrypt_str(os.environ.get('DB_PASSWORD'))
        return platformdb

    def __get_dbinfo_admin(self):
        """get admin dbinfo

        Returns:
            DBinfo: admin dbinfo
        """
        db_admin = self.DBinfo()
        db_admin.db_host = os.environ.get('DB_HOST')
        db_admin.db_port = 3306
        db_admin.db_database = ""
        db_admin.db_user = os.environ.get('DB_ADMIN_USER')
        db_admin.db_password = encrypt.encrypt_str(os.environ.get('DB_ADMIN_PASSWORD'))
        return db_admin

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
        else:
            globals.logger.error(f"organization not found id:{organization_id}")
            message_id = "404-00001"
            message = multi_lang.get_text(
                message_id,
                "organization not found id:{0}",
                organization_id
            )
            raise common.NotFoundException(message_id=message_id, message=message)

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
            password=encrypt.decrypt_str(dbinfo.db_password),
            port=dbinfo.db_port,
            cursorclass=pymysql.cursors.DictCursor,
        )
        return conn

    def connect_admin(self) -> pymysql.connections.Connection:
        """connect database at admin

        Returns:
            pymysql.connections.Connection: admin connection
        """
        db_admin = self.__get_dbinfo_admin()
        conn = self.connection(db_admin)
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

        organization_id: str
        """organization_id"""

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

        api_token_client_clientid: str
        """_XXX-api clientid"""
        api_token_client_id: str
        """_XXX-api ID"""

        def __init__(self):
            self.organization_id = ""
            self.user_token_client_clientid = ""
            self.user_token_client_id = ""
            self.internal_api_client_clientid = ""
            self.internal_api_client_id = ""
            self.internal_api_client_secret = ""
            self.token_check_client_clientid = ""
            self.token_check_client_id = ""
            self.token_check_client_secret = ""
            self.api_token_client_clientid = ""
            self.api_token_client_id = ""

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

                informations = result.get("INFORMATIONS")
                json_dict = json.loads(informations)

                data = self.organization_private()
                data.organization_id = organization_id
                data.user_token_client_clientid = json_dict.get("USER_TOKEN_CLIENT_CLIENTID")
                data.user_token_client_id = json_dict.get("USER_TOKEN_CLIENT_ID")
                data.token_check_client_clientid = json_dict.get("TOKEN_CHECK_CLIENT_CLIENTID")
                data.token_check_client_id = json_dict.get("TOKEN_CHECK_CLIENT_ID")
                data.token_check_client_secret = json_dict.get("TOKEN_CHECK_CLIENT_SECRET")
                data.internal_api_client_clientid = json_dict.get("INTERNAL_API_CLIENT_CLIENTID")
                data.internal_api_client_id = json_dict.get("INTERNAL_API_CLIENT_ID")
                data.internal_api_client_secret = json_dict.get("INTERNAL_API_CLIENT_SECRET")
                data.api_token_client_clientid = json_dict.get("API_TOKEN_CLIENT_CLIENTID")
                data.api_token_client_id = json_dict.get("API_TOKEN_CLIENT_ID")
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

                informations = result.get("INFORMATIONS")
                json_dict = json.loads(informations)

                data = self.platform_private()
                data.token_check_realm_id = json_dict.get("TOKEN_CHECK_REALM_ID")
                data.token_check_client_clientid = json_dict.get("TOKEN_CHECK_CLIENT_CLIENTID")
                data.token_check_client_id = json_dict.get("TOKEN_CHECK_CLIENT_ID")
                data.token_check_client_secret = json_dict.get("TOKEN_CHECK_CLIENT_SECRET")

        return data
