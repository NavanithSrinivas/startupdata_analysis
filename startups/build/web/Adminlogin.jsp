<%-- 
    Document   : index
    Created on : 18 Sep, 2016, 4:49:12 PM
    Author     : Navanith
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
  <title> Student Log In </title>
  <link rel="stylesheet" href="css/login.css">
</head>
<body background="img\wal1.jpg">
<center>  
    <br><br><br>
<table cellspacing="30px" padding ="10px" background="img\1.jpg">
    <tr>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="img/logo.jpg" width="330px" height="330px">
            <div class ="title" >
             <font>Startup Hub - Find ur career start here </font>
            </div>
        </td>
        <td>
        <div class="container">
            <div class="col-md-6">
                <div id="logbox">
                    <form  method="post" action="login">
                        <h1>Company Login in !</h1>
                        <center> <font color ="red">${err}</font><center/>
                        <input name="userId" type="text" placeholder="Admin ID"  class="input pass"/>
                        <input name="pwd" type="password" placeholder="Password"  class="input pass"/>
                        <a href="insertform.jsp">  <input type="buttton" value="log in !" class="inputButton"/></a>
                       <a href="searchlist.jsp">  goto site </a>
                    </form>
                </div>
            </div>
        </div>
</td>
</tr>
</table>
</center>
</body>
</html>
