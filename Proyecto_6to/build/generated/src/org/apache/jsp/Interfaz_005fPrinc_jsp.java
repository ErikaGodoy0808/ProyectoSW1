package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import com.mysql.jdbc.Driver;

public final class Interfaz_005fPrinc_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Reportes</title>\n");
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
      out.write("            <a href=\"principal.jsp\"><p class=\"bleck\"><button class=\"Bot\">Boletines.</button></p></a>\n");
      out.write("            <p class=\"bleck\"><button class=\"Bot\">Estudiantes.</button></p>\n");
      out.write("            <a href=\"cursos.jsp\"><p class=\"bleck\"><button class=\"Bot\">Docentes.</button></p></a>\n");
      out.write("        </ul>\n");
      out.write("    </div>\n");
      out.write("    <script src=\"main.js\" charset=\"UTF-8\"></script>\n");
      out.write("    ");
      out.write("\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("    \n");
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
