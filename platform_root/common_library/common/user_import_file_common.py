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
import io
import openpyxl
from zipfile import ZipFile, BadZipfile

from common_library.common import const
from common_library.common import multi_lang
from libs.exceptions import FileFormatErrorException

import job_manager_config

EXCEL_HEADER_ROWS = 2
EXCEL_FORMAT_SET_ROWS = 100

PROC_TYPE_ADD = ["追加", "Registration"]
PROC_TYPE_UPD = ["更新", "Update"]
PROC_TYPE_DEL = ["削除", "Delete"]
PROC_TYPES = PROC_TYPE_ADD + PROC_TYPE_UPD + PROC_TYPE_DEL

COLUMN_IDS = {
    "PROC_TYPE": {
        "text": "実行処理種別",
        "text-id": "000-62001",
        "description": "追加/変更/削除",
        "description-id": "000-62002",
        "width": 14,
    },
    "USERNAME": {
        "text": "ユーザー名",
        "text-id": "000-62006",
        "description": None,
        "description-id": "000-62007",
        "width": 18,
    },
    "PASSWORD": {
        "text": "初期パスワード",
        "text-id": "000-62008",
        "description": "追加のみ有効",
        "description-id": "000-62009",
        "width": 16,
    },
    "EMAIL": {
        "text": "email",
        "text-id": "000-62010",
        "description": "他のユーザーと重複できません",
        "description-id": "000-62011",
        "width": 30,
    },
    "LASTNAME": {
        "text": "姓",
        "text-id": "000-62012",
        "description": None,
        "description-id": "000-62013",
        "width": 12,
    },
    "FIRSTNAME": {
        "text": "名",
        "text-id": "000-62014",
        "description": None,
        "description-id": "000-62015",
        "width": 12,
    },
    "ENABLED": {
        "text": "有効",
        "text-id": "000-62016",
        "description": "TRUE/FALSE",
        "description-id": "000-62017",
        "width": 9,
    },
    "AFFILIATION": {
        "text": "所属",
        "text-id": "000-62018",
        "description": None,
        "description-id": "000-62019",
        "width": 16,
    },
    "DESCRIPTION": {
        "text": "説明",
        "text-id": "000-62020",
        "description": None,
        "description-id": "000-62021",
        "width": 16,
    },
    "ROLES": {
        "text": "ロール",
        "text-id": "000-62024",
        "description": "カンマ区切りで列挙",
        "description-id": "000-62025",
        "width": 28,
    },
    "USER_ID": {
        "text": "ユーザーID",
        "text-id": "000-62022",
        "description": "追加時は不要",
        "description-id": "000-62023",
        "width": 38,
    },
    "ERROR_TEXT": {
        "text": "エラー内容",
        "text-id": "000-62026",
        "description": None,
        "description-id": "000-62027",
        "width": 80,
    },
}

