$(function(){

    // TODO : ワークスペース一覧のダミー

    //JSONデータ
    var data = {
        "rows": [
            {
                "workspace_id": "projectA-AAAVVVCCC",
                "workspace_name": "プロジェクトAのワークスペース",
                "description": "説明xxxxx",
                "create_dt": "2021-07-30 10:00:11",
                "member_count": 1,
            },

            {
                "workspace_id": "projectX-xxxxx_xxxx",
                "workspace_name": "プロジェクトX",
                "description": "説明xxxxx",
                "create_dt": "2022-04-01 10:00:11",
                "member_count": 1,
            },

            {
                "workspace_id": "Project ABC_xxxx",
                "workspace_name": "プロジェクトABC",
                "description": "説明xxxxx",
                "create_dt": "2022-04-02 10:00:11",
                "member_count": 4,
            }
        ]
    }

    //HTMLを初期化
    $("#workspace_list tbody").html("");

    const sortKey = 'create_dt';
    const sortreverse = -1;
    data["rows"].sort(function(a, b){
        const as = a[sortKey].toLowerCase(), bs = b[sortKey].toLowerCase();
        if ( as < bs ) {
            return sortreverse * -1;
        } else if ( as > bs ) {
            return sortreverse * 1;
        } else {
            return 0;
        }
    });

    // 見出し作成
    $(  '<tr>' +
            '<th>ワークスペース名(ワークスペースID)</th>' +
            '<th>メンバー数</a></th>' +
            '<th>作成日</th>' +
            '<th>サービス選択</th>' +
        '</tr>').appendTo('#workspace_list tbody');

        //HTMLを生成
    for(var index in data.rows){
        $(  '<tr>' +
                '<td><div>' + data.rows[index].workspace_name + '<span style="font-size: samll;">(' + data.rows[index].workspace_id + ')</span>' + '</div>' +
                    '<div style="font-size: small; color: gray;">' + data.rows[index].description + '</div></td>' +
                '<td><a href="#" target="_self">' + data.rows[index].member_count + '</a></td>' +
                '<td style="text-align: center">' + data.rows[index].create_dt + '</td>' +
                '<td><button>IT-Automation</button></td>' +
            '</tr>').appendTo('#workspace_list tbody');
    }

    $("#new_workspace").html(
        JSON.stringify(data["rows"][0], null, "  ")
    );

    // ワークスペース作成ボタン押下時
    $("#addnew").click(function(){

        var run_title = "addnew workspace";
        console.log("CALL : " + run_title);

        console.log("json : " + $("#new_workspace").text());
        reqbody = JSON.parse($("#new_workspace").text())

        // API呼び出し
        new Promise(function(resolve, reject) {

            api_param = {
                "type": "POST",
                "url": api_conf.api.workspaces.post.replace('{organization_id}', CommonAuth._getRealm()),
                "data": JSON.stringify(reqbody),
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
