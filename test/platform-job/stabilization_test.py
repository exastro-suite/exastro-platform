#!/usr/bin/python3
import ulid
import json
import datetime
import time
from contextlib import closing
import random

from common_library.common import const, encrypt
from common_library.common.db import DBconnector
import job_manager_const

from tests.common import test_common
from tests.db.exports import testdata
import env

# webhook_uri="http://dummy/"
# data_num=100
webhook_uri="http://platform-web/"

def main():
    random.seed()
    set_mail_server()

    while True:
        data_num=random.randrange(5)+1
        time.sleep(float(random.randrange(60))/10+2)
        queue = []
        for i in range(data_num):
            org_id = list(testdata.ORGANIZATIONS.keys())[random.randrange(len(list(testdata.ORGANIZATIONS.keys())))]
            ws_id = testdata.ORGANIZATIONS[org_id]['workspace_id'][i%3]
            queue.append(make_notification_teams(
                org_id,
                ws_id,
                webhook_uri,
                f"{org_id} notification ({i})", f"{org_id} notification ({i}) teams message"))
        test_common.insert_queue(queue)
        print(f"[{datetime.datetime.now()}] created teams queue:{len(queue)}")

        queue = []
        for i in range(data_num):
            org_id = list(testdata.ORGANIZATIONS.keys())[random.randrange(len(list(testdata.ORGANIZATIONS.keys())))]
            ws_id = testdata.ORGANIZATIONS[org_id]['workspace_id'][i%3]
            queue.append(make_notification_mail(
                org_id,
                ws_id,
                env.mail_to[:random.randrange(len(env.mail_to))+1],
                env.mail_to[:random.randrange(len(env.mail_to))],
                env.mail_to[:random.randrange(len(env.mail_to))],
                f"{org_id} notification ({i})",
                f"{org_id} notification ({i}) mail message"))
        test_common.insert_queue(queue)
        print(f"[{datetime.datetime.now()}] created mail queue:{len(queue)}")


def set_mail_server():
    for key, conf in env.mail_server.items():
        with closing(DBconnector().connect_orgdb(key)) as conn, \
                conn.cursor() as cursor:
            cursor.execute("DELETE FROM M_SMTP_SERVER")
            cursor.execute("""
                INSERT INTO M_SMTP_SERVER
                    (
                        SMTP_ID,
                        SMTP_HOST,
                        SMTP_PORT,
                        SEND_FROM,
                        SEND_NAME,
                        REPLY_TO,
                        REPLY_NAME,
                        ENVELOPE_FROM,
                        SSL_ENABLE,
                        START_TLS_ENABLE,
                        AUTHENTICATION_ENABLE,
                        AUTHENTICATION_USER,
                        AUTHENTICATION_PASSWORD,
                        CREATE_USER
                    ) VALUES (
                        %(SMTP_ID)s,
                        %(SMTP_HOST)s,
                        %(SMTP_PORT)s,
                        %(SEND_FROM)s,
                        %(SEND_NAME)s,
                        %(REPLY_TO)s,
                        %(REPLY_NAME)s,
                        %(ENVELOPE_FROM)s,
                        %(SSL_ENABLE)s,
                        %(START_TLS_ENABLE)s,
                        %(AUTHENTICATION_ENABLE)s,
                        %(AUTHENTICATION_USER)s,
                        %(AUTHENTICATION_PASSWORD)s,
                        %(CREATE_USER)s
                    )
                """, {**{
                        "SMTP_ID": "_default",
                        "CREATE_USER": "test",
                    },
                    **conf,
                    **{
                        "AUTHENTICATION_PASSWORD": encrypt.encrypt_str(conf['AUTHENTICATION_PASSWORD']) if conf['AUTHENTICATION_PASSWORD'] is not None else None
                    }})
            conn.commit()


