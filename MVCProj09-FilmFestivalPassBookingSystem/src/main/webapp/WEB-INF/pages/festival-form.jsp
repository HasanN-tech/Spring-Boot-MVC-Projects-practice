<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Festival Pass Registration</title>
</head>
<body>

<h2>Festival Pass Registration Form</h2>

<form:form action="festival-form" method="post" modelAttribute="festivalPass">

    <label>Pass ID:</label>
    <form:input path="passId"/>
    <br><br>

    <label>Visitor Name:</label>
    <form:input path="visitorName"/>
    <br><br>

    <label>Nationality:</label>
    <form:input path="nationality"/>
    <br><br>

    <label>Festival Category:</label>
    <form:select path="festivalCategory">
        <form:option value="" label="--Select Category--"/>
        <form:option value="Music" label="Music"/>
        <form:option value="Cultural" label="Cultural"/>
        <form:option value="Food" label="Food"/>
        <form:option value="Art" label="Art"/>
    </form:select>
    <br><br>

    <label>Pass Type:</label>
    <form:radiobutton path="passType" value="Regular"/> Regular
    <form:radiobutton path="passType" value="VIP"/> VIP
    <br><br>

    <label>Visiting Days:</label>
    <form:input path="visitingDays"/>
    <br><br>

    <label>Email:</label>
    <form:input path="email"/>
    <br><br>

    <input type="submit" value="Register Pass">

</form:form>

</body>
</html>