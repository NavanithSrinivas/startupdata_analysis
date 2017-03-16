package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class insertform_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Registration </title>\n");
      out.write("          <link rel=\"stylesheet\" type=\"text/css\" href=\"css\\template.css\">\n");
      out.write("        <style>\n");
      out.write("            #photo\n");
      out.write("            {\n");
      out.write("                width: 80;\n");
      out.write("               height: 85;\n");
      out.write("            }\n");
      out.write("            #sign\n");
      out.write("            {\n");
      out.write("                width:85;\n");
      out.write("                height: 45;\n");
      out.write("            }\n");
      out.write("            #input{\n");
      out.write("                height :23px;\n");
      out.write("                font-size: 18px;\n");
      out.write("                    border-radius: 5px;\n");
      out.write("                border: 2px solid #9966ff;\n");
      out.write("            }\n");
      out.write("            #error{\n");
      out.write("                font-size: 15px;\n");
      out.write("                color: red;\n");
      out.write("            }\n");
      out.write("            #address\n");
      out.write("            {\n");
      out.write("             border-radius: 5px;\n");
      out.write("             font-size: 13px;\n");
      out.write("                border: 2px solid #9966ff;   \n");
      out.write("            }\n");
      out.write("            .desp{\n");
      out.write("                position : relative;                \n");
      out.write("                left: 850px;        \n");
      out.write("              }\n");
      out.write("           \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body background=\"img\\wal1.jpg\">\n");
      out.write("        \n");
      out.write("        <form action=\"insertjsp.jsp\" >\n");
      out.write("        <div id=\"title\">\n");
      out.write("            <table class=\"index\"  border=\"0\"  background=\"img\\1.jpg\">\n");
      out.write("            <tr>\n");
      out.write("                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src=\"img\\logo.jpg\" width= \"100px\" height=\"100px\"></img></td>\n");
      out.write("                <td><font class=\"cit\">Find ur career start here\n");
      out.write("                                 <br><font class=\"title\">Startup Hub</font></td>\n");
      out.write("                <td><font size=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");

     /* String rollno = (String)session.getAttribute("userid");
      String lgname = (String)session.getAttribute("lgname");*/

      out.write("\n");
      out.write("\n");
      out.write("</tr>\n");
      out.write("</table>\n");
      out.write("        \n");
      out.write("\n");
      out.write("\n");
      out.write("         <center>\n");
      out.write("         <table>\n");
      out.write("            <tr><td>      \n");
      out.write("            <table cellspacing=\"12px\" border=\"0\" id=\"details\">\n");
      out.write("                <tr><td></td><td><font id=\"error\"></font></td></tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Name <font color=\"red\">*</font></td><td><input type=\"text\" name=\"name\" value =\"\" id=\"input\">\n");
      out.write("                                        <br></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Crunch link </td><td><input type=\"text\" name=\"crunch\" value =\"\" id=\"input\" >\n");
      out.write("                                        <br><font id=\"error\"></font></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Home page link </td><td><input type=\"text\" name=\"homepage\" value =\"\" id=\"input\" >\n");
      out.write("                                        <br><font id=\"error\"></font></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Blog </td><td><input type=\"text\" name=\"blog\" value =\"\" id=\"input\" >\n");
      out.write("                                        <br></td>\n");
      out.write("                </tr>\n");
      out.write("              <tr>\n");
      out.write("                    <td>Phno</td><td><input type=\"text\" name=\"phno\" value =\"\" id=\"input\" >\n");
      out.write("                                        <br></td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr>\n");
      out.write("                    <td>Turnover </td><td><input type=\"text\" name=\"turnover\" value =\"\" id=\"input\" >\n");
      out.write("                                        <br></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Founded on </td><td><input type=\"date\" name=\"founded\" value =\"\" id=\"input\" >\n");
      out.write("                                        <br></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Description  </td><td><input type=\"text\" name=\"desc\" value =\"\" id=\"input\" >\n");
      out.write("                                        <br></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Overview </td><td><input type=\"text\" name=\"ovw\" value =\"\" id=\"input\" >\n");
      out.write("                                        <br></td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td>Category  </td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"cat\" id=\"input\">\n");
      out.write("                            <option value=\"web\">web</option>\n");
      out.write("                            <option value=\"mobile\">mobile</option>\n");
      out.write("                            <option value=\"software\">software </option>\n");
      out.write("                            <option value=\"games_video\">games video</option>\n");
      out.write("                         </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("               \n");
      out.write("             </table>\n");
      out.write("            </td>\n");
      out.write("           \n");
      out.write("            </tr>\n");
      out.write("            <tr ><td colspan=\"2\" align=\"center\"><input type=\"submit\" class=\"myButton\" name=\"submit\"></td></tr>\n");
      out.write("        </table>\n");
      out.write("               \n");
      out.write("        </form>\n");
      out.write("</center>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
