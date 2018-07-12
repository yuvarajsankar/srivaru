<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Login Form</h3>  
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
<form action="CustomerLogin" method="post">  
<input type="text" placeholder = "User name or Email" name="userName"/><br/><br/>  
<input type="password" placeholder="password" name="password"/><br/><br/>  
<input type="submit" value="login"/>  
</form>  
</body>
</html>