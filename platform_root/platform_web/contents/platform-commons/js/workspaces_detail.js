$(function(){

    CommonAuth.onAuthSuccess(() => {
        // 認証完了後に実行する処理を記載します
        // このイベントが実行される前にtoken等を取得すると例外がThrowされます
        get_workspace_info();

        var obj = $(".prev_list");
        obj.attr("href", '/' + CommonAuth.getRealm() + '/platform/workspaces');

        // ワークスペース作成ボタン押下時
        $(".btn_members").click(function(){

            get_members_list(window.location.pathname.split("/")[4]);

        });
    });

});

function get_workspace_info() {

    $.ajax({
        type: "GET",
        url: api_conf.api.workspaces.detail.get.replace('{organization_id}', CommonAuth.getRealm()).replace('{workspace_id}', window.location.pathname.split("/")[4]),
        headers: {
            Authorization: "Bearer " + CommonAuth.getToken(),
        },
        contentType: "application/json",
        dataType: "json",
    }).done(function(data) {
        console.log("RESPONSE GET /api/workspaces_detail:");
        console.log(JSON.stringify(data));

        if (data.result != 200){
            msg = "[" + data.result + "]\n" + data.message;
            alert(msg);
        }
        else{
            workspaceListData = [];

            var row = data.data;
            {
                var obj = $(".workspace_id");
                obj.text(row.id);
                console.log("row.workspace_id:" + row.id);

                var obj = $(".workspace_name");
                obj.text(row.name);

                var obj = $(".last_update_timestamp");
                obj.text(row.last_update_timestamp);

                if ("informations" in row){
                    var obj = $(".environments_list");
                    if ("environments" in row.informations){
                        envs = "";
                        for(var environment of row.informations.environments){
                            envs += "<div>" + environment["name"] + "</div>";
                        }
                        obj.html(envs);
                    }

                    var obj = $(".description");
                    if ("description" in row.informations){
                        obj.text(row.informations.description);
                    }
                }

                var obj = $(".data_json");
                obj.text(JSON.stringify(row, null, 2));
            }
        }
    });
}


function get_members_list(workspace_id) {

    alert("メンバー一覧:\n\n○○ ○○\nxx xxx\n");
}