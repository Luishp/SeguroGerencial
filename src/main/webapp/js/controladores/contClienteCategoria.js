
var urlg = "../scparametros/clienteCategoria.jsp";

function traerCategoria() {
    var categoria = $("#CATEGORIA").attr("value");
    var vista = new Array();
    console.log("Valor de las variables");
    console.log(categoria);
    
    if (categoria === null ) {
        alert("Se necesita tener seleccionado  Tipo de seguro");
    } else {
        window.location.href = urlg + "?categoria" + categoria;
    }
}
