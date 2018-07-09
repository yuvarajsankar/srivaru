<%@page import="java.util.Iterator"%>

<%@page import="java.util.List"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer List</title>
</head>
<body>
<form method="post" >

<table border="2">
   <tr>
        <th>Customer ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Mobile Number</th>
        <th>Address</th>
        <th>State</th>
        <th>Country</th>
        <th>Pin code</th>
        <th>Date and time</th>
        <th>Vehicle type</th>
        <th>VIN number</th>
        <th>Chassis Number</th>
        <th>Password</th>
        <th>Registration Number</th>
        <th>Transaction ID</th>
            
   </tr>
   <%
   try
   { 
       Class.forName("com.mysql.cj.jdbc.Driver");
       String url="jdbc:mysql://localhost:3306/srivaru?useSSL=false";
       String username="root";
       String password="0000";
       String query=("select * from customer");
       Connection conn=DriverManager.getConnection(url, username, password);
       Statement stmt=conn.createStatement();
       ResultSet rs=stmt.executeQuery(query);
       while(rs.next())
       {
   %>
           <tr><td><%=rs.getString("customer_id") %></td>
           <td><%=rs.getString("fname") %></td>
           <td><%=rs.getString("lname")%></td>
           <td><%=rs.getLong("mob_no")%></td>
           <td><%=rs.getString("address")%></td>
           <td><%=rs.getString("state")%></td>
           <td><%=rs.getString("country")%></td>
           <td><%=rs.getInt("pincode")%></td>
           <td><%=rs.getString("state") %></td>
           <td><%=rs.getString("vehicle_type") %></td>
           <td><%=rs.getString("vin_number") %></td>
           <td><%=rs.getString("chassis_number") %></td>
           <td><%=rs.getString("date") %></td>
           <td><%=rs.getString("password_Cus") %></td>   
           <td><%=rs.getString("registration_number`") %></td>      
           <td><%=rs.getString("transaction_id") %></td>
           </tr>

   <%
       }
   %>
   </table>
   <%
        rs.close();
        stmt.close();
        conn.close();
   }
   catch(Exception e)
   {
        e.printStackTrace();
   }
   %>
   
	
</form>`


</table>

</body>
</html>

