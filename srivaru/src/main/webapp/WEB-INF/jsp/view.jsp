<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>jQuery 360 Rotate</title>
<style>
h1 {  font-family: Helvetica, Arial, sans-serif;  text-align: center; font-size:46px; margin-top:20px; color:#fff;
	  text-shadow: 2px 2px 0px rgba(255,255,255,.7), 5px 7px 0px rgba(0, 0, 0, 0.1); 
}
.border{width:640px; height:auto; margin:auto}
.autorotate{
	width:96.5%;
	display:block;
	padding:5px;
	background-color:tomato;
	color:#fff;
	text-decoration:none;
	text-transform:uppercase;
	text-align:center;
}
p{
	text-align:center;
	font-size:18px;
	color:#fff;
}
</style>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="<c:url value='/assets/js/rotate.js' />" type="text/javascript"></script></head>
<body background="../background1.png">
<h1>360 Image Rotate</h1>
<div class="border">	
		<script language="javascript">
		$(window).load(function(){
		$("#view360").rotate({imageDir:'assets/images',imageCount:36,imageExt:'jpg',canvasID:'mycar',canvasWidth:640,canvasHeight:480,autoRotate:false});
		});
		</script>
        <div id="view360">
		<a href="#" class="autorotate">Auto rotate</a>
		</div>
		<p>Click and drag to zoom the image</p>
		
</div>		
</body>
</html>