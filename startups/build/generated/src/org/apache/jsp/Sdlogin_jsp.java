package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Sdlogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("  <title> Student Log In </title>\n");
      out.write("  <link rel=\"stylesheet\" href=\"css/login.css\">\n");
      out.write("</head>\n");
      out.write("<body background=\"img\\wal1.jpg\">\n");
      out.write("<center>  \n");
      out.write("<br><br>\n");
      out.write("<table cellspacing=\"30px\" padding =\"10px\" background=\"img\\1.jpg\">\n");
      out.write("    <tr>\n");
      out.write("        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            <img src=\"img/citlogo.png\" width=\"350px\" height=\"350px\">\n");
      out.write("            <div class =\"title\" >\n");
      out.write("             <font>Coimbatore Institute of Technology<br>Department Of Computing <br>ID Generation Portal</font>\n");
      out.write("            </div>\n");
      out.write("        </td>\n");
      out.write("        <td>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"col-md-6\">\n");
      out.write("                <div id=\"logbox\">\n");
      out.write("                    <form  method=\"post\" action=\"studntlogin\">\n");
      out.write("                        <h1>Student Login in !</h1>\n");
      out.write("                        <center> <font color =\"red\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${err}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</font><center/>\n");
      out.write("                        <input name=\"userId\" type=\"text\" placeholder=\"Register No\"  class=\"input pass\"/>\n");
      out.write("                        <input name=\"pwd\" type=\"password\" placeholder=\"Password\"  class=\"input pass\"/>\n");
      out.write("                        <input type=\"submit\" value=\"log in !\" class=\"inputButton\"/>\n");
      out.write("                        If you are Staff<a href=\"StsignIn.jsp\"> login here </a>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("</table>\n");
      out.write("</center>\n");
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
