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
import logging
import logging.handlers

logger = None
log_listener = None


def init(log_queue, main_process=False):
    global logger
    global log_listener

    if main_process:
        console_handler = logging.StreamHandler()
        console_formatter = logging.Formatter('[%(asctime)s] [%(process)04x:%(threadName)s] [%(levelname)-5s] %(message)s')
        console_handler.setFormatter(console_formatter)

    logger = logging.getLogger()

    if main_process:
        queue_handler = logging.handlers.QueueHandler(log_queue)
        # queue_fomatter = logging.Formatter('[%(asctime)s] [%(process)x:%(threadName)s] [%(levelname)-s] %(message)s')
        # queue_handler.setFormatter(queue_fomatter)
        logger.addHandler(queue_handler)
        logger.setLevel(logging.DEBUG)

    if main_process:
        log_listener = logging.handlers.QueueListener(log_queue, console_handler)
        log_listener.start()


def terminate():
    log_listener.stop()
