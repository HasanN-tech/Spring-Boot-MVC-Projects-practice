<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Cricketer</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body{
    background:linear-gradient(135deg,#667eea,#764ba2);
    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
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
    color:#333;
    margin-bottom:25px;
}

.form-group{
    margin-bottom:15px;
}

label{
    display:block;
    margin-bottom:6px;
    font-weight:bold;
    color:#555;
}

input{
    width:100%;
    padding:10px;
    border:1px solid #ccc;
    border-radius:6px;
    font-size:15px;
}

input:focus{
    outline:none;
    border-color:#4f46e5;
    box-shadow:0 0 5px rgba(79,70,229,0.4);
}

.readonly{
    background:#f1f1f1;
}

.btn{
    width:100%;
    padding:12px;
    border:none;
    border-radius:6px;
    background:#28a745;
    color:white;
    font-size:16px;
    font-weight:bold;
    cursor:pointer;
    transition:0.3s;
}

.btn:hover{
    background:#218838;
}

.back-btn{
    display:block;
    text-align:center;
    margin-top:15px;
    text-decoration:none;
    background:#007bff;
    color:white;
    padding:10px;
    border-radius:6px;
    font-weight:bold;
}

.back-btn:hover{
    background:#0056b3;
}

</style>

</head>
<body>

<div class="container">

    <h1>🏏 Edit Cricketer</h1>

    <form action="edit" method="post">

        <div class="form-group">
            <label>Player ID</label>
            <input type="number"
                   name="id"
                   value="${data.id}"
                   readonly="readonly"
                   class="readonly">
        </div>

        <div class="form-group">
            <label>Player Name</label>
            <input type="text"
                   name="playerName"
                   value="${data.playerName}">
        </div>

        <div class="form-group">
            <label>Team Name</label>
            <input type="text"
                   name="teamName"
                   value="${data.teamName}">
        </div>

        <div class="form-group">
            <label>Role</label>
            <input type="text"
                   name="role"
                   value="${data.role}">
        </div>

        <div class="form-group">
            <label>Batting Style</label>
            <input type="text"
                   name="battingStyle"
                   value="${data.battingStyle}">
        </div>

        <div class="form-group">
            <label>Jersey Number</label>
            <input type="number"
                   name="jerseyNumber"
                   value="${data.jerseyNumber}">
        </div>

        <button type="submit" class="btn">
            Update Cricketer
        </button>

    </form>

    <a href="viewCricketer" class="back-btn">
        ← Back to Cricketer List
    </a>

</div>

</body>
</html>