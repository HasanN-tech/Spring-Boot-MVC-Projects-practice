<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h2>Employee Details</h2>

    <table border="1">
        <tr>
            <th>Employee ID</th>
            <th>Employee Name</th>
            <th>Skill Name</th>
            <th>Experience</th>
            <th>Project Name</th>
        </tr>

        <c:forEach var="emp" items="${employees}">
            <tr>
                <td>${emp.employeeId}</td>
                <td>${emp.employeeName}</td>
                <td>${emp.skillName}</td>
                <td>${emp.experience}</td>
                <td>${emp.projectName}</td>
            </tr>
        </c:forEach>

    </table>
</body>
</html>