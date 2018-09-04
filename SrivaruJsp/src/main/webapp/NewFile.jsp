<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>

<head>
<style>
    html, body {
    margin: 0;
    height: 100%;
}

body {
    background-color: #333;
}

body.hide-overflow {
    overflow: hidden;
}


.t {
    display: table;
    width: 100%;
    height: 100%;
}

.tc {
    display: table-cell;
    vertical-align: middle;
    text-align: center;
}

.rel {
    position: relative;
}


.book {
    margin: 0 auto;
    width: 90%;
    height: 90%;
    -webkit-touch-callout: none;
    -webkit-user-select: none;
    -khtml-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}

.book .page {
    height: 100%;
}

.book .page img {
    max-width: 100%;
    height: 100%;
}
</style>

</head>
<body>

<div class="t">
    <div class="tc rel">
        <div class="book" id="book">
            <div class="page">Page 1</div>
            <div class="page">page 2</div>
            <div class="page">page 3</div>
            <div class="page">page 4</div>
            <div class="page">page 5</div>
            <div class="page">page 6</div>
        </div>
    </div>
</div>
</body>
</html>
