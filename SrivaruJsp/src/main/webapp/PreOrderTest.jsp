<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>


$(document).ready(function(){
    $("#div3").click(function(){
        var imgUrl = $(this).data('rel');
        $("#div1").html("<img src='" + imgUrl + "' alt='description' />");
        document.getElementById("demo").innerHTML = "200";
        var paint = 200;
        localStorage.paint= 200;
        var total = paint + battery;
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
        document.getElementById("total").innerHTML = paint;
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
    left: 150px;
    top: 200px;
}</style>
</head>
<body>

<div id="div1" align= "center"><img src="Images/svm1.jpg" width="50" height="33"></div>

<strong>Colours</strong>
<div id ="div3" data-rel="Images/green.png">

<img  src="Images/blue.jpg" width="50" height="33">
</div>
<div id ="div2" data-rel="Images/orangebike.jpg">
<img  src="Images/red.png" width="50" height="33">
</div>

<strong>Battery</strong>
<div id ="div4" data-rel="Images/green.png">

<img  src="Images/blue.jpg" width="50" height="33">
</div>
<div id ="div5" data-rel="Images/orangebike.jpg">
<img  src="Images/red.png" width="50" height="33">
</div>
<p id="demo"></p>

<p id="total"></p>

</body>
</html>
