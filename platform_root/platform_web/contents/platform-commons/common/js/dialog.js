// JavaScript Document

////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   Dialog
// 
////////////////////////////////////////////////////////////////////////////////////////////////////
class Dialog {
/*
--------------------------------------------------
   Constructor
--------------------------------------------------
*/
constructor( config, btnFn ) {
    if ( fn ) {
        const d = this;
        d.config = config;
        d.btnFn = btnFn;

        d.$ = {};
        d.$.window = $( window );
        d.$.body = $('body');

        d.focusElements = 'a[href], area[href], input:not([disabled]), button:not([disabled]), object, embed, [tabindex="0"], [contenteditable]';
    } else {
        window.console.error('Dialog error. "fn" function cannot be found.');
    }
}
/*
--------------------------------------------------
   Open
--------------------------------------------------
*/
open( body ) {
    const d = this;
    if ( d.$.dialog === undefined ) {
        d.init();        
        
        d.$.originTarget = $(':focus');
        d.$.modalContainer = $('#modalContainer');
        d.$.modalFocus = $('.modalContainerFocus');
        d.$.modalContainer.find('.active').removeClass('active');

        // Dialog
        d.$.dialog = $( d.dialog() );
        d.$.body = d.$.dialog.find('.dialogBody');
        if ( body ) d.setBody( body );

        // z-index
        const length = d.$.modalContainer.find('.modalOverlay').length;
        d.$.dialog.css('z-index', length ).addClass('active');

        // Button
        d.$.dialog.on('click', '.dialogButton', function(){
            const kind = $( this ).attr('data-kind');
            // activeチェック
            if ( d.getActiveCheck ) {
                if ( d.btnFn && d.btnFn[kind] ) {
                    d.btnFn[kind].call( d );
                } else if ( kind === 'close') {
                    d.close();
                } else {
                    window.console.error('Dialog "config" error.');
                }
            }
        });        

        // Set
        d.$.modalContainer.append( d.$.dialog );
        d.$.dialog.find('.dialog').find( d.focusElements ).first().focus();
        
        // callback
        if ( d.callback ) d.callback.call( d );
    } else {
        window.console.error('Dialog "open()" error.');
    }
}
/*
--------------------------------------------------
   Close
--------------------------------------------------
*/
close() {
    const d = this;
    return new Promise(function( resolve ){
        d.$.dialog.remove();
        d.$.dialog = undefined;

        if ( d.$.modalContainer.find('.modalOverlay').length ) {
            d.$.modalContainer.find('.modalOverlay:last-child').addClass('active');
        } else {
            d.$.modalContainer.remove();
            d.$.modalFocus.remove();
            d.$.body.removeClass('modalOpen');
            d.offFocusEvent();
        }
        d.$.originTarget.focus();
        setTimeout( function(){ resolve(); }, 100 );
    });
}
/*
--------------------------------------------------
   Init
--------------------------------------------------
*/
init() {
    const d = this;
    // Container
    if ( !fn.exists('#modalContainer') ) {
        d.onFocusEvent();
        d.$.body.addClass('modalOpen')
            .prepend('<div class="modalContainerFocusFirst modalContainerFocus" tabindex="0"></div>')
            .append('<div id="modalContainer"></div><div class="modalContainerFocusLast modalContainerFocus" tabindex="0"></div>');
    }
}
/*
/*
--------------------------------------------------
   Focus event on
--------------------------------------------------
*/
onFocusEvent() {
    const d = this;
    
    d.$.body.on('focusin.modal', d.focusElements, function(){
        const $f = $( this ),
              $t = d.$.modalContainer.find('.modalOverlay.active .dialog').find( d.focusElements );
        if ( $f.is('.modalFocusFirst') || $f.is('.modalContainerFocusLast') ) {
            $t.last().focus();
        } else if ( $f.is('.modalContainerFocusFirst') || $f.is('.modalFocusLast') ) {
            $t.first().focus();
        } else if ( !$f.closest('.modalOverlay.active').length ) {
            $t.first().focus();
        }
    });
}
/*
/*
--------------------------------------------------
   Focus event off
--------------------------------------------------
*/
offFocusEvent() {
    this.$.body.off('focusin.modal focusout.modal');
    $('.modalFocus').remove();
}
/*
--------------------------------------------------
   Dialog
--------------------------------------------------
*/
dialog() {
    const d = this,
          style = [],
          attrs = [],
          className = ['dialog'],
          mainStyle = [],
          mainAttrs = [],
          mainClassName = ['dialogMain'],
          html = [];
    
    if ( d.config.width ) style.push(`width:${d.config.width};`);
    if ( d.config.position ) style.push(`justify-content:${d.config.position};`);
    
    if ( d.config.height ) mainStyle.push(`height:${d.config.height};`);
    
    if ( style.length ) attrs.push(`style="${style.join('')}"`);
    if ( mainStyle.length ) mainAttrs.push(`style="${mainStyle.join('')}"`);
    
    if ( d.config.className ) className.push( d.config.className );
    if ( d.config.header ) html.push( d.header() );
    html.push( d.body() );
    if ( d.config.footer ) html.push( d.footer() );
    
    attrs.push(`class="${className.join(' ')}"`);
    mainAttrs.push(`class="${mainClassName.join(' ')}"`);
    
    return `<div class="modalOverlay">`
    + `<div class="modalFocusFirst modalFocus" tabindex="0"></div>`
    + `<div ${attrs.join(' ')}><div ${mainAttrs.join(' ')}>${html.join('')}</div></div>`
    + `<div class="modalFocusLast modalFocus" tabindex="0"></div>`
    + `</div>`;
}
/*
--------------------------------------------------
   Header
--------------------------------------------------
*/
header() {
    const d = this,
          h = d.config.header,
          className = ['dialogHeader'],
          html = [];
    if ( h.title ) html.push(`<div class="dialogHeaderTitle">${h.title}</div>`);
    if ( h.move ) className.push('dialogHeaderMove');
    if ( h.close ) html.push(`<div class="dialogHeaderClose">${d.button('dialogButton dialogHeaderCloseButton', 'close')}</div>`);
    return `<div class="${className.join(' ')}">${html.join('')}</div>`;
}
/*
--------------------------------------------------
   Body
--------------------------------------------------
*/
body() {
    return `<div class="dialogBody"></div>`;
}
setBody( elements ) {
    const d = this;
    d.$.body.html( elements );
}
/*
--------------------------------------------------
   Footer
--------------------------------------------------
*/
footer() {
    const d = this,
          f = d.config.footer,
          className = ['dialogFooter'],
          html = [];
    if ( f.button ) {
        const buttonHtml = [];
        for ( const kind in f.button ) {
            const button = fn.html.button( f.button[kind].text, ['itaButton', 'dialogButton', 'dialogFooterMenuButton'], { kind: kind, action: f.button[kind].action });
            buttonHtml.push(`<li class="dialogFooterMenuItem">${button}</li>`);
        }
        html.push(`<ul class="dialogFooterMenuList">${buttonHtml.join('')}</ul>`);
    }
    if ( f.resize ) html.push('<div class="dialogFooterResize"></div>');
    return `<div class="${className.join(' ')}">${html.join('')}</div>`;
}
/*
--------------------------------------------------
   GETTER: Active check
--------------------------------------------------
*/
get getActiveCheck() {
    const d = this;
    if ( d.$.dialog !== undefined ) {
        return this.$.dialog.is('.active');
    } else {
        return undefined;
    }
}

}