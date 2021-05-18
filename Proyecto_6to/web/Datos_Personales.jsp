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
            <p class="bleck"><button class="Bot">Estudiantes.</button></p>
            <p class="bleck"><button class="Bot">Docentes.</button></p>
        </ul>
    </div>
    <script src="main.js" charset="UTF-8"></script>
    <%--Fin creacion menu--%>

</head>
<body>

    <%
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
    %>

    <%
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/proyecto_6to?user=admin&password=123456");
            st = con.createStatement();
            rs = st.executeQuery("SELECT * FROM `areas`;");
            while (rs.next()) {
    %>
<tr>
    <th scope = "row" > <%= rs.getString(1)%> </th>
    <td><%=rs.getString(2)%></td>
    <td><%=rs.getString(3)%></td>
</tr>
<%
        }
    } catch (Exception e) {
        out.println("No conectado." + e);
    }
%>

<%--Inicio creacion zona de datos--%>
<content class="contenido"> 
    <div class="content">

        <h1 class="logo">-</h1>

        <div class="contact-wrapper animated bounceInUp">
            <div class="contact-form">
                <h3>Datos personales.</h3>
                <form action="">
                    <p>
                        <label>Codigo.</label>
                        <input type="text" name="fullname">
                    </p>
                    <p>
                        <label>Nombre.</label>
                        <input type="email" name="email">
                    </p>
                    <p>
                        <label>Edad.</label>
                        <input type="tel" name="phone">
                    </p>
                    <p>
                        <label>Genero.</label>
                        <input type="text" name="affair">
                    </p>
                    <p>
                        <label>Documento.</label> 
                        <input type="text" name="document">
                    </p>
                    <p>
                        <label>Curso.</label> 
                        <input type="text" name="curse">
                    </p>
                    <p class="block">
                        <button>
                            Volver
                        </button>
                    </p>
                </form>
            </div>

        </div>

    </div>
</content>
<%--Fin creacion zona de datos--%>

</body>
</html>
