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
}
</style>
</head>
<% %>
<body><!-- To be centered using CSS -->
<form  action="EmployeeServlet" method = "post">
<div >
<table align ="center" >
  
	<tr>
	<td>Your Details</td>
    	
        <td class="val"> </td>
        <td><input type="text" name="firstName" placeholder="First Name" required ></td>
        <td><input type="text" name="lastName" placeholder = "last Name"required></td>
    </tr>
    <tr>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
    	<td class="name" ></td>
        <td class="val"></td>
        <td><input type="text" name="email" placeholder="Email" required ></td>
        <td><input type="text" name="cemail" placeholder = "Confirm Email"required></td>
    
        
    </tr>
    <tr>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
  <td> </td>
        <td class="val"> </td>
        <td><input type="number" name="mobNo" placeholder = "Mobile Number" maxlength = 10 required="we need your mobile number" ></td>
    </tr>
    <tr>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
  <td class="name">Your Address</td>
        <td class="val"> </td>
        <td>
        	<input type="text" name="address" placeholder= "Door No, Street Name" required>
        </td>
    </tr>
    <tr>
    <td> </td>
        <td class="val"> </td>
        <td> <input type="text" name="address" placeholder= "City" required>
        </td>
    </tr>
    <tr>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td> </td>
        <td class="val"> </td>
        <td><input type="number" name="pinCode" placeholder = "Pincode"required ></input></td>
    </tr>
    <tr>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
    	<td>Login Credentials </td>
        <td class="val"> </td>
        <td><input type="text" name="userName" placeholder="User Name" required ></td>
    </tr>
    <tr>
    	<td> </td>
        <td class="val"> </td>
        <td><input type="text" name="password" placeholder="Password" required ></td>
    </tr>
    <tr>
    	<td> </td>
        <td class="val"> </td>
        <td><input type="text" name="password" placeholder="Re-type Password" required ></td>
    </tr>
    <tr>
        <td></td>
        
      
    </tr>
 </table>
  <br><br>
  <input type="file" name="flPhoto" value="profile picture" />
</div>  
  <div align= "center">
<input type="button" value = cancel onClick="footer.jsp" >
<button type="submit" value="Submit">Next</button>
</div>
</form>

<script type="text/javascript">
$( "#number" ).keyup(function() {
    numberval = $('#number').val();

    $.ajax({
        type: "GET",
        dataType: "json",
        url: "http://postalpincode.in/api/pincode/$pincode", 
        data: {pincode: numberval},
        success: function(data) {
           $('#name').val(data["name"]);
           $("#email").val(data["email"]);
        },
        error : function(){
           alert('Some error occurred!');
        }
    });
});
</script>





</body>
</html>


