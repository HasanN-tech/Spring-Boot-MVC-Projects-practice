<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Drone Info</title>
</head>
<body>
<h1>Drone request Information </h1>

<b>Request Id: ${drone.requestId}</b> <br>
<b>Customer Name: ${drone.customerName}</b> <br>
<b>Drone Model: ${drone.droneModel}</b> <br>
<b>Rental Purpose: ${drone.rentalPurpose}</b> <br>
<b>Rental Duration: ${drone.rentalDuration}</b> <br>
<b>Contact Number: ${drone.contactNumber}</b> <br>
<b>Pickup Location: ${drone.pickupLocation}</b> <br>
<a href="home">Home</a>
</body>
</html>