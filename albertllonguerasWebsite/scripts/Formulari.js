
$(document).ready(function () {
    $('#ContentPlaceHolderDefault_PorraContent_FormulariJornada_3_EquipLocal').on("change", function () {
        $.getJSON("/base/Utils/ReadJson/" + this.value, readJson);
    });
});

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