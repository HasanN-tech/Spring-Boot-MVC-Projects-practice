<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Details</title>
</head>
<body>

	<h2>Products</h2>

	<table border="1">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Category</th>
			<th>Price</th>
		</tr>

		
			<tr>
				<td>${data.productId}</td>
				<td>${data.productName}</td>
				<td>${data.category}</td>
				<td>${data.price}</td>
			</tr>
	

	</table>

</body>
</html>