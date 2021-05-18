package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.lang.NumberFormatException;
import com.mysql.jdbc.Driver;

public final class ver_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


        String id_est;
        int d = 0;
    
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Estudiante</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"main.css\">\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("    <div id=\"sidebar\">\n");
      out.write("        <div class=\"toggle-btn\">\n");
      out.write("            <span>&#9776</span>\n");
      out.write("        </div>\n");
      out.write("        <ul>\n");
      out.write("            <li>\n");
      out.write("                <img src=\"Img/Logo.png\" alt=\"Logotipo\" class=\"logo\">\n");
      out.write("            </li>\n");
      out.write("            <a href=\"Interfaz_Princ.jsp\"><p class=\"bleck\"><button class=\"Bot\">Inicio.</button></p></a>\n");
      out.write("            ");
      out.write("\n");
      out.write("            <p class=\"bleck\"><button class=\"Bot\">Boletines.</button></p>\n");
      out.write("            <a href=\"Estudiantes.jsp\"><p class=\"bleck\"><button class=\"Bot\">Estudiantes.</button></p></a>\n");
      out.write("            <a href=\"cursos.jsp\"><p class=\"bleck\"><button class=\"Bot\">Docentes.</button></p></a>\n");
      out.write("        </ul>\n");
      out.write("    </div>\n");
      out.write("    <script src=\"main.js\" charset=\"UTF-8\"></script>\n");
      out.write("    ");
      out.write("\n");
      out.write("    \n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    ");
      out.write("\n");
      out.write("\n");
      out.write("    ");

        id_est = request.getParameter("id_est");

        try {
            d = Integer.valueOf(id_est);
        } catch (Exception e) {
        }
    
      out.write("\n");
      out.write("    <label>ID estudiante: ");
      out.print( id_est);
      out.write("</label> \n");
      out.write("\n");
      out.write("\n");
      out.write("    ");

        Connection cn;
        String url = "jdbc:mysql://localhost/proyecto_6to?user=admin&password=123456";
        String driver = "com.mysql.jdbc.Driver";
        String user = "root";
        String password = "";
        PreparedStatement ps;
        ResultSet rs;
        Statement st;
    
      out.write("\n");
      out.write("    <div class=\"center\">\n");
      out.write("        <div class=\"content\">\n");
      out.write("            <h1 class=\"logo\">BOLETIN</h1>\n");
      out.write("            <div class=\"contact-wrapper animated bounceInUp\">\n");
      out.write("                <div class=\"contact-form\">\n");
      out.write("                    <form>\n");
      out.write("                        <table class=\"table table-striped\">\n");
      out.write("                            <thead>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th>Periodo</th>\n");
      out.write("                                    <th>Asignatura</th>\n");
      out.write("                                    <th>Nota</th>\n");
      out.write("                                </tr>\n");
      out.write("                            </thead>\n");
      out.write("                            <tbody>\n");
      out.write("                                ");

                                    try {
                                        Class.forName(driver);
                                        cn = DriverManager.getConnection(url, user, password);
                                        //ps = cn.prepareStatement("SELECT * FROM `periodo`, `estudiantes`, `asignaturas`, `notas`, `areas` WHERE periodo.id_per_aca=notas.id_per_aca AND notas.id_asig=asignaturas.id_asig AND asignaturas.id_area=areas.id_area AND " + d + "=notas.id_est");
                                        st = cn.createStatement();
                                        rs = st.executeQuery("SELECT periodo.nom_per, asignaturas.nom_asig, notas.v_nota FROM `periodo`, `estudiantes`, `asignaturas`, `notas`, `areas` WHERE periodo.id_per_aca=notas.id_per_aca AND notas.id_asig=asignaturas.id_asig AND asignaturas.id_area=areas.id_area AND "+d+"=notas.id_est");
                                        while (rs.next()) {
                                
      out.write("\n");
      out.write("\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>");
      out.print( rs.getString("periodo.nom_per"));
      out.write("</td> \n");
      out.write("                                    <td>");
      out.print( rs.getString("asignaturas.nom_asig"));
      out.write("</td>\n");
      out.write("                                    <td>");
      out.print( rs.getString("notas.v_nota"));
      out.write("</td>    \n");
      out.write("                                </tr>\n");
      out.write("\n");
      out.write("                                ");

                                        }
                                    } catch (Exception e) {
                                        out.print("error mysql" + e);
                                    }

                                
      out.write("\n");
      out.write("\n");
      out.write("                            </tbody>\n");
      out.write("                        </table>\n");
      out.write("                        <p class=\"block\"> \n");
      out.write("                            <a href=\"Interfaz_Princ.jsp\"><button> Volver </button></a>\n");
      out.write("                        </p>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
