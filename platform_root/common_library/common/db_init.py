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
import secrets
import string

from common_library.common import encrypt
from common_library.common.db import DBconnector
from common_library.common.libs import queries_dbinit


class DBinit(DBconnector):
    """DBinit
    """

    prefix_org_db = "PF_ORG"

    def generate_dbinfo(self, prefix="") -> DBconnector.DBinfo:
        """generate dbinfo

        Args:
            prefix (str, optional): username prefix. Defaults to "".

        Returns:
            DBconnector.DBinfo: dbinfo
        """
        user_name = prefix + "_" + self.__generate_username()
        db_name = user_name
        user_password = self.__generate_password()

        orgdb = DBconnector.DBinfo()
        orgdb.db_host = os.environ.get('DB_HOST')
        orgdb.db_port = 3306
        orgdb.db_database = db_name
        orgdb.db_user = user_name
        orgdb.db_password = encrypt.encrypt_str(user_password)
        return orgdb

    def __generate_username(self):
        """generate username

        Returns:
            str: username string
        """
        length = 20
        mysql_available_symbol = ""
        pass_chars = string.ascii_uppercase + string.digits + mysql_available_symbol

        username = self.__generate_secrets(length, pass_chars)

        return username

    def __generate_password(self):
        """generate password

        Returns:
            str: password string
        """
        length = 16
        mysql_available_symbol = "!#%&()*+,-./;<=>?@[]^_{|}~"
        pass_chars = string.ascii_letters + string.digits + mysql_available_symbol

        password = self.__generate_secrets(length, pass_chars)

        return password

    def __generate_secrets(self, length, pass_chars):
        """generate secrets

        Returns:
            str: secrets string
        """
        s = ''.join(secrets.choice(pass_chars) for x in range(length))
        return s

    def create_database(self, dbinfo: DBconnector.DBinfo):
        """create database

        Args:
            dbinfo (DBconnector.DBinfo): DBinfo
        """
        with closing(super().connect_admin()) as conn:
            with conn.cursor() as cursor:
                sql = "CREATE DATABASE `{}` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci".format(dbinfo.db_database)
                cursor.execute(sql)

                sql = "CREATE USER IF NOT EXISTS '{}'@'%' IDENTIFIED BY '{}'".format(dbinfo.db_user, encrypt.decrypt_str(dbinfo.db_password))
                cursor.execute(sql)

                sql = "GRANT ALL PRIVILEGES ON `{}`.* TO '{}'@'%' WITH GRANT OPTION".format(dbinfo.db_database, dbinfo.db_user)
                cursor.execute(sql)

        return

    def drop_database(self, dbinfo: DBconnector.DBinfo):
        """drop database

        Args:
            dbinfo (DBconnector.DBinfo): DBinfo
        """
        with closing(super().connect_admin()) as conn:
            with conn.cursor() as cursor:
                sql = "DROP DATABASE IF EXISTS `{}`".format(dbinfo.db_database)
                cursor.execute(sql)

                sql = "DROP USER IF EXISTS '{}'@'%'".format(dbinfo.db_user)
                cursor.execute(sql)

        return

    def create_table_organizationdb(self, dbinfo: DBconnector.DBinfo):
        """create table in organization database

        Args:
            dbinfo (DBconnector.DBinfo): _description_
        """
        with closing(super().connection(dbinfo)) as conn:
            with conn.cursor() as cursor:
                cursor.execute(queries_dbinit.SQL_CREATE_ORGANIZATION_PRIVATE)
                cursor.execute(queries_dbinit.SQL_CREATE_WORKSPACE)
                cursor.execute(queries_dbinit.SQL_CREATE_REFRESH_TOKEN)
        return

    def insert_organization_dbinfo(self, dbinfo: DBconnector.DBinfo, organization_id, user_id):
        """insert organization database info

        Args:
            dbinfo (DBconnector.DBinfo): _description_
        """
        with closing(super().connect_platformdb()) as conn:
            with conn.cursor() as cursor:
                parameter = {
                    "organization_id": organization_id,
                    "db_host": dbinfo.db_host,
                    "db_port": dbinfo.db_port,
                    "db_database": dbinfo.db_database,
                    "db_user": dbinfo.db_user,
                    "db_password": dbinfo.db_password,
                    "create_user": user_id,
                    "last_update_user": user_id,
                }
                cursor.execute(queries_dbinit.SQL_INSERT_ORGANIZATION_DBINFO, parameter)
                conn.commit()
        return
