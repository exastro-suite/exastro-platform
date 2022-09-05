CommonAuth.onAuthSuccess(() => {
    new CommonUi(`#container`);
    $('.to_workspace_list').attr('href',location_conf.href.workspaces.list.replace(/{organization_id}/g, CommonAuth.getRealm()));

    $('#button_register').on('click',() => {
        $('#button_register').prop('disabled',true);
        if( ! validate_register() ) {
            $('#button_register').prop('disabled',false);
            return;
        }
        workspace_register();
    });

    function validate_register() {
        let result=true;
        if($("#form_workspace_id").val() === "") {
            $("#message_workspace_id").text("入力してください");
            result = false;
        } else if($("#form_workspace_id").val().replace(/[a-zA-Z0-9_-]/g,"") !== "") {
            $("#message_workspace_id").text("使用できない文字が使われています");
            result = false;
        } else if( ! $("#form_workspace_id").val().match(/^[a-zA-Z]/)) {
            $("#message_workspace_id").text("先頭の文字にアルファベット以外が指定されています");
            result = false;
        } else {
            $("#message_workspace_id").text("");
        }

        if($("#form_workspace_name").val() === "") {
            $("#message_workspace_name").text("入力してください");
            result = false;
        } else {
            $("#message_workspace_name").text("");
        }
        return result;
    }

    function workspace_register() {
        let reqbody =   {
            "id": $('#form_workspace_id').val(),
            "name": $('#form_workspace_name').val(),
            "informations": {
                "description": $('#form_workspace_description').val(),
                "environments": [
                ],
                "workspace_administrators": [
                ]
            }
        }

        let api_param = {
            type: "POST",
            url: api_conf.api.workspaces.post.replace(/{organization_id}/g, CommonAuth.getRealm()),
            headers: {
                Authorization: "Bearer " + CommonAuth.getToken(),
            },
            data: JSON.stringify(reqbody),
            contentType: "application/json",
            dataType: "json",
        }

        $.ajax(api_param).done(function(data, status, xhr) {
            console.log("DONE : " + api_conf.api.workspaces.post);
            console.log("--- data ----");
            console.log(JSON.stringify(data));
            console.log(xhr.status);

            if (xhr.status == 200) {
                alert("ワークスペースを作成しました");
                window.location = location_conf.href.workspaces.list.replace(/{organization_id}/g, CommonAuth.getRealm());
            } else {
                console.log("--- message ----");
                console.log(data.message);
                msg = "status:[" + xhr.status + "]\nmessage_id:[" + data.result + "]\n" + data.message;
                alert(msg);
                $('#button_register').prop('disabled',false);
            }

        }).fail((jqXHR, textStatus, errorThrown) => {
            console.log("FAIL : " + api_conf.api.workspaces.post);
            console.log("RESPONSE:" + jqXHR.responseText);

            msg = "status:[" + jqXHR.status + "]\nmessage_id:[" + jqXHR.responseJSON.result + "]\n" + jqXHR.responseJSON.message;
            alert(msg);
            $('#button_register').prop('disabled',false);
        });
    }
});
