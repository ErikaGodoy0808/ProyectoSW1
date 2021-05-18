<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reportes</title>
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

<body>


</body>
</html>
