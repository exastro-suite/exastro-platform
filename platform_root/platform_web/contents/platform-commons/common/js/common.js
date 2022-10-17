////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   Exastro IT Automation / common.js
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

/*
##################################################
   Common funcitions
##################################################
*/
const fn = ( function() {
    
    'use strict';

    // windowオブジェクトがあるかどうか
    const windowCheck = function() {
        try {
            window;
            return true;
        } catch( e ) {
            return false;
        }
    };
    const windowFlag = windowCheck();
    
    const organization_id = ( windowFlag )? CommonAuth.getRealm(): null,
          workspace_id =  ( windowFlag )? window.location.pathname.split('/')[3]: null;
    
    const typeofValue = function( value ) {
        return Object.prototype.toString.call( value ).slice( 8, -1 ).toLowerCase();
    };
    
    const classNameCheck = function( className, type ) {
        if ( fn.typeof( className ) === 'array') {
            className.push( type );
        } else {
            className = [ className, type ];
        }
        return className;
    };
    
    const bindAttrs = function( attrs ) {
        const attr = [];
        
        for ( const key in attrs ) {
            const attrName = ['checked', 'disabled', 'title', 'placeholder', 'style']; // dataをつけない
            if ( attrName.indexOf( key ) !== -1) {
                attr.push(`${key}="${attrs[key]}"`);
            } else {
                attr.push(`data-${key}="${attrs[key]}"`);
            }
        }
        return attr;
    };
    
    const inputCommon = function( value, name, attrs ) {
        const attr = bindAttrs( attrs );
        
        if ( value !== undefined && value !== null ) {
            attr.push(`value="${value}"`);
        }
        
        if ( name ) {
            attr.push(`id="${name}"`);
            attr.push(`name="${name}"`);
        }
        
        return attr;
    };


const cmn = {
/*
##################################################
   script, styleの読み込み
##################################################
*/
loadAssets: function( assets ){
    const f = function( type, url ){
        return new Promise(function( resolve, reject ){
            type = ( type === 'css')? 'link': 'script';
            
            const body = document.body,
                  asset = document.createElement( type );
            
            switch ( type ) {
                case 'script':
                    asset.src = url;
                break;
                case 'link':
                    asset.href = url;
                    asset.rel = 'stylesheet';
                break;
            }            
            
            body.appendChild( asset );
            
            asset.onload = function() {
                resolve();
            };
            
            asset.onerror = function( e ) {
                reject( e )
            };
        });
    };
    if ( typeofValue( assets ) === 'array') {
        return Promise.all(
            assets.map(function( asset ){
                return f( asset.type, asset.url );
            })
        );
    }
},
/*
##################################################
   ワークスペース切替用URL
##################################################
*/
getWorkspaceChangeUrl: function( changeId ) {
    return `/${organization_id}/workspaces/${changeId}/ita/`;
},
/*
##################################################
   REST API用のURLを返す
##################################################
*/
getRestApiUrl: function( url, orgId = organization_id, wsId = workspace_id ) {
    return `/api/${orgId}/workspaces/${wsId}/ita${url}`;
},
/*
##################################################
   データ読み込み
##################################################
*/
fetch: function( url, token, method = 'GET', json ) {
    
    if ( !token ) {
        token = CommonAuth.getToken();
    }
    
    let errorCount = 0;
    
    const f = function( u ){
        return new Promise(function( resolve, reject ){
            
            if ( windowFlag ) u = cmn.getRestApiUrl( u );
            
            const init = {
                method: method,
                headers: {
                  'Authorization': `Bearer ${token}`,
                  'Content-Type': 'application/json'
                }
            };
            if ( method === 'POST' && json !== undefined ) {
                try {
                    init.body = JSON.stringify( json );
                } catch ( e ) {
                    reject( e );
                }
            }
            console.log( u );
            console.log( init );
            fetch( u, init ).then(function( response ){
                console.log( response );
                if ( errorCount === 0 ) {
                    if( response.ok ) {
                        //200の場合
                        response.json().then(function( result ){ console.log( result );
                                resolve( result.data );
                        });
                    } else {
                        errorCount++;
                        if( response.status === 499 ) {
                            //バリデーションエラーは呼び出し元に返す
                             response.json().then(function( result ){ console.log( result );
                                reject( result );
                            }).catch(function( e ) {
                                cmn.systemErrorAlert();
                            }); 
                        } else if ( response.status === 401 ){
                            //権限無しの場合、トップページに戻す
                            response.json().then(function( result ){ console.log( result );
                                alert(result.message);
                                location.replace('/' + organization_id + '/workspaces/' + workspace_id + '/ita/');
                            }).catch(function( e ) {
                                cmn.systemErrorAlert();
                            });
                        } else {
                            //その他のエラー
                            cmn.systemErrorAlert();
                        }
                    }
                }
            }).catch(function( error ){
                reject( error );
            });
        });
    };
    if ( typeofValue( url ) === 'array') {
        return Promise.all(
            url.map(function( u ){
                return f( u );
            })
        );
    } else if ( typeofValue( url ) === 'string') {
        return f( url );
    }
},
/*
##################################################
   システムエラーAleat
##################################################
*/
systemErrorAlert: function() {
    alert(WD.COMMON.sys_err);
    // location.replace('system_error/');
},
/*
##################################################
   編集フラグ
##################################################
*/
editFlag: function( menuInfo ) {
    const flag  = {};
    flag.filter = ( menuInfo.initial_filter_flg === '1')? true: false;
    flag.autoFilter = ( menuInfo.auto_filter_flg === '1')? true: false;
    flag.history = ( menuInfo.history_table_flag === '1')? true: false;
    
    flag.insert = ( menuInfo.row_insert_flag === '1')? true: false;
    flag.update = ( menuInfo.row_update_flag === '1')? true: false;
    flag.disuse = ( menuInfo.row_disuse_flag === '1')? true: false;
    flag.reuse = ( menuInfo.row_reuse_flag === '1')? true: false;
    flag.edit = ( menuInfo.row_insert_flag === '1' && menuInfo.row_update_flag === '1')? true: false;
    
    return flag;
},
/*
##################################################
   0埋め
##################################################
*/
zeroPadding: function( num, digit ){
    let zeroPaddingNumber = '0';
    for ( let i = 1; i < digit; i++ ) {
      zeroPaddingNumber += '0';
    }
    zeroPaddingNumber += String( num );
    return zeroPaddingNumber.slice( -digit );
},
/*
##################################################
   空値チェック
##################################################
*/
cv: function( value, subValue, escape ){
    const type = typeofValue( value );
    if ( type === 'undefined' || type === 'null') value = subValue;
    if ( value && escape ) value = cmn.escape( value );

    return value;
},
/*
##################################################
   エスケープ
##################################################
*/
escape: function( value, br, space ) {
    br = ( br === undefined )? false: true;
    space = ( space === undefined )? false: true;
    const entities = [
        ['&', 'amp'],
        ['\"', 'quot'],
        ['\'', 'apos'],
        ['<', 'lt'],
        ['>', 'gt'],
        ['\\(', '#040'],
        ['\\)', '#041'],
        ['\\[', '#091'],
        ['\\]', '#093']
    ];
    const type = typeofValue( value );

    if ( value !== undefined && value !== null && type === 'string') {
        for ( var i = 0; i < entities.length; i++ ) {
            value = value.replace( new RegExp( entities[i][0], 'g'), `&${entities[i][1]};`);
        }
        value = value.replace( new RegExp(/\\/, 'g'), `&#092;`);
        if ( br ) value = value.replace(/\r?\n/g, '<br>');
        if ( space ) value = value.replace(/^\s+|\s+$/g, '');
    } else if ( type !== 'number') {
        value = '';
    }
    return value;
},
/*
##################################################
   対象が存在するか
##################################################
*/
exists: function( name ) {
    if ( name.match(/^\./) ) {
        return ( document.getElementsByClassName( name.replace(/^./, '') ) !== null )? true: false;
    } else if ( name.match(/^#/) ) {
        return ( document.getElementById( name.replace(/^#/, '') ) !== null )? true: false;
    } else {
        return ( document.getElementsByTagName( name ) !== null )? true: false;
    }
},
/*
##################################################
   型名
##################################################
*/
typeof: typeofValue,
/*
##################################################
   間引き処理 Throttle
##################################################
*/
throttle: function( func, interval ) {
    let lastTime = Date.now() - interval;
    return function() {
        const now = Date.now();
        if (( lastTime + interval ) < now ) {
            lastTime = now;
            func();
        }
    }
},
/*
##################################################
   間引き処理 Debounce
##################################################
*/
debounce: function( func, interval ) {
    let timer;
    return function() {
        clearTimeout( timer );
        timer = setTimeout( function() {
            func();
        }, interval );
    }
},
/*
##################################################
   選択解除
##################################################
*/
deselection: function() {
    if ( window.getSelection ) {
        window.getSelection().removeAllRanges();
    }
},
/*
##################################################
   日付フォーマット
##################################################
*/
date: function( date, format ) {
    if ( date ) {
        const d = new Date(date);
        
        format = format.replace(/yyyy/g, d.getFullYear());
        format = format.replace(/MM/g, ('0' + (d.getMonth() + 1)).slice(-2));
        format = format.replace(/dd/g, ('0' + d.getDate()).slice(-2));
        format = format.replace(/HH/g, ('0' + d.getHours()).slice(-2));
        format = format.replace(/mm/g, ('0' + d.getMinutes()).slice(-2));
        format = format.replace(/ss/g, ('0' + d.getSeconds()).slice(-2));
        format = format.replace(/SSS/g, ('00' + d.getMilliseconds()).slice(-3));
        return format;
    } else {
        return '';
    }
},
/*
##################################################
   URLパス
##################################################
*/
getPathname: function(){
    return ( new URL( document.location ) ).pathname;
},
/*
/*
##################################################
   URLパラメータ
##################################################
*/
getParams: function() {
    const searchParams = ( new URL( document.location ) ).searchParams.entries(),
          params = {};
    for ( const [ key, val ] of searchParams ) {
        params[ key ] = val;
    }
    return params;
},
/*
##################################################
   クリップボード
##################################################
*/
clipboard: {
    set: function( text ) {
        if ( navigator && navigator.clipboard ) {
            return navigator.clipboard.writeText( text );
        }
    }
},
/*
##################################################
   ダウンロード
##################################################
*/
download: function( type, data, fileName = 'noname') {
    
    let url;
    
    // URL形式に変換
    try {
        switch ( type ) {
        
            // エクセル
            case 'excel': {
                // BASE64 > Binary > Unicode変換
                const binary = window.atob( data ),
                      decode = new Uint8Array( Array.prototype.map.call( binary, function( c ){ return c.charCodeAt(); }));
                
                const blob = new Blob([ decode ], {
                    type: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
                });
                fileName += '.xlsx';
                url = URL.createObjectURL( blob );
            } break;
            
            // テキスト
            case 'text': {
                const blob = new Blob([ data ], {'type': 'text/plain'});
                fileName += '.txt';
                url = URL.createObjectURL( blob );
            } break;
            
            // JSON
            case 'json': {
                const blob = new Blob([ JSON.stringify( data, null, '\t') ], {'type': 'application/json'});
                fileName += '.json';
                url = URL.createObjectURL( blob );
            } break;
            
            // BASE64
            case 'base64': {
                url = 'data:;base64,' + data;
            } break;
                
        }
    } catch ( e ) {
        window.console.error( e );
    }
    
    const a = document.createElement('a');

    a.href = url;
    a.download = fileName;
    a.click();
    
    if ( type !== 'base64') URL.revokeObjectURL( url );

},
/*
##################################################
   ファイルを選択
##################################################
*/
fileSelect: function( type = 'base64', limitFileSize, accept ){
    return new Promise( function( resolve, reject ) {
        const file = document.createElement('input');
        let cancelFlag = true;
        
        file.type = 'file'; 
        if ( accept !== undefined ) file.accept = accept;
        
        file.addEventListener('change', function(){
            const file = this.files[0],
                  reader = new FileReader();
            
            cancelFlag = false;

            if ( limitFileSize && file.size >= limitFileSize ) {
                reject('File size limit over.');
            }
            
            if ( type === 'base64') {
                reader.readAsDataURL( file );

                reader.onload = function(){
                    resolve({
                        base64: reader.result.replace(/^data:.*\/.*;base64,/, ''),
                        name: file.name,
                        size: file.size
                    });
                };

                reader.onerror = function(){
                    reject( reader.error );
                };
            } else if ( type === 'file') {
                const formData = new FormData();
                formData.append('file', file );
                resolve( formData );
            } else if ( type === 'json') {
                reader.readAsText( file );
                
                reader.onload = function(){
                    try {
                        const json = JSON.parse( reader.result );
                        resolve({
                            json: json,
                            name: file.name,
                            size: file.size
                        });
                    } catch( e ) {
                        reject('JSONの形式が正しくありません。');
                    }                    
                };

                reader.onerror = function(){
                    reject( reader.error );
                };                
            }
        });

        file.click();
        
        // bodyフォーカスでダイアログを閉じたか判定
        document.body.onfocus = function(){
            setTimeout( function(){
                if ( cancelFlag ) reject('cancel');
                document.body.onfocus = null;
            }, 1000 );
        };
    });
},
/*
##################################################
   Disabled timer
##################################################
*/
disabledTimer: function( $element, flag, time ) {
    if ( time !== 0 ) {
        setTimeout( function(){
            $element.prop('disabled', flag );
        }, time );
    } else {
        $element.prop('disabled', flag );
    }
},
/*
##################################################
   Web storage
##################################################
*/
storage: {
    check: function( type ) {
        const storage = ( type === 'local')? localStorage:
                        ( type === 'session')? sessionStorage:
                        undefined;
        try {
            const storage = window[type],
            x = '__storage_test__';
            storage.setItem( x, x );
            storage.removeItem( x );
            return true;
        }
        catch( e ) {
            return e instanceof DOMException && (
            // everything except Firefox
            e.code === 22 ||
            // Firefox
            e.code === 1014 ||
            // test name field too, because code might not be present
            // everything except Firefox
            e.name === 'QuotaExceededError' ||
            // Firefox
            e.name === 'NS_ERROR_DOM_QUOTA_REACHED') &&
            // acknowledge QuotaExceededError only if there's something already stored
            storage.length !== 0;
        }    
    },
    'set': function( key, value, type ) {
        if ( type === undefined ) type = 'local';
        const storage = ( type === 'local')? localStorage: ( type === 'session')? sessionStorage: undefined;
        if ( storage !== undefined ) {
            try {
                storage.setItem( key, JSON.stringify( value ) );
            } catch( e ) {
                window.console.error('Web storage error: setItem( ' + key + ' ) / ' + e.message );
                storage.removeItem( key );
            }
        } else {
            return false;
        }
    },
    'get': function( key, type ) {
        if ( type === undefined ) type = 'local';
        const storage = ( type === 'local')? localStorage: ( type === 'session')? sessionStorage: undefined;
        if ( storage !== undefined ) {
            if ( storage.getItem( key ) !== null  ) {
                return JSON.parse( storage.getItem( key ) );
            } else {
                return false;
            }
        } else {
            return false;
        }
    },
    'remove': function( key, type ) {
        if ( type === undefined ) type = 'local';
        const storage = ( type === 'local')? localStorage: ( type === 'session')? sessionStorage: undefined;
        if ( storage !== undefined ) {
            storage.removeItem( key )
        } else {
            return false;
        }
    },
    getKeys: function( type ) {
        if ( type === undefined ) type = 'local';
        const storage = ( type === 'local')? localStorage: ( type === 'session')? sessionStorage: undefined,
              l = storage.length,
              keys = [];
        for ( let i = 0; i < l; i++ ) {
            keys.push( storage.key(i) );
        }
        return keys;
    }
},
/*
##################################################
   Alert, Confirm
##################################################
*/
alert: function( title, elements, type = 'alert', buttons = { ok: { text: '閉じる', action: 'normal'}} ) {
    return new Promise(function( resolve ){
        const funcs = {};
        
        funcs.ok = function(){
            dialog.close();
            resolve( true );
        };
        if ( type === 'confirm') {
            funcs.cancel = function(){
                dialog.close();
                resolve( false );
            };
        }
        const config = {
            mode: 'modeless',
            position: 'center',
            header: {
                title: title,
                close: false,
                move: false
            },
            footer: {
                button: buttons
            }
        };
        const dialog = new Dialog( config, funcs );
        dialog.open(`<div class="alertMessage">${elements}</div>`);
    });
},
/*
##################################################
   Calendar
##################################################
*/
calendar: function( setDate, currentDate, startDate, endDate ){
    const weekText = ['日','月','火','水','木','金','土'],
          weekClass = ['sun','mon','tue','wed','thu','fri','sat'];
    
    if ( startDate ) startDate = fn.date( startDate, 'yyyy/MM/dd');
    if ( endDate ) endDate = fn.date( endDate, 'yyyy/MM/dd');
    
    // 今月
    const date = ( setDate !== undefined )? new Date( setDate ): new Date(),
          year = date.getFullYear(),
          month = date.getMonth() + 1,
          end = new Date( year, month, 0 ).getDate();

    // 先月
    const lastMonthEndDate = new Date( year, month - 1 , 0 ),
          lastMonthYear = lastMonthEndDate.getFullYear(),
          lastMonth = lastMonthEndDate.getMonth() + 1,
          lastMonthEndDay = lastMonthEndDate.getDay(),
          lastMonthChangeNum = 7 + lastMonthEndDay,
          lastMonthStart = new Date( year, month - 1 , -lastMonthChangeNum ).getDate();

    // 来月
    const nextMonthDate = new Date( year, month + 1, 0 ),
          nextMonthYear = nextMonthDate.getFullYear(),
          nextMonth = nextMonthDate.getMonth() + 1;
    
    if ( !currentDate ) currentDate = date;
    if ( currentDate ) currentDate = fn.date( currentDate, 'yyyy/MM/dd');    
    
    // HTML
    const thead = function() {
        const th = [],
              l = weekText.length;
        for ( let i = 0; i < l; i++ ) {
            th.push(`<th class="calTh ${weekClass[i]}">${weekText[i]}</th>`)
        }
        return `<tr class="calRow">${th.join('')}</tr>`;
    };
    const cell = function( num, className, dataDate ) {
        return `<td class="${className}"><span class="calTdInner"><button type="button" class="calButton" data-date="${dataDate}">${num}</butto></span></td>`;
    };
    const disabledCell = function( num, className ) {
        return `<td class="${className} disabled"><span class="calDisabled">${num}</span></td>`;
    };

    const rowHtml = [];
    let count = 0;
    for ( let w = 0; w < 7; w++ ) {
        const cellHtml = [];
        for ( let d = 0; d < 7; d++ ) {
            let num, dataDate, className = 'calTd ' + weekClass[d];
            if ( lastMonthChangeNum >= count ) {
                // 先月
                num = lastMonthStart + count++;
                className += ' lastMonth';
                dataDate = `${lastMonthYear}/${cmn.zeroPadding( lastMonth, 2 )}/`;
            } else if ( count - lastMonthChangeNum > end ) {
                // 来月
                className += ' nextMonth';
                num = count++ - end - lastMonthChangeNum;
                dataDate = `${nextMonthYear}/${cmn.zeroPadding( nextMonth, 2 )}/`;
            } else {
                // 今月
                num = count++ - lastMonthChangeNum;
                dataDate = `${year}/${cmn.zeroPadding( month, 2 )}/`;
            }
            const cellDate = dataDate + cmn.zeroPadding( num, 2 );
            
            if ( currentDate === cellDate ) className += ' currentCell';
            
            if ( ( startDate === cellDate ) || ( endDate && currentDate === cellDate ) ) className += ' startCell';
            if ( ( endDate === cellDate ) || ( startDate && currentDate === cellDate ) ) className += ' endCell';
            if ( ( startDate && startDate < cellDate && currentDate > cellDate )
                || ( endDate && endDate > cellDate && currentDate < cellDate )  ) className += ' periodCell';
            
            if ( ( startDate && startDate > cellDate ) || ( endDate && endDate < cellDate ) ) {
                cellHtml.push( disabledCell( num, className ) );
            } else {
                cellHtml.push( cell( num, className, cellDate ) );
            }
        }
        rowHtml.push(`<tr class="calRow">${cellHtml.join('')}</tr>`);
    }

    return `<table class="calTable">`
        + `<thead class="calThead">`
            + thead()
        + `</thead>`
        + `<tbody class="calTbody">`
            + rowHtml.join('')
        + `</tbody>`
    + `</table>`;
},
/*
##################################################
   Data picker
##################################################
*/
datePicker: function( timeFlag, className, date, start, end ) {
    
    date = ( date && !isNaN( new Date( date ) ) )? new Date( date ): new Date();
    
    if ( className === 'datePickerFromDateText' && !end ) end = date;
    if ( className === 'datePickerToDateText' && !start ) start = date;
    
    let monthCount = 0;
    
    let inputDate;
    
    let year = date.getFullYear(),
        month = date.getMonth() + 1,
        day = date.getDate();
    
    let hour = date.getHours(),
        min = date.getMinutes(),
        sec = date.getSeconds();
    
    const $datePicker = $('<div/>', {
        'class': 'datePickerContainer'
    }).html(`
    <div class="datePickerDate">
        <input type="text" class="datePickerDateInput ${className}" tabindex="-1" readonly>
        <input type="hidden" class="datePickerDateHidden datePickerDateStart">
        <input type="hidden" class="datePickerDateHidden datePickerDateEnd">
    </div>
    <div class="datePickerSelectDate">
        <div class="datePickerYear">
            <div class="datePickerYearPrev"><button class="datePickerButton" data-type="prevYear"><span class="icon icon-prev"></span></button></div>
            <div class="datePickerYearText">${year}</div>
            <div class="datePickerYearNext"><button class="datePickerButton" data-type="nextYear"><span class="icon icon-next"></span></button></div>
        </div>
        <div class="datePickerMonth">
            <div class="datePickerMonthPrev"><button class="datePickerButton" data-type="prevMonth"><span class="icon icon-prev"></span></button></div>
            <div class="datePickerMonthText">${month}</div>
            <div class="datePickerMonthNext"><button class="datePickerButton" data-type="nextMonth"><span class="icon icon-next"></span></button></div>
        </div>
    </div>
    <div class="datePickerCalendar">
        ${cmn.calendar( date, date, start, end )}
    </div>`);
    
    const setInputDate = function( changeFlag = true ) {
        inputDate = `${year}/${fn.zeroPadding( month, 2 )}/${fn.zeroPadding( day, 2 )}`;
        if ( timeFlag ) {
            $date.val(`${inputDate} ${fn.zeroPadding( hour, 2 )}:${fn.zeroPadding( min, 2 )}:${fn.zeroPadding( sec, 2 )}`);
        } else {
            $date.val( inputDate );
        }
        if ( changeFlag ) $date.change();
    };
    
    const $date = $datePicker.find('.datePickerDateInput'),
          $year = $datePicker.find('.datePickerYearText'),
          $month = $datePicker.find('.datePickerMonthText'),
          $cal = $datePicker.find('.datePickerCalendar');
    
    setInputDate( false );
    
    $datePicker.find('.datePickerButton').on('click', function(){
        const $button = $( this ),
              type = $button.attr('data-type');
        
        switch ( type ) {
            case 'prevYear': monthCount -= 12; break;
            case 'nextYear': monthCount += 12; break;
            case 'prevMonth': monthCount -= 1; break;
            case 'nextMonth': monthCount += 1; break;
        }
        const newData = new Date( date.getFullYear(), date.getMonth() + monthCount, day );
        
        year = newData.getFullYear();
        month = newData.getMonth() + 1;
        
        $year.text( year );
        $month.text( month );
                
        $cal.html( cmn.calendar( newData, inputDate, start, end ) );
    });
    
    $datePicker.on('click', '.calButton', function(){
        const $button = $( this ),
              ckickDate = $button.attr('data-date').split('/');
              
        year = ckickDate[0];
        month = ckickDate[1];
        day = ckickDate[2];
        
        setInputDate();
        $cal.html( cmn.calendar( inputDate, inputDate, start, end ) );
    });
    
    $datePicker.find('.datePickerDateHidden').on('change', function(){
        const $hidden = $( this ),
              value = $hidden.val(),
              inputValue = $date.val();
        if ( $hidden.is('.datePickerDateStart') ) {
            start = value;
        } else {
            end = value;
        }
        $cal.html( cmn.calendar( inputValue, inputValue, start, end ) );
    });
    
    // 時間
    if ( timeFlag ) {
            
        const $time = $datePicker.find('.datePickerTime');

        $datePicker.append(`
        <div class="datePickerTime">
            <div class="datePickerHour">${cmn.html.inputFader('datePickerHourInput', hour, null, { min: 0, max: 23 }, { after: '時'} )}</div>
            <div class="datePickerMin">${cmn.html.inputFader('datePickerMinInput', min, null, { min: 0, max: 59 }, { after: '分'} )}</div>
            <div class="datePickerSec">${cmn.html.inputFader('datePickerSecInput', sec, null, { min: 0, max: 59 }, { after: '秒'} )}</div>
        </div>`);
        
        $datePicker.find('.inputFaderWrap').each(function(){
            cmn.faderEvent( $( this ) );
        });
        
        $datePicker.find('.inputFader').on('change', function(){
            const $input = $( this ),
                  value = $input.val();
            if ( $input.is('.datePickerHourInput') ) {
                hour = value;
            } else if ( $input.is('.datePickerMinInput') ) {
                min = value;
            } else {
                sec = value;
            }
            
            setInputDate( false );
        });
    
    }
    
    $datePicker.append(`<div class="datePickerMenu">
        <ul class="datePickerMenuList">
            <li class="datePickerMenuItem">${fn.html.button('現在', ['datePickerMenuButton', 'itaButton'], { type: 'current', action: 'normal', style: 'width:100%'})}</li>
            <li class="datePickerMenuItem">${fn.html.button('クリア', ['datePickerMenuButton', 'itaButton'], { type: 'clear', action: 'normal', style: 'width:100%'})}</li>
        </ul>
    </div>`);
    
    $datePicker.find('.datePickerMenuButton').on('click', function(){
        const $button = $( this ),
              type = $button.attr('data-type');
        switch ( type ) {
            case 'current':
                
            break;
            case 'clear':
            
            break;
        }
    });
    
    return $datePicker;
},
/*
##################################################
   Data picker dialog
##################################################
*/
datePickerDialog: function( type, timeFlag, title, date ){
    return new Promise(function( resolve ){
        const funcs = {
            ok: function() {
                const result = {};
                
                if ( type === 'fromTo') {
                    result.from = $dataPicker.find('.datePickerFromDateText').val();
                    result.to = $dataPicker.find('.datePickerToDateText').val();
                } else {
                    result.date = $dataPicker.find('.datePickerDateText').val();
                }

                dialog.close().then(function(){
                    resolve( result );
                });
            },
            cancel: function() {
                dialog.close().then(function(){ resolve('cancel') });
            }
        };
        
        const buttons = {
            ok: { text: '反映', action: 'default'},
            cancel: { text: 'キャンセル', action: 'normal'}
        };
        
        const config = {
            mode: 'modeless',
            position: 'center',
            width: '720px',
            header: {
                title: title,
                close: false,
                move: false
            },
            footer: {
                button: buttons
            }
        };
        
        const dialog = new Dialog( config, funcs );
        
        // Data picker
        const $dataPicker = $('<div/>', {
            'class': 'datePickerContainer'
        });
            
        if ( type === 'fromTo') {
            $dataPicker.addClass('datePickerFromToContainer').html(`<div class="datePickerFrom"></div>`
            + `<div class="datePickerTo"></div>`);

            $dataPicker.find('.datePickerFrom').html( cmn.datePicker( timeFlag, 'datePickerFromDateText', date.from, null, date.to ) );
            $dataPicker.find('.datePickerTo').html( cmn.datePicker( timeFlag, 'datePickerToDateText', date.to, date.from, null ) );
            
            // 日付の入力をチェックする
            $dataPicker.find('.datePickerFromDateText').on('change', function(){
                const val = $( this ).val();
                $dataPicker.find('.datePickerTo').find('.datePickerDateStart').val( val ).change();
            });
            $dataPicker.find('.datePickerToDateText').on('change', function(){
                const val = $( this ).val();
                $dataPicker.find('.datePickerFrom').find('.datePickerDateEnd').val( val ).change();
            });
            
        } else {
            $dataPicker.html( cmn.datePicker( timeFlag, null, date ) );
        }
        
        dialog.open( $dataPicker );
        
     
    });
},
/*
##################################################
   Input fader event
##################################################
*/
faderEvent: function( $item ) {
    const $window = $( window ),
          $fader = $item.find('.inputFaderRange'),
          $input = $item.find('.inputFader'),
          $knob = $item.find('.inputFaderRangeKnob'),
          $lower = $fader.find('.inputFaderRangeLower'),
          $tooltip = $fader.find('.inputFaderRangeTooltip'),
          min = Number( $input.attr('data-min') ),
          max = Number( $input.attr('data-max') ),
          inputRange = max - min;

    let   width = $fader.width(),
          val = $input.val(),
          ratio, positionX;

    // 位置をセット
    const setPosition = function(){
        const p =  Math.round( ratio * 100 ) + '%';
        $knob.css('left', p );
        $lower.css('width', p );
    };
    // 割合から位置と値をセット
    const ratioVal = function(){
      if ( ratio <= 0 ) ratio = 0;
      if ( ratio >= 1 ) ratio = 1;
      val = Math.round( inputRange * ratio ) + min;
      $input.val( val ).change();

      setPosition();
    };
    // 値から位置をセット
    const valPosition = function(){
      if ( val === '') val = min;
      ratio = ( val - min ) / inputRange;
      if ( Number.isNaN( ratio ) ) ratio = 0;
      positionX = Math.round( width * ratio );

      setPosition();
    };
    valPosition();

    $fader.on({
      'mousedown': function( mde ){
        if ( mde.button === 0 ) {
          getSelection().removeAllRanges();

          $fader.addClass('active');
          const clickX = mde.pageX - $fader.offset().left;

          width = $fader.width();
          ratio = clickX / width;
          positionX = Math.round( width * ratio );

          ratioVal();

          $window.on({
            'mouseup.faderKnob': function(){
              $fader.removeClass('active');
              $window.off('mouseup.faderKnob mousemove.faderKnob');
              valPosition();
            },
            'mousemove.faderKnob': function( mme ){
              const moveX = mme.pageX - mde.pageX;
              ratio = ( positionX + moveX ) / width;                  
              ratioVal();
            }
          });
        }
      },
      // ツールチップ
      'mouseenter': function(){
        const left =  $fader.offset().left,
              top = $fader.offset().top;
        $tooltip.show();
        width = $fader.width();
        $window.on({
          'mousemove.faderTooltip': function( mme ){
            const tRatio = ( mme.pageX - left ) / width;
            let   tVal = Math.round( inputRange * tRatio ) + min;
            if ( tVal < min ) tVal = min;
            if ( tVal > max ) tVal = max ;
            $tooltip.text( tVal );
            $tooltip.css({
              'left': mme.pageX,
              'top': top
            });
          }
        });
      },
      'mouseleave': function(){
        $tooltip.hide();
        $window.off('mousemove.faderTooltip');
      }
    });

    $input.on('input', function(){
      val = $input.val();
      width = $fader.width();
      if ( val !== '') {
        if ( val < min ) {
          $input.val( min ).change();
          val = min;
        }
        if ( val > max ) {
          $input.val( max ).change();
          val = max;
        }
      } else {
        val = '';
      }
      valPosition();
    });
},
/*
##################################################
   HTML
##################################################
*/
html: {
    icon: function( type ) {
        return `<span class="icon icon-${type}"></span>`;
    },
    button: function( element, className, attrs = {}, toggle ) {
        const attr = inputCommon( null, null, attrs );
        className = classNameCheck( className, 'button');
        if ( toggle !== undefined ) className.push('toggleButton');
        
        attr.push(`class="${className.join(' ')}"`);
        
        if ( toggle !== undefined ) {
            attr.push(`data-toggle="${toggle.init}"`);
            const toggleSwitch = `<span class="toggleButtonSwitch">`
                + `<span class="toggleButtonSwitchOn">${toggle.on}</span>`
                + `<span class="toggleButtonSwitchOff">${toggle.off}</span>`
            + `</span>`;
            return `<button ${attr.join(' ')}><span class="inner">${element}${toggleSwitch}</span></button>`;
        } else { 
            return `<button ${attr.join(' ')}><span class="inner">${element}</span></button>`;
        }
    },
    inputHidden: function( className, value, name, attrs = {}) {
        const attr = inputCommon( value, name, attrs );
        attr.push(`class="${classNameCheck( className, 'inputHidden input').join(' ')}"`);
        
        return `<input type="hidden" ${attr.join(' ')}>`;
    },
    span: function( className, value, name, attrs = {}) {
        const attr = inputCommon( null, name, attrs );
        attr.push(`class="${classNameCheck( className, 'inputSpan').join(' ')}"`);
        
        return `<span ${attr.join(' ')}>${value}</span>`;
    },
    inputText: function( className, value, name, attrs = {}, option = {} ) {
        const attr = inputCommon( value, name, attrs );
        
        className = classNameCheck( className, 'inputText input');
        if ( option.widthAdjustment ) className.push('inputTextWidthAdjustment')
        attr.push(`class="${className.join(' ')}"` );
        
        let input = `<input type="text" ${attr.join(' ')}>`;
        
        if ( option.widthAdjustment ) {
            input = ``
            + `<div class="inputTextWidthAdjustmentWrap">`
                + input
                + `<div class="inputTextWidthAdjustmentText">${value}</div>`
            + `</div>`
        }
        
        if ( option.before || option.after ) {
          const before = ( option.before )? `<div class="inputTextBefore">${option.before}</div>`: '',
                after =  ( option.after )? `<div class="inputTextAfter">${option.after}</div>`: '';
        
          input = `<div class="inputTextWrap">${before}<div class="inputTextBody">${input}</div>${after}</div>`;
        }
        return  input;
    },
    inputPassword: function( className, value, name, attrs = {}) {
        const attr = inputCommon( value, name, attrs );
        attr.push(`class="${classNameCheck( className, 'inputPassword input').join(' ')}"`);
        
        return `<div class="inputPasswordWrap">`
            + `<div class="inputPasswordBody"><input type="password" ${attr.join(' ')}></div>`
            + `<div class="inputPasswordToggle"><button type="button" class="button inputPasswordToggleButton"></button></div>`
        + `</div>`;
    },
    inputNumber: function( className, value, name, attrs = {}) {
        const attr = inputCommon( value, name, attrs );
        attr.push(`class="${classNameCheck( className, 'inputNumber input').join(' ')}"`);
        
        return `<input type="number" ${attr.join(' ')}>`;
    },
    inputFader: function( className, value, name, attrs = {}, option = {}) {
        const attr = inputCommon( value, name, attrs );
        let bodyClass = 'inputFaderBody';
        className = classNameCheck( className, 'inputFader inputNumber input');
        if ( option.before ) bodyClass += ' inputFaderBeforeWrap';
        if ( option.after ) bodyClass += ' inputFaderAfterWrap';
        
        attr.push(`class="${className.join(' ')}"`);
        
        let input = `<div class="${bodyClass}">`
            + `<input type="number" ${attr.join(' ')}>`
        + `</div>`;
        
        if ( option.before || option.after ) {
          const before = ( option.before )? `<div class="inputFaderBefore">${option.before}</div>`: '',
                after =  ( option.after )? `<div class="inputFaderAfter">${option.after}</div>`: '';
        
          input = `${before}${input}${after}`;
        }
        
        return `<div class="inputFaderWrap">`
            + input
            + `<div class="inputFaderRange">`
                + `<div class="inputFaderRangeKnob"></div>`
                + `<div class="inputFaderRangeLower"></div>`
                + `<div class="inputFaderRangeTooltip"></div>`
            + `</div>`
        + `</div>`;    
    },
    textarea: function( className, value, name, attrs = {}, widthAdjustmentFlag ) {
        const attr = inputCommon( null, name, attrs );
        
        className = classNameCheck( className, 'textarea input');
        if ( widthAdjustmentFlag ) className.push('textareaAdjustment')
        attr.push(`class="${className.join(' ')}"` );
        
        if ( widthAdjustmentFlag ) {
            return ``
            + `<div class="textareaAdjustmentWrap">`
                + `<textarea wrap="soft" ${attr.join(' ')}>${value}</textarea>`
                + `<div class="textareaAdjustmentText textareaWidthAdjustmentText">${value}</div>`
                + `<div class="textareaAdjustmentText textareaHeightAdjustmentText">${value}</div>`
            + `</div>`
        } else {
            return `<textarea wrap="off" ${attr.join(' ')}>${value}</textarea>`;
        }
    },
    check: function( className, value, name, attrs = {}) {
        const attr = inputCommon( value, name, attrs );
        attr.push(`class="${classNameCheck( className, 'checkbox').join(' ')}"`);
        
        return ``
        + `<div class="checkboxWrap">`
            + `<input type="checkbox" ${attr.join(' ')}>`
            + `<label for="${name}" class="checkboxLabel"></label>`
        + `</div>`;
    },
    checkboxText: function( className, value, name, attrs = {}) {
        const attr = inputCommon( value, name, attrs );
        attr.push(`class="${classNameCheck( className, 'checkboxText').join(' ')}"`);
        
        return ``
        + `<div class="checkboxTextWrap">`
            + `<input type="checkbox" ${attr.join(' ')}>`
            + `<label for="${name}" class="checkboxTextLabel"><span class="checkboxTextMark"></span>${value}</label>`
        + `</div>`;
    },
    'select': function( list, className, value, name, attrs = {}) {
        const option = [],
              attr = inputCommon( null, name, attrs );
        attr.push(`class="${classNameCheck( className, 'select input').join(' ')}"`);
        
        // 必須じゃない場合空白を追加
        if ( attrs.required === '0') {
            option.push(`<option value=""></option>`);
        }
        
        for ( const key in list ) {
            const val = cmn.escape( list[ key ] ),
                  optAttr = [`value="${val}"`];
            if ( value === val ) optAttr.push('selected', 'selected');
            option.push(`<option ${optAttr.join(' ')}>${val}</option>`);
        }
        
        return ``
        + `<select ${attr.join(' ')}>`
            + option.join('')
        + `</select>`;
    },
    row: function( element, className ) {
        className = classNameCheck( className, 'tr');
        return `<tr class="${className.join(' ')}">${element}</tr>`;
    },
    cell: function( element, className, type = 'td', rowspan = 1, colspan = 1, attrs = {}) {
        const attr = bindAttrs( attrs );
        attr.push(`class="${classNameCheck( className, type ).join(' ')}"`);
        attr.push(`rowspan="${rowspan}"`);
        attr.push(`colspan="${colspan}"`);
        return ``
        + `<${type} ${attr.join(' ')}}>`
            + `<div class="ci">${element}</div>`
        + `</${type}>`;
    },
    table: function( tableData, className, thNumber ) {
        className = classNameCheck( className, 'table');
 
        const table = [];
        for ( const type in tableData ) {
            table.push(`<${type}>`);
            const row = [];
            for ( const cells of tableData[ type ] ) {
                const cellLength = cells.length,
                      cell = [];
                for ( let i = 0; i < cellLength; i++ ) {
                    const cellData = cells[i];
                    if ( type === 'thead') {
                        cell.push( cmn.html.cell( cellData, ['tHeadTh', 'th'], 'th') );
                    } else {
                        if ( i < thNumber ) {
                            cell.push( cmn.html.cell( cellData, ['tBodyTh', 'th'], 'th') );
                        } else {
                            cell.push( cmn.html.cell( cellData, ['tBodyTd', 'td'], 'td') );
                        }
                    }
                }
                const rowClass = ( type === 'thead')? 'tHeadTr': 'tBodyTr';
                row.push( cmn.html.row( cell.join(''), [ rowClass, 'tr'] ) )
            }
            table.push( row.join('') );
            table.push(`</${type}>`);
        }
        
        return `<table class="${className.join(' ')}">${table.join('')}</table>`;
    },
    dateInput: function( timeFlag, className, value, name, attrs = {} ) {
        className = classNameCheck( className, 'inputDate');
        
        const placeholder = ( timeFlag )? 'yyyy-MM-dd HH:mm:ss': 'yyyy-MM-dd';
        attrs.placeholder = placeholder;
                
        return `<div class="inputDateContainer">`
            + `<div class="inputDateBody">`
                + fn.html.inputText( className, value, name, attrs )
            + `</div>`
            + `<div class="inputDateCalendar">`
                + fn.html.button('<span class="icon icon-cal"></span>', ['itaButton', 'inputDateCalendarButton'], { action: 'normal'} )
            + `</div>`
        + `</div>`;
    }
},
/*
##################################################
   処理中モーダル
##################################################
*/
processingModal: function( title ) {
    const config = {
        mode: 'modeless',
        position: 'center',
        header: {
            title: title
        },
        width: '320px'
    };
    
    const dialog = new Dialog( config );
    dialog.open(`<div class="processingContainer"></div>`);
    
    return dialog;
},
/*
##################################################
   登録成功モーダル
##################################################
*/
resultModal: function( result ) {
    return new Promise(function( resolve ){
        const funcs = {};
        funcs.ok = function(){
            dialog.close();
            resolve( true );
        };
        const config = {
            mode: 'modeless',
            position: 'center',
            header: {
                title: '登録成功'
            },
            width: '480px',
            footer: {
                button: { ok: { text: '閉じる', action: 'normal'}}
            }
        };
        const html = []
    
        const listOrder = ['Register', 'Update', 'Discard', 'Restore'];
        for ( const key of listOrder ) {
              html.push(`<dl class="resultList resultType${key}">`
                  + `<dt class="resultType">${key}</dt>`
                  + `<dd class="resultNumber">${result[key]}</dd>`
              + `</dl>`);
        }    
        
        const dialog = new Dialog( config, funcs );
        dialog.open(`<div class="resultContainer">${html.join('')}</div>`);
    });
},
/*
##################################################
   登録失敗エラーモーダル
##################################################
*/
errorModal: function( error, pageName ) {
    return new Promise(function( resolve ){
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
                const number = Number( item ) + 1,
                      name = cmn.cv( error, '', true ),
                      body = cmn.cv( errorMessage[item][error].join(''), '?', true );

                errorHtml.push(`<tr class="tBodyTr tr">`
                + cmn.html.cell( number, ['tBodyTh', 'tBodyLeftSticky'], 'th')
                + cmn.html.cell( name, 'tBodyTd')
                + cmn.html.cell( body, 'tBodyTd')
                + `</tr>`);
            }
        }

        const html = `
        <div class="errorTableContainer">
            <table class="table errorTable">
                <thead class="thead">
                    <tr class="tHeadTr tr">
                        <th class="tHeadTh tHeadLeftSticky th"><div class="ci">No.</div></th>
                        <th class="tHeadTh th"><div class="ci">エラー列</div></th>
                        <th class="tHeadTh th"><div class="ci">エラー内容</div></th>
                    </tr>
                </thead>
                <tbody class="tbody">
                    ${errorHtml.join('')}
                </tbody>
            </table>
        </div>`;
        
        const funcs = {};
        funcs.ok = function() {
            dialog.close();
            resolve( true );
        };
        funcs.download = function() {
            cmn.download('json', errorMessage, pageName + '_register_error_log');
        };
        const config = {
            mode: 'modeless',
            position: 'center',
            header: {
                title: '登録失敗'
            },
            width: 'auto',
            footer: {
                button: {
                  download: { text: 'エラーログJSONダウンロード', action: 'default'},
                  ok: { text: '閉じる', action: 'normal'}
              }
            }
        };
        
        const dialog = new Dialog( config, funcs );
        dialog.open(`<div class="errorContainer">${html}</div>`);
    });
    
},
/*
##################################################
   Common events
##################################################
*/
setCommonEvents: function() {
    const $window = $( window ),
          $body = $('body');
    
    // input text, textarea の幅を入力に合わせる
    $body.on('input.textWidthAdjustment', '.inputTextWidthAdjustment', function(){
        const $text = $( this ),
              value = $text.val();
        $text.next('.inputTextWidthAdjustmentText').text( value );
    });
    
    // 切替ボタン
    $body.on('click', '.toggleButton', function(){
        const $button = $( this ),
              flag = ( $button.attr('data-toggle') === 'on')? 'off': 'on';
        if ( !$button.closest('.standBy').length ) {
            $button.attr('data-toggle', flag );
        }
    });
    
    // titel の内容をポップアップ
    $body.on('pointerenter.popup', '.popup', function(){
        const $t = $( this ),
              ttl = $t.attr('title');
        if ( ttl !== undefined ) {
            $t.removeAttr('title');

            const $p = $('<div/>', {
                'class': 'popupBlock',
                'html': fn.escape( ttl, true )
            }).append('<div class="popupArrow"><span></span></div>');
            
            const $arrow = $p.find('.popupArrow');

            $body.append( $p );

            const r = $t[0].getBoundingClientRect(),
                  m = 8,
                  wW = $window.width(),
                  tW = $t.outerWidth(),
                  tH = $t.outerHeight(),
                  tL = r.left,
                  tT = r.top,
                  pW = $p.outerWidth(),
                  pH = $p.outerHeight(),
                  wsL = $window.scrollLeft();

            let l = ( tL + tW / 2 ) - ( pW / 2 ) - wsL,
                t = tT - pH - m;

            if ( t <= 0 ) {
                $p.addClass('popupBottom');
                t = tT + tH + m;
            } else {
                $p.addClass('popupTop');
            }
            if ( wW < l + pW ) l = wW - pW - m;
            if ( l <= 0 ) l = m;

            $p.css({
                'width': pW,
                'height': pH,
                'left': l,
                'top': t
            });
            
            // 矢印の位置
            let aL = 0;
            if ( tL - wsL + tW > wW ) {
                const twW = tW - ( tL - wsL + tW - wW );
                if ( twW > pW || wW < twW ) {
                    aL = pW / 2;
                } else {
                    aL = pW - ( twW / 2 );
                    if ( pW - aL < 20 ) aL = pW - 20;
                }    
            } else if ( tL < wsL ) {
                const twW = tL + tW - wsL;
                if ( twW > pW ) {
                    aL = pW / 2;
                } else {
                    aL = twW / 2;
                    if (aL < 20 ) aL = 20;
                }
            } else {
                aL = ( tL + ( tW / 2 )) - l - wsL;
            }
            $arrow.css('left', aL );

            if ( $t.is('.popupHide') ) {
                $p.addClass('popupHide');
            }

            $t.on('pointerleave.popup', function(){
                const $p = $body.find('.popupBlock'),
                      title = ttl;
                $p.remove();
                $t.off('pointerleave.popup click.popup').attr('title', title );
            });

            $t.on('click', function(){
                if ( $t.attr('data-popup') === 'click') {
                   if ( $t.is('.popupHide') ) {

                        $t.add( $p ).removeClass('popupHide');
                    } else {
                        $t.add( $p ).addClass('popupHide');
                    }
                }
            });

            const targetCheck = function(){
                if ( $t.is(':visible') ) {
                    if ( $p.is(':visible') ) {
                        setTimeout( targetCheck, 200 );
                    }
                } else {
                    $p.remove();
                }              
            };
            targetCheck();
        }
    });
}

};

return cmn;

}());