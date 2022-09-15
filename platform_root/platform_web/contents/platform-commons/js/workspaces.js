$(function(){

    CommonAuth.onAuthSuccess(() => {
        new CommonUi(`#container`);
        $('.to_workspace_list').attr('href',location_conf.href.workspaces.list.replace(/{organization_id}/g, CommonAuth.getRealm()));
        $('#new_workspace').on('click',() => { new_workspace();});
        if (CommonAuth.isOrganizationManager()) {
            $('#new_workspace').css('display','');
        }
        get_workspace_list();
    });

    function new_workspace() {
        window.location = location_conf.href.workspaces.new.replace(/{organization_id}/g, CommonAuth.getRealm());
    }

    function to_detail(workspace_id) {
        window.location = location_conf.href.workspaces.detail.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id);
    }

    function to_members(workspace_id) {
        window.location = location_conf.href.workspaces.detail.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id);
    }

    function to_ita(workspace_id) {
        window.location = location_conf.href.workspaces.ita.replace(/{organization_id}/g, CommonAuth.getRealm()).replace(/{workspace_id}/g, workspace_id);
    }

    function get_workspace_list() {
        $.ajax({
            type: "GET",
            url: api_conf.api.workspaces.get.replace(/{organization_id}/g, CommonAuth.getRealm()),
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            },
            contentType: "application/json",
            dataType: "json",
        }).done(function(data, status, xhr) {
            console.log("RESPONSE GET /api/workspace:" + xhr);
            console.log(JSON.stringify(data));
    
            if (xhr.status != 200){
                msg = "[" + data.result + "]\n" + data.message;
                alert(msg);
            }
            else{
                workspaceListData = [];
    
                for(let row of data.data) {
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
                        last_update_timestamp: row.last_update_timestamp,
                    });
                }
                create_workspace_list(workspaceListData);
            }
    
        }).fail(function(jqXHR, textStatus, errorThrown) {
            console.log("FAIL : RESPONSE GET /api/workspace: jqXHR.status:"+jqXHR.status);
            msg = "[" + jqXHR.status + "]\n" + textStatus;
            alert(msg);
        });
    }

    function create_workspace_list(list) {
        if ( list.length == 0 ) {
            $("#data_row_notfound").css('display', '');
        } else {
            let data_row_template = $("#data_row_template").prop('outerHTML');
            let html = '';
    
            const sortKey = 'last_update_timestamp';
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
                var date = new Date(row.last_update_timestamp);
                format_last_update_timestamp = fn.date(date,'yyyy/MM/dd HH:mm:ss');
    
                html += data_row_template
                    .replace(/\${workspace_id}/g, fn.cv(row.workspace_id,'',true))
                    .replace(/\${workspace_name}/g, fn.cv(row.workspace_name,'',true))
                    .replace(/\${workspace_description}/g, fn.cv(row.description,'',true))
                    .replace(/\${last_update_date_time}/g, fn.cv(format_last_update_timestamp,'',true));
            }
    
            $("#workspace_list tbody").html(html);
            $("#workspace_list tbody tr").css('display', '');
            $('.to_detail').click((event) => { to_detail($(event.currentTarget).attr('data-id')); });
            $('.btn_member').click((event) => { to_members($(event.currentTarget).attr('data-id')); });
            $('.btn_ita').click((event) => { to_ita($(event.currentTarget).attr('data-id')); });
        }
    }
});
