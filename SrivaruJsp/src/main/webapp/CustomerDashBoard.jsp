<%@page import="java.util.List"%>
<%@page import="model.Customer"%>
<%@page import="java.sql.ResultSet"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body {
    background-image: url("Images/svm1.jpg");
}
</style>
</head>
<body>
Logged in


<h3> Hello <%
Customer user = new Customer();

out.print(request.getSession().getAttribute("fname"));
out.print(request.getSession().getAttribute("lname"));
out.print(request.getSession().getAttribute("email"));
out.print(request.getSession().getAttribute("address"));
out.print(request.getSession().getAttribute("pincode"));
out.print(request.getSession().getAttribute("mobno"));



%>
<input id="inp" type="button" value="preorder" onclick="location.href='PreOrder.jsp';" />
</h3>

<jsp:include page="footer.jsp" />  

</body>
</html>
