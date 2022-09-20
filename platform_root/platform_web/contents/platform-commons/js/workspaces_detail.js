$(function(){
    const workspace_id = window.location.pathname.split("/")[4];

    CommonAuth.onAuthSuccess(() => {
        new CommonUi(`#container`);
        $('.to_workspace_list').attr('href',location_conf.href.workspaces.list.replace(/{organization_id}/g, CommonAuth.getRealm()));
        $('.to_ita').on('click',() => { window.location = location_conf.href.workspaces.ita.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id); } );
        get_workspace_detail();
        get_workspace_members();
    });

    function get_workspace_detail() {
        let run_title = "get_workspace_info";

        $.ajax({
            type: "GET",
            url: api_conf.api.workspaces.detail.get.replace('{organization_id}', CommonAuth.getRealm()).replace('{workspace_id}', workspace_id),
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            },
            contentType: "application/json",
            dataType: "json",
        }).done(function(data, status, xhr) {
            console.log("RESPONSE GET /api/workspaces_detail:");
            console.log(JSON.stringify(data));

            if (xhr.status != 200) {
                msg = "status:[" + xhr.status + "]\nmessage_id:[" + data.result + "]\n" + data.message;
                alert(msg);
            } else {
                var row = data.data;
                $("#text_workspace_id").text(row.id);
                $("#text_workspace_name").text(row.name);
                environments = row.informations.environments.sort((env1,env2) => { return env1.name < env2.name? -1: 1 });
                env_text = "";
                environments.forEach(function (value) {
                    env_text += value.name + "\n";
                });

                $("#text_workspace_environments").text(env_text);

                try { $("#text_last_update_date_time").text(fn.date(new Date(row.last_update_timestamp),'yyyy/MM/dd HH:mm:ss'))} catch(e) { }
                try { $("#text_workspace_description").text(row.informations.description)} catch(e) { }
            }
        }).fail((jqXHR, textStatus, errorThrown) => {
            console.log("FAIL : " + run_title);
            console.log("RESPONSE:" + jqXHR.responseText);
            msg = "status:[" + jqXHR.status + "]\nmessage_id:[" + jqXHR.responseJSON.result + "]\n" + jqXHR.responseJSON.message;
            alert(msg);
        });
    }

    function get_workspace_members() {

        $.ajax({
            type: "GET",
            url: api_conf.api.workspaces.detail.members.get.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id),
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            },
            contentType: "application/json",
            dataType: "json",
        }).done(function(data, status, xhr) {
            console.log("RESPONSE GET /api/workspaces/members:");
            console.log(JSON.stringify(data));

            if (xhr.status != 200){
                msg = "status:[" + xhr.status + "]\nmessage_id:[" + data.result + "]\n" + data.message;
                alert(msg);
            }
            else{
                memberList = "";

                for(var row of data.data.sort((mb1, mb2) => { return mb1.name < mb2.name? -1: 1})) {
                    if ("name" in row){
                        memberList = memberList + '<span class="member_name">' + fn.cv(row.name,'',true) + "</span>\n";
                    }
                }
                $("#text_workspace_member").html(memberList);
            }

        }).fail(function(jqXHR, textStatus, errorThrown) {
            console.log("FAIL : RESPONSE GET /api/workspaces/members: jqXHR.status:"+jqXHR.status);
            msg = "status:[" + jqXHR.status + "]\n" + textStatus;
            alert(msg);
        });
    }
});
