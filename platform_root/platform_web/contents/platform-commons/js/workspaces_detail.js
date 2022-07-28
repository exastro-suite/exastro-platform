$(function(){

    CommonAuth.onAuthSuccess(() => {
        // 認証完了後に実行する処理を記載します
        // このイベントが実行される前にtoken等を取得すると例外がThrowされます
        get_workspace_info();

        var obj = $(".prev_list");
        obj.attr("href", '/' + CommonAuth.getRealm() + '/platform/workspaces');

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

        workspaceListData = [];

        var row = data.data;
        {
            var obj = $(".workspace_id");
            obj.text(row.workspace_id);
            console.log("row.workspace_id:" + row.workspace_id);

            var obj = $(".workspace_name");
            obj.text(row.workspace_name);

            var obj = $(".description");
            if ("information" in row){
                if ("description" in row.information){
                    obj.text(row.information.description);
                }
            }

            var obj = $(".data_json");
            obj.text(JSON.stringify(row, null, 2));

        }
    });
}
