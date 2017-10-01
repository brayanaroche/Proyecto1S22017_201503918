<%-- 
    Document   : reporte
    Created on : 27/09/2017, 11:37:24 PM
    Author     : Aroche
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bitacora - Proyecto 1 EDD</title>
        
        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/component.css" />
        <!-- Script --> 
        <script src="js/modernizr.custom.25376.js"></script>
    </head>
    <body>
        <div id="perspective" class="perspective effect-laydown">
			<div class="container">
				<div class="wrapper">
					<!-- Top Navigation -->
					<div class="codrops-top clearfix">
                                            <a class="codrops-icon codrops-icon-prev" id="showMenu" style="cursor: pointer"><span>Menu</span></a>                                            
					</div>
					<header class="codrops-header">
						<h1>Realizar<span>Bitacora </span></h1>	
					</header>
					<div class="main clearfix">
						<div class="column">
							<p><label>Bitacora</label></p>
							<p>En esta sección se permite realizar la bitacora o historial que usted ha realizado.</p>
						</div>
						<div class="column">
                                                    <img src="img/registro.jpg" width="40%" height="40%"/>
                                                    <p><button>Bitacora</button></p>
						</div>
						<div class="related">
							<p>USAC DRIVE</p>							
						</div>
					</div><!-- /main -->
				</div><!-- wrapper -->
			</div><!-- /container -->
			<nav class="outer-nav top horizontal">
                            <a href="usuario.jsp" class="icon-home">Inicio</a>				
                            <a href="crear_carpeta.jsp" class="icon-image">Crear Carpeta</a>
                            <a href="cargar_archivo.jsp" class="icon-upload">Cargar Archivo</a>
                            <a href="reporte.jsp" class="icon-news">Reporte</a>			
                            <a href="inicio.jsp" class="icon-lock">Salir</a>
			</nav>
		</div><!-- /perspective -->
		<script src="js/classie.js"></script>
		<script src="js/menu.js"></script>
    </body>
</html>
