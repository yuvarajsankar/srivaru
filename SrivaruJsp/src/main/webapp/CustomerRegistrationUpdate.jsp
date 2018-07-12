<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.List"%>
<%@page import="model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>All customers</title>
</head>
<body>
   
   <form name="CustomerServlet" method = "GET">
   <%
        List<Customer> all = (List<Customer>)request.getAttribute("listCustomer");
        System.out.println(all+"JSP");
        for(Customer customer : all) {
        %>
   
<table>
<tr>
   <th>User Name</th>
   <th>First Name</th>
   <th>Last Name</th>
   <th>Email</th>
   </tr>
<tr>
   <td><%= customer.getCustomerId() %></td>
   <td><%= customer.getFirstName() %></td>
   <td><%= customer.getLastName()%></td>
   <td><%= customer.getEmail() %></td>
</tr>
         
         </table>
         <% } %>
         </form>

</body>
</html>