def make_notification_teams(organization_id: str, workspace_id: str, webhook_uri: str, title: str, message:str):
    process_id = ulid.new().str
    notification_id = ulid.new().str

    data = {
        "NOTIFICATION_ID": notification_id,
        "DESTINATION_KIND": const.DESTINATION_KIND_TEAMS,
        "DESTINATION_INFORMATIONS": encrypt.encrypt_str(json.dumps(
                [{
                    "webhook": webhook_uri,
                }]
            )),
        "MESSAGE_INFORMATIONS": json.dumps(
                {
                    "title": title,
                    "message": message
                }
            ),
        "NOTIFICATION_STATUS": const.NOTIFICATION_STATUS_UNSENT,
        "CREATE_USER": job_manager_const.SYSTEM_USER_ID,
        "LAST_UPDATE_USER": job_manager_const.SYSTEM_USER_ID,
    }

    with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn, \
            conn.cursor() as cursor:

        conn.begin()
        cursor.execute("""
                INSERT INTO T_NOTIFICATION_MESSAGE
                    (
                        NOTIFICATION_ID,
                        DESTINATION_KIND,
                        DESTINATION_INFORMATIONS,
                        MESSAGE_INFORMATIONS,
                        NOTIFICATION_STATUS,
                        CREATE_USER,
                        LAST_UPDATE_USER
                    ) VALUES (
                        %(NOTIFICATION_ID)s,
                        %(DESTINATION_KIND)s,
                        %(DESTINATION_INFORMATIONS)s,
                        %(MESSAGE_INFORMATIONS)s,
                        %(NOTIFICATION_STATUS)s,
                        %(CREATE_USER)s,
                        %(LAST_UPDATE_USER)s
                    )
            """, data)
        conn.commit()

    queue={
        "PROCESS_ID": process_id,
        "PROCESS_KIND": const.PROCESS_KIND_NOTIFICATION,
        "PROCESS_EXEC_ID": notification_id,
        "ORGANIZATION_ID": organization_id,
        "WORKSPACE_ID": workspace_id,
        "LAST_UPDATE_USER": job_manager_const.SYSTEM_USER_ID,
        "LAST_UPDATE_TIMESTAMP": str(datetime.datetime.now()),
    }
    # test_common.insert_queue([queue])
    return queue


def make_notification_mail(organization_id: str, workspace_id: str, mails_to: list, mails_cc: list, mails_bcc: list, title: str, message:str):
    process_id = ulid.new().str
    notification_id = ulid.new().str

    data = {
        "NOTIFICATION_ID": notification_id,
        "DESTINATION_KIND": const.DESTINATION_KIND_MAIL,
        "DESTINATION_INFORMATIONS": encrypt.encrypt_str(json.dumps(
                [{"address_header": const.MAIL_HEADER_TO, "email": mail} for mail in mails_to] +
                [{"address_header": const.MAIL_HEADER_CC, "email": mail} for mail in mails_cc] +
                [{"address_header": const.MAIL_HEADER_BCC, "email": mail} for mail in mails_bcc]
            )),
        "MESSAGE_INFORMATIONS": json.dumps(
                {
                    "title": title,
                    "message": message
                }
            ),
        "NOTIFICATION_STATUS": const.NOTIFICATION_STATUS_UNSENT,
        "CREATE_USER": job_manager_const.SYSTEM_USER_ID,
        "LAST_UPDATE_USER": job_manager_const.SYSTEM_USER_ID,
    }

    with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)) as conn, \
            conn.cursor() as cursor:
        conn.begin()
        cursor.execute("""
                INSERT INTO T_NOTIFICATION_MESSAGE
                    (
                        NOTIFICATION_ID,
                        DESTINATION_KIND,
                        DESTINATION_INFORMATIONS,
                        MESSAGE_INFORMATIONS,
                        NOTIFICATION_STATUS,
                        CREATE_USER,
                        LAST_UPDATE_USER
                    ) VALUES (
                        %(NOTIFICATION_ID)s,
                        %(DESTINATION_KIND)s,
                        %(DESTINATION_INFORMATIONS)s,
                        %(MESSAGE_INFORMATIONS)s,
                        %(NOTIFICATION_STATUS)s,
                        %(CREATE_USER)s,
                        %(LAST_UPDATE_USER)s
                    )
            """, data)
        conn.commit()

    queue={
        "PROCESS_ID": process_id,
        "PROCESS_KIND": const.PROCESS_KIND_NOTIFICATION,
        "PROCESS_EXEC_ID": notification_id,
        "ORGANIZATION_ID": organization_id,
        "WORKSPACE_ID": workspace_id,
        "LAST_UPDATE_USER": job_manager_const.SYSTEM_USER_ID,
        "LAST_UPDATE_TIMESTAMP": str(datetime.datetime.now()),
    }
    # test_common.insert_queue([queue])
    return queue

if __name__ == '__main__':
    main()
