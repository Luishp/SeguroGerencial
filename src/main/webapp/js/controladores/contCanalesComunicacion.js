
var urlg = "../scparametros/canalesComunicacion.jsp";

function traerCanales() {
    var canal = $("#CANAL option:selected").attr("value");
    var fechaIni = $("#FECHA_INI").val();
    var fechaFin = $("#FECHA_FIN").val();
    var vistas = new Array();
    console.log("Valor de las variables");
    console.log(canal);
    console.log(fechaIni);
    console.log(fechaFin);
    if (fechaIni === null && fechaFin === null) {
        alert("Se necesita tener seleccionado fecha inicial y final");
    } else {
        window.location.href = urlg + "?fechaIni=" + fechaIni + "&fechaFin=" + fechaFin+"&canal="+canal;
    }
}

$(document).ready(function () {
    console.log("ready!");
    validarRol();
});

function validarRol() {
    var mirol = localStorage.getItem("Rol");
    if (mirol === "gerente") {
        console.log("Correcta sesion iniciada");
    } else {
        window.location.href = "../error.jsp";
    }
}