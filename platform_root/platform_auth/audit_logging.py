import os
import logging
import logging.handlers
import datetime
from pythonjsonlogger import jsonlogger

import common_library.common.common as common


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

    if logfile and enabled:
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

    return logger
