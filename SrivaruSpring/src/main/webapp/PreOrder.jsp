
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body {
    background-image: url("Images/svm1.jpg");
    height: 100%; 

    /* Center and scale the image nicely */
   
    background-size: cover;
}
</style>
</head>
<% %>
<body><!-- To be centered using CSS -->
<form  action="PreOrderServlet" method = "post">
<div >
<table align ="center" >

    <tr>
        <td> </td>
        <td class="val"> </td>
        <td><input type="text" name="colour" placeholder = "colour"required ></input></td>
    </tr>
    <tr>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
    	<td>Login Credentials </td>
        <td class="val"> </td>
        <td><input type="text" name="series" placeholder="" required ></td>
    </tr>
    <tr>
    	<td> </td>
        <td class="val"> </td>
        <td><input type="text" name="battery" placeholder="battery" required ></td>
    </tr>
    <tr>
    	<td> </td>
        <td class="val"> </td>
        <td><input type="text" name="model" placeholder="model" required ></td>
    </tr>
    <tr>
        <td></td>
        
      
    </tr>
 </table>
  <br><br>
</div>  
  <div align= "center">
<input type="button" value = cancel onClick="footer.jsp" >
<button type="submit" value="Submit">Next</button>
</div>
</form>





</body>
</html>


