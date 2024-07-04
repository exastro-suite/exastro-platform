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

from contextlib import closing

from common_library.common.db import DBconnector
from libs import queries_auditlog

import os
import logging
import logging.handlers
import datetime
from pythonjsonlogger import jsonlogger
import json

import common_library.common.common as common
# import globals


class JsonFormatter(jsonlogger.JsonFormatter):

    def parse(self):
        """ logger parse

        Returns:
            array : logger output
        """

        # 他に出したいフィールドがあったらこのリストに足す
        # Do not use logger on the parent side (ignore exastro_logging settings)
        # https://docs.python.jp/3/library/logging.html
        return [
            'ts',
            'user_id',
            'username',
            'org_id',
            'ws_id',
            'level',
            'full_path',
            'access_route',
            'remote_addr',
            'request_headers',
            'request_user_headers',
            'request_body',
            'request_form',
            'request_files',
            'status_code',
            'name',
            'message',
            'message_id',
            'message_text',
            'stack_info',
            'process',
            'log_ts',
        ]

    def add_fields(self, log_record, record, message_dict):
        """ add_fields

        Args:
            log_record (dict): logger record
            record (dict): record
            message_dict (dict): message record
        """

        super().add_fields(log_record, record, message_dict)
        if not log_record.get('log_ts'):
            log_record['log_ts'] = common.datetime_to_str(datetime.datetime.now())
        if log_record.get('level'):
            log_record['level'] = log_record['level'].upper()
        else:
            log_record['level'] = record.levelname


def audit_getLogger(module_name, logfile="", enabled=True, maxBytes=100000000, backupCount=30):
    """ Audit Get Logger

    Args:
        module_name (application logger name): logger name
        logfile (str, optional): logfile path Defaults to "".
        enabled (boolean, optional): true to logger handler enabled. Defaults to True.
        maxBytes (boolean, optional): logger rotaite max filesize. Defaults to 100000000(100M).
        backupCount (boolean, optional): logger rotaite max backup count. Defaults to 30.

    Returns:
        logger: logger
    """
    logger = logging.getLogger(module_name)
    # 親側のloggerは使用しない（exastro_loggingの設定は無視する）
    # Do not use logger on the parent side (ignore exastro_logging settings)
    logger.propagate = False
    logger.setLevel(999)

    if logfile or enabled:
        dirname = os.path.dirname(logfile)
        # 出力先のディレクトリが存在しない場合は作成する
        # Create the output destination directory if it does not exist
        if not os.path.isdir(dirname):
            os.makedirs(dirname)

        formatter = JsonFormatter()
        logger.setLevel(logging.INFO)

        # create a file handler (100MByte Max filesize)
        fh = logging.handlers.RotatingFileHandler(filename=logfile, encoding='UTF-8', maxBytes=maxBytes, backupCount=backupCount)
        fh.setLevel(logging.INFO)
        fh.setFormatter(formatter)
        logger.addHandler(fh)

    if enabled:
        formatter = JsonFormatter()
        logger.setLevel(logging.INFO)

        # create a database handler
        dbh = DBLogHandler()
        dbh.setLevel(logging.INFO)
        dbh.setFormatter(formatter)
        logger.addHandler(dbh)

    return logger


class DBLogHandler(logging.Handler):
    """LoggerHandler for Database

    Args:
        logging.Handler (Handler): Logger Handler
    """

    def emit(self, record):  # noqa: C901
        """emit

        Args:
            record (obj): record object
        """

        organization_id = None
        try:
            if len(record.org_id) > 0:
                organization_id = record.org_id
        except Exception:
            pass

        # not system manager auditlog to database
        if organization_id and not organization_id == "-":
            record_json = json.loads(self.format(record))
            # globals.logger.debug(f"{record_json=}")

            try:
                with closing(DBconnector().connect_orgdb(organization_id)) as conn:
                    with conn.cursor() as cursor:
                        parameter = {
                            "ts": common.str_to_datetime(record_json.get("ts")),
                            "user_id": record_json.get("user_id"),
                            "username": record_json.get("username"),
                            "org_id": record_json.get("org_id"),
                            "ws_id": record_json.get("ws_id"),
                            "level": record_json.get("level"),
                            "full_path": record_json.get("full_path"),
                            "access_route": format(f'{record_json.get("access_route")}'),
                            "remote_addr": record_json.get("remote_addr"),
                            "request_headers": json.dumps(record_json.get("request_headers")),
                            "request_user_headers": json.dumps(record_json.get("request_user_headers")),
                            "request_body": json.dumps(record_json.get("request_body")),
                            "request_form": json.dumps(record_json.get("request_form")),
                            "request_files": json.dumps(record_json.get("request_files")),
                            "status_code": record_json.get("status_code"),
                            "name": record_json.get("name"),
                            "message": record_json.get("message"),
                            "message_id": record_json.get("message_id"),
                            "message_text": record_json.get("message_text"),
                            "stack_info": record_json.get("stack_info"),
                            "process": record_json.get("process"),
                            "userid": record_json.get("userid"),
                            "method": record_json.get("method"),
                            "content_type": record_json.get("content_type"),
                            "create_user": record_json.get("user_id"),
                            "last_update_user": record_json.get("user_id"),
                        }

                        cursor.execute(queries_auditlog.SQL_INSERT_AUDIT_LOG, parameter)

                        conn.commit()

            except Exception:
                self.handleError(record)

