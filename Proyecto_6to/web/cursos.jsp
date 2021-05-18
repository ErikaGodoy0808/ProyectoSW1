<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IED PEPITO PEREZ</title>

        <link rel="stylesheet" href="main.css">

        <%--Inicio creacion menu--%>
    <div id="sidebar">
        <div class="toggle-btn">
            <span>&#9776</span>
        </div>
        <ul>
            <li>
                <img src="Img/Logo.png" alt="Logotipo" class="logo">
            </li>
            <a href="Interfaz_Princ.jsp"><p class="bleck"><button class="Bot">Inicio.</button></p></a>
            <%--<a href="Datos_Personales.jsp"><p class="bleck"><button class="Bot">Datos personales.</button></p></a>--%>
            <p class="bleck"><button class="Bot">Boletines.</button></p>
            <a href="Estudiantes.jsp"><p class="bleck"><button class="Bot">Estudiantes.</button></p></a>
            <a href="cursos.jsp"><p class="bleck"><button class="Bot">Docentes.</button></p></a>
        </ul>
    </div>
    <script src="main.js" charset="UTF-8"></script>
    <%--Fin creacion menu--%>
</head>
<body background="ww.jpg">

    <div class="container mt-5">


        <h1 align="center">LISTA DE CURSOS</h1>



        <center>
            <div class="cursos">
                <div class="listaCursos">
                    <a href="primero.jsp?curso=Primero"><img src="imagenes/1.png" width="10%" height="10%"> </a>
                    <a href="segundo.jsp?curso=Segundo"><img src="imagenes/2.png" width="10%" height="10%"> </a>  
                </div>
                <div class="listaCursos">
                    <a href="tercero.jsp?curso=Tercero"><img src="imagenes/3.png" width="10%" height="10%"> </a>
                    <a href="cuarto.jsp?curso=Cuarto"><img src="imagenes/4.png" width="10%" height="10%"> </a>
                </div>
                <div class="listaCursos">
                    <a href="quinto.jsp?curso=Quinto"><img src="imagenes/5.png" width="10%" height="10%"> </a>
                </div>
            </div>

            <div class="cursos">
                <div class="listaCursos">
                    <a href="sexto.jsp?curso=Sexto"><img src="imagenes/6.png" width="10%" height="10%"> </a>
                    <a href="septimo.jsp?curso=Septimo"><img src="imagenes/7.png" width="10%" height="10%"> </a>  
                </div>
                <div class="listaCursos">
                    <a href="octavo.jsp?curso=Octavo"><img src="imagenes/8.png" width="10%" height="10%"> </a>
                    <a href="noveno.jsp?curso=Noveno"><img src="imagenes/9.png" width="10%" height="10%"> </a>
                </div>
                <div class="listaCursos">
                    <a href="decimo.jsp?curso=Decimo"><img src="imagenes/10.png" width="10%" height="10%"> </a>
                    <a href="once.jsp?curso=Once"><img src="imagenes/11.png" width="10%" height="10%"> </a>
                </div>
            </div>
            <div class="boton all" >
                <div>
                    <a href="index.jsp?curso=all"><img src="imagenes/all.png" width="5%" align="right" height="8%"> </a>
                </div>
            </div>

        </center>  
    </div>
</body>
</html>
