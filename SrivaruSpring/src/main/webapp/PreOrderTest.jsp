<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
localStorage.clear();
$(document).ready(function(){
    $("#div3").click(function(){
        var imgUrl = $(this).data('rel');
        $("#div1").html("<img src='" + imgUrl + "' alt='description' />");
        document.getElementById("demo").innerHTML = "200";
        var paint = 200;
        localStorage.paint= 200;
        var total = Number (localStorage.paint) + Number (localStorage.battery);
        document.getElementById("total").innerHTML = total;
        window.location.replace=("PreOrderTest.jsp?name="+total);//sending as query parameter 
    
    });
});

$(document).ready(function(){
    $("#div2").click(function(){
        var imgUrl = $(this).data('rel');
        $("#div1").html("<img src='" + imgUrl + "' alt='description' />");
        document.getElementById("demo").innerHTML = "500";
        var paint =500;
        var battery;        
        localStorage.paint= 500;
        var total = Number (localStorage.paint) + Number (localStorage.battery);
        document.getElementById("total").innerHTML = total;
        window.location.replace=("PreOrderTest.jsp?name="+total);//sending as query parameter 
        
    });
});
$(document).ready(function(){
    $("#div4").click(function(){
        localStorage.battery= 25000;
        var total = Number (localStorage.paint) + Number (localStorage.battery);
        document.getElementById("total").innerHTML = total;
        });
});

$(document).ready(function(){
    $("#div5").click(function(){
        
        localStorage.battery= 50000;
        var total = Number (localStorage.paint) + Number (localStorage.battery);
        document.getElementById("total").innerHTML = total;
            });
});

</script>
<style type="text/css">
#div2 {
    position: absolute;
    left: 100px;
    top: 200px;
}
#div3 {
    position: absolute;
    left: 100px;
    top: 150px;
}
#div5 {
  position: absolute;
  left: 50px;
  top: 150px;
  width :50;
  height:33;
}
#div4 {
  position: absolute;
  left: 50px;
  top: 200px;
  width :50;
  height:33;
}
</style>
</head>
<body>
<div id="div1" align= "center"><img src="Images/svm1.jpg" width="50" height="33"></div>
<div id ="div3" data-rel="Images/bluebike.jpg">
<img  src="Images/blue.jpg" width="50" height="33">
</div>
<div id ="div2" data-rel="Images/orangebike.jpg" width="50" height="33">
<img  src="Images/red.png" width="50" height="33">
</div>
<div id ="div4" data-rel="Images/green.png">
<img  src="Images/blue.jpg" width="50" height="33" >
</div>
<div id ="div5" data-rel="Images/orangebike.jpg" >
<img  src="Images/red.png" width="50" height="33">
</div>
<p id="demo"></p>
<p id="total"></p>
<% 
String name=(String)request.getParameter("name"); if(name!=null)
{
out.println(name);        
}
%>

</body>
</html>
