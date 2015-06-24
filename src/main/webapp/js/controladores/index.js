var dominio = document.domain;
//para hacer el login
$(document).ready(function () {
    console.log("ready!");
});

function entrar() {
    var ingresar=false;
    var usuario = $("#inputUser").val();
    var pass = $("#inputPassword").val();
    console.log(pass);
    //var webMethod = "http://" + dominio + ":8084/SIG_SEGUROS/webresources/usuario/findAll";
    var webMethod = "js/json/miUsuario.json";
    $.ajax({
        type: "GET",
        url: webMethod,
        //   data: parameters,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            console.log(data);
            for(var k=0;k<data.length;k++){
                console.log(data[k]["usuario"]);
                if(data[k]["usuario"]===usuario && data[k]["clave"]===pass){
                    ingresar=true;
                    localStorage.setItem("Rol",data[k]["rol"]);
                }
            }
            if(ingresar===true){
                localStorage.setItem("Usuario",usuario);
		window.location.href="home.jsp";
            }else{
                alert("El usuario ingresado es no valido");
            }
        },
        error: function (e) {
            console.log("Sin coneccion");
        }
    });
    /*if(usuario==="luis" && pass==="123"){
     localStorage.setItem("Usuario",usuario);
     console.log(pass);
     window.location.href="home.jsp";
     }
     else{
     alert("Nombre de usuario no valido");
     }*/
}