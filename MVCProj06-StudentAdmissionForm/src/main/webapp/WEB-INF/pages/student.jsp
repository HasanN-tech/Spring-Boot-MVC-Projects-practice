<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration</title>
</head>
<body>

<h2>Student Registration Form</h2>

<form:form action="register" method="post" modelAttribute="student">

    Student ID :
    <form:input path="id"/><br><br>

    Student Name :
    <form:input path="name"/><br><br>

    Course :
    <form:input path="course"/><br><br>

    Mobile Number :
    <form:input path="number"/><br><br>

    <input type="submit" value="Register"/>

</form:form>

</body>
</html>