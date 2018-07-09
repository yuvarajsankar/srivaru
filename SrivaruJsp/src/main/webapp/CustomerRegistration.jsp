<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<% %>
<body>
<form align ="center" action="Customer" method = "post">
<div >
<table align ="center" >
  
	<tr>
    	<td>First Name</td>
        <td>:</td>
        <td><input type="text" name="firstName" required ></td>
    </tr>
    <tr>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
    	<td class="name">Last Name</td>
        <td class="val">:</td>
        <td><input type="text" name="lastName" required></td>
    </tr>
    <tr>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
    	<td class="name">Mobile Number</td>
        <td class="val">:</td>
        <td><input type="number" name="mobNoNumber" maxlength = 10 required ></td>
    </tr>
    <tr>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
    	<td class="name">Address</td>
        <td class="val">:</td>
        <td>
        	<input type="text" name="address" >
        </td>
    </tr>
    <tr>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
    	<td class="name">Pin Code</td>
        <td class="val">:</td>
        <td><input type="number" name="pinCode" required></input></td>
    </tr>
    <tr>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
    	<td>User Name </td>
        <td>:</td>
        <td><input type="text" name="userName" required ></td>
    </tr>
    <tr>
        <td></td>
        
        <td ><input type="button" value="cancel" onclick="index.jsp" ></td>
    </tr>
 </table>
  <br><br>
  <!--<input type="button" value="Apply" (click)="doApplyLeave()"
   <td ><input type="button" value="Apply" onclick='doApply()' ></td>
        <td ><input type="button" value="cancel" onclick="doCancel()" ></td>>-->
</div>  
<button type="submit" value="Submit">Submit</button>
</form>
  




</body>
</html>


