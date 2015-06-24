<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javaBeans.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>PAGINA INICIO</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="libs/jquery-1.9.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="libs/jquery.validate.min.js"></script>
        <link rel="stylesheet" href="css/template.css">
    </head>
    <body>
        <div class="container-fluid">
            <img src="css/images/Logo1.png" class="img-responsive" alt="LogoEmpresa">
        </div>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">PRYMA</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">INICIO</a></li>
                        <li><a href="#">ACERCA DE</a></li>
                        <li><a href="#">PERFIL DE EMPRESA</a></li>
                        <li><a href="#">AYUDA</a></li>
                    </ul>
                    <form class="navbar-form navbar-right">
                        <input type="text" class="form-control" placeholder="Search...">
                    </form>
                </div>
            </div>
        </nav>
        <header class="container">
            <div class="jumbotron">
                <h1>Modulo Gerencial</h1>
                <p>Para la gestion de asesorias de seguros</p>
                <p><a class="btn btn-primary btn-lg" href="#" role="button">Conocer mas</a></p>
            </div>
        </header>

        <hr>
        <div class="container">
            <form class="form-signin formLogin" action="index.jsp" method="post">
                <h2 class="form-signin-heading">Ingrese aqui</h2>
                <label for="inputUser" class="sr-only">Nombre de usuario</label>
                <input type="text" id="inputUser" name="user" class="form-control" placeholder="Usuario" required autofocus>
                <label for="inputPassword" class="sr-only">Password</label>
                <input type="password" id="inputPassword" name="pass" class="form-control" placeholder="Password" required>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me"> Recordarme
                    </label>
                </div>
                <button class="btn btn-lg btn-primary btn-block" type="button" name="aceptar" onclick="entrar()">Entrar</button>
            </form>
        </div> <!-- /container -->

        <hr>
        <footer class="footer">
            <div class="container text-center">
                <p class="text-muted">Asesores en Seguros</p>
                <p class="text-muted">PRYMA S.A. DE C.V.</p>
            </div>
        </footer>
         <script src="js/controladores/index.js"></script>
    </body>
</html>
