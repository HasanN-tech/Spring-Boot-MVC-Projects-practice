<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Employee</title>

<style>
    body{
        font-family: Arial, sans-serif;
        background-color: #f4f6f9;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    form{
        background-color: white;
        padding: 30px;
        width: 400px;
        border-radius: 10px;
        box-shadow: 0px 4px 12px rgba(0,0,0,0.15);
    }

    h2{
        text-align: center;
        color: #333;
        margin-bottom: 25px;
    }

    input[type="text"],
    input[type="number"]{
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }

    input[type="submit"]{
        width: 100%;
        padding: 12px;
        background-color: #28a745;
        color: white;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
    }

    input[type="submit"]:hover{
        background-color: #218838;
    }
</style>

</head>
<body>

<form action="update" method="post">

    <h2>Update Employee</h2>

    <input type="hidden" name="employeeId"
           value="${employee.employeeId}">

    Employee Name:
    <input type="text" name="employeeName"
           value="${employee.employeeName}">
    <br><br>

    Job:
    <input type="text" name="job"
           value="${employee.job}">
    <br><br>

    Department:
    <input type="number" name="deptno"
           value="${employee.deptno}">
    <br><br>

    Salary:
    <input type="number" name="salary"
           value="${employee.salary}">
    <br><br>

    <input type="submit" value="Update Employee">

</form>

</body>
</html>