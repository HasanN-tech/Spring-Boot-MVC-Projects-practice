<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Details</title>
</head>
<body>

	<h2>Students</h2>

	<table border="1">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Course</th>
			<th>Email</th>
			<th>Mobile No.</th>
		</tr>

		
			<tr>
				<td>${stud.studentId}</td>
				<td>${stud.studentName}</td>
				<td>${stud.course}</td>
				<td>${stud.email}</td>
				<td>${stud.mobileNumber}</td>
			</tr>
	

	</table>

</body>
</html>