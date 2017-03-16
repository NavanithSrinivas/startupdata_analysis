

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
                                    top: 500px;
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
        String cat = request.getParameter("cat");
       %>
    <center><h1>Companies in category<font color="grey"> <%=cat%></font></h1></center>
                 <p class="lcomp">
                     
        <%
       
            DB db;
            
            Mongo mongo = new Mongo("LocalHost",27017);
            db=mongo.getDB("local");
           // out.println("db connected is..." + db);
            DBCollection collection = db.getCollection("Startup");
            //out.println("table used connected is..." +collection) ;
           BasicDBObject query = new BasicDBObject();
query.put("category_code", cat);
DBCursor cursor = collection.find(query);
// Print out "highest" priority items
BasicDBObject query1 = null;
while (cursor.hasNext()) {
   // out.println(cursor.next());
    query1 = ( BasicDBObject ) cursor.next();
%>

    <label class="comname">
    <%out.println( ( String ) query1.get( "name" )+"  " );%>

</label>  
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <%      }
           
        
        %>
                 </p>    
                 <div class="x">
         <form name ="sear" action="searchjsp.jsp">
                     Enter Company Name  <input type="text" value="" name="search" style="height:30px" >
                      <input type="submit" value="find" class="myButton"/>
        
                 </form>
                     </div>
        </table>
    </body>
</html>

