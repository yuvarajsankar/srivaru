<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <html>
 
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Employee Registration Form</title>
 
<style>
 
    .error {
        color: #ff0000;
    }
</style>
 
</head>
 
<body>
 
    <h2>Registration Form</h2>
  
    <form:form method="POST" modelAttribute="customer">
        <form:input type="hidden" path="id" id="id"/>
        <table>
            <tr>
                <td><label for="name">Name: </label> </td>
                <td><form:input path="fname" id="name"/></td>
                <td><form:errors path="fname" cssClass="error"/></td>
            </tr>
         
            <tr>
                <td><label for="email">Email: </label> </td>
                <td><form:input path="email" /></td>
                <td><form:errors path="email" cssClass="error"/></td>
            </tr>
     
            <tr>
                <td><label for="mobNo">Mobile Number: </label> </td>
                <td><form:input type="number" path="mobNo" id="mobNo"/></td>
                <td><form:errors path="mobNo" cssClass="error"/></td>
            </tr>
     
            <tr>
                <td><label for="username">username</label> </td>
                <td><form:input path="username" id="username"/></td>
                <td><form:errors path="username" cssClass="error"/></td>
            </tr>
            
            <tr>
                <td><label for="password">password </label> </td>
                <td><form:input path="password" id="password"/></td>
                <td><form:errors path="password" cssClass="error"/></td>
            </tr>
     
            <tr>
                <td colspan="3">
                    <c:choose>
                        <c:when test="${edit}">
                            <input type="submit" value="Update"/>
                        </c:when>
                        <c:otherwise>
                            <input type="submit" value="Register"/>
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </table>
    </form:form>
    <br/>
    <br/>
    Go back to <a href="<c:url value='/list' />">List of All Employees</a>
</body>
</html>