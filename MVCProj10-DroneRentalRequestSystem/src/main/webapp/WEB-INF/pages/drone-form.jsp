<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fill the form</title>
</head>
<body>
	<h1>Fill the drone information</h1>

	<frm:form action="drone-form" method="post" modelAttribute="drone">

		<label>Request ID:</label>
		<frm:input path="requestId" />
		<br>
		<br>

		<label>Customer Name:</label>
		<frm:input path="customerName" />
		<br>
		<br>

		<label>Drone Model:</label>
		<frm:input path="droneModel" />
		<br>
		<br>

		<label>Rental Purpose:</label>
		<frm:input path="rentalPurpose" />
		<br>
		<br>

		<label>Rental Duration:</label>
		<frm:input path="rentalDuration" />
		<br>
		<br>

		<label>Contact Number:</label>
		<frm:input path="contactNumber" />
		<br>
		<br>

		<label>Pickup Location:</label>
		<frm:input path="pickupLocation" />
		<br>
		<br>
		
		<input type="submit" value="Register Request">
	</frm:form>

</body>
</html>