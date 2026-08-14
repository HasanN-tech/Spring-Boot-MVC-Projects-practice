<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Cricketer</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body{
    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background:linear-gradient(135deg,#667eea,#764ba2);
}

.container{
    width:450px;
    background:white;
    padding:30px;
    border-radius:15px;
    box-shadow:0 10px 25px rgba(0,0,0,0.2);
}

h1{
    text-align:center;
    margin-bottom:25px;
    color:#333;
}

.form-group{
    margin-bottom:15px;
}

label{
    display:block;
    margin-bottom:6px;
    font-weight:bold;
    color:#444;
}

input[type="text"]{
    width:100%;
    padding:10px;
    border:1px solid #ccc;
    border-radius:6px;
    font-size:15px;
}

input[type="text"]:focus{
    outline:none;
    border-color:#4f46e5;
    box-shadow:0 0 5px rgba(79,70,229,0.4);
}

.btn{
    width:100%;
    padding:12px;
    border:none;
    border-radius:8px;
    background:#28a745;
    color:white;
    font-size:16px;
    font-weight:bold;
    cursor:pointer;
    transition:0.3s;
}

.btn:hover{
    background:#218838;
    transform:translateY(-2px);
}

.back-btn{
    display:block;
    text-align:center;
    margin-top:15px;
    text-decoration:none;
    color:#4f46e5;
    font-weight:bold;
}

.back-btn:hover{
    text-decoration:underline;
}

</style>

</head>
<body>

<div class="container">

    <h1>🏏 Add Cricketer</h1>

    <form action="save" method="post">

        <div class="form-group">
            <label>Player Name</label>
            <input type="text" name="playerName" required>
        </div>

        <div class="form-group">
            <label>Team Name</label>
            <input type="text" name="teamName" required>
        </div>

        <div class="form-group">
            <label>Role</label>
            <input type="text" name="role" required>
        </div>

        <div class="form-group">
            <label>Batting Style</label>
            <input type="text" name="battingStyle" required>
        </div>

        <div class="form-group">
            <label>Jersey Number</label>
            <input type="text" name="jerseyNumber" required>
        </div>

        <input type="submit" value="💾 Save Cricketer" class="btn">

    </form>

    <a href="./" class="back-btn">🏠 Back to Home</a>

</div>

</body>
</html>