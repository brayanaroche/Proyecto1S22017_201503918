<%-- 
    Document   : usuario
    Created on : 27/09/2017, 11:36:46 PM
    Author     : Aroche
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido - Proyecto 1 EDD</title>
        
        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/component.css" />
        <!-- Script --> 
        <script src="js/modernizr.custom.25376.js"></script>
    </head>
    <body>
        <div id="perspective" class="perspective effect-rotateleft">
			<div class="container">
				<div class="wrapper">
					<!-- Top Navigation -->
					<div class="codrops-top clearfix">
                                            <a class="codrops-icon codrops-icon-prev" id="showMenu" style="cursor: pointer"><span>Menu</span></a>                                            
					</div>
					<header class="codrops-header">
						<h1>Bienvenido<span>Usuario: </span></h1>	
					</header>
					<div class="main clearfix">
						<div class="column">
							<p><label id="showMenu">Su repositorio de USAC DRIVE</label></p>
							<p>El cual puede crear carpetas, cargar archivos, compartir los archivos y descargarlos.</p>
						</div>
						<div class="column">
                                                    <img src="img/pattern.png" width="30%" height="30%"/>
						</div>
						<div class="related">
							<p>USAC DRIVE</p>							
						</div>
					</div><!-- /main -->
				</div><!-- wrapper -->
			</div><!-- /container -->
			<nav class="outer-nav right vertical">
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
