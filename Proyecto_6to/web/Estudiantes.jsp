<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Estudiante</title>
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

    <div class="center">
        <div class="content">
            <div class="contact-wrapper animated bounceInUp">
                <div class="contact-form">
                    <h3>PERIODO ACADÉMICO:</h3>
                    <form action="ver.jsp" method="post">
                        <p>
                            <label>ID estudiante:</label>
                            <input type="text" name="id_est">
                            <input type="submit" name="btnenviar"> 
                        </p>     
                    </form>
                    <%
                        String id_est;
                        id_est = request.getParameter("id_est");
                    %>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
