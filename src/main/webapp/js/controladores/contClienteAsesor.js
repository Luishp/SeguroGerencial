
var urlg = "../scparametros/clienteAsesor.jsp";

function traerAsesor() {
    var idAsesor = $("#NOM_ASE option:selected").attr("value");
    var dniAsesor = $("#DNI_ASE").val();
    var asesor = new Array();
    console.log("Valor de las variables");
    console.log(idAsesor);
    console.log(dniAsesor);
     if (idAsesor === null && dniAsesor===null) {
        alert("Se necesita tener seleccionado nombre y dni del asesor");
    } else {
        window.location.href = urlg + "?idechaIni=" + fechaIni + "&fechaFin=" + fechaFin; //no entiendo esta linea
    }
}
