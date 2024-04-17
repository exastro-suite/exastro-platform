import os

from common_library.common.db import DBconnector
from contextlib import closing

from tests.db.exports import testdata
from tests.test_UserImportJobExecutor import make_queue_import_user
from tests.test_UserImportJobExecutor import data_sample_registration

USER_IMPORT_COUNT=9999
USER_IMPORT_EXECUTIONS=6

def main():
    pid = os.getpid()
    with closing(DBconnector().connect_platformdb()) as conn, conn.cursor() as cursor:
        conn.begin()
        cursor.execute("DELETE FROM T_PROCESS_QUEUE")
        conn.commit()

    for exe_idx in range(1, USER_IMPORT_EXECUTIONS + 1):
        organization_id = list(testdata.ORGANIZATIONS.keys())[(exe_idx - 1) % len(list(testdata.ORGANIZATIONS.keys()))]

        queue = make_queue_import_user('ja', organization_id, user_import_data=[
            {**data_sample_registration, **{"USERNAME": f'test-{pid}-{exe_idx}-{i}', "EMAIL": f'test-{pid}-{exe_idx}-{i}@example.com'}}
                for i in range(1, USER_IMPORT_COUNT +1)])

if __name__ == '__main__':
    main()
