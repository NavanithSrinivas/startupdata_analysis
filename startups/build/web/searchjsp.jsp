<%-- 
    Document   : searchjsp
    Created on : 1 Mar, 2017, 8:14:01 PM
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
            table.print{
                

background: #f2f6f8; /* Old browsers */
background: -moz-linear-gradient(-45deg, #f2f6f8 0%, #d8e1e7 43%, #b5c6d0 52%, #b5c6d0 52%, #b5c6d0 68%, #e0eff9 100%); /* FF3.6-15 */
background: -webkit-linear-gradient(-45deg, #f2f6f8 0%,#d8e1e7 43%,#b5c6d0 52%,#b5c6d0 52%,#b5c6d0 68%,#e0eff9 100%); /* Chrome10-25,Safari5.1-6 */
background: linear-gradient(135deg, #f2f6f8 0%,#d8e1e7 43%,#b5c6d0 52%,#b5c6d0 52%,#b5c6d0 68%,#e0eff9 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f2f6f8', endColorstr='#e0eff9',GradientType=1 ); /* IE6-9 fallback on horizontal gradient */
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
            <%
            String srch_id = request.getParameter("search");
            %>
        </div>
    <center><h1><font color="#fcfeff"><%=srch_id%></h1></font></center>
        <table width="700px" align="center" cellpadding="10px"  cellspacing="20px" class="print">
        <%
        
            DB db;
            
            Mongo mongo = new Mongo("LocalHost",27017);
            db=mongo.getDB("local");
           // out.println("db connected is..." + db);
            DBCollection collection = db.getCollection("StartupHun");
            //out.println("table used connected is..." +collection) ;
           BasicDBObject query = new BasicDBObject();
query.put("name", srch_id);
DBCursor cursor = collection.find(query);
// Print out "highest" priority items
BasicDBObject query1 = null;
while (cursor.hasNext()) {
   // out.println(cursor.next());
    query1 = ( BasicDBObject ) cursor.next();
%>

    <tr>
        <td>Category </td>
        <td><%out.println( ( String ) query1.get( "category_code" ) );%></td>
    </tr>
    <tr>
        <td>Founded on </td>
        <td><%out.println( ( Integer ) query1.get( "founded_day"+"/"+"founded_month"+"/"+"founded_year" ) );%></td>
    </tr> 
    <tr>
        <td>Description </td>
        <td><%out.println( ( String ) query1.get( "description" ) );%></td>
    </tr> 
    <tr>
        <td>Over View </td>
        <td><%out.println( ( String ) query1.get( "overview" ) );%></td>
    </tr>
    <tr>
        <td>No of Employees </td>
        <td><%out.println( ( Integer ) query1.get( "number_of_employees" ) );%></td>
    </tr>
    <tr>
        <td>Money Raised </td>
        <td><%out.println( ( String ) query1.get( "total_money_raised" ) );%></td>
    </tr>
    <tr>
        <td>Ph No </td>
        <td><%out.println( ( String ) query1.get( "phone_number" ) );%></td>
    </tr> 
    <tr>
        <td>Email @ </td>
        <td><%out.println( ( String ) query1.get( "email_address" ) );%></td>
    </tr>
    
    <tr>
        <td>Crunchbase link  </td>
        <td><a href><%out.println( ( String ) query1.get( "crunchbase_url" ) );%></a></td>
    </tr> 
    <tr>
        <td>Homepage link </td>
        <td><a href><%out.println( ( String ) query1.get( "homepage_url" ) );%></a></td>
    </tr> 
    <tr>
        <td>Blog link </td>
        <td><a href><%out.println( ( String ) query1.get( "blog_url" ) );%></a></td>
    </tr> 
    <tr>
        <td>Tweets us on </td>
        <td><%out.println( ( String ) query1.get( "twitter_username" ) );%></td>
    </tr> 
    <tr>
        <td>Tag list </td>
        <td><%out.println( ( String ) query1.get( "tag_list" ) );%></td>
    </tr> 
    




        <%      }
           
        
        %>
        </table>
    </body>
</html>
