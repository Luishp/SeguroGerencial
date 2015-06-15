
var urlg = "../scparametros/clienteCategoria.jsp";

function traerCategoria() {
    var idTipoSeguro = $("#TIPO_SEGURO option:selected").attr("value");
    var seguro = new Array();
    console.log("Valor de las variables");
    console.log(idTipoSeguro);
    
    if (idTipoSeguro === null ) {
        alert("Se necesita tener seleccionado  Tipo de seguro");
    } else {
        window.location.href = urlg + "?fechaIni=" + fechaIni + "&fechaFin=" + fechaFin;
    }
}
