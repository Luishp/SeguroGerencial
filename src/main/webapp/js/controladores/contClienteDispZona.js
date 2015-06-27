
var urlg = "../scparametros/clienteDispZona.jsp";

function traerCanales() {
    var horario = $("#HORARIO option:selected").attr("value");
    var zona = $("#ZONA option:selected").attr("value");
    var vistas = new Array();
    console.log("Valor de las variables");
    console.log(horario);
    console.log(zona);
    if (horario === null && zona === null) {
        alert("Se necesita tener seleccionado los items");
    } else {
        window.location.href = urlg + "?horario=" + horario + "&zona=" +zona;
    }
}

$(document).ready(function () {
    console.log("ready!");
    validarRol();
});

function validarRol() {
    var mirol = localStorage.getItem("Rol");
    if (mirol === "gerente" || mirol==="admin") {
        console.log("Correcta sesion iniciada");
    } else {
        window.location.href = "../error.jsp";
    }
}