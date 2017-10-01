<%-- 
    Document   : inicio
    Created on : 27/09/2017, 11:23:46 PM
    Author     : Aroche
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Proyecto 1 EDD - 201503918</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--Archivos de Bootsrap CSS-->
        <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="css/reset.css">
        <link rel="stylesheet" href="css/styleNav.css">
        <link rel="stylesheet" href="css/style.css">
        <!--Archivos de Bootsrap SCRIPT-->
        <script src="js/modernizr.js"></script> <!-- Modernizr -->
    </head>
    <body>
        <header>
            <nav class="cd-stretchy-nav">
                    <a class="cd-nav-trigger" href="#0">
                            Menu
                            <span aria-hidden="true"></span>
                    </a>

                    <ul>
                        <li><a href="inicio.jsp" class="active"><span>Inicio</span></a></li>
                        <li><a href="login.jsp"><span>Login</span></a></li>
                            <!--<li><a href="#0"><span>Contacto</span></a></li>-->
                    </ul>

                    <span aria-hidden="true" class="stretchy-nav-bg"></span>
            </nav>
        </header>

        <main class="cd-main-content">
            
            
            <div class="login-wrap">
                <div class="login-html">
                        <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Descripción</label>
                        <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Acerca De?</label>
                        <div class="login-form">
                                <div class="sign-in-htm">
                                        <div class="group">
                                            <label>USAC DRIVE</label><br/>
                                            <label for="user" class="label">Esta aplicacion lleva el control de los usuarios, en los cuales 
                                                podra realizar algunas funciones:
                                            </label>                                            <br/>
                                            <label for="user" class="label">*Crear Carpertas</label><br/>                                            
                                            <label for="user" class="label">*Eliminar Carpertas</label><br/>
                                            <label for="user" class="label">*Cargar Archivos</label><br/>
                                            <label for="user" class="label">*Compartir Archivos</label>
                                        </div>
                                </div>
                                <div class="sign-up-htm">
                                        <div class="group">
                                                <label for="user" class="label">Nombre: Brayan Mauricio Aroche Boror</label>
                                        </div>
                                        <div class="group">
                                                <label for="pass" class="label">Carne: 201503918</label>
                                        </div>
                                        <div class="group">
                                                <label for="pass" class="label">Estructuras de Datos - 2017</label>
                                        </div>
                                        <div class="group">
                                                <label for="pass" class="label">Proyecto 1- Usac Drive</label>
                                        </div>
                                        <div class="group">
                                            <label for="user" class="label">Sección: B</label>
                                        </div>
                                </div>
                        </div>
                </div>
        </div>
            <!-- main content here -->            
        </main>


        <script src="js/jquery-2.1.4.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