class UserResultWorkbook():
    def __init__(self, lang, error_column=False):
        self.lang = lang
        self.wb = openpyxl.Workbook()
        self.ws = self.wb.worksheets[0]
        self.col_indexes = {}

        if error_column:
            column_ids = COLUMN_IDS
        else:
            column_ids = {cid: item for cid, item in COLUMN_IDS.items() if cid != "ERROR_TEXT"}


        header_row1_fill = openpyxl.styles.PatternFill(patternType='solid', fgColor='00459D')
        header_row2_fill = openpyxl.styles.PatternFill(patternType='solid', fgColor='D9D9D9')
        header_side = openpyxl.styles.borders.Side(style='thin', color='FFFFFF')
        header_border = openpyxl.styles.borders.Border(top=header_side, bottom=header_side, left=header_side, right=header_side)
        header_row1_alignment = openpyxl.styles.Alignment(wrapText=True, vertical = "center")
        header_row2_alignment = openpyxl.styles.Alignment(wrapText=True, vertical = "top")
        header_row1_font = openpyxl.styles.fonts.Font(color='FFFFFF')
        header_row2_font = openpyxl.styles.fonts.Font(color='000000')

        proc_type_lang_idx = 0 if self.lang == "ja" else 1
        proc_type_col_validation = openpyxl.worksheet.datavalidation.DataValidation(
            type="list",
            allow_blank=True,
            errorStyle="warning",
            formula1=f'"{PROC_TYPE_ADD[proc_type_lang_idx]},{PROC_TYPE_UPD[proc_type_lang_idx]},{PROC_TYPE_DEL[proc_type_lang_idx]}"'
        )
        enabled_col_validation = openpyxl.worksheet.datavalidation.DataValidation(
            type="list",
            allow_blank=True,
            errorStyle="warning",
            formula1=f'"TRUE,FALSE"'
        )

        # ヘッダ行の生成
        for idx, key in enumerate(column_ids):
            self.ws.column_dimensions[chr(ord('A')+idx)].width = column_ids[key]["width"]
            self.ws.cell(row = 1, column=idx+1).value = multi_lang.get_text_spec(lang, column_ids[key]["text-id"], column_ids[key]["text"])
            self.ws.cell(row = 1, column=idx+1).fill = header_row1_fill
            self.ws.cell(row = 1, column=idx+1).border = header_border
            self.ws.cell(row = 1, column=idx+1).alignment = header_row1_alignment
            self.ws.cell(row = 1, column=idx+1).font = header_row1_font
            self.ws.cell(row = 2, column=idx+1).value = multi_lang.get_text_spec(lang, column_ids[key]["description-id"], column_ids[key]["description"])
            self.ws.cell(row = 2, column=idx+1).fill = header_row2_fill
            self.ws.cell(row = 2, column=idx+1).border = header_border
            self.ws.cell(row = 2, column=idx+1).alignment = header_row2_alignment
            self.ws.cell(row = 2, column=idx+1).font = header_row2_font
            self.col_indexes[key] = idx

        self.ws.row_dimensions[1].height = 18
        self.ws.row_dimensions[2].height = 42
        self.ws.freeze_panes = 'C3'

        # PROC_TYPEの設定
        proc_type_col = chr(ord('A')+self.col_indexes["PROC_TYPE"])
        proc_type_col_validation.add(f"{proc_type_col}{EXCEL_HEADER_ROWS+1}:{proc_type_col}{EXCEL_FORMAT_SET_ROWS}")
        self.ws.add_data_validation(proc_type_col_validation)
        # ENABLEDの設定
        enabled_col = chr(ord('A')+self.col_indexes["ENABLED"])
        enabled_col_validation.add(f"{enabled_col}{EXCEL_HEADER_ROWS+1}:{enabled_col}{EXCEL_FORMAT_SET_ROWS}")
        self.ws.add_data_validation(enabled_col_validation)

        self.__writed_row_idx = EXCEL_HEADER_ROWS

    def write_row(self, cell_values):
        self.__writed_row_idx += 1
        for cid, cvalue in cell_values.items():
            self.ws.cell(self.__writed_row_idx, self.col_indexes[cid] + 1).value = cvalue

    def get_workbook_bytes_image(self):
        return make_workbook_bytes_image(self.wb)


