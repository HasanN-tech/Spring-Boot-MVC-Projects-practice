<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Details</title>

<style>
    body{
        font-family: Arial, sans-serif;
        background-color: #f4f6f9;
        margin: 30px;
    }

    h2{
        text-align: center;
        color: #333;
    }

    h1{
        text-align: center;
        color: red;
    }

    table{
        width: 90%;
        margin: 20px auto;
        border-collapse: collapse;
        background-color: white;
        box-shadow: 0px 4px 10px rgba(0,0,0,0.15);
    }

    table th{
        background-color: #007bff;
        color: white;
        padding: 12px;
    }

    table td{
        padding: 10px;
        text-align: center;
        border: 1px solid #ddd;
    }

    table tr:nth-child(even){
        background-color: #f8f9fa;
    }

    table tr:hover{
        background-color: #e9ecef;
    }

    a{
        text-decoration: none;
        font-weight: bold;
    }

    a[href*="edit"]{
        color: #28a745;
    }

    a[href*="delete"]{
        color: #dc3545;
    }

    .add-btn{
        display: block;
        width: 150px;
        margin: 20px auto;
        text-align: center;
        background-color: #007bff;
        color: white;
        padding: 10px;
        border-radius: 5px;
        text-decoration: none;
    }

    .add-btn:hover{
        background-color: #0056b3;
    }
</style>

</head>
<body>


<c:choose>

<c:when test="${!empty employees}">
    <h2>Employee Details</h2>

<c:if test="${not empty msg}">
    <div style="
        width:90%;
        margin:10px auto;
        padding:12px;
        background:#d4edda;
        color:#155724;
        border:1px solid #c3e6cb;
        border-radius:5px;
        text-align:center;">
        ${msg}
    </div>
</c:if>

    <table border="1">
        <tr>
            <th>Employee ID</th>
            <th>Employee Name</th>
            <th>Job</th>
            <th>Department no.</th>
            <th>Salary</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>

        <c:forEach var="emp" items="${employees}">
            <tr>
                <td>${emp.employeeId}</td>
                <td>${emp.employeeName}</td>
                <td>${emp.job}</td>
                <td>${emp.deptno}</td>
                <td>${emp.salary}</td>
                <td><a href="edit?no=${emp.employeeId}">edit</a></td>
                <td><a href="delete?no=${emp.employeeId}">delete</a></td>
            </tr>
        </c:forEach>

    </table>
</c:when>

<c:otherwise>
    <h1>Employee not exist.</h1>
</c:otherwise>

</c:choose>

<a href="register" class="add-btn">Add Employee</a>

</body>
</html>