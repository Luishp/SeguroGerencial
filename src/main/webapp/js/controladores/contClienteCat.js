
var urlg = "../scparametros/clienteCategoria.jsp";

function traerClienteCategoria() {
    var categoria = $("#DISPONIBILIDAD option:selected").attr("value"); 
    var vista = new Array();
    console.log("Valor de las variables");
    console.log(categoria);
    
    if (categoria === null) {
        alert("Se necesita tener seleccionado los campos");
    } else {
        window.location.href = urlg + "?categoria=" + categoria;
    }
}