////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   Exastro IT Automation / ui.js
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

class CommonUi {
/*
##################################################
   Constructor
##################################################
*/
constructor() {
    const ui = this;
    
    // Debug mode menu name
    ui.debugModeName = '__debug__';
    
    // Common parameter
    ui.params = {};
    ui.params.dir = '/_/ita';    
    ui.params.path = fn.getPathname();
    ui.params.menuNameRest = fn.getParams().menu;
    
    // Start ui
    ui.setUi();
}
/*
##################################################
   UI set
##################################################
*/
setUi() {
    const ui = this;
  
    // jQuery cacch
    ui.$ = {};
    ui.$.window = $( window ),
    ui.$.body = $('body'),
    ui.$.container = $('#container');
    ui.$.header = $('#header');
    ui.$.menu = $('#menu');
    ui.$.content = $('#content');
        
    // Set common events
    fn.setCommonEvents();
    ui.header();

    $("#menu_workspace").attr("href", location_conf.href.workspaces.list.replace(/{organization_id}/g,CommonAuth.getRealm()));
    $("#menu_account_management").attr("href", location_conf.href.menu.account_manaagement.replace(/{organization_id}/g,CommonAuth.getRealm()));
    $("#menu_role_management").attr("href", location_conf.href.menu.role_management.replace(/{organization_id}/g,CommonAuth.getRealm()));
    $("#menu_update_password").attr("href", location_conf.href.menu.update_password.replace(/{organization_id}/g,CommonAuth.getRealm()));

    if (CommonAuth.isOrganizationManager()) {
        $("#menu_account_management").css("display", "");
        $("#menu_role_management").css("display", "");
    }

    return;

    // // REST API URLs
    // const restApiUrls = [
    //     '/user/',
    //     '/user/menus/',
    //     '/user/menus/panels/'
    // ];
    // // /api/{organization_id}/workspaces/{workspace_id}/ita/menu/{menu}/info/

    // if ( ui.params.menuNameRest && ui.params.menuNameRest !== ui.debugModeName ) {
    //     restApiUrls.push(`/menu/${ui.params.menuNameRest}/info/`);
    // }
    
    // fn.fetch( restApiUrls ).then(function( result ){
    //     if ( result ) {
    //         ui.rest = {};
    //         ui.rest.user = result[0],
    //         ui.rest.menuGroups = result[1].menu_groups,
    //         ui.rest.panel = result[2];
            
    //         ui.sideMenu();
    //         ui.header();
            
    //         if ( result[3] ) {
    //             ui.rest.info = result[3];
                
    //             // 権限フラグ
    //             ui.flag = fn.editFlag( ui.rest.info.menu_info );
                
    //             // sheet_typeによって分ける
    //             switch ( ui.rest.info.menu_info.sheet_type ) {
    //                 case undefined:
    //                 break;
    //                 // 0 - 4 : 標準メニュー
    //                 case '0': case '1': case '2': case '3': case '4':
    //                     ui.defaultMenu();
    //                 break;
    //                 // 11 : 作業実行
    //                 case '11':
    //                 break;
    //                 // 12 : 作業状態確認
    //                 case '12':
    //                 break;
    //                 // 13 : メニュー定義・作成
    //                 case '13':
    //                     ui.createMenu();
    //                 break;
    //                 // 14 : Conductorクラス編集
    //                 case '14':
    //                     ui.condcutor('edit');
    //                 break;
    //                 // 15 : Conductor作業実行
    //                 case '15':
    //                     ui.condcutor('');
    //                 break;
    //                 // 16 : Conductor作業確認
    //                 case '16':
    //                     ui.condcutor('');
    //                 break;
    //                 // 17 : 比較実行
    //                 // 18 : バージョン確認
    //                 // 19 : メニュー作成実行
    //                 default:
    //                 // メインメニュー
    //                 ui.mainMenu();
    //             }
    //         } else {
    //             if ( ui.params.menuNameRest === ui.debugModeName ) {
    //                 // デバッグ用メニュー
    //                 ui.debugMenu();
    //             } else {
    //                 // メインメニュー
    //                 ui.mainMenu();
    //             }
    //         }
    //     }
    // }).catch(function( e ){
    //     console.log('Error!')
    //     alert(e.message);
    //     window.console.error( e.message );
    //     location.replace(ui.params.path + 'system_error/');
    // });
}

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   Header
//
////////////////////////////////////////////////////////////////////////////////////////////////////

header() {
    const ui = this;
    
    // ui.topicPath();
    ui.headerMenu();
}
/*
##################################################
   Topic path
##################################################
*/
topicPath() {
    const ui = this;
    const topics = [],
          title = [ ui.currentPage.title ];
    if ( ui.currentGroup ) {
        topics.push({ href: ui.params.path, title: WD.UI.MainMenu });
        topics.push({ href: `${ui.params.path}?menu=${ui.currentGroup.link}`, title: ui.currentGroup.title });
        title.push( ui.currentGroup.title );
    }
    if ( ui.currentSecondaryGroup ) {
        topics.push({ href: `${ui.params.path}?menu=${ui.currentSecondaryGroup.link}`, title: ui.currentSecondaryGroup.title });
        title.push( ui.currentSecondaryGroup.title );
    }
    
    const list = [];
    if ( topics.length ) {
        for ( const topic of topics ) {
            list.push(`<li class="topichPathItem"><a class="topichPathLink" href="${topic.href}">${topic.title}</a></li>`);
        }
        list.push(`<li class="topichPathItem"><span class="topichPathCurrent">${ui.currentPage.title}</span></li>`);
    } else {
        list.push(`<li class="topichPathItem"><span class="topichPathCurrent">${WD.UI.MainMenu}</span></li>`);
    }
    
    const html = `
    <ol class="topichPathList">
        ${list.join('')}
    </ol>`;
    
    ui.$.header.find('.topicPath').html( html );
    
    title.push('Exastro IT Automation');
    document.title = title.join(' / ');
}
/*
##################################################
   Header menu
##################################################
*/
headerMenu() {
    const ui = this;

    const html = `
    <ul class="headerMenuList">
        <li class="userInfomation headerMenuItem">${ui.userInfo()}</li>
    </ul>`;
    
    ui.$.header.find('.headerMenu').html( html );
    
    ui.$.header.find('.headerMenuButton').on('click', function(){
        const $button = $( this ),
              $userInfo = $button.next('.userInfoContainer');
        
        if ( $userInfo.is('.open') ) {
            $userInfo.removeClass('open');
        } else {
            $userInfo.addClass('open');
            ui.$.window.on('pointerdown.userInfo', function( e ){
                if ( !$( e.target ).closest('.userInfomation').length ) {
                    $userInfo.removeClass('open');
                    ui.$.window.off('pointerdown.userInfo');
                }
            });
        }
    });
    
    // ワークスペース切替
    // ui.$.header.find('.userInfoWorkspaceButton').on('click', function(){
    //     const workspaceId =  $( this ).attr('data-workspace');
    //     window.location.href = fn.getWorkspaceChangeUrl( workspaceId );        
    // });
    
    // ログアウト
    ui.$.header.find('.userInfoMenuButton').on('click', function(){
        // CommonAuth.logout({ redirectUri: ui.params.path });
        CommonAuth.logout();
    });
}
/*
##################################################
   User infomation
##################################################
*/
userInfo() {
    // const ui = this,
    //       $user = $('#header').find('.userIndo'),
    //       name = fn.cv( ui.rest.user.user_name, '', true ),
    //       id = fn.cv( ui.rest.user.user_id, '', true ),
    //       roles = fn.cv( ui.rest.user.roles, []),
    //       workspaces = fn.cv( ui.rest.user.workspaces, []);
    const   ui = this,
            $user = $('#header').find('.userIndo'),
            name = fn.cv(CommonAuth.getUserName(), '', true),
            id = fn.cv(CommonAuth.getUserId(), '', true),
            roles = CommonAuth.getRoles();

    // const workspaceList = [];
    // for ( const work of workspaces ) {
    //     workspaceList.push(`<li class="userinfoWorkspaceItem">`
    //         + `<button class="userInfoWorkspaceButton" data-workspace="${work}">${work}</button>`
    //     + `</li>`);
    // }
    
    const roleList = [];
    if( roles.length === 0 ) {
        roleList.push(`<li class="userinfoRoleItem">`
        + "ロールがありません"
    + `</li>`);
    } else {
        for ( const role of roles ) {
            roleList.push(`<li class="userinfoRoleItem">`
                + fn.cv(role,'',true)
            + `</li>`);
        }
    }
    
    return `
    <button class="headerMenuButton">
        <span class="icon icon-user"></span>
        <span class="userName">${name}</span>
    </button>
    <div class="userInfoContainer">
        <div class="userInfoBlock userInfo">
            <div class="userInfoBody">
                <div class="userInfoName">${name}</div>
                <div class="userInfoId">${id}</div>
            </div>
        </div>
        <div class="userInfoBlock userInfoRole">
            <div class="userInfoTitle">ロール一覧</div>
            <div class="userInfoBody">
                <ul class="userInfoRoleList">
                    ${roleList.join('')}
                </ul>
            </div>
        </div>
        <div class="userInfoBlock userInfoMenu">
            <div class="userInfoBody">
                <ul class="userInfoMenuList">
                    <li class="userInfoMenuItem">
                        ${fn.html.button('ログアウト', ['userInfoMenuButton', 'itaButton'], { type: 'logout', action: 'positive'})}
                    </li>
                </div>
            </div>
        </div>
    </div>`;
} 

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   Side menu
//
////////////////////////////////////////////////////////////////////////////////////////////////////

sideMenu() {
    const ui = this;
    
    const menus = [
        { name: 'menuMain', icon: 'menuList'},
        { name: 'menuGroup', icon: 'menuGroup'},
        { name: 'menuFavorite', icon: 'star'},
        { name: 'menuHistory', icon: 'history'}
    ];
    
    // Menu tab
    ui.menuTab = fn.storage.get('menuTab');
    if ( !ui.menuTab || ui.menuTab === '#menuGroup') ui.menuTab = '#menuMain';
    
    // Secondary(Child) menu
    ui.menuSecondaryToggleSpeed = 300;
    ui.menuSecondary = fn.storage.get('subMenuOpen');
    if ( !ui.menuSecondary ) ui.menuSecondary = [];
    
    // メニュー構造作成
    ui.createMenuGroupList();
    
    const tab = [],
          body = [];
    
    for ( const menu of menus ) {
        tab.push(`<li class="menuTabItem"><a class="menuTabLink" href="#${menu.name}"><span class="icon icon-${menu.icon}"></span></a></li>`);
        body.push(`<div class="menuBlock" id="${menu.name}">${ui[ menu.name ]()}</div>`);
    }
    
    ui.$.menu.html(`
    <div class="menuHeader">
        <div class="menuTab">
            <ul class="menuTabList">
                ${tab.join('')}
            </ul>
        </div>
        <div class="menuToggle">
            <button class="menuToggleButton"><span class="icon icon-arrow01_left"></span></button>
        </div>
    </div>
    <div class="menuBody">
        ${body.join('')}
    </div>`);
    
    // Menu tab event
    ui.$.menu.find(`.menuTabLink[href="${ui.menuTab}"]`).addClass('tabOpen').attr('tabindex', -1 );
    ui.$.menu.find( ui.menuTab ).addClass('tabOpen');
    
    ui.$.menu.find('.menuTabLink').on('click', function( e ){
        e.preventDefault();
        
        const $link = $( this );
        ui.menuTab = $link.attr('href');
        ui.$.menu.find('.tabOpen').removeClass('tabOpen').removeAttr('tabindex');
        $link.addClass('tabOpen').attr('tabindex', -1 );
        $( ui.menuTab ).addClass('tabOpen');
        fn.storage.set('menuTab', ui.menuTab );
        
    });
    
    // Menu toggle
    ui.$.menu.find('.menuToggleButton').on('click', function( e ){
        if ( !ui.$.menu.is('.close') ) {
            ui.$.menu.addClass('close');
        } else {
            ui.$.menu.removeClass('close');
        }
    });
    
    // Menu accordion
    ui.$.menu.find('.menuSecondaryToggleButton').on('click', function( e ){
        e.preventDefault();
        
        const $button = $( this ),
              menuId = $button.attr('data-id'),
              $menu = $button.next('.menuSecondaryList');
        
        if ( $button.is('.open') ) {
            $button.removeClass('open');
            $menu.stop(0,0).slideUp( ui.menuSecondaryToggleSpeed );
            ui.menuSecondary.splice( ui.menuSecondary.indexOf( menuId ), 1 );
        } else {
            $button.addClass('open');
            $menu.stop(0,0).slideDown( ui.menuSecondaryToggleSpeed );
            ui.menuSecondary.push( menuId );
        }
        fn.storage.set('subMenuOpen', ui.menuSecondary );
    });
}
/*
##################################################
   Create menu group list
##################################################
*/
createMenuGroupList() {
    const ui = this;
    
    // メニューグループリストの作成    
    ui.menuGroupList = [];
    ui.currentMenuGroupList = null;
    const childs = [];
    
    // 配列のディープコピー
    const tempMenuGroups = $.extend( true, [], ui.rest.menuGroups );
    
    // 親と子を分ける
    for ( const menuGroup of tempMenuGroups ) {
        if ( menuGroup.parent_id === null ) {
            ui.menuGroupList.push( menuGroup );
        } else {
            childs.push( menuGroup );
        }
    }
    
    // 親に子を追加（開いているメニュー・各メインメニュー・カレントチェック）
    for ( const parent of ui.menuGroupList ) {
        for ( const child of childs ) {
            if ( parent.id === child.parent_id ) {
                child.main_menu_rest = null;
                if ( child.menus && child.menus.length ) {
                    ui.dispSeqSort( child.menus );
                    if ( child.menus[0].menu_name_rest ) {
                         child.main_menu_rest = child.menus[0].menu_name_rest;
                    }
                    for ( const menu of child.menus ) {
                        if ( ui.menuSecondary.indexOf( menu.menu_name_rest ) !== -1 ) {
                            child.secondary_open_flag = true;
                        } else if ( ui.params.menuNameRest === menu.menu_name_rest ) {
                            child.secondary_open_flag = true;
                            ui.currentMenuGroupList = parent;
                        }
                    }
                }
                parent.menus.push( child );
            }
        }
        ui.dispSeqSort( parent.menus );
  
        parent.main_menu_rest = null;
        let subRest = null;
        for ( const menu of parent.menus ) {
            if ( menu.menu_name_rest && parent.main_menu_rest === null ) {
                parent.main_menu_rest = menu.menu_name_rest;
            } else if ( menu.menus && menu.menus.length && menu.menus[0].menu_name_rest ) {
                subRest = menu.menus[0].menu_name_rest;
            }
            if ( ui.currentMenuGroupList === null && ui.params.menuNameRest === menu.menu_name_rest ) {
                ui.currentMenuGroupList = parent;
            }
        }
        if ( !parent.main_menu_rest && subRest ) parent.main_menu_rest = subRest;
    }
    ui.dispSeqSort( ui.menuGroupList );
}

/*
##################################################
   Side menu body
##################################################
*/
sideMenuBody( title, icon, list, panel ) {
    const ui = this;
    
    const iconImage = ( fn.cv( panel, false ) )?
        `<img class="menuTitleIconImage" src="data:;base64,${panel}" alt="${title}">`:
        `<span class="icon icon-${icon}"></span>`;
    
    return `
    <div class="menuTitle">
        <div class="menuTitleIcon">
            ${iconImage}
        </div>
        <div class="menuTitleText">
            ${title}
        </div>
    </div>
    <nav class="menuNavi">
        <ul class="menuList">
            ${list}
        </ul>
    </nav>
    ${ui.serachBlock()}`;
}
/*
##################################################
   Menu main list
##################################################
*/
menuMain() {
    const ui = this;    
    
    if ( ui.params.menuNameRest && ui.currentMenuGroupList ) {
        const menuGroupName = fn.cv( ui.currentMenuGroupList.menu_group_name, '', true ),
              menuGroupPanel = fn.cv( ui.rest.panel[ ui.currentMenuGroupList.id ], ''),
              menuGroupLink = fn.cv( ui.currentMenuGroupList.main_menu_rest, '');
        ui.currentGroup = {
            title: menuGroupName,
            panel: menuGroupPanel,
            link: menuGroupLink
        };
        const item = function( m, secondary ){
            const menuName = fn.cv( m.menu_name, '', true ),
                  menuRest = fn.cv( m.menu_name_rest, ''),
                  attr = [`href="${ui.params.path}?menu=${menuRest}"`],
                  className = ['menuLink'];
            if ( secondary ) className.push('menuSecondaryLink');
            if ( menuRest === ui.params.menuNameRest ) {
                className.push('current');
                attr.push('tabindex="-1"');
                ui.currentPage = {
                    title: menuName,
                    name: menuRest
                };
                if ( secondary ) {
                    ui.currentSecondaryGroup = secondary;
                }
            }
            return `<li class="menuItem"><a class="${className.join(' ')}" ${attr.join(' ')}>${menuName}</a></li>`;
        };

        const list = function( menus, secondary ) {
            const htmlArray = [];
            for ( const menu of menus ) {
                if ( menu.menus ) {
                    // Secondary
                    const secondaryGroupName = fn.cv( menu.menu_group_name, '', true ),
                          secondaryGroupLink = fn.cv( menu.main_menu_rest, ''),
                          secondaryClassName = ['menuSecondaryToggleButton'],
                          listStyle = [],
                          menuID = fn.cv( menu.id, '');
                    if ( menu.secondary_open_flag ) {
                        secondaryClassName.push('open');
                        listStyle.push('display:block');
                    }
                    const secondaryHTML = ``
                    + `<li class="menuItem">`
                        + `<div class="menuSecondary">`
                            +`<button class="${secondaryClassName.join(' ')}" data-id="${menuID}">`
                                + `${secondaryGroupName}<span class="menuSecondaryToggleIcon"></span>`
                            + `</button>`
                            + `<ul class="menuList menuSecondaryList" style="${listStyle.join(';')}">`
                                + list( menu.menus, { title: secondaryGroupName, link: secondaryGroupLink })
                            + `</ul>`
                        + `</div>`
                    + `</li>`;
                    htmlArray.push( secondaryHTML );
                } else {
                    htmlArray.push( item( menu, secondary ) );
                }
            }
            return htmlArray.join('');
        };

        return ui.sideMenuBody( menuGroupName, 'unknown', list( ui.currentMenuGroupList.menus ), menuGroupPanel );
    } else {
        // メインメニュー用リスト
        const dashboard = `<li class="menuItem"><a class="menuLink current" href="${ui.params.path}">DashBoard</a></li>`;
        ui.currentPage = {
            title: WD.UI.MainMenu
        };
        return ui.sideMenuBody( ui.currentPage.title, 'menuList', dashboard );
    }
}
/*
##################################################
   Menu group
##################################################
*/
menuGroup(){
    const ui = this;
    
    const list = [];
    for ( const menuGroup of ui.menuGroupList ) {
        if ( menuGroup.parent_id === null ) {
            const title = fn.cv( menuGroup.menu_group_name, '', true );
            list.push(`<li class="menuItem"><a class="menuLink" href="${ui.params.path}?menu=${menuGroup.main_menu_rest}">${title}</a></li>`);
        }
    }
    
    return ui.sideMenuBody( WD.UI.MenuGroup, 'menuGroup', list.join(''));
}
/*
##################################################
   Favorite menu
##################################################
*/
menuFavorite(){
    return this.sideMenuBody( WD.UI.Favorite, 'star', '');
}
/*
##################################################
   History menu
##################################################
*/
menuHistory(){
    return this.sideMenuBody( WD.UI.History, 'history', '');
}
/*
##################################################
   Search menu
##################################################
*/
serachBlock() {
    return `
    <div class="menuSearch">
        <input class="menuSearchText" data-search="menuMain" placeholder="${WD.UI.MenuSearch}">
    </div>`;
}
/*
##################################################
   Sort : disp_seq
##################################################
*/
dispSeqSort( data ) {
    data.sort(function( a, b ){
        if ( a.disp_seq < b.disp_seq ) {
            return -1;
        } else if ( a.disp_seq > b.disp_seq ) {
            return 1;
        } else {
            // disp_seqが同じ場合は名前で判定する
            const aa = ( a.menu_group_name )? a.menu_group_name: ( a.menu_name )? a.menu_name: '',
                  bb = ( b.menu_group_name )? b.menu_group_name: ( b.menu_name )? b.menu_name: '';
            if ( aa < bb ) {
                return -1;
            } else if ( aa > bb ) {
                return 1;
            } else {
                return 0;
            }
        }
    });
}

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   Content general
//
////////////////////////////////////////////////////////////////////////////////////////////////////

/*
##################################################
   Common container
##################################################
*/
commonContainer( title, info, body ) {
    return `
    <div class="contentHeader">
        <h1 class="contentTitle"><span class="contentTitleInner">${title}</span></h1>
        <p class="contentMenuInfo">${info}</p>
    </div>
    <div class="contentBody">
        ${body}
    </div>`;
}
/*
##################################################
   Content tab
##################################################
*/
contentTab( list ) {
    const ui = this;
    
    const tab = [],
          section = [];
    
    for ( const item of list ) {
        tab.push(`<li class="contentMenuItem"><a class="contentMenuLink" href="#${item.name}"><span class="inner">${item.title}</span></a></li>`);
        
        const sectionBody = ( item.type !== 'blank' )? ui[item.name](): '';
        section.push(`<section class="section" id="${item.name}"><div class="sectionBody">${sectionBody}</div></section>`);
    }
    
    return `
    <div class="contentMenu">
        <ul class="contentMenuList">
            ${tab.join('')}
        </ul>
    </div>
    ${section.join('')}`;
}
/*
##################################################
   Content tab event
##################################################
*/
contentTabEvent( openTab = '#dataList') {
    const ui = this;
    
    ui.$.content.find(`.contentMenuLink[href="${openTab}"]`).addClass('tabOpen').attr('tabindex', -1 );
    ui.$.content.find( openTab ).addClass('tabOpen');
    
    ui.$.content.find('.contentMenuLink').on('click', function( e ){
        e.preventDefault();
        
        const $link = $( this ),
              tab = $link.attr('href');
        ui.$.content.find('.tabOpen').removeClass('tabOpen').removeAttr('tabindex');
        $link.addClass('tabOpen').attr('tabindex', -1 );
        $( tab ).addClass('tabOpen');
    });
}
// 指定のタブを開く
contentTabOpen( openTab ) {
    const ui = this;
    
    const $link = ui.$.content.find(`.contentMenuLink[href="${openTab}"]`);
    
    ui.$.content.find('.tabOpen').removeClass('tabOpen').removeAttr('tabindex');
    $link.addClass('tabOpen').attr('tabindex', -1 );
    
    ui.$.content.find(`.contentMenuLink[href="${openTab}"]`).addClass('tabOpen').attr('tabindex', -1 );
    ui.$.content.find( openTab ).addClass('tabOpen');
}

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   メインメニュー
//
////////////////////////////////////////////////////////////////////////////////////////////////////

mainMenu() {
}

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   デバッグメニュー
//
////////////////////////////////////////////////////////////////////////////////////////////////////

debugMenu() {
    const ui = this;
    
    const contentTab = [
        { name: 'GET', title: 'GET', type: 'blank' },
        { name: 'POST', title: 'POST', type: 'blank' },
    ];

    ui.$.content.html( ui.commonContainer('REST API Tester', 'Check REST API.', ui.contentTab( contentTab ) ) );
    ui.contentTabEvent('#GET');
    
    ui.$.content.find('#GET .sectionBody').html(`
    <div class="debugContainer">
        <div class="debugHeader">${fn.html.inputText('', '', 'getUrl', '', { before: '/api/{organization_id}/workspaces/{workspace_id}/ita'})}</div>
        <div class="debugBody">${fn.html.textarea( null, '', 'getResult')}</div>
    </div>`);
    
    $('#getUrl').on('change', function(){
        const value = $( this ).val();
        fn.fetch( value ).then(function( result ){
            $('#getResult').val( JSON.stringify( result, null, '\t') );
        }).catch(function( result ){
            $('#getResult').val( result );
        });
     });
}

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   標準メニュー
//
////////////////////////////////////////////////////////////////////////////////////////////////////

defaultMenu() {
    const ui = this;
    
    const contentTab = [
        { name: 'dataList', title: WD.UI.List, type: 'blank' },
        { name: 'changeHistory', title: WD.UI.ChangeHistory, type: 'blank' },
        { name: 'dataDownload', title: WD.UI.AllDownload }
    ];
    
    const title = ui.currentPage.title,
          menuInfo = fn.cv( ui.rest.info.menu_info.menu_info, '');
    
    ui.$.content.html( ui.commonContainer( title, menuInfo, ui.contentTab( contentTab ) ) );
    ui.contentTabEvent('#dataList');
    
    // 一覧
    const $dataList = ui.$.content.find('#dataList');
    ui.mainTable = new DataTable('MT', 'view', ui.rest.info, ui.params );
    $dataList.find('.sectionBody').html( ui.mainTable.setup() );
    
    // 履歴
    const $history = ui.$.content.find('#changeHistory');
    ui.historyTable = new DataTable('HT', 'history', ui.rest.info, ui.params );
    $history.find('.sectionBody').html( ui.historyTable.setup() );
    
    // 全件ダウンロード・ファイル一括登録
    const $download = ui.$.content.find('#dataDownload');
    $download.find('.operationButton').on('click', function(){
        const $button = $( this ),
              type = $button.attr('data-type');
        
        const downloadFile = function( type, url, fileName ){
            $button.prop('disabled', true );
            
            fn.fetch( url ).then(function( result ){
                fn.download( type, result, fileName );
                fn.disabledTimer( $button, false, 1000 );
            }).catch(function( error ){
                alert( error.message );
                location.replace('system_error/');
            });
        };
        
        switch ( type ) {
            case 'allDwonloadExcel':
                downloadFile('excel', `/menu/${ui.params.menuNameRest}/excel/`, ui.currentPage.title + '_all');
            break;
            case 'allDwonloadJson':
                downloadFile('json', `/menu/${ui.params.menuNameRest}/filter/`, ui.currentPage.title + '_all');
            break;
            case 'newDwonloadExcel':
                downloadFile('excel', `/menu/${ui.params.menuNameRest}/excel/format/`, ui.currentPage.title + '_format');
            break;
            case 'excelUpload':
                ui.fileRegister( $button, 'excel');
            break;
            case 'jsonUpload':
                ui.fileRegister( $button, 'json');
            break;
            case 'allHistoryDwonloadExcel':
                downloadFile('excel', `/menu/${ui.params.menuNameRest}/excel/journal/`, ui.currentPage.title + '_journal');
            break;
        }
    });
    
    // 一覧 個別履歴ボタン
    ui.mainTable.$.container.on('click', '.tBodyRowMenuUi', function(){
        const $button = $( this ),
              uuid = $button.attr('data-id');
        
        ui.contentTabOpen('#changeHistory');
        $history.find('.tableHeaderMainMenuInput').val( uuid ).trigger('input');
        
        ui.historyTable.$.header.find('.itaButton').prop('disabled', false );
        ui.historyTable.workStart('filter');
        ui.historyTable.workerPost('history', uuid );
        
    });
}
/*
##################################################
   全件ダウンロード・ファイル一括登録
##################################################
*/
dataDownload() {
    const list = [
        { title: WD.UI.AllDownloadExcel, description: WD.UI.AllDownloadExcelText, type: 'allDwonloadExcel'},
        { title: WD.UI.AllDownloadJson, description: WD.UI.AllDownloadJsonText, type: 'allDwonloadJson'}
    ];
    
    if ( this.flag.insert ) {
        list.push({ title: WD.UI.NewDownloadExcel, description: WD.UI.NewDownloadExcelText, type: 'newDwonloadExcel'});
    } 
    
    list.push({ title: WD.UI.AllDownloadHistoryExcel, description: WD.UI.AllDownloadHistoryExcelText, type: 'allHistoryDwonloadExcel'});
    
    if ( this.flag.edit ) {
        list.push({ title: WD.UI.ExcelUpload, description: WD.UI.ExcelUploadText, type: 'excelUpload', action: 'positive'});
        list.push({ title: WD.UI.JsonUpload, description: WD.UI.JsonUploadText, type: 'jsonUpload', action: 'positive'});
    }
    
    const html = [];
    for ( const item of list ) {
        const attr = { type: item.type };
        if ( item.action ) attr.action = item.action;
        html.push(`<div class="operationBlock">`
            + `<div class="operationTitle">${fn.html.button( item.title, ['operationButton', 'itaButton'], attr )}</div>`
            + `<div class="operationDescription">${item.description}</div>`
        + `</div>`);
    }
    
    return html.join('');
}
/*
##################################################
   ファイル一括登録
##################################################
*/
fileRegister( $button, type ) {
    const ui = this;
    
    const fileType = ( type === 'excel')? 'base64': 'json',
          fileMime = ( type === 'excel')? 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet': 'application/json',
          restUrl = ( type === 'excel')? `excel/maintenance/`: `maintenance/all/`;
    
    // ボタンを無効
    $button.prop('disabled', true );
    
    // ファイル選択
    fn.fileSelect( fileType, null, fileMime ).then(function( selectFile ){
        const postData = ( type === 'excel')? { excel: selectFile.base64 }: selectFile.json;
        
        // 登録するか確認する
        const buttons = {
            ok: { text: '一括登録開始', action: 'positive'},
            cancel: { text: 'キャンセル', action: 'normal'}
        };
        
        const table = { tbody: []};
        table.tbody.push(['ファイルネーム', selectFile.name ]);
        table.tbody.push(['ファイルサイズ', selectFile.size.toLocaleString() + ' byte']);
        
        if ( fileType === 'json') {
            try {
                table.tbody.push(['件数', selectFile.json.length.toLocaleString() ]);
            } catch( e ) {
                throw new Error('JSONの形式が正しくありません。');
            }
        }
        
        fn.alert('一括登録確認', fn.html.table( table, 'fileSelectTable', 1 ), 'confirm', buttons ).then( function( flag ){
            if ( flag ) {
            
                const processing = fn.processingModal('一括登録処理中');
                
                // POST（登録）
                fn.fetch(`/menu/${ui.params.menuNameRest}/${restUrl}`, null, 'POST', postData ).then(function( result ){
                    // 登録成功
                    fn.resultModal( result ).then(function(){
                        ui.contentTabOpen('#dataList');
                        ui.mainTable.changeViewMode();
                    });
                }).catch(function( error ){
                    // 登録失敗
                    fn.errorModal( error, ui.currentPage.title );
                }).then(function(){
                    // ボタンを戻す
                    fn.disabledTimer( $button, false, 1000 );
                    processing.close();
                });
            } else {
                // キャンセル
                fn.disabledTimer( $button, false, 0 );
            }
        });
    }).catch(function( error ){
        if ( error !== 'cancel') {
            alert( error );
        }
        fn.disabledTimer( $button, false, 0 );
    });
}

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   Create menu
//
////////////////////////////////////////////////////////////////////////////////////////////////////

createMenu( mode ) {
    const ui = this;
    
    const assets = [
        { type: 'js', url: '/_/ita/js/create_menu.js'},
        { type: 'css', url: '/_/ita/css/create_menu.css'}
    ];
    
    fn.loadAssets( assets ).then(function(){
        const createMenu = new CreateMenu('#content');
        createMenu.setup();
    });
}

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   Conductor
//
////////////////////////////////////////////////////////////////////////////////////////////////////

condcutor( mode ) {
    const ui = this;
    
    const assets = [
        { type: 'js', url: '/_/ita/js/conductor.js'},
        { type: 'css', url: '/_/ita/css/editor_common.css'},
        { type: 'css', url: '/_/ita/css/conductor.css'}
    ];
    
    fn.loadAssets( assets ).then(function(){
        const conductor = new Conductor('#content', mode );
        conductor.setup();
    });
}

}