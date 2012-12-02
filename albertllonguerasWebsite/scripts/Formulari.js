
$(function () {
    //    $('#ContentPlaceHolderDefault_PorraContent_FormulariJornada_3_EquipLocal').on("change", function () {
    //        $.getJSON("/base/Utils/ReadJson/" + this.value, readJson);
    //    });
    $("#GolejadorsLocal").css("display", "none");
    $("#GolejadorsVisitant").css("display", "none");
    $("#ContentPlaceHolderDefault_PorraContent_FormulariJornada_3_EquipLocal").change(function () {
        //alert($(this).find(":selected").text());
        //$("#ContentPlaceHolderDefault_PorraContent_FormulariJornada_3_ResultatLocal").attr("Visible", "True");
        //$.getJSON("/base/Utils/ReadJson/Madrid", funcio);

        try {
            $("#GolejadorsLocal").tokenInput("clear");
            $(".EquipLocal .input .token-input-list").remove();
            $(".token-input-dropdown").remove();
        } catch (e) {
            //alert("no remove");
        }

        $("#GolejadorsLocal").tokenInput("/base/Utils/ReadJson/" + $(this).find(":selected").text(), {
            theme: "facebook"
        });
        //$("#GolejadorsLocal").css("display", "block");
    });

    $("#ContentPlaceHolderDefault_PorraContent_FormulariJornada_3_EquipVisitant").change(function () {

        try {
            $("#GolejadorsVisitant").tokenInput("clear");
            $(".EquipVisitant .input .token-input-list").remove();
            $(".token-input-dropdown").last().remove();
        } catch (e) {
        }

        $("#GolejadorsVisitant").tokenInput("/base/Utils/ReadJson/" + $(this).find(":selected").text(), {
            theme: "facebook"
        });
        $("#GolejadorsVisitant").css("display", "block");        
    });

    $("#buttonToken").click(function () {
        var golejadors = $("#GolejadorsLocal").tokenInput("get");
        MostrarGolejadors(golejadors);
    });
});

function MostrarGolejadors(golejadors) {
    var result = "";
    for (var i = 0; i < golejadors.length; i++) {
        result = result + golejadors[i].name;
        if (i < golejadors.length - 1) {
            result = result + ",";
        }
    }
    alert(result);
}

function funcio(json) {
    alert(json);
}

function readJson(json) {
    //var jsonString = $.parseJSON(json);
    //alert(json);
    $.each(json, function (i) {
        //addToTypesList(json[i].jugador,json[i].dorsal);
    });
}



function addToTypesList(text, value) {
    var option = document.createElement('input');
    var label = document.createElement('label');


    option.type = 'checkbox';
    label.innerHTML = text;
    option.value = value;
    option.name = text;


    document.getElementById('ContentPlaceHolderDefault_PorraContent_FormulariJornada_3_GolejadorsLocal_2').getElementsByTagName("td").appendChild(option);
    document.getElementById('ContentPlaceHolderDefault_PorraContent_FormulariJornada_3_GolejadorsLocal_2').find("td").appendChild(label);
}