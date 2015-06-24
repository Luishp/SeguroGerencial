<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javaBeans.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Welcome</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="libs/jquery-1.9.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="libs/jquery.validate.min.js"></script>
        <script src="js/controladores/validarhome.js"></script><!--Agregar esta linea -->
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
                        <li><a href="#" onclick="salir()">SALIR</a></li>
                    </ul>
                    <form class="navbar-form navbar-right">
                        <input type="text" class="form-control" placeholder="Search...">
                    </form>
                </div>
            </div>
        </nav>
        <header class="container">
            <div class="jumbotron">
                <h1>Bienvenido al modulo gerencial</h1>
                <p>Para la gestion de asesorias de seguros</p>
                <p><a class="btn btn-primary btn-lg" href="#" role="button">Conocer mas</a></p>
            </div>
        </header>

        <hr>
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <img src="css/images/Logo1.png" alt="Reporte">
                        <div class="caption">
                            <h3>Reporte de Canales de comunicacion mas usados</h3>
                            <p>En este reporte se visualizan los diferentes canales de comunicacion que utilizan los asesores de seguros en un periodo de tiempo arbitrario</p>
                            <p><a href="Vistas/canalesComunicacion.html" class="btn btn-primary" role="button">Iniciar Reporte</a> <a href="#" class="btn btn-default" role="button">Ayuda</a></p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <img src="css/images/Logo1.png" alt="Reporte">
                        <div class="caption">
                            <h3>Reporte de asesores con horario disponible</h3>
                            <p>En este reporte se visualizan los asesores disponibles por zona de pais</p>
                            <p><a href="Vistas/asesorZonaPais.html" class="btn btn-primary" role="button">Ver Reporte</a> <a href="#" class="btn btn-default" role="button">Ayuda</a></p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <img src="css/images/Logo1.png" alt="Reporte">
                        <div class="caption">
                            <h3>Reporte de asignaciones de Polizas de seguros</h3>
                            <p>En este reporte se visualizan las polizas de seguro asignadas por asesor</p>
                            <p><a href="Vistas/productoAsesor.html" class="btn btn-primary" role="button">Ver Reporte</a> <a href="#" class="btn btn-default" role="button">Ayuda</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <img src="css/images/Logo1.png" alt="Reporte">
                        <div class="caption">
                            <h3>Reporte de asignaciones de Clientes</h3>
                            <p>En este reporte se visualizan los clientes asignados por asesor</p>
                            <p><a href="Vistas/clientesAsesor.html" class="btn btn-primary" role="button">Ver Reporte</a> <a href="#" class="btn btn-default" role="button">Ayuda</a></p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <img src="css/images/Logo1.png" alt="Reporte">
                        <div class="caption">
                            <h3>Reporte de Clientes por categoria</h3>
                            <p>En este reporte se visualizan los clientes de una categoria seleccionada</p>
                            <p><a href="#" class="btn btn-primary" role="button">Ver Reporte</a> <a href="#" class="btn btn-default" role="button">Ayuda</a></p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <img src="css/images/Logo1.png" alt="Reporte">
                        <div class="caption">
                            <h3>Reporte de Ventas</h3>
                            <p>En este reporte se visualizan los totales de ventas por mes</p>
                            <p><a href="#" class="btn btn-primary" role="button">Ver Reporte</a> <a href="#" class="btn btn-default" role="button">Ayuda</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <img src="css/images/Logo1.png" alt="Reporte">
                        <div class="caption">
                            <h3>Reporte de Ventas</h3>
                            <p>En este reporte se visualizan los totales de ventas por mes</p>
                            <p><a href="#" class="btn btn-primary" role="button">Ver Reporte</a> <a href="#" class="btn btn-default" role="button">Ayuda</a></p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <img src="css/images/Logo1.png" alt="Reporte">
                        <div class="caption">
                            <h3>Reporte de Ventas</h3>
                            <p>En este reporte se visualizan los totales de ventas por mes</p>
                            <p><a href="#" class="btn btn-primary" role="button">Ver Reporte</a> <a href="#" class="btn btn-default" role="button">Ayuda</a></p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <img src="css/images/Logo1.png" alt="Reporte">
                        <div class="caption">
                            <h3>Reporte de Ventas</h3>
                            <p>En este reporte se visualizan los totales de ventas por mes</p>
                            <p><a href="#" class="btn btn-primary" role="button">Ver Reporte</a> <a href="#" class="btn btn-default" role="button">Ayuda</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <img src="css/images/Logo1.png" alt="Reporte">
                        <div class="caption">
                            <h3>Reporte de Ventas</h3>
                            <p>En este reporte se visualizan los totales de ventas por mes</p>
                            <p><a href="#" class="btn btn-primary" role="button">Ver Reporte</a> <a href="#" class="btn btn-default" role="button">Ayuda</a></p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <img src="css/images/Logo1.png" alt="Reporte">
                        <div class="caption">
                            <h3>Reporte de Ventas</h3>
                            <p>En este reporte se visualizan los totales de ventas por mes</p>
                            <p><a href="#" class="btn btn-primary" role="button">Ver Reporte</a> <a href="#" class="btn btn-default" role="button">Ayuda</a></p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <img src="css/images/Logo1.png" alt="Reporte">
                        <div class="caption">
                            <h3>Reporte de Ventas</h3>
                            <p>En este reporte se visualizan los totales de ventas por mes</p>
                            <p><a href="#" class="btn btn-primary" role="button">Ver Reporte</a> <a href="#" class="btn btn-default" role="button">Ayuda</a></p>
                        </div>
                    </div>
                </div>
            </div>

        </div> <!-- /container -->
        <hr>
        <footer class="footer">
            <div class="container text-center">
                <p class="text-muted">Asesores en Seguros</p>
                <p class="text-muted">PRYMA S.A. DE C.V.</p>
            </div>
        </footer>
    </body>
</html>
