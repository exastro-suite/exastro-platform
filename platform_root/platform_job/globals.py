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
import os
import sys
import multiprocessing
import logging
import logging.handlers

logger = None
__log_queue = None
__log_listener = None


def init(main_process=False, pytest=False):
    global logger
    global __log_queue
    global __log_listener

    if logger is None:
        logger = logging.getLogger()

        if pytest:
            console_handler = logging.StreamHandler(sys.stdout)
            console_formatter = logging.Formatter('[%(asctime)s] [%(process)06d:%(threadName)s] [%(levelname)-5s] %(message)s')
            console_handler.setFormatter(console_formatter)
            logger.addHandler(console_handler)
            logger.setLevel(os.environ.get('LOG_LEVEL', logging.INFO))

        elif main_process:
            log_queue = multiprocessing.Queue()
            console_handler = logging.StreamHandler(sys.stdout)
            console_formatter = logging.Formatter('[%(asctime)s] [%(process)06d:%(threadName)s] [%(levelname)-5s] %(message)s')
            console_handler.setFormatter(console_formatter)

            queue_handler = logging.handlers.QueueHandler(log_queue)
            # queue_fomatter = logging.Formatter('[%(asctime)s] [%(process)x:%(threadName)s] [%(levelname)-s] %(message)s')
            # queue_handler.setFormatter(queue_fomatter)
            logger.addHandler(queue_handler)
            logger.setLevel(os.environ.get('LOG_LEVEL', logging.INFO))

            __log_listener = logging.handlers.QueueListener(log_queue, console_handler)
            __log_listener.start()


def terminate():
    global __log_listener
    try:
        if __log_listener is not None:
            __log_listener.stop()
    except Exception as err:
        pass
