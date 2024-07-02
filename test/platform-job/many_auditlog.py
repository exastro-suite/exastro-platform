#
# 現状のAUDITLOGを複製して大量データを作成します
#

import datetime
from common_library.common.db import DBconnector
from contextlib import closing

# 元データおよび複製先オーガナイゼーション
ORG_ID = 'org1'
# 元データのID範囲(1～以下IDまで)
COPY_AUDITLOG_ID = 50

# コピー回数
COPY_TIMES = 10000

# インクリメント時間
INCREMANT_TIMEDELTA = datetime.timedelta(minutes=10)

# 生成日付(1年前の今日から)
COPY_DATE = datetime.datetime.now().replace(hour=0, minute=0, second=0, microsecond=0) - datetime.timedelta(days=365)


# main
def main():
    print('** START MAIN')

    with closing(DBconnector().connect_orgdb(ORG_ID)) as conn, conn.cursor() as cur:
        for i in range(1, COPY_TIMES + 1):
            print(f'  COPY:{i}')
            cur.execute('''
                INSERT INTO T_AUDIT_LOG
                (`TS`,
                `USER_ID`,
                `USERNAME`,
                `ORG_ID`,
                `WS_ID`,
                `LEVEL`,
                `FULL_PATH`,
                `ACCESS_ROUTE`,
                `REMOTE_ADDR`,
                `REQUEST_HEADERS`,
                `REQUEST_USER_HEADERS`,
                `REQUEST_BODY`,
                `REQUEST_FORM`,
                `REQUEST_FILES`,
                `STATUS_CODE`,
                `NAME`,
                `MESSAGE`,
                `MESSAGE_ID`,
                `MESSAGE_TEXT`,
                `STACK_INFO`,
                `PROCESS`,
                `LOG_TS`,
                `USERID`,
                `METHOD`,
                `CONTENT_TYPE`,
                `CREATE_USER`,
                `LAST_UPDATE_USER`)
                SELECT
                    %(ts)s,
                    `T_AUDIT_LOG`.`USER_ID`,
                    `T_AUDIT_LOG`.`USERNAME`,
                    `T_AUDIT_LOG`.`ORG_ID`,
                    `T_AUDIT_LOG`.`WS_ID`,
                    `T_AUDIT_LOG`.`LEVEL`,
                    `T_AUDIT_LOG`.`FULL_PATH`,
                    `T_AUDIT_LOG`.`ACCESS_ROUTE`,
                    `T_AUDIT_LOG`.`REMOTE_ADDR`,
                    `T_AUDIT_LOG`.`REQUEST_HEADERS`,
                    `T_AUDIT_LOG`.`REQUEST_USER_HEADERS`,
                    `T_AUDIT_LOG`.`REQUEST_BODY`,
                    `T_AUDIT_LOG`.`REQUEST_FORM`,
                    `T_AUDIT_LOG`.`REQUEST_FILES`,
                    `T_AUDIT_LOG`.`STATUS_CODE`,
                    `T_AUDIT_LOG`.`NAME`,
                    `T_AUDIT_LOG`.`MESSAGE`,
                    `T_AUDIT_LOG`.`MESSAGE_ID`,
                    `T_AUDIT_LOG`.`MESSAGE_TEXT`,
                    `T_AUDIT_LOG`.`STACK_INFO`,
                    `T_AUDIT_LOG`.`PROCESS`,
                    `T_AUDIT_LOG`.`LOG_TS`,
                    `T_AUDIT_LOG`.`USERID`,
                    `T_AUDIT_LOG`.`METHOD`,
                    `T_AUDIT_LOG`.`CONTENT_TYPE`,
                    `T_AUDIT_LOG`.`CREATE_USER`,
                    `T_AUDIT_LOG`.`LAST_UPDATE_USER`
                FROM `T_AUDIT_LOG`
                WHERE ID <= %(copy_audilog_id)s
            ''', {
                "ts": COPY_DATE + (INCREMANT_TIMEDELTA * i),
                "copy_audilog_id": COPY_AUDITLOG_ID
            })
            conn.commit()


if __name__ == '__main__':
    main()
