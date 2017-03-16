<%-- 
    Document   : searchlist
    Created on : 25 Sep, 2016, 11:30:45 PM
    Author     : Navanith
--%>


<%@page import="com.mongodb.DBCursor"%>
<%@page import="com.mongodb.BasicDBObject"%>
<%@page import="com.mongodb.DBCollection"%>
<%@page import="com.mongodb.Mongo"%>
<%@page import="com.mongodb.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        body{font-size: 18px;}
        .Button{font-size: 18px;}
        </style>
    </head>
    <body  background="img\wal1.jpg" align="center">
        <div id="title">
            <table class="index"  border="0"  background="img\1.jpg">
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="img\logo.jpg" width= "100px" height="100px"></img></td>
                <td><font class="cit">Find ur career start here
                                 <br><font class="title">Startup Hub</font></td>
                <td><font size="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <font class="quiz"> <a href="Adminlogin.jsp">Admin Login</a> </font></td>
</tr>
</table>
        </div>
        <%
                
                 %> 
                 <br>
                 <form name ="sear" action="searchjsp.jsp">
                     Search  <input type="text" value="" name="search" style="height:30px" >
                      <input type="submit" value="find" class="myButton"/>
        
                 </form>
                 <form action="catsearchjsp.jsp">
                <td>Search by category</td> 
                        <td>
                            <select name="cat" id="input">                              
                            <option value="web">Web</option>
                            <option value="mobile">mobile</option>
                            <option value="games_video">Games Video </option>
                            <option value="software">software</option>
                            </select>
                       </td>
                       <td><input type="submit" class="myButton" value="Show" name="search"></td>
            </tr>
            </form>
                 <form action="yearfilterjsp.jsp">
                <td>Search by category</td> 
                        <td>
                            <select name="year" id="input">                              
                                <option value="5">5 years of experince</option>
                            <option value="10">10 years of experince</option>
                           
                            </select>
                       </td>
                       <td><input type="submit" class="myButton" value="Filter" name="search"></td>
            </tr>
            </form>
                 <h1>List of Startups</h1>
                 <p class="lcomp">
                     
                        <%
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
%>
<label class="comname">
    <%out.println( ( String ) query1.get( "name" )+"  " );%>

</label>  
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <%
                            }
                        %>
                        
</p>

    </body>
</html>

