$(function(){

    CommonAuth.onAuthSuccess(() => {
        // 認証完了後に実行する処理を記載します
        // このイベントが実行される前にtoken等を取得すると例外がThrowされます
        get_workspace_list();
    });

    // 見出し作成
    $(  '<tr>' +
            '<th>ワークスペース名(ワークスペースID)</th>' +
            '<th>メンバー数</a></th>' +
            '<th>作成日</th>' +
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
    $("#addnew").click(function(){

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

        workspaceListData = [];

        for(var row of data) {
            workspaceListData.push({
                workspace_id: row.workspace_id,
                workspace_name: row.workspace_name,
                description: "説明XXXXXXXX",
                create_at: row.create_at,
                member_count: 9,
            });
        }
        create_workspace_list(workspaceListData);
    });
}

function create_workspace_list(list) {
    var tboby = $("#workspace_list tbody");
    tboby.empty();

    const sortKey = 'create_at';
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
        tr.append('<td><div>' + row.workspace_name + '<span style="font-size: small;">('+ row.workspace_id + ')</span></div>' +
            '<div style="font-size: small; color: gray;">' + row.description + '</div></td>'
        );
        tr.append('<td><a href="#" target="_self">' + row.member_count + '</td>');
        tr.append('<td style="text-align: center">' + row.create_at + '</td>');
        tr.append('<td><button>IT-Automation</button></td>');
        tboby.append(tr);
    }
}
