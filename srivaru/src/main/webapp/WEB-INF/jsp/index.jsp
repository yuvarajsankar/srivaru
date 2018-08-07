<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Spring 4 MVC - File Upload Example</title>
        <link type="text/css" href="<c:url value='/assets/css/bootstrap.min.css' />" rel="stylesheet" />
        <script src="<c:url value='/assets/js/app.js' />" type="text/javascript"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>Spring 4 MVC - Static Resource Mapping</h1>
                    <img src="<c:url value='/assets/img/teady.jpeg' />" alt="..." class="img-thumbnail">
                    <hr>
                    <a href="#" class="btn btn-primary" role="button" onclick="message()">Click Me</a>
                </div>
            </div>
        </div>
    </body>
</html>