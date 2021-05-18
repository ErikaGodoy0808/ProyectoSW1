<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.lang.NumberFormatException"%>
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
    <%!
        String id_est;
        int d = 0;
    %>

    <%
        id_est = request.getParameter("id_est");

        try {
            d = Integer.valueOf(id_est);
        } catch (Exception e) {
        }
    %>
    <label>ID estudiante: <%= id_est%></label> 


    <%
        Connection cn;
        String url = "jdbc:mysql://localhost/proyecto_6to?user=admin&password=123456";
        String driver = "com.mysql.jdbc.Driver";
        String user = "root";
        String password = "";
        PreparedStatement ps;
        ResultSet rs;
        Statement st;
    %>
    <div class="center">
        <div class="content">
            <h1 class="logo">BOLETIN</h1>
            <div class="contact-wrapper animated bounceInUp">
                <div class="contact-form">
                    <form>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Periodo</th>
                                    <th>Asignatura</th>
                                    <th>Nota</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    try {
                                        Class.forName(driver);
                                        cn = DriverManager.getConnection(url, user, password);
                                        st = cn.createStatement();
                                        rs = st.executeQuery("SELECT periodo.nom_per, asignaturas.nom_asig, notas.v_nota FROM `periodo`, `estudiantes`, `asignaturas`, `notas`, `areas` WHERE periodo.id_per_aca=notas.id_per_aca AND notas.id_asig=asignaturas.id_asig AND asignaturas.id_area=areas.id_area AND " + d + "=notas.id_est");
                                        while (rs.next()) {
                                %>

                                <tr>
                                    <td><%= rs.getString("periodo.nom_per")%></td> 
                                    <td><%= rs.getString("asignaturas.nom_asig")%></td>
                                    <td><%= rs.getString("notas.v_nota")%></td>    
                                </tr>

                                <%
                                        }
                                    } catch (Exception e) {
                                        out.print("error mysql" + e);
                                    }

                                %>

                            </tbody>
                        </table>
                        <a href="Interfaz_Princ.jsp"><p class="Bot"><button>Volver</button></p></a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
