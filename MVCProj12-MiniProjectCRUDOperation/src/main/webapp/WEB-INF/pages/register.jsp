<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register employee</title>

<style>
	body{
		font-family: Arial, sans-serif;
		background: #f4f6f9;
		display: flex;
		justify-content: center;
		align-items: center;
		height: 100vh;
		margin: 0;
	}

	form{
		background: white;
		padding: 30px;
		border-radius: 10px;
		box-shadow: 0 4px 12px rgba(0,0,0,0.15);
		width: 400px;
	}

	input[type="text"],
	input[type="number"]{
		width: 100%;
		padding: 10px;
		border: 1px solid #ccc;
		border-radius: 5px;
		box-sizing: border-box;
		margin-top: 5px;
	}

	input[type="submit"],
	input[type="reset"]{
		padding: 10px 20px;
		border: none;
		border-radius: 5px;
		cursor: pointer;
		font-size: 14px;
		margin-right: 10px;
	}

	input[type="submit"]{
		background-color: #28a745;
		color: white;
	}

	input[type="submit"]:hover{
		background-color: #218838;
	}

	input[type="reset"]{
		background-color: #dc3545;
		color: white;
	}

	input[type="reset"]:hover{
		background-color: #c82333;
	}

	h2{
		text-align: center;
		color: #333;
	}
</style>

</head>
<body>

	<frm:form action="register" modelAttribute="emp">

		<h2>Register Employee</h2>

		Employee Name:
        <input type="text" name="employeeName" required>
		<br><br>

		Job:
        <input type="text" name="job" required>
		<br><br>

		Department no:
        <input type="number" name="deptno" required>
		<br><br>

		Salary:
        <input type="number" name="salary" required>
		<br><br>

		<input type="submit" value="Register">
		<input type="reset" value="Reset">

	</frm:form>

</body>
</html>