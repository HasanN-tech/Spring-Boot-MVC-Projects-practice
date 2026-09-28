<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Search</title>
</head>
<body>

	<h2>Register Student</h2>

	<form action="register" method="post">

		Student Id: 
		<input type="number" name="studentId">
		<br><br>
		
		Student Name:
		<input type="text" name="studentName">
		<br><br>

		Course:
		<input type="text" name="course">
		<br><br>
		
		Email:
		<input type="text" name="email">
		<br><br>
		
		Mobile Number:
		<input type="number" name="mobileNumber">
		<br><br>

		<input type="submit" value="Save">

	</form>

</body>
</html>