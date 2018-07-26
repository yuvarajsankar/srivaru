<script> 
localStorage.batter = "ugsd";
function get(){ 
	
var m="Hello"; 
var n=localStorage.batter;
window.location.replace("Test.jsp?messy="+n+ "&mess="+m);
} 
</script> 
<input type="button" onclick="get();" value="click"> 
<%String message=request.getParameter("mess"); 
out.println(message); 
String message1=request.getParameter("messy"); 
out.println(message1); 
%> 