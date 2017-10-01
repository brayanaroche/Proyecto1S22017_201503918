<%-- 
    Document   : login
    Created on : 27/09/2017, 11:22:54 PM
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
            <!-- main content here -->            
            <div class="login-wrap">
                <div class="login-html">
                        <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Login</label>
                        <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Registrarse</label>
                        <div class="login-form">
                                <div class="sign-in-htm">
                                        <div class="group">
                                                <label for="user" class="label">Usuario</label>
                                                <input id="user" type="text" class="input">
                                        </div>
                                        <div class="group">
                                                <label for="pass" class="label">Password</label>
                                                <input id="pass" type="password" class="input" data-type="password">
                                        </div>
                                        <div class="group">
                                                <input id="check" type="checkbox" class="check" checked>
                                                <label for="check"><span class="icon"></span> Recordar Password</label>
                                        </div>
                                        <div class="group">
                                            <input type="submit" class="button" value="Login" src="usuario.jsp">
                                        </div>
                                        <div class="hr"></div>
                                        <div class="foot-lnk">
                                                <div>Bienvenido!!!</div>
                                        </div>
                                </div>
                                <div class="sign-up-htm">
                                        <div class="group">
                                                <label for="user" class="label">Usuario</label>
                                                <input id="user" type="text" class="input">
                                        </div>
                                        <div class="group">
                                                <label for="pass" class="label">Password</label>
                                                <input id="pass" type="password" class="input" data-type="password">
                                        </div>                                        
                                        <div class="group">
                                                <label for="pass" class="label">Correo</label>
                                                <input id="pass" type="text" class="input">
                                        </div>
                                        <div class="group">
                                                <input type="submit" class="button" value="Registrarse">
                                        </div>
                                        <div class="hr"></div>
                                        <div class="foot-lnk">
                                                <label for="tab-1">Quieres ser miembro?</a>
                                        </div>
                                </div>
                        </div>
                </div>
            </div>
        </main>


        <script src="js/jquery-2.1.4.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
