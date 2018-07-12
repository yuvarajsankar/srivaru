<%@page import="java.util.List"%>
<%@page import="model.Customer"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Logged in

<%Customer user = new Customer(); %>
          
        <% ServletContext context=getServletContext();  
List<Customer> n=(List<Customer>)context.getAttribute("user");
%>
</body>
</html>