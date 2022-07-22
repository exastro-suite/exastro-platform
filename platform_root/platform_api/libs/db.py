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

from libs import queries


class DBconnector:
    """database connection class
    """

    class __dbinfo:
        """dbinfo
        """
        db_host: str
        db_port: int
        db_database: str
        db_user: str
        db_password: str

    def __get_dbinfo_platform(self):
        """get platformdb dbinfo

        Returns:
            __dbinfo: platformdb dbinfo
        """
        platformdb = self.__dbinfo()
        platformdb.db_host = os.environ.get('DB_ADDR')
        platformdb.db_port = 3306
        platformdb.db_database = os.environ.get('DB_DATABASE')
        platformdb.db_user = os.environ.get('DB_USER')
        platformdb.db_password = os.environ.get('DB_PASSWORD')
        return platformdb

    def __connection(self, dbinfo: __dbinfo):
        """connect database

        Args:
            dbinfo (__dbinfo): dbinfo

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

    def connect_platformdb(self) -> pymysql.connections.Connection:
        """connect database at platformdb

        Returns:
            pymysql.connections.Connection: platformdb connection
        """
        platformdb = self.__get_dbinfo_platform()
        conn = self.__connection(platformdb)
        return conn

    def connect_orgdb(self, organization_id: str) -> pymysql.connections.Connection:
        """connect database at platformdb

        Args:
            organization_id (str): organization_id

        Returns:
            pymysql.connections.Connection: orgdb connection
        """
        with closing(self.connect_platformdb()) as conn:
            with conn.cursor() as cursor:
                sql = queries.SQL_ORGANIZATION_DB_INFO
                cursor.execute(sql, (organization_id, ))
                result = cursor.fetchone()

        orgdb = self.__dbinfo()
        orgdb.db_host = result.get('db_host')
        orgdb.db_port = result.get('db_port')
        orgdb.db_database = result.get('db_database')
        orgdb.db_user = result.get('db_user')
        orgdb.db_password = result.get('db_password')

        conn = self.__connection(orgdb)

        return conn

    class organization_private:
        """organization_private info
        """

        user_token_client_clientid: str
        """XXX-pb clientid"""
        user_token_client_id: str
        """XXX-pb ID"""

        token_check_client_clientid: str
        """XXX-br clientid"""
        token_check_client_id: str
        """XXX-br ID"""
        token_check_client_secret: str
        """XXX-br secret"""

        internal_api_client_clientid: str
        """XXX-pf clientid"""
        internal_api_client_id: str
        """XXX-pf ID"""
        internal_api_client_secret: str
        """XXX-pf secret"""

    def get_organization_private(self, organization_id) -> organization_private:
        """get organization_private informations

        Args:
            organization_id (str): organization_id

        Returns:
            dict: organization_private informations
        """

        json_dict = {}

        with closing(DBconnector().connect_orgdb(organization_id)) as conn:
            with conn.cursor() as cursor:
                cursor.execute(queries.SQL_ORGANIZATION_PRIVATE_INFO)
                result = cursor.fetchone()

                infoormations = result.get("informations")
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
