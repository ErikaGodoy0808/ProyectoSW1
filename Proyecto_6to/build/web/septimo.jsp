<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">{
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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

    <title>CURSO-selec</title>
</head>
<body background="ww.jpg">

    <%
        String usuario = "root";
        String clave = "";
        String url = "jdbc:mysql://localhost/proyecto_6to?user=admin&password=123456";
        Connection con;
        Statement st;
        ResultSet rs;
    %>





    <h1 width="20" align="center">  
        <%
            String curso = request.getParameter("curso");
            out.println("Grado" + "_____" + curso);
        %>
    </h1>

    <table class="table table-striped">
        <thead>
            <tr>
                <th scope="col"><font color="white">ID</font></th>
                <th scope="col"><font color="white">Nombre</font></th>
                <th scope="col"><font color="white">Apellido</font></th>
                <th scope="col"><font color="white">Edad</font></th>
                <th scope="col"><font color="white">Correo</font></th>
                <th scope="col"><font color="white">Curso</font></th>
                <th scope="col"><font color="white">Genero</font></th>
            </tr>
        </thead>
        <tbody>
            <%
                try {

                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection(url, usuario, clave);
                    st = con.createStatement();
                    rs = st.executeQuery("SELECT id_est, nom_est, ape_est, ed_est, em_est, id_curso, gen_est FROM `estudiantes` where  id_curso like ('7%')");

                    while (rs.next()) {
            %>

            <tr>
                <th scope="row"><font color="white"><%= rs.getString(1)%></font></th>
                <td><font color="white"><%= rs.getString(2)%></font></td>
                <td><font color="white"><%= rs.getString(3)%></font></td>
                <td><font color="white"><%= rs.getString(4)%></font></td>
                <td><font color="white"><%= rs.getString(5)%></font></td>
                <td><font color="white"><%= rs.getString(6)%></font></td>
                <td><font color="white"><%= rs.getString(7)%></font></td>
            </tr>

            <%
                    }
                } catch (Exception e) {
                    out.print("error mysql" + e);
                }

            %>

        </tbody>
    </table>


</body>
</html>