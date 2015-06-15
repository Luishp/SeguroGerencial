
var urlg = "../scparametros/asesorZonaPais.jsp";

function traerAsezonaPais() {
    var idDisponibilidad = $("#DISPONIBILIDAD option:selected").attr("value");
    var municipio = $("#MUNI_ASE").val();
    var departamento = $("#DEPT_ASE").val();
    var vistas = new Array();
    console.log("Valor de las variables");
    console.log(idDisponibilidad);
    console.log(municipio);
    console.log(departamento);
    if (municipio === null && departamento===null) {
        alert("Se necesita tener seleccionado los campos");
    } else {
        window.location.href = urlg + "?municipio=" + municipio + "&departamento=" + departamento;
    }
}