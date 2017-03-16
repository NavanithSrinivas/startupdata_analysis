package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.mongodb.DBCursor;
import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;
import com.mongodb.Mongo;
import com.mongodb.DB;

public final class searchlist_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css\\template.css\">\n");
      out.write("        <style>\n");
      out.write("            p.lcomp{\n");
      out.write("                width:900px;\n");
      out.write("                border-style: solid;\n");
      out.write("                padding: 5px;\n");
      out.write("                font-size: 20px;\n");
      out.write("                ailgn:center;\n");
      out.write("                position: absolute;\n");
      out.write("                left: 200px;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("                label.comname {border-style: outset;\n");
      out.write("                                }\n");
      out.write("        body{font-size: 18px;}\n");
      out.write("        .Button{font-size: 18px;}\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body  background=\"img\\wal1.jpg\" align=\"center\">\n");
      out.write("        <div id=\"title\">\n");
      out.write("            <table class=\"index\"  border=\"0\"  background=\"img\\1.jpg\">\n");
      out.write("            <tr>\n");
      out.write("                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src=\"img\\logo.jpg\" width= \"100px\" height=\"100px\"></img></td>\n");
      out.write("                <td><font class=\"cit\">Find ur career start here\n");
      out.write("                                 <br><font class=\"title\">Startup Hub</font></td>\n");
      out.write("                <td><font size=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("\n");
      out.write("                    <font class=\"quiz\"> <a href=\"Adminlogin.jsp\">Admin Login</a> </font></td>\n");
      out.write("</tr>\n");
      out.write("</table>\n");
      out.write("        </div>\n");
      out.write("        ");

                
                 
      out.write(" \n");
      out.write("                 <br>\n");
      out.write("                 <form name =\"sear\" action=\"searchjsp.jsp\">\n");
      out.write("                     Search  <input type=\"text\" value=\"\" name=\"search\" style=\"height:30px\" >\n");
      out.write("                      <input type=\"submit\" value=\"find\" class=\"myButton\"/>\n");
      out.write("        \n");
      out.write("                 </form>\n");
      out.write("                 <form action=\"catsearchjsp.jsp\">\n");
      out.write("                <td>Search by category</td> \n");
      out.write("                        <td>\n");
      out.write("                            <select name=\"cat\" id=\"input\">                              \n");
      out.write("                            <option value=\"web\">Web</option>\n");
      out.write("                            <option value=\"mobile\">mobile</option>\n");
      out.write("                            <option value=\"games_video\">Games Video </option>\n");
      out.write("                            <option value=\"software\">software</option>\n");
      out.write("                            </select>\n");
      out.write("                       </td>\n");
      out.write("                       <td><input type=\"submit\" class=\"myButton\" value=\"Show\" name=\"search\"></td>\n");
      out.write("            </tr>\n");
      out.write("            </form>\n");
      out.write("                 <form action=\"yearfilterjsp.jsp\">\n");
      out.write("                <td>Search by category</td> \n");
      out.write("                        <td>\n");
      out.write("                            <select name=\"year\" id=\"input\">                              \n");
      out.write("                                <option value=\"5\">5 years of experince</option>\n");
      out.write("                            <option value=\"10\">10 years of experince</option>\n");
      out.write("                           \n");
      out.write("                            </select>\n");
      out.write("                       </td>\n");
      out.write("                       <td><input type=\"submit\" class=\"myButton\" value=\"Filter\" name=\"search\"></td>\n");
      out.write("            </tr>\n");
      out.write("            </form>\n");
      out.write("                 <h1>List of Startups</h1>\n");
      out.write("                 <p class=\"lcomp\">\n");
      out.write("                     \n");
      out.write("                        ");

        String srch_id = request.getParameter("search");
            DB db;
            
            Mongo mongo = new Mongo("LocalHost",27017);
            db=mongo.getDB("local");
          //  out.println("db connected is..." + db);
            DBCollection collection = db.getCollection("StartupHun");
           // out.println("table used connected is..." +collection) ;
           BasicDBObject query = new BasicDBObject();
//query.put("name", srch_id);
DBCursor cursor = collection.find();
// Print out "highest" priority items
BasicDBObject query1 = null;
while (cursor.hasNext()) {
   // out.println(cursor.next());
    query1 = ( BasicDBObject ) cursor.next();

      out.write("\n");
      out.write("<label class=\"comname\">\n");
      out.write("    ");
out.println( ( String ) query1.get( "name" )+"  " );
      out.write("\n");
      out.write("\n");
      out.write("</label>  \n");
      out.write("        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                        ");

                            }
                        
      out.write("\n");
      out.write("                        \n");
      out.write("</p>\n");
      out.write("\n");
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
