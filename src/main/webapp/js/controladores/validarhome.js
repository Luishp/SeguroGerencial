//para hacer el login validado
$(document).ready(function () {
    console.log("ready!");
    validarlogueo();
});

function validarlogueo() {
    if (localStorage.getItem("Usuario") !== null) {
        console.log("Correcta sesion iniciada");
    }
    else {
        window.location.href = "error.jsp";
    }
}
function salir() {
    localStorage.removeItem("Rol");
    localStorage.removeItem("Usuario");
    window.location.href = "index.jsp";
}