class UserImportWorkbook():
    def __init__(self, lang, file_image):
        self.lang = lang

        # Excelファイルイメージ取り込み
        try:
            excel_zipfile = ZipFile(io.BytesIO(file_image)).fp
            self.wb = openpyxl.load_workbook(excel_zipfile, read_only=True, data_only=True, keep_links=False, rich_text=False)
        except Exception as ex:
            raise FileFormatErrorException(multi_lang.get_text_spec(self.lang, '401-00015', 'Excelファイルの読み込みに失敗しました。'))

        # 先頭シートを対象とする
        try:
            self.ws = self.wb.worksheets[0]
            if self.ws is None:
                raise Exception('no sheet')
        except Exception as ex:
            raise FileFormatErrorException(multi_lang.get_text_spec(self.lang, '401-00017', 'Excelファイルにワークシートが存在しません。'))

        # Excelの行列の最大数のチェック
        if self.ws.max_column > job_manager_config.JOBS[const.PROCESS_KIND_USER_IMPORT]["extra_config"]["max_number_of_cols_allowd"]:
            raise FileFormatErrorException(
                multi_lang.get_text_spec(
                    self.lang, '401-00018', 'Excelファイルの列数が多すぎます。（列数:{0},列数最大:{1})',
                    self.ws.max_column,
                    job_manager_config.JOBS[const.PROCESS_KIND_USER_IMPORT]["extra_config"]["max_number_of_cols_allowd"]))
            
        if self.ws.max_row > job_manager_config.JOBS[const.PROCESS_KIND_USER_IMPORT]["extra_config"]["max_number_of_rows_allowd"]:
            raise FileFormatErrorException(
                multi_lang.get_text_spec(
                    self.lang, '401-00019', 'Excelファイルの行数が多すぎます。（行数:{0},行数最大:{1})',
                    self.ws.max_column,
                    job_manager_config.JOBS[const.PROCESS_KIND_USER_IMPORT]["extra_config"]["max_number_of_rows_allowd"]))

        # 先頭行を取得する
        ws_header = [self.ws.cell(row=1, column=col_idx).value for col_idx in range(1, self.ws.max_column + 1)]

        # ヘッダーのテキストよりcolumn位置と特定する
        self.col_indexes = { cid: columns_index(ws_header, multi_lang.get_text_spec(lang, citem["text-id"], citem["text"]))
                            for cid, citem in COLUMN_IDS.items() }

        # ヘッダーの必須項目チェック
        not_found_columns = [multi_lang.get_text_spec(lang, COLUMN_IDS[cid]["text-id"], COLUMN_IDS[cid]["text"])
                                for cid, index in self.col_indexes.items() if index == -1 and cid != "ERROR_TEXT"]
        if len(not_found_columns) > 0:
            raise FileFormatErrorException(multi_lang.get_text_spec(self.lang, '401-00016', 'Excelファイルに必須の項目がありません。({0})', ",".join(not_found_columns)))

        # Read用の項目
        self.__buff = []
        self.__buffered_row_idx = EXCEL_HEADER_ROWS
        self.__row_idx = EXCEL_HEADER_ROWS

    def count_proc_type(self):
        count_register = count_update = count_delete = 0

        # 一つ一つ読みだすと遅いのでiter_rowsで一気に読み取る
        for row in self.ws.iter_rows(EXCEL_HEADER_ROWS + 1, self.ws.max_row, self.col_indexes["PROC_TYPE"], self.col_indexes["PROC_TYPE"]):
            for cel in row:
                if cel.value in PROC_TYPE_ADD:
                    count_register += 1
                elif cel.value in PROC_TYPE_UPD:
                    count_update += 1
                elif cel.value in PROC_TYPE_DEL:
                    count_delete += 1

        return count_register, count_update, count_delete

    def read_row(self):
        if len(self.__buff) == 0:
            if self.__buffered_row_idx == self.ws.max_row:
                return None

            max_row = self.__buffered_row_idx + job_manager_config.JOBS[const.PROCESS_KIND_USER_IMPORT]["extra_config"]["xl_buffered_rows"]
            if max_row > self.ws.max_row:
                max_row = self.ws.max_row

            for xl_row in self.ws.iter_rows(self.__buffered_row_idx + 1, max_row, 1, max(self.col_indexes.values()) + 1):
                cell_values = [xl_cel.value for xl_cel in xl_row]
                self.__buff.append(
                    {   cid: cell_values[col_idx]
                        for cid, col_idx in self.col_indexes.items()
                            if cid != "ERROR_TEXT"
                    }
                )

            self.__buffered_row_idx = max_row

        row = self.__buff[0].copy()
        del self.__buff[0]

        self.__row_idx += 1
        return row

    def get_row_idx(self):
        return self.__row_idx


def make_workbook_bytes_image(wb):
    mem_stream = io.BytesIO()
    wb.save(mem_stream)
    mem_stream.seek(0)
    mem_buf = mem_stream.read()

    del mem_stream
    return mem_buf


def columns_index(header_rows, column_text):
    try:
        return header_rows.index(column_text)
    except ValueError:
        return -1
