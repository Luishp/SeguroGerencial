
var urlg = "../scparametros/clienteDeuda.jsp";

function traerClienteDeuda() {
    var deuda = $("#DISPONIBILIDAD option:selected").attr("value"); 
    var vista = new Array();
    console.log("Valor de las variables");
    console.log(deuda);
    
    if (deuda === null) {
        alert("Se necesita tener seleccionado los campos");
    } else {
        window.location.href = urlg + "?categoria=" + deuda;
    }
}