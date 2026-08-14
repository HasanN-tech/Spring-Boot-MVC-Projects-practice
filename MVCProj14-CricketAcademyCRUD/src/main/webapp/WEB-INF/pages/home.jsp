<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cricketer Management</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body{
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background:linear-gradient(135deg,#667eea,#764ba2);
}

.container{
    background:white;
    padding:40px;
    border-radius:15px;
    box-shadow:0 10px 25px rgba(0,0,0,0.2);
    text-align:center;
    width:400px;
}

h1{
    color:#333;
    margin-bottom:30px;
}

.btn{
    display:block;
    text-decoration:none;
    color:white;
    padding:12px;
    margin:15px 0;
    border-radius:8px;
    font-size:18px;
    font-weight:bold;
    transition:0.3s;
}

.add-btn{
    background:#28a745;
}

.add-btn:hover{
    background:#218838;
    transform:translateY(-2px);
}

.view-btn{
    background:#007bff;
}

.view-btn:hover{
    background:#0056b3;
    transform:translateY(-2px);
}

</style>

</head>
<body>

<div class="container">

    <h1>🏏 Cricketer Management</h1>

    <a href="addCricketer" class="btn add-btn">
        ➕ Add Cricketer
    </a>

    <a href="viewCricketer" class="btn view-btn">
        👀 View Cricketers
    </a>

</div>

</body>
</html>