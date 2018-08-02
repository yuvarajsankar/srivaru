<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Srivaru Motors</title>
</head>
<style>
body {
    background-image: url("Images/svm1.jpg");
    height: 100%; 

    /* Center and scale the image nicely */
   
    background-size: cover;
}
</style>
</head>
<body>
  
<%  
String profile_msg=(String)request.getAttribute("profile_msg");  
if(profile_msg!=null){  
out.print(profile_msg);  
}  
String login_msg=(String)request.getAttribute("login_msg");  
if(login_msg!=null){  
out.print(login_msg);  
}  
 %>  
 <br/> 
 <div align = "center">
 <h4>Login Form</h4>
<form action="CustomerLogin" method="post">  
<input type="text" placeholder = "User name or Email" name="userName"/><br/><br/>  
<input type="password" placeholder="password" name="password"/><br/><br/>  
<input type="submit" value="login"/>  
</form>  

<input id="inp" type="button" value="Not Registered ? " onclick="location.href='CustomerRegistration.jsp';" />
</div>
<jsp:include page="footer.jsp" />  
</body>
</html>