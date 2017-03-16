

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration </title>
          <link rel="stylesheet" type="text/css" href="css\template.css">
        <style>
            #photo
            {
                width: 80;
               height: 85;
            }
            #sign
            {
                width:85;
                height: 45;
            }
            #input{
                height :23px;
                font-size: 18px;
                    border-radius: 5px;
                border: 2px solid #9966ff;
            }
            #error{
                font-size: 15px;
                color: red;
            }
            #address
            {
             border-radius: 5px;
             font-size: 13px;
                border: 2px solid #9966ff;   
            }
            .desp{
                position : relative;                
                left: 850px;        
              }
           
        </style>
    </head>
    <body background="img\wal1.jpg">
        
        <form action="insertjsp.jsp" >
        <div id="title">
            <table class="index"  border="0"  background="img\1.jpg">
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="img\logo.jpg" width= "100px" height="100px"></img></td>
                <td><font class="cit">Find ur career start here
                                 <br><font class="title">Startup Hub</font></td>
                <td><font size="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%
     /* String rollno = (String)session.getAttribute("userid");
      String lgname = (String)session.getAttribute("lgname");*/
%>

</tr>
</table>
        


         <center>
         <table>
            <tr><td>      
            <table cellspacing="12px" border="0" id="details">
                <tr><td></td><td><font id="error"></font></td></tr>
                <tr>
                    <td>Name <font color="red">*</font></td><td><input type="text" name="name" value ="" id="input">
                                        <br></td>
                </tr>
                <tr>
                    <td>Crunch link </td><td><input type="text" name="crunch" value ="" id="input" >
                                        <br><font id="error"></font></td>
                </tr>
                <tr>
                    <td>Home page link </td><td><input type="text" name="homepage" value ="" id="input" >
                                        <br><font id="error"></font></td>
                </tr>
                <tr>
                    <td>Blog </td><td><input type="text" name="blog" value ="" id="input" >
                                        <br></td>
                </tr>
              <tr>
                    <td>Phno</td><td><input type="text" name="phno" value ="" id="input" >
                                        <br></td>
                </tr>
                 <tr>
                    <td>Turnover </td><td><input type="text" name="turnover" value ="" id="input" >
                                        <br></td>
                </tr>
                <tr>
                    <td>Founded on </td><td><input type="date" name="founded" value ="" id="input" >
                                        <br></td>
                </tr>
                <tr>
                    <td>Description  </td><td><input type="text" name="desc" value ="" id="input" >
                                        <br></td>
                </tr>
                <tr>
                    <td>Overview </td><td><input type="text" name="ovw" value ="" id="input" >
                                        <br></td>
                </tr>
                
                <tr>
                    <td>Category  </td>
                    <td>
                        <select name="cat" id="input">
                            <option value="web">web</option>
                            <option value="mobile">mobile</option>
                            <option value="software">software </option>
                            <option value="games_video">games video</option>
                         </select>
                    </td>
                </tr>
               
             </table>
            </td>
           
            </tr>
            <tr ><td colspan="2" align="center"><input type="submit" class="myButton" name="submit"></td></tr>
        </table>
               
        </form>
</center>
    </body>
</html>

