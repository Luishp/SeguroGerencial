
var urlg = "../scparametros/clienteCategoria.jsp";

function traerClienteCategoria() {
    var tipo = $("#DISPONIBILIDAD option:selected").attr("value"); 
    var vista = new Array();
    console.log("Valor de las variables");
    console.log(tipo);
    
    if (tipo === null) {
        alert("Se necesita tener seleccionado los campos");
    } else {
        window.location.href = urlg + "?tipo=" + tipo;
    }
}