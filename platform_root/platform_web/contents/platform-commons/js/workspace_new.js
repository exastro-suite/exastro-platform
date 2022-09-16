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

    console.log("language:" + CommonAuth.getLanguage());
    if (CommonAuth.getLanguage() == "en"){
        appendScript("/_/platform-commons/js/language/en/text.js");
    }
    else{
        appendScript("/_/platform-commons/js/language/ja/text.js");
    }

    function validate_register() {
        console.log("--- validate check start ----");
        let result=true;
        if($("#form_workspace_id").val() === "") {
            $("#message_workspace_id").text(getText("400-00011", "必須項目が不足しています。({0})", getText("000-00101", "ワークスペースID")));
            result = false;
        } else if($("#form_workspace_id").val().replace(/[a-zA-Z0-9_-]/g,"") !== "") {
            $("#message_workspace_id").text(getText("400-00017", "指定できない文字が含まれています。(項目:{0},指定可能な文字:{1})",
                                                                 getText("000-00101", "ワークスペースID"),
                                                                 getText("000-00101", "半角英数・ハイフン・アンダースコア")));
            result = false;
        } else if( ! $("#form_workspace_id").val().match(/^[a-zA-Z]/)) {
            $("#message_workspace_id").text(getText("400-00014", "先頭の文字にアルファベット以外が指定されています。({0})", getText("000-00101", "ワークスペースID")));
            result = false;
        } else {
            $("#message_workspace_id").text("");
        }

        if($("#form_workspace_name").val() === "") {
            $("#message_workspace_name").text(getText("400-00011", "必須項目が不足しています。({0})", getText("000-00102", "ワークスペース名")));
            result = false;
        } else {
            $("#message_workspace_name").text("");
        }

        // 文字数チェック
        // Character count check
        environments = $('#form_workspace_environments').val();
        environments_arr = environments.split(/\r\n|\r|\n/).map(i => i.trim()).filter(i => i.length > 0);

        if(environments_arr.filter(i => i.length > 40).length > 0) {
            $("#message_workspace_environments").text(getText("400-00012", "指定可能な文字数を超えています。(項目:{0},最大文字数:{1})", getText("000-00105", "環境名"), "40"));
            result = false;
        } else if(Array.from(new Set(environments_arr)).length !== environments_arr.length) {
            $("#message_workspace_environments").text(getText("400-00019", "指定された値が重複しています。（項目:{0}）", getText("000-00105", "環境名")));
            result = false;
        } else {
            $("#message_workspace_environments").text("");
        }

        console.log("--- validate check end [" + result + "] ----");

        return result;
    }

    function workspace_register() {
        environments = $('#form_workspace_environments').val();
        env_json = environments.split(/\r\n|\r|\n/).map(i => i.trim()).filter(i => i.length > 0).map(i => {return {"name": i}});

        let reqbody =   {
            "id": $('#form_workspace_id').val(),
            "name": $('#form_workspace_name').val(),
            "informations": {
                "description": $('#form_workspace_description').val(),
                "environments": env_json,
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
