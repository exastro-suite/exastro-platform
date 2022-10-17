////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   Exastro IT Automation / table.js
//
//   -----------------------------------------------------------------------------------------------
//
//   Copyright 2022 NEC Corporation
//
//   Licensed under the Apache License, Version 2.0 (the "License");
//   you may not use this file except in compliance with the License.
//   You may obtain a copy of the License at
//
//       http://www.apache.org/licenses/LICENSE-2.0
//
//   Unless required by applicable law or agreed to in writing, software
//   distributed under the License is distributed on an "AS IS" BASIS,
//   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//   See the License for the specific language governing permissions and
//   limitations under the License.
//
////////////////////////////////////////////////////////////////////////////////////////////////////

class DataTable {
/*
##################################################
   Constructor
##################################################
*/
constructor( tableId, mode, info, params, customData ) {
    const tb = this;
    tb.id = tableId;
    tb.mode = mode;
    tb.info = info;
    tb.params = params;
    
    // 特殊表示用データ
    tb.custom = customData;
}
/*
##################################################
   Work check
   > 非同期イベントの状態
##################################################
*/
workStart( type, time = 50 ) {
    const tb = this;
    if ( tb.workType ) window.console.warn('"table.js" workStart() warning.');
    
    // 読み込み中になったら
    tb.$.window.trigger( tb.id + '__tableStandBy');
    
    tb.workType = type;
    
    const standBy = function() {
        tb.$.container.removeClass('noData');
        tb.$.message.empty();
        tb.$.container.addClass(`standBy ${tb.workType}StandBy`);
    };
    
    if ( time > 0 ) {
    // 画面上の待機状態タイミングを遅らせる
        tb.workTimer = setTimeout( function() {
            standBy();
        }, time );
    } else {
        standBy();
    }
}
workEnd() {
    const tb = this;
    if ( tb.workTimer ) clearTimeout( tb.workTimer );
    tb.$.container.removeClass(`standBy ${tb.workType}StandBy`);
    
    // 完了したら
    tb.$.window.trigger( tb.id + '__tableReady');
    
    tb.workType = undefined;
}
get checkWork() {
    return ( this.workType )? true: false;
}
/*
##################################################
   Header hierarchy
   > ヘッダー階層データと列データをセット
##################################################
*/
setHeaderHierarchy() {
    const tb = this;
    
    // 特殊列
    const specialHeadColumn = [ tb.idNameRest, 'discard'],
          specialFootColumn = ['last_update_date_time', 'last_updated_user'],
          specialHeadColumnKeys = [],
          specialFootColumnKeys = [];

    tb.data.hierarchy = [];
    tb.data.columnKeys = [];
    tb.data.restNames = {};
    
    const hierarchy = function( columns, row, col ){
        if ( !tb.data.hierarchy[ row ] ) tb.data.hierarchy[ row ] = [];
        for ( const columnKey of columns ) {            
            const type = columnKey.slice( 0, 1 );
            if ( type === 'g') {
                tb.data.hierarchy[ row ].push( columnKey );
                hierarchy( tb.info.column_group_info[ columnKey ].columns, row + 1, col );
            } else if ( type === 'c') {
                const culumnRest =  tb.info.column_info[ columnKey ].column_name_rest;
                tb.data.restNames[ culumnRest ] = tb.info.column_info[ columnKey ].column_name;
                if ( culumnRest === tb.idNameRest ) tb.idName = tb.info.column_info[ columnKey ].column_name;
                if ( specialHeadColumn.indexOf( culumnRest ) !== -1 ) {
                    specialHeadColumnKeys[ specialHeadColumn.indexOf( culumnRest ) ] = columnKey;
                } else if ( specialFootColumn.indexOf( culumnRest ) !== -1 ) {
                    specialFootColumnKeys[ specialFootColumn.indexOf( culumnRest ) ] = columnKey;
                } else {
                    tb.data.hierarchy[ row ].push( columnKey );
                    tb.data.columnKeys.push( columnKey );
                }
            }
        }
    };
    hierarchy( tb.info.menu_info.columns, 0, 0 );

    // 特殊列を先頭に追加
    for ( const columnKey of specialHeadColumnKeys ) {
        tb.data.hierarchy[0].unshift( columnKey );
        tb.data.columnKeys.unshift( columnKey );
    }
    // 特殊列を末尾に追加
    for ( const columnKey of specialFootColumnKeys ) {
        tb.data.hierarchy[0].push( columnKey );
        tb.data.columnKeys.push( columnKey );
    }
}
/*
##################################################
   Setup
##################################################
*/
setup() {
    const tb = this;

    const html = `
    <div id="${tb.id}" class="tableContainer ${tb.mode}Table">
        <div class="tableHeader">
        </div>
        <div class="tableBody">
            <table class="table">
            </table>
        </div>
        <div class="tableFooter">
            ${tb.footerHtml()}
        </div>
        <div class="tableMessage"></div>
        <div class="tableErrorMessage"></div>
        <style class="tableStyle"></style>
    </div>`;
    
    // jQueryオブジェクトキャッシュ
    tb.$ = {};
    tb.$.window = $( window );
    tb.$.container = $( html );
    tb.$.header = tb.$.container.find('.tableHeader');
    tb.$.body = tb.$.container.find('.tableBody');
    tb.$.footer = tb.$.container.find('.tableFooter');
    tb.$.table = tb.$.container.find('.table');
    tb.$.message = tb.$.container.find('.tableMessage');
    tb.$.errorMessage = tb.$.container.find('.tableErrorMessage');
    tb.$.style = tb.$.container.find('.tableStyle');

    // 固有ID
    tb.idNameRest = tb.info.menu_info.pk_column_name_rest;
    
    // tHead階層
    tb.data = {};
    tb.setHeaderHierarchy();
    
    // Worker
    tb.worker = new Worker(`${tb.params.dir}/js/table_worker.js`);
    tb.setWorkerEvent();
    
    // ページング
    tb.paging = {};
    tb.paging.num = 0; // 件数
    tb.paging.pageNum = 1; // 表示するページ
    tb.paging.pageMaxNum = 1; // 最大ページ数
    tb.paging.onePageNum = 25; // １頁に表示する数
    tb.setPagingEvent(); // イベント
    
    // ソート
    tb.sort = [];
    
    // 選択データ
    tb.select = {}
    tb.select.view = [];
    tb.select.edit = [];
    
    // 編集データ
    tb.edit = {};
    tb.edit.input = {};
    tb.edit.blank = {};
    
    // 待機中
    tb.workType = '';
    tb.workTimer = null;
    
    // フラグ
    tb.flag = fn.editFlag( tb.info.menu_info );
    
    // モード別
    switch ( tb.mode ) {
        case 'view': case 'edit':
            tb.workStart('table', 0 );
        break;
    }

    tb.setTable( tb.mode );
    
    return tb.$.container;
}
/*
##################################################
   ソート初期値
##################################################
*/
setInitSort() {
    const tb = this;
    if ( tb.info.menu_info.sort_key ) {
        try {
            tb.sort = JSON.parse( tb.info.menu_info.sort_key );
        } catch( e ) {
            window.console.group('JSON parse error.')
            window.console.warn(`menu_info.sort_key : ${tb.info.menu_info.sort_key}`);
            window.console.warn( e );
            window.console.groupEnd('JSON parse error.')
        }
    }
    tb.$.thead.find('.tHeadSort').removeAttr('data-sort');
    
    const lastSort = tb.sort[ tb.sort.length - 1 ];
    if ( lastSort !== undefined ) {
        const order = Object.keys( lastSort )[0],
              rest = lastSort[ order ];
        tb.$.thead.find(`.tHeadSort[data-rest="${rest}"]`).attr('data-sort', order );
    }
}
/*
##################################################
   Set table
##################################################
*/
setTable( mode ) {
    const tb = this;
    tb.mode = mode;
    
    tb.$.table.html( tb.tableHtml() );    
    tb.$.thead = tb.$.container.find('.thead');
    tb.$.tbody = tb.$.container.find('.tbody');
    tb.setInitSort();
    
    
    // Table内各種イベントセット
    tb.setTableEvents();    
    
    // Table headerメニュー
    switch ( tb.mode ) {
        case 'view': {            
            const tableHeaderMenuList = {
                Main: [],
                Sub: [
                    { name: 'filterToggle', icon: 'filter', title: 'フィルタ', action: 'normal', toggle: { init: 'off', on:'閉じる', off:'開く'}}
                ]
            };
            // 権限チェック
            if ( tb.flag.insert ) tableHeaderMenuList.Main.push({ name: 'tableNew', icon: 'edit', title: '登録', action: 'positive', width: '200px'});
            if ( tb.flag.update ) tableHeaderMenuList.Main.push({ name: 'tableEdit', icon: 'edit', title: '編集', action: 'positive', width: '200px', 'disabled': true });
            
            if ( tableHeaderMenuList.Main.length === 0 ) {
                 tableHeaderMenuList.Main.push({ message: 'このメニューは閲覧のみ可能です。', action: 'message'});
            }
            
            tb.$.header.html( tb.tableHeaderMenuHtml( tableHeaderMenuList ) );
            
            // メニューボタン
            tb.$.header.find('.itaButton').on('click', function(){
                if ( !tb.checkWork ) {
                    const $button = $( this ),
                          type = $button.attr('data-type');
                    switch ( type ) {
                        // フィルタ開閉
                        case 'filterToggle':
                            tb.$.table.toggleClass('filterShow');
                        break;
                        // 編集モードに移行
                        case 'tableEdit':
                            tb.changeEdtiMode.call( tb );
                        break;
                        // 編集モード（登録）
                        case 'tableNew':
                            tb.changeEdtiMode.call( tb, 'changeEditRegi');
                        break;
                    }
                }
            });
            // tbody表示
            if ( tb.flag.filter ) {
                if ( tb.data.body ) {
                    tb.setTbody();
                } else {
                    tb.requestTbody();
                }
            } else {
                tb.setFilterStandBy();
            }
        } break;
        case 'edit': {            
            const tableHeaderMenuList = {
                Main: [
                    { name: 'tableOk', icon: 'edit', title: '編集確認', action: 'positive', width: '240px' },
                    { name: 'tableAdd',icon: '', title: '追加', action: 'default', separate: true },
                    { name: 'tableDup', icon: '', title: '複製', action: 'duplicat', disabled: true },
                    { name: 'tableDel', icon: '', title: '削除', action: 'danger', disabled: true },
                    { name: 'tableDiscard', icon: '', title: '廃止', action: 'warning', disabled: true },
                    { name: 'tableRestore', icon: '', title: '復活', action: 'restore', disabled: true },
                    { name: 'tableCancel', icon: 'download', title: '編集キャンセル', action: 'normal', separate: true }
                ],
                Sub: [
                ]
            };
            tb.$.header.html( tb.tableHeaderMenuHtml( tableHeaderMenuList ) );
            
            // メニューボタン
            tb.$.header.find('.itaButton ').on('click', function(){
                if ( !tb.checkWork ) {
                    const $button = $( this ),
                          type = $button.attr('data-type');
                    switch ( type ) {
                        // 編集確認
                        case 'tableOk':
                            tb.reflectEdits.call( tb );
                        break;
                        // 行追加
                        case 'tableAdd':
                            tb.workStart('add');
                            tb.paging.pageNum = 1;
                            tb.$.body.scrollTop(0);
                            tb.edit.blank.parameter[ tb.idNameRest ] = String( tb.edit.addId-- );
                            tb.workerPost('add', tb.edit.blank );
                        break;
                        // 選択行複製
                        case 'tableDup': {
                            tb.workStart('dup');
                            tb.workerPost('dup', { select: tb.select.edit, id: tb.edit.addId, input: tb.edit.input });
                            tb.edit.addId -= tb.select.edit.length;
                        } break;
                        // 行削除
                        case 'tableDel':
                            tb.workStart('del');
                            tb.workerPost('del', tb.select.edit );
                            tb.addRowInputDataDelete();
                            tb.select.edit = [];
                            tb.editModeMenuCheck();
                        break;
                        // 廃止
                        case 'tableDiscard':
                            tb.workStart('discard');
                            tb.workerPost('discard', tb.select.edit );
                        break;
                        // 復活
                        case 'tableRestore':
                            tb.workStart('restore');
                            tb.workerPost('restore', tb.select.edit );
                        break;
                        // 編集キャンセル
                        case 'tableCancel':
                            if ( Object.keys( tb.edit.input ).length ) {
                                fn.alert(
                                    'キャンセル確認',
                                    '編集中のデータがありますが破棄しますか？',
                                    'confirm', {
                                        ok: { text: '破棄する', action: 'danger'},
                                        cancel: { text: '編集に戻る', action: 'normal'}
                                    }).then(function( flag ){
                                    if ( flag ) {
                                        tb.changeViewMode.call( tb );
                                    }
                                });
                            } else {
                                tb.changeViewMode.call( tb );
                            }
                        break;
                    }
                }
            });
            // tbody表示
            if ( tb.data.body && tb.select.view.length > 0 ) {
                tb.workerPost('edit', tb.select.view );
            } else if ( tb.data.body ) {
                tb.setTbody();
            } else {
                tb.requestTbody();
            }
        } break;
        case 'diff': {
            const tableHeaderMenuList = {
                Main: [
                    { name: 'tableOk', icon: 'edit', title: '編集反映', action: 'positive', width: '240px'},
                    { name: 'tableCancel', icon: '',title: '登録・編集に戻る', action: 'normal', separate: true }
                ],
                Sub: [
                    { name: 'tableChangeValue', icon: '',title: '変更前', action: 'default', toggle: { init: 'off', on:'非表示', off:'表示'}}
                ]
            };
            tb.$.header.html( tb.tableHeaderMenuHtml( tableHeaderMenuList ) );
            tb.workerPost('normal', tb.custom.after );
        } break;
        case 'history': {
            const tableHeaderMenuList = {
                Main: [
                    { name: 'tableInputHistoryId', icon: null, title: tb.idName, action: 'input'},
                    { name: 'tableShowHistory',icon: 'download', title: '履歴表示', action: 'default', disabled: true, width: '200px' },
                    { name: 'tableResetHistory', icon: 'download',title: '履歴リセット', action: 'normal', disabled: true, width: '200px' }
                ],
                Sub: []
            };
            tb.$.header.html( tb.tableHeaderMenuHtml( tableHeaderMenuList ) );
            
            const historyMessage = `<div class="historyStandByMessage">対象の${tb.idName}を入力し、<br>履歴表示を押下してください。</div>`;
            tb.$.container.addClass('historyStandBy');
            tb.$.message.html( historyMessage );
            
            // メニューボタン
            const $show = tb.$.header.find('.itaButton[data-type="tableShowHistory"]'),
                  $reset = tb.$.header.find('.itaButton[data-type="tableResetHistory"]'),
                  $input = tb.$.header.find('.tableHeaderMainMenuInput');
            
            $show.on('click', function(){
                const uuid = $input.val();
                tb.workStart('filter');
                tb.workerPost('history', uuid );
                $reset.prop('disabled', false );
            });
            
            // 履歴リセット
            $reset.on('click', function(){
                tb.$.container.addClass('historyStandBy');
                tb.$.message.html( historyMessage );
                
                tb.$.tbody.empty();
                tb.data.body = null;
                $input.val('').trigger('input');
                $reset.prop('disabled', true );
                $show.prop('disabled', true );
            });
            
            $input.on('input', function(){
                const value = $( this ).val();
                if ( value === '') {
                    $show.prop('disabled', true );
                } else {
                    $show.prop('disabled', false );
                }
            });
        } break;
    }    
}
/*
##################################################
   Table header menu HTML
##################################################
*/
tableHeaderMenuHtml( headerList ) {    
    const html = [];
    
    for ( const type in headerList ) {
        html.push(`<ul class="tableHeader${type}MenuList">`);
        for ( const item of headerList[ type ] ) {
            const attr = {},
                  itemClassName = [`tableHeader${type}MenuItem`];
            let title = item.title;
            let toggle;
            if ( item.separate ) itemClassName.push(`tableHeader${type}MenuItemSeparate`)
            if ( item.name ) attr['type'] = item.name;
            if ( item.action && item.action !== 'input') attr['action'] = item.action;
            if ( item.disabled ) attr['disabled'] = 'disabled';
            if ( item.width ) attr['style'] = `width:${item.width};`;
            if ( item.toggle ) toggle = item.toggle;
            if ( item.icon ) title = fn.html.icon( item.icon ) + title;
            
            switch ( item.action ) {
                case 'input': {
                    const input = fn.html.inputText( [`tableHeader${type}MenuInput`],'', null, {}, { widthAdjustment: true, before: item.title });
                    html.push(`<li class="${itemClassName.join(' ')}">${input}</li>`);
                } break;
                case 'message':
                    html.push(`<li class="tableHeaderMessage">${item.message}</li>`);
                break;
                default:
                    html.push(`<li class="${itemClassName.join(' ')}">${fn.html.button( title,
                        ['itaButton', `tableHeader${type}MenuButton`], attr, toggle )}</li>`);
            }
        }
        html.push(`</ul>`);
    }

    return html.join('');
}
/*
##################################################
   tHead HTML
##################################################
*/
tableHtml() {
    const tb = this;
    
    const info = tb.info,
          groupInfo = info.column_group_info,
          columnInfo = info.column_info,
          hierarchy = tb.data.hierarchy;
    
    const html = [['']],
          groupColspan = {};

    // parent_column_group_idからkeyを返す
    const groupIdToKey = function( id ) {
        for ( const key in info.column_group_info ) {
            if ( id === info.column_group_info[ key ].column_group_id ) return key;
        }
    };

    // 配列階層からthead HTML作成
    const rowLength = hierarchy.length - 1;
    
    // モード別列
    const headRowspan = rowLength + 1;
    switch ( tb.mode ) {
        case 'view':
            if ( tb.flag.edit ) html[0] += fn.html.cell('選択', ['tHeadTh', 'tHeadLeftSticky', 'tHeadRowSelect'], 'th', headRowspan );
            html[0] += fn.html.cell( fn.html.icon('ellipsis_v'), ['tHeadTh', 'tHeadLeftSticky', 'tHeadRowMenu'], 'th', headRowspan );
        break;
        case 'edit':
            html[0] += fn.html.cell('選択', ['tHeadTh', 'tHeadLeftSticky', 'tHeadRowSelect'], 'th', headRowspan );
        break;
        case 'diff':
            html[0] += fn.html.cell('区分', ['tHeadTh', 'tHeadLeftSticky'], 'th', headRowspan );
        break;
        case 'history':
            html[0] += fn.html.cell('内容', ['tHeadTh', 'tHeadLeftSticky'], 'th', headRowspan );
            html[0] += fn.html.cell('履歴通番', ['tHeadTh'], 'th', headRowspan );
            html[0] += fn.html.cell('変更日時', ['tHeadTh'], 'th', headRowspan );
        break;
    }
    
    for ( let i = rowLength; i >= 0 ; i-- ) {
        if ( !html[i] ) html[i] = '';
        
        for ( const columnKey of hierarchy[i] ) {
            if ( !groupColspan[ columnKey ] ) groupColspan[ columnKey ] = {};
            
            const type = columnKey.slice( 0, 1 );
            
            // Group
            if ( type === 'g') {
                const group = groupInfo[ columnKey ],
                      name = fn.cv( group.column_group_name, '', true ),
                      gCount = fn.cv( groupColspan[ columnKey ].group_count, 0 ),
                      gColspan = fn.cv( groupColspan[ columnKey ].group_colspan, 0 ),
                      colspan = group.columns.length + gColspan - gCount;
                
                // 親グループにcolspanを追加する
                if ( group.parent_column_group_id !== null ) {
                    const parentId = groupIdToKey( group.parent_column_group_id );
                    if ( !groupColspan[ parentId ] ) groupColspan[ parentId ] = {};
                    // group count
                    if ( !groupColspan[ parentId ].group_count ) groupColspan[ parentId ].group_count = 0;
                    groupColspan[ parentId ].group_count += 1;
                    // colspan
                    if ( !groupColspan[ parentId ].group_colspan ) groupColspan[ parentId ].group_colspan = 0;
                    groupColspan[ parentId ].group_colspan += colspan;
                }
                
                html[i] += fn.html.cell( name, ['tHeadGroup', 'tHeadTh'], 'th', 1, colspan );
            
            // Column
            } else if ( type === 'c') {
                const column = info.column_info[ columnKey ],
                      rowspan = rowLength - i + 1,
                      className = ['tHeadTh', 'popup'],
                      attr = {id: columnKey};
                
                let name = fn.cv( column.column_name, '', true );
                
                // ソート
                if ( tb.mode === 'view') className.push('tHeadSort');
                // 必須
                if ( tb.mode === 'edit' && column.required_item === '1') {
                    // 必須を付けない要素
                    const autoInputColumns = [ tb.idNameRest, 'last_update_date_time', 'last_updated_user', 'discard'];
                    if ( autoInputColumns.indexOf( column.column_name_rest ) === -1 ) {
                        name += '<span class="tHeadRequired">必須</span>';
                    }
                }
                if ( column.column_name_rest ) attr.rest = column.column_name_rest;
                if ( column.description ) attr.title = fn.cv( column.description, '', true );
                if ( column.column_name_rest === 'discard') {
                    name = '廃止';
                    className.push('discardCell');
                }
                html[i] += fn.html.cell( name, className, 'th', rowspan, 1, attr );
            }

        }        
        html[i] = fn.html.row( html[i], 'tHeadTr');
    }
    
    // フィルター入力欄
    if ( tb.mode === 'view') html.push( tb.filterHtml() );
    
    return `
    <thead class="thead">
        ${html.join('')}
    </thead>
    <tbody class="tbody">
    </tbody>`;
}
/*
##################################################
   Filter HTML
##################################################
*/
filterHtml() {
    const tb = this;
    
    const info = tb.info.column_info,
          keys = tb.data.columnKeys;
    
    const filterIcon = `${fn.html.icon('filter')}<span class="tHeadFilterTitle">フィルタ</span>`,
          rows = [],
          colspan = ( tb.flag.edit )? 2: 1,
          className = ['tHeadFilter', 'tHeadLeftSticky', 'tHeadFilterHeader'];
    
    if ( colspan === 1 ) className.push('tHeadFilterHeaderNarrow');
    
    const cells = [ fn.html.cell( filterIcon, className, 'th', 2, colspan ) ];
    
    const pulldownOpen = function( name, rest ) {
        return ``
        + `<div class="filterSelectArea">`
            + fn.html.button(`${fn.html.icon('menuList')}プルダウン検索`, ['filterPulldownOpenButton', 'itaButton'], { type: name, rest: rest })
        + `</div>`;
    }
    
    for ( const key of keys ) {
        const column = info[ key ],
              name = column.col_name,
              rest = column.column_name_rest,
              type = column.column_type;
        
        const cellHtml = [];
        
        if ( rest === 'discard') {
            const list = {
                '0': '全レコード',
                '1': '廃止含まず',
                '2': '廃止のみ'
            };
            cellHtml.push( fn.html.select( list, ['filterInput', 'filterInputDiscard'], '廃止含まず', name, { rest: rest } ) );
        } else {
            switch ( type ) {
                // 文字列検索
                case 'SingleTextColumn': case 'MultiTextColumn': case 'IDColumn':
                case 'HostInsideLinkTextColumn': case 'LinkIDColumn': case 'NoteColumn':
                case 'LastUpdateUserColumn': case 'AppIDColumn': case 'JsonColumn':
                case 'FileUploadColumn': case 'FileUploadEncryptColumn':
                case 'EnvironmentIDColumn':
                    cellHtml.push( fn.html.inputText(['filterInput', 'filterInputText'], '', name, { rest: rest } ) );
                    cellHtml.push( pulldownOpen( name, rest ) );
                break;
                // 数値のFROM,TO
                case 'NumColumn': case 'FloatColumn':
                    cellHtml.push(`<div class="filterInputFromToNumber">`
                        + `<div class="filterInputFromNumberWrap">`
                            + fn.html.inputNumber(['filterInput', 'filterFromNumber'], '', name, { rest: rest, placeholder: 'From' } )
                        + `</div>`
                        + `<div class="filterInputToNumberWrap">`
                            + fn.html.inputNumber(['filterInput', 'filterToNumber'], '', name, { rest: rest, placeholder: 'To' } )
                        + `</div>`
                    + `</div>`);
                break;
                // 日時のFROM,TO
                case 'DateTimeColumn': case 'LastUpdateDateColumn':
                    cellHtml.push(`<div class="filterInputFromToDate">`
                        + `<div class="filterInputFromDateWrap">`
                            + fn.html.inputText(['filterInput', 'filterFromDate'], '', name, { rest: rest, placeholder: 'From' } )
                        + `</div>`
                        + `<div class="filterInputToDateWrap">`
                            + fn.html.inputText(['filterInput', 'filterToDate'], '', name, { rest: rest, placeholder: 'To' } )
                        + `</div>`
                        + `<div class="filterInputDateCalendar">`
                            + fn.html.button('<span class="icon icon-cal"></span>', ['itaButton', 'filterInputDatePicker'], { rest: rest, action: 'normal'})
                        + `</div>`
                    + `</div>`);
                break;
                // 日付のFROM,TO
                case 'DateColumn':
                    cellHtml.push(`<div class="filterInputFromToDate">`
                        + `<div class="filterInputFromDateWrap">`
                            + fn.html.inputText(['filterInput', 'filterFromDate'], '', name, { rest: rest, placeholder: 'From' } )
                        + `</div>`
                        + `<div class="filterInputToDateWrap">`
                            + fn.html.inputText(['filterInput', 'filterToDate'], '', name, { rest: rest, placeholder: 'To' } )
                        + `</div>`
                        + `<div class="filterInputDateCalendar">`
                            + fn.html.button('<span class="icon icon-cal"></span>', ['itaButton', 'filterInputDatePicker'], { rest: rest, action: 'normal'})
                        + `</div>`
                    + `</div>`);
                break;
                // 表示しない
                default:
                    cellHtml.push('<div class="filterNone"></div>');
            }
        }
        
        cells.push( fn.html.cell( cellHtml.join(''), ['tHeadFilter','tHeadFilterInput'], 'th', 1, 1 ) );
    }
    rows.push( fn.html.row( cells.join(''), ['tHeadTr', 'filterTr']) );
    
    // フィルタメニュー
    const menuList = [
        { name: 'filter', title: 'フィルタ', action: 'restore'},
        { name: 'clear', title: 'フィルタクリア', action: 'negative'},
        { name: 'auto', title: 'オートフィルタ'},
        { name: 'excel', title: 'Excelダウンロード', action: 'default', separate: true },
        { name: 'json', title: 'JSONダウンロード', action: 'default'},
    ];
    const menuListHtml = [];
    for ( const item of menuList ) {
        const listClassName = ['filterMenuItem'];
        if ( item.separate ) listClassName.push('filterMenuItemSeparate');
        
        if ( item.name === 'auto') {
            // オートフィルターチェックボックス
            const attr = { type: item.name }
            if ( tb.flag.autoFilter ) attr.checked = 'checked';
            menuListHtml.push(`<li class="${listClassName.join(' ')}">${fn.html.checkboxText('filterMenuAutoFilter', item.title, tb.id + '_AutoFilter', attr )}</li>`)
        } else {
            menuListHtml.push(`<li class="${listClassName.join(' ')}">${fn.html.button( item.title,
                ['filterMenuButton', 'itaButton'], { type: item.name, action: item.action })}</li>`);
        }
    }
    rows.push( fn.html.row( fn.html.cell(`<ul class="filterMenuList">${menuListHtml.join('')}</ul>`,
        ['tHeadFilter', 'tHeadFilterMenu'], 'th',1, keys.length ), ['tHeadTr', 'filterTr']));
    
    return rows.join('');
}
/*
##################################################
   Set table events
##################################################
*/
setTableEvents() {
    const tb = this;
    
    /*
    ------------------------------
    VIEW モード
    ------------------------------
    */
    if ( tb.mode === 'view') {
        // フィルタプルダウン検索ボタン
        tb.$.thead.on('click', '.filterPulldownOpenButton', function(){
            if ( !tb.checkWork ) {
                tb.filterSelectOpen.call( tb, $( this ));
            }
        });
        
        // フィルター欄、ファイルダウンロード
        const downloadFile = function( $button, type, url ){
            tb.filterParams = tb.getFilerParameter();
            const fileName = fn.cv( tb.info.menu_info.menu_name, 'file') + '_filter';
            
            $button.prop('disabled', true );
            
            //filter
            fn.fetch( url, null, 'POST', tb.filterParams ).then(function( result ){
                fn.download( type, result, fileName );
                fn.disabledTimer( $button, false, 1000 );
            }).catch(function( error ){
                alert( error.message );
                fn.disabledTimer( $button, false, 1000 );
                tb.gotoErrPage();
            });
        };
        
        // オートフィルター
        tb.$.thead.on({
            'change': function(){
                tb.flag.autoFilter = $( this ).prop('checked');
            },
            'click': function( e ){
                if ( !tb.checkWork ) return;
                e.preventDefault();
            }
        }, '.filterMenuAutoFilter');
        
        tb.$.thead.on('change', '.filterInput', function(){
            if ( !tb.checkWork && tb.flag.autoFilter ) {
                tb.$.thead.find('.filterMenuButton[data-type="filter"]').click();
            }
        });
        

        // フィルタボタン
        tb.$.thead.on('click', '.filterMenuButton', function(){
            if ( !tb.checkWork ) {
                const $button = $( this ),
                      type = $button.attr('data-type');
                switch ( type ) {
                    case 'filter':
                        tb.workStart('filter');
                        tb.setInitSort();
                        tb.requestTbody.call( tb, 'filter'); 
                    break;
                    case 'clear':
                        tb.workStart('table', 0 );
                        tb.clearFilter.call( tb );
                    break;
                    case 'excel':
                        downloadFile( $button, 'excel', `/menu/${tb.params.menuNameRest}/excel/`);
                    break;
                    case 'json':
                        downloadFile( $button, 'json', `/menu/${tb.params.menuNameRest}/filter/`);
                    break;
                }
            }
        });
        
        // リンクファイルダウンロード
        tb.$.tbody.on('click', '.tableViewDownload', function(e){
            e.preventDefault();
            
            const $a = $( this ),
                  fileName = $a.text(),
                  id = $a.attr('data-id'),
                  rest = $a.attr('data-rest');
            
            const params = tb.data.body.find(function( item ){
                return String( item.parameter[ tb.idNameRest ] ) === id;
            });
            
            if ( params !== undefined && params.file[rest] !== undefined && params.file[rest] !== null ) {
                fn.download('base64', params.file[rest], fileName );
            } else {
                // error
            }
            
        });
          
        // フィルタカレンダー
        tb.$.thead.find('.filterInputDatePicker').on('click', function(){
            if ( !tb.checkWork ) {
                const $button = $( this ),
                      rest = $button.attr('data-rest');

                const $from = tb.$.thead.find(`.filterFromDate[data-rest="${rest}"]`),
                      $to = tb.$.thead.find(`.filterToDate[data-rest="${rest}"]`);

                const from = $from.val(),
                      to = $to.val();

                fn.datePickerDialog('fromTo', true, tb.data.restNames[ rest ], { from: from, to: to } ).then(function( result ){
                    if ( result !== 'cancel') {
                        $from.val( result.from );
                        $to.val( result.to );
                    }
                });
            }
        });
        
        // ソート
        tb.$.thead.on('click', '.tHeadSort', function(){
            if ( !tb.checkWork ) {
                tb.workStart('sort', 100 );
                
                const $sort = $( this ),
                      id = $sort.attr('data-id'),
                      sort = tb.info.column_info[ id ].column_name_rest;
                
                let order = $sort.attr('data-sort');
                if ( !order || order === 'ASC') {
                    order = 'DESC';
                } else {
                    order = 'ASC';
                }
                tb.$.thead.find('.tHeadSort').removeAttr('data-sort');
                $sort.attr('data-sort', order );
                
                tb.sort = [{}];
                tb.sort[0][ order ] = sort;
                tb.workerPost('sort');
            }
        });
        
        // 個別メニュー
        tb.$.tbody.on('click', '.tBodyRowMenu', function(){
            if ( !tb.checkWork ) {
                const $row = $( this );
                if ( $row.is('.open') ) {
                    $row.removeClass('open');
                    tb.$.window.off('pointerdown.rowMenu');
                } else {
                    $row.addClass('open');
                    tb.$.window.on('pointerdown.rowMenu', function( e ){
                        const $target = $( e.target );
                        if ( !$target.closest( $row ).length ) {
                            $row.removeClass('open');
                            tb.$.window.off('pointerdown.rowMenu');
                        }
                    });
                }
            }
        });
        
        // 編集、複製
        tb.$.tbody.on('click', '.tBodyRowMenuTb', function(){
            if ( !tb.checkWork ) {
                const $button = $( this ),
                      type = $button.attr('data-type'),
                      itemId = $button.attr('data-id');
                
                tb.select.view = [ itemId ];

                switch ( type ) {
                    case 'rowEdit':
                        tb.changeEdtiMode.call( tb );
                    break;
                    case 'rowDup':
                        tb.changeEdtiMode.call( tb, 'changeEditDup');
                    break;
                }
            }
        });
    }
    
    /*
    ------------------------------
    EDIT モード
    ------------------------------
    */
    if ( tb.mode === 'edit') {
        // ファイル選択
        tb.$.tbody.on('click', '.tableEditSelectFile', function(){
            const $button = $( this ),
                  id = $button.attr('data-id'),
                  key = $button.attr('data-key'),
                  maxSize = $button.attr('data-upload-max-size');
            
            fn.fileSelect().then(function( result ){
                
                if ( maxSize && maxSize < result.size ) {
                    
                } else {
                    const changeFlag = tb.setInputFile( result.name, result.base64, id, key, tb.data.body );
                    
                    $button.find('.inner').text( result.name );
                    
                    if ( changeFlag ) {
                        $button.addClass('tableEditChange');
                    } else {
                        $button.removeClass('tableEditChange');
                    }
                }
                
            }).catch(function( error ){
                if ( error !== 'cancel') {
                    alert( error );
                }
            });
        });
        
        // 入力データを配列へ
        tb.$.tbody.on('change', '.input', function(){
            const $input = $( this ),
                  value = ( $input.val() !== '')? $input.val(): null,
                  id = $input.attr('data-id'),
                  key = $input.attr('data-key');
            
            const changeFlag = tb.setInputData( value, id, key, tb.data.body );
          
            if ( changeFlag ) {
                $input.addClass('tableEditChange');
            } else {
                $input.removeClass('tableEditChange');
            }
            
        });
        
        // 入力チェック
        tb.$.tbody.on('input', '.input', function(){
            const $input = $( this ),
                  value = $input.val();
            // 必須
            if ( $input.attr('data-required') === '1') {
                if ( value !== '') {
                    $input.removeClass('tableEditRequiredError ');
                } else {
                    $input.addClass('tableEditRequiredError ');
                }
            }            
            
        });
        
        // データピッカー
        tb.$.tbody.on('click', '.inputDateCalendarButton', function(){
            const $button = $( this ),
                  $input = $button.closest('.inputDateContainer').find('.inputDate'),
                  rest = $input.attr('data-key'),
                  value = $input.val();
                  
            fn.datePickerDialog('date', true, tb.data.restNames[ rest ], value ).then(function( result ){
                if ( result !== 'cancel') {
                    $input.val('');
                }
            });
        });

        // textareaの幅と高さを調整する
        tb.$.tbody.on('input', '.textareaAdjustment', tb.textareaAdjustment );
        
        // 変更があるときの離脱確認
        tb.$.window.on('beforeunload', function( e ){
            if ( Object.keys( tb.edit.input ).length ) {
                e.preventDefault();
                return '';
            }
        });
    }
    
    /*
    ------------------------------
    VIEW or EDIT モード
    ------------------------------
    */
    if ( tb.mode === 'view' || tb.mode === 'edit' ) {
        // 行選択チェックボックスの外がクリックされても変更する
        tb.$.tbody.on('click', '.tBodyRowSelect', function( e ){
            const $check = $( this ).find('.tBodyRowCheck'),
                  checked = $check.prop('checked');

            if ( !$( e.target ).is('.tBodyRowCheck') ) {
                $check.focus().prop('checked', !checked ).change();
            }
        });
        // 行選択チェックボックス
        tb.$.tbody.on('change', '.tBodyRowCheck', function(){
            const $check = $( this ),
                  checked = $check.prop('checked'),
                  id = $check.val();

            if ( checked ) {
                tb.select[tb.mode].push( id );
            } else {
                const index = tb.select[tb.mode].indexOf( id );
                if ( index !== -1 ) {
                    tb.select[tb.mode].splice( index, 1 );
                }
            }

            // メニューボタンを活性化
            if ( tb.mode === 'edit' ) {
                tb.editModeMenuCheck();            
            }
        });
    }
}
/*
##################################################
   新規入力データチェック
##################################################
*/
checkNewInputDataSet( id, beforeData ) {
    const tb = this;
    
    if ( !tb.edit.input[id] ) {
        // 変更前データ
        const before = beforeData.find(function( item ){
            return String( item.parameter[ tb.idNameRest ] ) === id;
        });
        tb.edit.input[id] = {
            after: {
                file: {},
                parameter: {}
            }, 
            before: before
        };
        tb.edit.input[id].after.parameter[ tb.idNameRest ] = id;
    }
}
checkNewInputDataDelete( id ) {
    const tb = this;
    
    // 変更が一つもない場合（パラメータが固有IDのみの場合）
    if ( tb.edit.input[id] && Object.keys( tb.edit.input[id]['after'].parameter ).length <= 1 ) {
        delete tb.edit.input[id];
    }
    
    console.log(tb.edit.input)
    
    // 編集確認ボタンを活性化
    tb.editModeMenuCheck();
}
/*
##################################################
   入力データ
##################################################
*/
setInputData( value, id, rest, beforeData ) {
    const tb = this;
    
    tb.checkNewInputDataSet( id, beforeData );

    // 変更があれば追加、なければ削除
    const beforeValue = tb.edit.input[id]['before'].parameter[rest];
    let changeFlag = false;
    if ( beforeValue !== value ) {
        tb.edit.input[id]['after'].parameter[rest] = value;
        changeFlag = true;
    } else {
        if ( tb.edit.input[id]['after'].parameter[rest] !== undefined ) {
             delete tb.edit.input[id]['after'].parameter[rest];
        }
    }

    tb.checkNewInputDataDelete();
    
    return changeFlag;
}
/*
##################################################
   入力ファイル
##################################################
*/
setInputFile( fileName, fileBase64, id, rest, beforeData ) {
    const tb = this;
    
    tb.checkNewInputDataSet( id, beforeData );
    
    // 変更があれば追加、なければ削除
    const beforeFile = tb.edit.input[id]['before'].file[rest];
    let changeFlag = false;
    if ( beforeFile !== fileBase64 ) {
        tb.edit.input[id]['after'].file[rest] = fileBase64;
        tb.edit.input[id]['after'].parameter[rest] = fileName;
        changeFlag = true;
    } else {
        if ( tb.edit.input[id]['after'].parameter[rest] !== undefined ) {
             delete tb.edit.input[id]['after'].parameter[rest];
        }
    }
    
    tb.checkNewInputDataDelete();
    
    return changeFlag;
}
/*
##################################################
   廃止復活変更
##################################################
*/
changeDiscard( beforeData, type ) {
    const tb = this;
    
    for ( const id of tb.select.edit ) {
        // 入力データまたは初期値の取得
        let value, changeFlag = false;
        if ( tb.edit.input[id] && tb.edit.input[id].after.parameter.discard ) {
            value = tb.edit.input[id].after.parameter.discard;
        } else {
            const before = beforeData.find(function( item ){
                return String( item.parameter[ tb.idNameRest ] ) === id;
            });
            if ( before !== undefined ) { 
                value = before.parameter.discard;
                changeFlag = true;
            }
        }
        
        // 入力データの更新
        value = ( type === 'discard')? '1': '0';        
        tb.setInputData( value, id, 'discard', beforeData );
        
        // 画面に表示されている分の更新
        const $discard = tb.$.tbody.find(`.inputSpan[data-key="discard"][data-id="${id}"]`);
        value = tb.discardMark( value );
        $discard.html( value );
        if ( changeFlag ) {
            $discard.addClass('tableEditChange');
        } else {
            $discard.removeClass('tableEditChange');
        }
 
    }
    tb.workEnd();
    
}
/*
##################################################
   追加行削除時に入力データを削除する
##################################################
*/
addRowInputDataDelete() {
    const tb = this;
    for ( const rowId of tb.select.edit ) {
        delete tb.edit.input[ rowId ];
    }
}
/*
##################################################
   編集モードのメニューボタン活性・非活性
##################################################
*/
editModeMenuCheck() {
    const tb = this;
    
    const selectCount = tb.select[tb.mode].length;
    let confirmFlag = true,
        duplicatFlag = true,
        deleteFlag = true,
        discardFlag = true,
        restoreFlag = true;

    if ( tb.edit.input && Object.keys( tb.edit.input ).length ) {
        confirmFlag = false;
    }
    
    if ( selectCount !== 0 ) {
        let addCount = 0,
            discardCount = 0;
        for ( const columnKey of tb.select[tb.mode] ) {
            // 廃止フラグの数を調べる
            // （入力済みから調べ、無い場合は廃止リストから）
            if ( tb.edit.input[ columnKey ] !== undefined ) {
                if ( tb.edit.input[ columnKey ].after.parameter.discard === '1') {
                    discardCount++;
                }
            } else if ( tb.data.discard.indexOf( columnKey ) !== -1 ) {
                discardCount++;
            }
            // 追加項目の数を調べる（IDがマイナス値の場合）
            if ( !isNaN( columnKey ) && columnKey < 0 ) addCount++;                            
        }
        if ( discardCount === 0 && addCount === 0) discardFlag = false;
        if ( discardCount === 0 ) duplicatFlag = false;
        if ( selectCount === discardCount ) restoreFlag = false;
        if ( selectCount === addCount ) deleteFlag = false;
    }
    const $button = tb.$.header.find('.tableHeaderMainMenuButton');
    // $button.filter('[data-type="tableOk"]').prop('disabled', confirmFlag );
    $button.filter('[data-type="tableDup"]').prop('disabled', duplicatFlag );
    $button.filter('[data-type="tableDel"]').prop('disabled', deleteFlag );

    $button.filter('[data-type="tableDiscard"]').prop('disabled', discardFlag );
    $button.filter('[data-type="tableRestore"]').prop('disabled', restoreFlag );
}

/*
##################################################
   textareaの幅と高さを調整する
##################################################
*/
textareaAdjustment() {
    const $text = $( this ),
          $parent = $text.parent('.textareaAdjustmentWrap'),
          $width = $parent.find('.textareaWidthAdjustmentText'),
          $height = $parent.find('.textareaHeightAdjustmentText');
    
    // 空の場合、高さを求めるためダミー文字を入れる
    let value = fn.escape( $text.val() ).replace(/\n/g, '<br>').replace(/<br>$/g, '<br>!');
    if ( value === '') value = '!';

    $width.add( $height ).html( value );
    
    if ( $width.get(0).scrollWidth > 632 ) {
        $parent.addClass('textareaOverWrap');
    } else {
        $parent.removeClass('textareaOverWrap');
    }
    
    $parent.css('height', $height.outerHeight() + 1 );

}

/*
##################################################
   [Event] Filter pulldown open 
   > プルダウン検索セレクトボックスを表示する
##################################################
*/
filterSelectOpen( $button ) {
    const tb = this;
    
    const $select = $button.parent('.filterSelectArea'),
          width = ( $select.width() + 32 ) + 'px',
          name = $button.attr('data-type') + '_RF',
          rest = $button.attr('data-rest');

    $button.addClass('buttonWaiting').prop('disabled', true );
    
    fn.fetch(`/menu/${tb.params.menuNameRest}/info/search/candidates/${rest}/`).then(function( result ){
        $select.html( tb.filterSelectBoxHtml( result, name, rest ) );
        $select.find('select').select2({
            placeholder: "Pulldown select",
            dropdownAutoWidth: false,
            width: width
        });
        $select.find('.select2-search__field').click();
    }).catch( function( e ) {
        alert( e.message );
        tb.gotoErrPage();
    });    
}
/*
##################################################
   tbodyデータのリクエスト
##################################################
*/
requestTbody() {
    const tb = this;
    
    tb.filterParams = tb.getFilerParameter();    
    
    // 件数を確認する
    fn.fetch(`/menu/${tb.params.menuNameRest}/filter/count/`, null, 'POST', tb.filterParams ).then(function( countResult ){
        const count = Number( fn.cv( countResult, 0 ) ),
              printLimitNum = Number( fn.cv( tb.info.menu_info.web_print_limit, -1 ) ),
              printConfirmNum = Number( fn.cv( tb.info.menu_info.web_print_confirm, -1 ) );

        
        // リミットチェック
        if ( printLimitNum !== -1 && count > printLimitNum ) {
            alert(WD.TABLE.limit);
            return false;
        //表示確認
        } else if ( printConfirmNum !== -1 && count >= printConfirmNum ) {
            if ( !confirm(WD.TABLE.confirm) ) {
                return false;
            }
        }
        
        tb.workerPost('filter', tb.filterParams );
    }).catch(function( error ){
        alert( error.message );
        tb.gotoErrPage();
    });
}
/*
##################################################
   Filterの内容を取得
##################################################
*/
getFilerParameter() {
    const tb = this;
    
    // フィルターの内容を取得
    const filterParams = {};    
    tb.$.thead.find('.filterInput').each(function(){            
        const $input = $( this ),
              value = $input.val(),
              rest = $input.attr('data-rest');
        if ( ( fn.typeof( value ) === 'string' && value ) || ( fn.typeof( value ) === 'array' && value.length ) ) {
            if ( !filterParams[ rest ] ) filterParams[ rest ] = {};
            if ( $input.is('.filterInputText') ) {
                // 文字列
                filterParams[ rest ].NORMAL = value;
            } else if ( $input.is('.filterSelect') ) {
                // セレクト
                filterParams[ rest ].LIST = value;
            } else if ( $input.is('.filterFromNumber') || $input.is('.filterFromDate') ) {
                // From
                if ( !filterParams[ rest ].RANGE ) filterParams[ rest ].RANGE = {};
                filterParams[ rest ].RANGE.START = fn.date( value, 'yyyy/MM/dd HH:mm:ss');
            } else if ( $input.is('.filterToNumber') || $input.is('.filterToDate') ) {
                // To
                if ( !filterParams[ rest ].RANGE ) filterParams[ rest ].RANGE = {};
                filterParams[ rest ].RANGE.END = fn.date( value, 'yyyy/MM/dd HH:mm:ss');
            } else if ( $input.is('.filterInputDiscard') ) {
                // 廃止
                if ( value === '全レコード') {
                    filterParams[ rest ].NORMAL = '';
                } else if ( value === '廃止含まず') {
                    filterParams[ rest ].NORMAL = '0';
                } else {
                    filterParams[ rest ].NORMAL = '1';
                }
            }
        }
    });
    
    return filterParams;
}
/*
##################################################
   FilterをクリアしてTableを表示する
##################################################
*/
clearFilter() {
    const tb = this;
    tb.data.body = null;
    tb.setInitSort();
    tb.setTable( tb.mode );
}
/*
##################################################
   Filter select box HTML
##################################################
*/
filterSelectBoxHtml( list, name, rest ) {
    const select = [];
    for ( const item of list ) {
        const value = fn.cv( item, '', true );
        select.push(`<option val="${value}">${value}</option>`)
    }
    return `<select class="filterSelect filterInput" name="${name}" data-rest="${rest}" multiple="multiple">${select.join('')}</select>`;
}
/*
##################################################
   Worker post
   > Workerにmessageを送信
##################################################
*/
workerPost( type, data ) {
    const tb = this;
    
    const post = {
        type: type,
        paging: tb.paging,
        sort: tb.sort,
        idName: tb.idNameRest
    };

    // 送信タイプ別
    switch ( type ) {
        case 'filter': {
            const url = fn.getRestApiUrl(
                `/menu/${tb.params.menuNameRest}/filter/`,
                tb.params.orgId,
                tb.params.wsId );
            
            post.rest = {
                token: CommonAuth.getToken(),
                url: url,
                filter: data
            };
        } break;
        case 'edit':
            post.select = data;
        break;
        case 'add':
        case 'changeEditRegi':
            post.add = data;
        break;
        case 'dup':
            post.select = data.select;
            post.addId = data.id;
            post.input = data.input;
        break;
        case 'changeEditDup':
            post.select = data.target;
            post.addId = data.id;
        break;
        case 'del':
            post.select = data;
        break;
        case 'normal':
            post.tableData = data;
        break
        case 'discard':
        case 'restore':
            post.select = data;
        break;
        case 'history': {
            const url = fn.getRestApiUrl(
                `/menu/${tb.params.menuNameRest}/filter/journal/${data}/`,
                tb.params.orgId,
                tb.params.wsId );

            post.rest = {
                token: CommonAuth.getToken(),
                url: url
            };
        } break;
    }
    tb.worker.postMessage( post );
}
/*
##################################################
   Workerイベント
##################################################
*/
setWorkerEvent() {
    const tb = this;
    tb.worker.addEventListener('message', function( message ){
        const type = message.data.type;
        
        switch ( type ) {
            case 'discard':
            case 'restore':
                tb.changeDiscard( message.data.selectData, type );
                tb.workEnd();
            break;
            case 'error':
                tb.workEnd();
                alert( message.data.result.message );
                location.replace('system_error/');
            break;
            default:
                tb.data.body =  message.data.result;

                if ( message.data.order ) tb.data.order = message.data.order;
                if ( message.data.discard ) tb.data.discard = message.data.discard;
                if ( message.data.paging ) tb.paging = message.data.paging;

                if ( type === 'changeEditDup' || type === 'changeEditRegi') {
                    tb.select.view = [];
                    tb.setTable('edit');
                } else {
                    tb.setTbody();
                }
        }
    });
}
/*
##################################################
   Set Body
   // HTMLセット後、Tableの調整をする
##################################################
*/
setTbody() {
    const tb = this;
    
    if ( tb.flag.autoFilter ) {
        tb.$.container.removeClass('autoFilterStandBy');
    }
    
    
    if ( tb.mode === 'history') {
        tb.$.container.removeClass('historyStandBy');
    }
    
    if ( tb.mode !== 'edit' && tb.data.body.length === 0 ) {
        tb.$.container.addClass('noData');
        tb.$.message.html('<div class="noDataMessage">表示できる内容がありません。</div>');
    } else {
        tb.$.container.removeClass('noData');
        if ( tb.mode === 'view' && tb.flag.update ) {
            tb.$.header.find('.itaButton[data-type="tableEdit"]').prop('disabled', false );
        }
    }
    
    tb.$.tbody.html( tb.tbodyHtml() );
    tb.updateFooterStatus();
    tb.$.body.scrollTop(0);
    tb.workEnd();

    if ( tb.mode !== 'edit') {
        tb.tableMaxWidthCheck('tbody');
    } else {
        tb.$.tbody.find('.textareaAdjustment').each( tb.textareaAdjustment );
    }
    
    tb.stickyWidth();
    
}
/*
##################################################
   Set filter standby
   > 初期フィルターオフ用
##################################################
*/
setFilterStandBy() {
    const tb = this;
    
    tb.$.header.find('.itaButton[data-type="filterToggle"]').attr('data-toggle', 'on');
    tb.$.container.addClass('autoFilterStandBy');
    tb.$.message.html('<div class="autoFilterStandByMessage">初期フィルタがオフです。<br>表示するにはフィルタしてください。</div>');
    
    tb.$.table.addClass('filterShow');
    
    tb.$.table.ready(function(){
        tb.workEnd();
        tb.stickyWidth();
    });
}
/*
##################################################
   Headerの調整
##################################################
*/
stickyWidth() {
    const tb = this;
    
    const style = [];
    
    // left sticky    
    let leftStickyWidth = 0;
    tb.$.thead.find('.tHeadTr').eq(0).find('.tHeadLeftSticky').each(function( index ){
        if ( index !== 0 ) {
            style.push(`.tHeadLeftSticky:nth-child(${ index + 1 }){left:${leftStickyWidth}px}`);
            style.push(`.tBodyLeftSticky:nth-child(${ index + 1 }){left:${leftStickyWidth}px}`);
        }
        leftStickyWidth += $( this ).outerWidth();
    });
    
    style.push(`.filterMenuList{left:${leftStickyWidth}px;}`);    
    style.push(`.tHeadGroup>.ci{left:${leftStickyWidth}px;}`);    
    
    tb.$.style.html( style.join('') );
}
/*
##################################################
   Table width check
   > 最大幅を超えた場合調整する
##################################################
*/
tableMaxWidthCheck( target ) {
    const tb = this;
    tb.$[ target ].find('.ci').each(function(){
        const $ci = $( this ),
              ci = $ci.get(0);
        
        if ( $ci.is('.textOverWrap') ) {
            $ci.css('width', 'auto').removeClass('textOverWrap');
        }
        
        if ( ci.clientWidth < ci.scrollWidth ) {
            $ci.css('width', ci.clientWidth ).addClass('textOverWrap');
        }

    });
}
/*
##################################################
   Body HTML
##################################################
*/
tbodyHtml() {
    const tb = this,
          list = tb.data.body;

    const html = [];

    for ( const item of list ) {
        const rowHtml = [],
              rowParameter = item.parameter,
              rowId = String( rowParameter[ tb.idNameRest ] ),
              rowClassName = ['tBodyTr'],
              discard = rowParameter.discard,
              journal = item.journal;
        
        // 廃止class
        if ( discard === '1') rowClassName.push('tBodyTrDiscard');
        
        // モード別列
        const rowCheckInput = function() {
            // チェック状態
            const attrs = {};
            if ( tb.select[ tb.mode ].indexOf( rowId ) !== -1 ) {
                attrs['checked'] = 'checked';
            }

            const checkboxId = `${tb.id}__ROWSELECT__${rowId}`,
                  checkbox = fn.html.check('tBodyRowCheck', rowId, checkboxId, attrs );
            return fn.html.cell( checkbox, ['tBodyLeftSticky', 'tBodyRowSelect', 'tBodyTh'], 'th');
        };
        
        switch ( tb.mode ) {
            case 'view': {
                const viewMenu = [];
                if ( tb.flag.update ) {
                    viewMenu.push({ type: 'rowEdit', text: '編集', action: 'default', id: rowId, className: 'tBodyRowMenuTb'});
                }
                if ( tb.flag.insert ) viewMenu.push({ type: 'rowDup', text: '複製', action: 'duplicat', id: rowId, className: 'tBodyRowMenuTb'});
                viewMenu.push({ type: 'rowHistory', text: '履歴', action: 'history', id: rowId, className: 'tBodyRowMenuUi'});
                if ( tb.flag.edit ) {
                    rowHtml.push( rowCheckInput() );
                }
                rowHtml.push( fn.html.cell( tb.rowMenuHtml( viewMenu ), ['tBodyLeftSticky', 'tBodyRowMenu', 'tBodyTh'], 'th'));
            } break;
            case 'edit':
                rowHtml.push( rowCheckInput() );
            break;
            case 'diff': {
                const type = ( !isNaN( rowId ) && Number( rowId) < 0 )? '登録': '編集';
                rowHtml.push( fn.html.cell( type, ['tBodyLeftSticky', 'tBodyRowEditType', 'tBodyTh'], 'th') );
            } break;
            case 'history':
                const num = fn.cv( rowParameter.journal_id, '', true ),
                      date = fn.date( fn.cv( rowParameter.journal_datetime, '', true ), 'yyyy/MM/dd HH:mm:ss'),
                      action = fn.cv( rowParameter.journal_action, '', true );
                rowHtml.push( fn.html.cell( action, ['tBodyLeftSticky', 'tBodyTh'], 'th') );
                rowHtml.push( fn.html.cell( num, ['tBodyTd'], 'td') );
                rowHtml.push( fn.html.cell( date, ['tBodyTd'], 'td') );
            break;
        }

        for ( const columnKey of tb.data.columnKeys ) {
            rowHtml.push( tb.cellHtml( rowParameter, columnKey, journal ) );
        }
        html.push( fn.html.row( rowHtml.join(''), rowClassName ) ); 
        
    }
    return html.join('');
}
/*
##################################################
   Cell HTML
##################################################
*/
cellHtml( parameter, columnKey, journal ) {
    const tb = this;
    
    const columnInfo = tb.info.column_info[ columnKey ],
          columnName = columnInfo.column_name_rest,
          columnType = columnInfo.column_type;
    
    const className = ['tBodyTd'];
    if ( columnType === 'NumColumn') className.push('tBodyTdNumber');
    if ( columnName === 'discard') className.push('tBodyTdMark discardCell');

    switch ( tb.mode ) {
        case 'view':
            return fn.html.cell( tb.viewCellHtml( parameter, columnKey ), className );
        case 'history':
            return fn.html.cell( tb.viewCellHtml( parameter, columnKey, journal ), className );
        case 'edit':
            if ( ( columnName !== 'discard' && parameter.discard === '1' ) && columnName !== 'remarks' ) {
                return fn.html.cell( tb.viewCellHtml( parameter, columnKey ), className );
            } else {
                className.push('tBodyTdInput');
                return fn.html.cell( tb.editCellHtml( parameter, columnKey ), className );
            }
        case 'diff':
            return fn.html.cell( tb.editConfirmCellHtml( parameter, columnKey ), className );
    }
}
/*
##################################################
   Discard mark
##################################################
*/
discardMark( value ) {
    return ( value === '0')? '<span class="discardMark false">0</span>': '<span class="discardMark true">1</span>';
}
/*
##################################################
   View mode cell HTML
##################################################
*/
viewCellHtml( parameter, columnKey, journal ) {
    const tb = this;
    
    const columnInfo = tb.info.column_info[ columnKey ],
          columnName = columnInfo.column_name_rest,
          columnType = columnInfo.column_type,
          autoInput = '<span class="tBodyAutoInput"></span>';
    
    let value = fn.cv( parameter[ columnName ], '', true );
    
    // 変更履歴
    const checkJournal = function( val ) {
        if ( journal && journal[ columnName ] ) {
            val = `<span class="journalChange">${val}</span>`;
        }
        return val;
    }
    
    // 廃止列
    if ( columnName === 'discard') {
        value = tb.discardMark( value );
        return checkJournal( value );
    }
    
    // ID列処理
    if ( columnName === tb.idNameRest && !isNaN( value ) && Number( value ) < 0 ) {
        return autoInput;
    }
    
    switch ( columnType ) {
        // そのまま表示
        case 'SingleTextColumn': case 'NumColumn': case 'FloatColumn':
        case 'IDColumn': case 'HostInsideLinkTextColumn': case 'LinkIDColumn':
        case 'LastUpdateUserColumn': case 'RoleIDColumn': case 'JsonColumn': 
        case 'EnvironmentIDColumn':
            return checkJournal( value );
        
        // 日付
        case 'DateColumn':
            return checkJournal( value );
            
        // 日時
        case 'DateTimeColumn':
            return checkJournal( value );
            
        // 最終更新日    
        case 'LastUpdateDateColumn':
            return checkJournal( fn.date( value, 'yyyy/MM/dd HH:mm:ss') );
            
        // 改行を<br>に置換
        case 'MultiTextColumn': case 'NoteColumn':
            if ( !isNaN( value ) ) {
                return checkJournal( value );
            } else {
                return checkJournal( value.replace(/\n/g, '<br>') );
            }
            
        // ********で表示
        case 'PasswordColumn': case 'MaskColumn':
        case 'SensitiveSingleTextColumn': case 'SensitiveMultiTextColumn':
            return '********';
            
        // ファイル名がリンクになっていてダウンロード可能
        case 'FileUploadColumn':
            const id = parameter[ tb.idNameRest ];
            return checkJournal(`<a href="${value}" class="tableViewDownload" data-id="${id}" data-rest="${columnName}">${value}</a>`);
            
        // ファイル名のみ表示（リンク無し）
        case 'FileUploadEncryptColumn':
            return checkJournal( value );
        
        // 不明
        default:
            return '?';
    }
}
/*
##################################################
   Edit mode cell HTML
##################################################
*/
editCellHtml( parameter, columnKey ) {
    const tb = this;
    
    const rowId = parameter[ tb.idNameRest ],
          columnInfo = tb.info.column_info[ columnKey ],
          columnName = columnInfo.column_name_rest,
          columnType = columnInfo.column_type,
          inputClassName = [],
          inputRequired = fn.cv( columnInfo.required_item, '0'),
          autoInput = '<span class="tBodyAutoInput"></span>';

    let value = fn.cv( parameter[ columnName ], '', true );

    const attr = {
        key: columnName,
        id: rowId,
        required: inputRequired
    };
    
    // 入力済みのデータがある？
    const inputData = tb.edit.input[ rowId ];
    if ( inputData !== undefined ) {

        const afterParameter = tb.edit.input[ rowId ]['after'].parameter[ columnName ];
        if ( afterParameter !== undefined ) {
            value =  fn.escape( afterParameter );
            
            const beforeParameter = tb.edit.input[ rowId ]['before'].parameter[ columnName ];
            if ( afterParameter !== beforeParameter ) {
                inputClassName.push('tableEditChange');
            }
        }
    }
        
    // required_item
    if ( inputRequired === '1') {
        attr['required'] = inputRequired;
        if ( value === '') inputClassName.push('tableEditRequiredError');
    }

    // validate_option
    if ( columnInfo.validate_option ) {
        try {
            const validates = JSON.parse( columnInfo.validate_option );
            for ( const validate in validates ) {
                attr[ validate.replace(/_/g, '-').toLowerCase() ] = validates[ validate ];
            }
        } catch ( e ) {
            window.console.group('JSON parse error.')
            window.console.warn(`validate_option : ${columnInfo.validate_option}`);
            window.console.warn( e );
            window.console.groupEnd('JSON parse error.')
        }
    }

    // ID列処理
    if ( columnName === tb.idNameRest ) {
        if ( !isNaN( value ) && Number( value ) < 0 ) {
            return autoInput;
        } else {
            return value;
        }
    }
    
    // 廃止列
    if ( columnName === 'discard') {
        value = tb.discardMark( value );
        return fn.html.span( inputClassName, value, name, attr );
    }
    
    // 最終更新日時
    if ( columnType === 'LastUpdateDateColumn') {
        if ( value !== '') {
            return fn.date( value, 'yyyy/MM/dd HH:mm:ss');
        } else {
            return autoInput;
        }
    }
    
    // 編集不可（input_item）
    if ( columnInfo.input_item === '0' || columnType === 'LastUpdateUserColumn') {
        if ( value !== '') {
            return value;
        } else {
            return autoInput;
        }
    }
    
    switch ( columnType ) {
        // 文字列入力（単一行）
        case 'SingleTextColumn': case 'HostInsideLinkTextColumn': case 'JsonColumn':
        case 'SensitiveSingleTextColumn':
            inputClassName.push('tableEditInputText');
            return fn.html.inputText( inputClassName, value, name, attr, { widthAdjustment: true });

        // 文字列入力（複数行）
        case 'MultiTextColumn': case 'SensitiveMultiTextColumn': case 'NoteColumn':
            inputClassName.push('tebleEditTextArea');
            return fn.html.textarea( inputClassName, value, name, attr, true );

        // 整数値
        case 'NumColumn':
            inputClassName.push('tableEditInputNumber');
            return fn.html.inputNumber( inputClassName, value, name, attr );

        // 小数値
        case 'FloatColumn':
            inputClassName.push('tableEditInputNumber');
            return fn.html.inputNumber( inputClassName, value, name, attr );
        
        // 日付
        case 'DateColumn':
            inputClassName.push('tableEditInputText');
            return fn.html.dateInput( false, inputClassName, value, name, attr );
            
        // 日時
        case 'DateTimeColumn':
            inputClassName.push('tableEditInputText');
            return fn.html.dateInput( true, inputClassName, value, name, attr );

        // プルダウン
        case 'IDColumn': case 'LinkIDColumn': case 'RoleIDColumn':
        case 'EnvironmentIDColumn':
            return fn.html.select( fn.cv( tb.data.editSelect[columnName], {}), inputClassName, value, name, attr );

        // パスワード
        case 'PasswordColumn': case 'MaskColumn':
            inputClassName.push('tableEditInputText');
            return fn.html.inputText( inputClassName, value, name, attr, { widthAdjustment: true });

        // ファイルアップロード
        case 'FileUploadColumn': case 'FileUploadEncryptColumn':
            inputClassName.push('tableEditSelectFile');
            return fn.html.button( value, inputClassName, attr );
        
        // 不明
        default:
            return '?';
    }
}
/*
##################################################
   Edit mode confirmation cell HTML
##################################################
*/
editConfirmCellHtml( parameter, columnKey ) { 
    const tb = this;
    
    const columnInfo = tb.info.column_info[ columnKey ],
          columnName = columnInfo.column_name_rest,
          columnType = columnInfo.column_type,
          value = fn.cv( parameter[ columnName ], '', true ),
          rowId = parameter[ tb.idNameRest ],
          type = ( !isNaN( rowId ) && Number( rowId ) < 0 )? 'registration': 'update',
          beforeData = tb.custom.before[ rowId ],
          autoInput = '<span class="tBodyAutoInput"></span>';
    
    // ID列処理
    if ( columnName === tb.idNameRest ) {
        if ( type === 'registration') {
            return autoInput;
        } else {
            return value;
        }
    }
    
    if ( parameter[ columnName ] !== undefined ) {
        if ( beforeData !== undefined && type === 'update') {
            return `<div class="tBodyAfterValue">${value}</div>`
            + `<div class="tBodyBeforeValue">${fn.cv( beforeData.parameter[ columnName ], '', true )}</div>`;
        } else {
            return value;
        }
    } else {
        if ( beforeData !== undefined ) {
            return fn.cv( beforeData.parameter[ columnName ], '', true );
        } else {
            return '';
        }
    }
}
/*
##################################################
   Row menu
   > 行メニュー（履歴など）
##################################################
*/
rowMenuHtml( list ) {
    const html = [];
    for ( const item of list ) {
        const button = fn.html.button( item.text, [ item.className, 'tableRowMenuButton', 'itaButton'],
            { type: item.type, action: item.action, id: item.id });
        html.push(`<li class="tableRowMenuItem">${button}</li>`);
    }
    return `
    ${fn.html.icon('ellipsis_v')}
    <div class="tableRowMenu">
        <ul class="tableRowMenuList">
            ${html.join('')}
        </ul>
    </div>
    `;
}
/*
##################################################
   Footer HTML
##################################################
*/
footerHtml() {
    const tb = this;

    const onePageNumList = [ 10, 25, 50, 75, 100 ];
    const onePageNumOptions = [];
    for ( const item of onePageNumList ) {
        onePageNumOptions.push(`<option value="${item}">${item}</option>`);
    }

    return `
    <div class="tableFooterInner">
        <div class="tableFooterBlock pagingAllNum">
            <dl class="tableFooterList">
                <dt class="tableFooterTitle"><span class="footerText pagingAllTitle"></span></dt>
                <dd class="tableFooterItem tableFooterData"><span class="footerText pagingAllNumNumber"></span></dd>
            </dl>
        </div>
        <div class="tableFooterBlock pagingOnePageNum">
            <dl class="tableFooterList">
                <dt class="tableFooterTitle"><span class="footerText">1ページに表示する件数</span></dt>
                <dd class="tableFooterItem tableFooterData">
                    <select class="pagingOnePageNumSelect input">
                        ${onePageNumOptions.join('')}
                    </select>
                </dd>
            </dl>
        </div>
        <div class="tableFooterBlock pagingMove">
            <ul class="tableFooterList">
                <li class="tableFooterItem">
                    <button class="pagingMoveButton" data-type="first">${fn.html.icon('first')}</button>
                </li>
                <li class="tableFooterItem">
                    <button class="pagingMoveButton" data-type="prev">${fn.html.icon('prev')}</button>
                </li>
                <li class="tableFooterItem">
                    <div class="pagingPage">
                        <span class="pagingCurrentPage"></span>
                        <span class="pagingSeparate">/</span>
                        <span class="pagingMaxPageNumber"></span>
                        <span class="pagingPageJumpNumber">ページ</span>
                    </div>
                </li>
                <li class="tableFooterItem">
                    <button class="pagingMoveButton" data-type="next">${fn.html.icon('next')}</button>
                </li>
                <li class="tableFooterItem">
                    <button class="pagingMoveButton" data-type="last">${fn.html.icon('last')}</button>
                </li>
            </ul>
        </div>
    </div>`;
}
/*
##################################################
   Update fotter status
   > Table情報を更新する
##################################################
*/
updateFooterStatus() {
    const tb = this;
    
    
    if ( tb.mode === 'edit' || tb.mode === 'diff') {
        tb.$.footer.find('.pagingAllTitle').text('編集件数');
    } else {
        tb.$.footer.find('.pagingAllTitle').text('フィルタ結果件数');
    }
    tb.$.footer.find('.pagingAllNumNumber').text( tb.paging.num.toLocaleString() );
    tb.$.footer.find('.pagingOnePageNumSelect').val( tb.paging.onePageNum );
    
    const $paging = tb.$.footer.find('.pagingMove');
    $paging.find('.pagingCurrentPage').text( tb.paging.pageNum );
    $paging.find('.pagingMaxPageNumber').text( tb.paging.pageMaxNum.toLocaleString() );
    
    const prevFlag = ( tb.paging.pageNum <= 1 )? true: false;
    $paging.find('.pagingMoveButton[data-type="first"], .pagingMoveButton[data-type="prev"]')
        .prop('disabled', prevFlag );
    
    const nextFlag = ( tb.paging.pageMaxNum === tb.paging.pageNum )? true: false;
    $paging.find('.pagingMoveButton[data-type="last"], .pagingMoveButton[data-type="next"]')
        .prop('disabled', nextFlag );
    
}
setPagingEvent() {
    const tb = this;
    tb.$.footer.find('.pagingMoveButton').on('click', function(){
        if ( !tb.checkWork ) {
            tb.workStart('paging');
            const $b = $( this ),
                  b = $b.attr('data-type');
            switch ( b ) {
                case 'first':
                    tb.paging.pageNum = 1;
                break;
                case 'last':
                    tb.paging.pageNum = tb.paging.pageMaxNum;
                break;
                case 'prev':
                    tb.paging.pageNum -= 1;
                break;
                case 'next':
                    tb.paging.pageNum += 1;
                break;
            }
            tb.workerPost('page');
        }
    });
    tb.$.footer.find('.pagingOnePageNumSelect').on('change', function(){
        tb.workStart('paging');
        tb.paging.onePageNum = Number( $( this ).val() );
        tb.workerPost('page');
    });

}
/*
##################################################
   changeEditMode
##################################################
*/
changeEdtiMode( changeMode ) {
    const tb = this;
    
    const info = tb.info.column_info;
    
    tb.workStart('table', 0 );
    tb.paging.page = 1;
    tb.edit.addId = -1;
    
    tb.$.container.removeClass('viewTable autoFilterStandBy');
    tb.$.container.addClass('editTable');

    // セレクトデータを取得後に表示する
    fn.fetch(`/menu/${tb.params.menuNameRest}/info/pulldown/`).then(function( result ){
        
        // 選択項目
        tb.data.editSelect = result;
        
        // 追加用空データ
        tb.edit.blank = {
            file: {},
            parameter: {
                discard: '0'
            }
        };

        // 初期値
        for ( const key of tb.data.columnKeys ) {
            const columnInfo = info[ key ];
            
            // 必須選択項目
            const selectTarget = ['IDColumn', 'LinkIDColumn', 'AppIDColumn'];
            if ( selectTarget.indexOf( columnInfo.column_type ) !== -1 
              && columnInfo.required_item === '1'
              && columnInfo.initial_value === null ) {
                const select = tb.data.editSelect[ columnInfo.column_name_rest ];
                if ( select !== undefined ) {
                    tb.edit.blank.parameter[ columnInfo.column_name_rest ] = select[ Object.keys( select )[0] ];
                }
            } else {
                if ( info[ key ].column_name_rest !== 'discard') {
                    tb.edit.blank.parameter[ columnInfo.column_name_rest ] = columnInfo.initial_value;
                }
            }      
        }
   
        if ( changeMode ) {
            switch ( changeMode ) {
                case 'changeEditRegi':
                    tb.edit.blank.parameter[ tb.idNameRest ] = String( tb.edit.addId-- );
                    tb.workerPost('changeEditRegi', tb.edit.blank );
                break;
                case 'changeEditDup':
                    tb.workerPost('changeEditDup', { target: tb.select.view, id: tb.edit.addId-- });
                break;
            }
        } else {
            tb.setTable('edit');
        }
    }).catch( function( e ) {
        alert( e.message );
        tb.gotoErrPage();
    });
}
/*
##################################################
   changeViewMode
##################################################
*/
changeViewMode() {
    const tb = this;
    
    tb.$.window.off('beforeunload');
    tb.$.container.removeClass('tableError');
    tb.$.errorMessage.empty();
    
    tb.$.container.addClass('viewTable');
    tb.$.container.removeClass('editTable');
    
    tb.workStart('table', 0 );
    tb.select.edit = [];
    tb.select.view = [];
    tb.data.body = null;
    tb.data.editSelect = null;
    tb.edit.input = {};
    tb.paging.page = 1;
    tb.setTable('view');
}
/*
##################################################
   Reflect edits
   >編集確認ボタン
##################################################
*/
reflectEdits() {
    const tb = this;
    
    // 表示用データ
    const diffData = {
        before: {},
        after: []
    };
    for ( const id of tb.data.order ) {
        if ( tb.edit.input[id] !== undefined ) {
            diffData.before[id] = tb.edit.input[id].before;            
            diffData.after.push( tb.edit.input[id].after );
        }
    }
    
    // モーダル表示
    const config = {
        mode: 'modeless',
        className: 'reflectEditsModal',
        width: '100%',
        height: '100%',
        header: {
            title: '編集確認',
            move: false,
            close: false
        }
    };
    
    const modalTable = new DataTable('DT', 'diff', tb.info, tb.params, diffData ),
          modal = new Dialog( config );
    
    modal.open( modalTable.setup() );

    // メニューボタン
    modalTable.$.header.find('.itaButton ').on('click', function(){
        if ( !tb.checkWork ) {
            const $button = $( this ),
                  type = $button.attr('data-type');
            switch ( type ) {
                // 編集反映
                case 'tableOk':
                    modalTable.workStart('table', 0 );
                    tb.editOk.call( tb ).then(function( result ){
                        modal.close().then( function(){
                            fn.resultModal( result ).then(function(){
                                tb.changeViewMode.call( tb );
                            });
                        });
                    }).catch(function( result ){
                        modal.close().then( function(){
                            tb.editError( result );
                        });
                    });
                break;
                case 'tableCancel':
                    modal.close();
                break;
                case 'tableChangeValue':
                    modalTable.$.container.toggleClass('tableShowChangeValue');
                    modalTable.tableMaxWidthCheck.call( modalTable, 'tbody');
                break;
            }
        }
    });
}
/*
##################################################
   Edit OK ( Modal )
   送信用編集データを作成し送信
##################################################
*/
editOk() {
    const tb = this;    
    
    tb.data.editOrder = [];
    
    const editData = [];
    
    for ( const itemId of tb.data.order ) {
        if ( tb.edit.input[ itemId ] !== undefined ) {
            const info = tb.info.column_info,
                  item = tb.edit.input[ itemId ];
            
            const itemData = {
                file: {},
                parameter: {}
            };

            tb.data.editOrder.push( itemId );

            for ( const columnKey of tb.data.columnKeys ) {
                const columnNameRest = info[ columnKey ].column_name_rest,
                      columnType = info[ columnKey ].column_type;

                const setData = function( type ) {
                    if ( item.after[ type ][ columnNameRest ] !== undefined ) {
                        return item.after[ type ][ columnNameRest ]
                    } else {
                        return fn.cv( item.before[ type ][ columnNameRest ], null );
                    }
                };

                if ( !isNaN( itemId ) && Number( itemId ) < 0 ) {
                    itemData.type = 'Register';
                } else {
                    itemData.type = 'Update';
                }

                if ( tb.idNameRest === columnNameRest && itemData.type === 'Register') {
                    itemData.parameter[ columnNameRest ] = null;
                } else {
                    switch ( columnType ) {
                        // File
                        case 'FileUploadColumn': case 'FileUploadEncryptColumn':
                            itemData.parameter[ columnNameRest ] = setData('parameter');
                            itemData.file[ columnNameRest ] = setData('file');
                        break;
                        // 最終更新日時と最終更新者
                        case 'LastUpdateDateColumn': case 'LastUpdateUserColumn':
                            if ( itemData.type === 'Register' ) {
                                itemData.parameter[ columnNameRest ] = null;
                            } else {
                                itemData.parameter[ columnNameRest ] = setData('parameter');
                            }
                        break;
                        // 基本
                        default:
                            itemData.parameter[ columnNameRest ] = setData('parameter');
                    }
                }
            }
            editData.push( itemData );
        }
    }

    return new Promise(function( resolve, reject ){        
        fn.fetch(`/menu/${tb.params.menuNameRest}/maintenance/all/`, null, 'POST', editData )
            .then(function( result ){ resolve( result ); })
            .catch(function( result ){ reject( result );
                //バリデーションエラー
                alert(WD.TABLE.invalid);
            });
    });
}
/*
##################################################
   Edit error
   > エラー表示
##################################################
*/
editError( error ) {
    const tb = this;

    let errorMessage;
    try {
        errorMessage = JSON.parse(error.message);
    } catch ( e ) {
        //JSONを作成
        errorMessage = {"0":{"共通":[error.message]}};
    }

    const errorHtml = [];
    
    for ( const item in errorMessage ) {
        for ( const error in errorMessage[item] ) {
            const name = fn.cv( tb.data.restNames[ error ], error, true ),
                  body = fn.cv( errorMessage[item][error].join(''), '?', true );

            errorHtml.push(`<tr class="tBodyTr tr">${fn.html.cell( item, ['tBodyTh', 'tBodyLeftSticky'], 'th')}${fn.html.cell( name, 'tBodyTd')}${fn.html.cell( body, 'tBodyTd' )}</tr>`);
        }
    }
    
    tb.$.container.addClass('tableError');
    tb.$.errorMessage.html(`
    <div class="errorTableContainer">
        <table class="table errorTable">
            <thead class="thead">
                <tr class="tHeadTr tr">
                    <th class="tHeadTh tHeadLeftSticky th"><div class="ci">エラーNo.</div></th>
                    <th class="tHeadTh th"><div class="ci">エラー列</div></th>
                    <th class="tHeadTh th"><div class="ci">エラー内容</div></th>
                </tr>
            </thead>
            <tbody class="tbody">
                ${errorHtml.join('')}
            </tbody>
        </table>
    </div>`);
}
/*
##################################################
   メインメニューへ移動
##################################################
*/
gotoMainMenu() {
    //window.location.href = this.params.path;
}

/*
##################################################
   エラーページへ移動
##################################################
*/
gotoErrPage() {
    window.location.href = this.params.path + 'system_error/';

}

}