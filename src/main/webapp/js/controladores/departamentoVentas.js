
var urlg = "../scparametros/clienteCategoria.jsp";

function traerClienteCategoria() {
    var departamento = $("#DISPONIBILIDAD option:selected").attr("value"); 
    var vista = new Array();
    console.log("Valor de las variables");
    console.log(departamento);
    
    if (departamento === null) {
        alert("Se necesita tener seleccionado los campos");
    } else {
        window.location.href = urlg + "?departamento=" + departamento;
    }
}