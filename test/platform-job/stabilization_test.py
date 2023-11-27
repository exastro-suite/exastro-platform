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


# webhook_uri="http://dummy/"
# data_num=100
webhook_uri="http://platform-web/"

def main():
    random.seed()
    while True:
        data_num=random.randrange(5)+1
        time.sleep(float(random.randrange(60))/10+2)
        queue = []
        for i in range(data_num):
            org_id = list(testdata.ORGANIZATIONS.keys())[random.randrange(len(list(testdata.ORGANIZATIONS.keys())))]
            ws_id = testdata.ORGANIZATIONS[org_id]['workspace_id'][i%3]
            queue.append(make_notification_teams(org_id, ws_id, webhook_uri, f"{org_id} notification ({i})", f"{org_id} notification ({i}) message"))
        test_common.insert_queue(queue)
        print(f"[{datetime.datetime.now()}] created queue:{len(queue)}")


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

if __name__ == '__main__':
    main()
