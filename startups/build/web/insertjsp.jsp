<%-- 
    Document   : insertjsp
    Created on : 2 Mar, 2017, 4:06:38 AM
    Author     : Navanith
--%>

<%-- 
    Document   : yearfilterjsp
    Created on : 2 Mar, 2017, 1:57:55 AM
    Author     : Navanith
--%>



   <%@page import="com.mongodb.DBCursor"%>
<%@page import="com.mongodb.BasicDBObject"%>
<%@page import="com.mongodb.DBCollection"%>
<%@page import="com.mongodb.Mongo"%>
<%@page import="com.mongodb.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css\template.css">
        <style>
           p.lcomp{
                width:900px;
                border-style: solid;
                padding: 5px;
                font-size: 20px;
                ailgn:center;
                position: absolute;
                left: 200px;
            }
            
                label.comname {border-style: outset;
                               
                                }
                                div.x{
                                    position:absolute;
                                    top: 350px;
                                    left:500px
                                }
        </style>
    </head>
    <body  background="img\wal1.jpg">
        <div id="title">
            <table class="index"  border="0"  background="img\1.jpg">
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="img\logo.jpg" width= "100px" height="100px"></img></td>
                <td><font class="cit">Find ur career start here
                                 <br><font class="title">Startup Hub</font></td>
                <td><font size="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<font class="quiz">  </font></td>
</tr>
</table>
        </div>
       <%
       
        String name = request.getParameter("name");
            String crunch = request.getParameter("crunch");
            String homepage = request.getParameter("homepage");
            String blog = request.getParameter("blog");
            String phno = request.getParameter("phno");
            String turnover = request.getParameter("turnover");
            String founded = request.getParameter("founded");
            String desc = request.getParameter("desc");
            String ovw = request.getParameter("ovw");
            String email = request.getParameter("email");
            String cat = request.getParameter("cat");
     
       %>
    
                 
                     
        <%
       
            DB db;
            int i=0;
            Mongo mongo = new Mongo("LocalHost",27017);
            db=mongo.getDB("local");
           // out.println("db connected is..." + db);
            DBCollection collection = db.getCollection("StartupHun");
            //out.println("table used connected is..." +collection) ;
     
            	BasicDBObject document = new BasicDBObject();
                	document.put("name", name);
                        document.put("crunchbase_url",crunch );
                        document.put("homepage_url",homepage );
                        document.put("blog_url", blog);
                        document.put("founded_year", founded);
                        document.put("email_address",email );
                        document.put("phone_number", phno);
                        document.put("description", desc);
                        document.put("total_money_raised", turnover);
                        
                       
                        
                        

	collection.insert(document);
//query.put("category_code", cat);

%>

   

</label>  
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

       
                
<center><h1>Sucessfully Inserted</h1></center>
                 <div class="x">
         <form name ="sear" action="searchjsp.jsp">
                     Enter Company Name  <input type="text" value="" name="search" style="height:30px" >
                      <input type="submit" value="find" class="myButton"/>
        
                 </form>
                     </div>
        </table>
    </body>
</html>



