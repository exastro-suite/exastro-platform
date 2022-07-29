$(function(){

    CommonAuth.onAuthSuccess(() => {
        // 認証完了後に実行する処理を記載します
        // このイベントが実行される前にtoken等を取得すると例外がThrowされます
        get_workspace_list();
    });

    // 見出し作成
    $(  '<tr>' +
            '<th>ワークスペース名(ワークスペースID)</th>' +
            '<th>&nbsp;</th>' +
            '<th>最終更新日時</th>' +
            '<th>サービス選択</th>' +
        '</tr>').appendTo('#workspace_list thead');

    //JSONデータ
    var data = {
        "rows": [
            {
                "workspace_id": "入力してください",
                "workspace_name": "入力してください",
                "description": "入力してください",
            },
        ]
    };
    $("#new_workspace").html(
        JSON.stringify(data["rows"][0], null, "  ")
    );

    // ワークスペース作成ボタン押下時
    $("#btn_addnew").click(function(){

        var run_title = "addnew workspace";
        console.log("CALL : " + run_title);

        input_data = document.getElementById("new_workspace").value;
        console.log("json : " + input_data);
        reqbody = JSON.parse(input_data);

        // API呼び出し
        new Promise(function(resolve, reject) {

            api_param = {
                type: "POST",
                url: api_conf.api.workspaces.post.replace('{organization_id}', CommonAuth.getRealm()),
                headers: {
                    Authorization: "Bearer " + CommonAuth.getToken(),
                },
                data: JSON.stringify(reqbody),
                contentType: "application/json",
                dataType: "json",
            }

            $.ajax(api_param).done(function(data) {
                console.log("DONE : " + run_title);
                console.log("--- data ----");
                console.log(JSON.stringify(data));
                // 成功
                resolve();
            }).fail((jqXHR, textStatus, errorThrown) => {
                console.log("FAIL : " + run_title);
                console.log("RESPONSE:" + jqXHR.responseText);
            });
        }).then(() => {
            get_workspace_list();
            //
            // ロール最新化のためセッションをリフレッシュ
            //
            return refresh_session();

        }).then(() => {
            console.log("[FINISH] : " + run_title);
        }).catch((errorinfo) => {
            console.log("[FAIL] : " + run_title);
        });
    })

});

function get_workspace_list() {
    $.ajax({
        type: "GET",
        url: api_conf.api.workspaces.get.replace('{organization_id}', CommonAuth.getRealm()),
        headers: {
            Authorization: "Bearer " + CommonAuth.getToken(),
        },
        contentType: "application/json",
        dataType: "json",
    }).done(function(data) {
        console.log("RESPONSE GET /api/workspace:");
        console.log(JSON.stringify(data));

        if (data.result != 200){
            msg = "[" + data.result + "]\n" + data.message;
            alert(msg);
        }
        else{
            workspaceListData = [];

            for(var row of data.data) {
                if ("description" in row.informations){
                    description = row.informations.description;
                }
                else{
                    description = "";
                }
                workspaceListData.push({
                    workspace_id: row.id,
                    workspace_name: row.name,
                    description: description,
                    create_timestamp: row.create_timestamp,
                });
            }
            create_workspace_list(workspaceListData);
        }
        // resolve();

    }).fail(function(jqXHR, textStatus, errorThrown) {
        console.log("FAIL : RESPONSE GET /api/workspace: jqXHR.status:"+jqXHR.status);
        msg = "[" + jqXHR.status + "]\n" + textStatus;
        alert(msg);
        // reject();
    });
}

function create_workspace_list(list) {
    var tboby = $("#workspace_list tbody");
    tboby.empty();

    const sortKey = 'create_timestamp';
    const sortreverse = -1;
    list.sort(function(a, b){
        const as = a[sortKey].toLowerCase(), bs = b[sortKey].toLowerCase();
        if ( as < bs ) {
            return sortreverse * -1;
        } else if ( as > bs ) {
            return sortreverse * 1;
        } else {
            return 0;
        }
    });

    for(var row of list) {
        var tr = $('<tr></tr>');
        tr.append('<td class="workspace_datail"><div>' + row.workspace_name + '<span style="font-size: small;">('+ row.workspace_id + ')</span></div>' +
                '<div style="font-size: small; color: gray;">' + row.description + '</div>' +
                '<input type="hidden" class="workspace_id" value="' + row.workspace_id + '">' +
            '</td>'
        );
        tr.append('<td class="workspace_datail"><button class="btn_members">メンバー一覧</button></td>');
        tr.append('<td class="workspace_datail" style="text-align: center">' + row.last_update_timestamp + '</td>');
        tr.append('<td><button class="btn_ita">IT-Automation</button></td>');

        tboby.append(tr);

        // メンバーボタン押下時
        tr.find('.btn_members').on('click', function(){
            workspace_id = $(this).closest('tr').find('.workspace_id').val();

            get_members_list(workspace_id);

            return false;
        })

        // IT-Automationボタン押下時
        tr.find('.btn_ita').on('click', function(){
            workspace_id = $(this).closest('tr').find('.workspace_id').val();

            window.location.href = "/{organization_id}/workspaces/{workspace_id}/ita/".replace('{organization_id}', CommonAuth.getRealm()).replace('{workspace_id}', workspace_id)

            return false;
        })

        // 明細押下時
        tr.find('.workspace_datail').on('click', function(){
            workspace_id = $(this).closest('tr').find('.workspace_id').val();
            window.location.href = '/'+ CommonAuth.getRealm() + '/platform/workspaces/' + workspace_id;
        })

    }
}

function get_members_list(workspace_id) {

    alert("メンバー一覧:\n\n○○ ○○\nxx xxx\n");

    // $.ajax({
    //     type: "GET",
    //     url: api_conf.api.workspaces.get.replace('{organization_id}', CommonAuth.getRealm()),
    //     headers: {
    //         Authorization: "Bearer " + CommonAuth.getToken(),
    //     },
    //     contentType: "application/json",
    //     dataType: "json",
    // }).done(function(data) {
    //     console.log("RESPONSE GET /api/workspace:");
    //     console.log(JSON.stringify(data));

    //     if (data.result != 200){
    //         msg = "[" + data.result + "]\n" + data.message;
    //         alert(msg);
    //     }
    //     else{
    //         workspaceListData = [];

    //         for(var row of data.data) {
    //             if ("description" in row.informations){
    //                 description = row.informations.description;
    //             }
    //             else{
    //                 description = "";
    //             }
    //             workspaceListData.push({
    //                 workspace_id: row.id,
    //                 workspace_name: row.name,
    //                 description: description,
    //                 create_timestamp: row.create_timestamp,
    //             });
    //         }
    //         create_workspace_list(workspaceListData);
    //     }
    //     // resolve();

    // }).fail(function(jqXHR, textStatus, errorThrown) {
    //     console.log("FAIL : RESPONSE GET /api/workspace: jqXHR.status:"+jqXHR.status);
    //     msg = "[" + jqXHR.status + "]\n" + textStatus;
    //     alert(msg);
    //     // reject();
    // });
}
