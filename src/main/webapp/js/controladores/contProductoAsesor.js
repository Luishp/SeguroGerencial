

var urlg = "../scparametros/productoAsesor.jsp";

function traerProducto() {
    var idAsesor = $("#NOM_ASE option:selected").attr("value");
    var tiposeguro = $("#TIPO_SEGURO").val();
    var vista = new Array();
    console.log("Valor de las variables");
    console.log(idAsesor);
    console.log(tiposeguro);
     if (idAsesor === null && dniAsesor===null) {
        alert("Se necesita tener seleccionado nombre y dni del asesor");
    } else {
        window.location.href = urlg + "?idAsesor=" + idAsesor + "&tiposeguro=" + tiposeguro; 
    }
}

