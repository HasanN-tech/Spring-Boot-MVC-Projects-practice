<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Cricketers</title>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body {
	background: linear-gradient(135deg, #667eea, #764ba2);
	min-height: 100vh;
	padding: 30px;
}

.container {
	max-width: 1200px;
	margin: auto;
	background: white;
	border-radius: 15px;
	padding: 25px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
}

h1 {
	text-align: center;
	color: #333;
	margin-bottom: 25px;
}

.add-btn {
	display: inline-block;
	margin-bottom: 20px;
	padding: 10px 20px;
	background: #28a745;
	color: white;
	text-decoration: none;
	border-radius: 6px;
	font-weight: bold;
	transition: 0.3s;
}

.add-btn:hover {
	background: #218838;
	transform: translateY(-2px);
}

table {
	width: 100%;
	border-collapse: collapse;
	overflow: hidden;
	border-radius: 10px;
}

thead {
	background: #4f46e5;
	color: white;
}

th, td {
	padding: 12px 15px;
	text-align: center;
	border-bottom: 1px solid #ddd;
}

tbody tr:nth-child(even) {
	background: #f8f9fa;
}

tbody tr:hover {
	background: #e9ecef;
	transition: 0.3s;
}

.edit-btn, .delete-btn {
	text-decoration: none;
	color: white;
	padding: 8px 14px;
	border-radius: 5px;
	font-size: 14px;
	font-weight: bold;
}

.edit-btn {
	background: #ffc107;
}

.edit-btn:hover {
	background: #e0a800;
}

.delete-btn {
	background: #dc3545;
}

.delete-btn:hover {
	background: #c82333;
}

.home-btn {
	display: inline-block;
	margin-top: 20px;
	padding: 10px 20px;
	background: #007bff;
	color: white;
	text-decoration: none;
	border-radius: 6px;
	font-weight: bold;
}

.home-btn:hover {
	background: #0056b3;
}

.no-data {
	text-align: center;
	color: red;
	font-size: 22px;
	margin-top: 20px;
}
</style>

</head>
<body>

	<div class="container">

		<h1>All Cricketers</h1>

		<a href="addCricketer" class="add-btn"> + Add New Cricketer </a>

		<c:choose>

			<c:when test="${not empty data}">

				<table>

					<thead>
						<tr>
							<th>Player ID</th>
							<th>Player Name</th>
							<th>Team Name</th>
							<th>Role</th>
							<th>Batting Style</th>
							<th>Jersey Number</th>
							<th>Actions</th>
						</tr>
					</thead>

					<tbody>

						<c:forEach var="cric" items="${data}">
							<tr>

								<td>${cric.id}</td>
								<td>${cric.playerName}</td>
								<td>${cric.teamName}</td>
								<td>${cric.role}</td>
								<td>${cric.battingStyle}</td>
								<td>${cric.jerseyNumber}</td>

								<td><a href="update?id=${cric.id}" class="edit-btn">
										Edit </a> <a href="delete?id=${cric.id}" class="delete-btn"
									onclick="return confirm('Are you sure you want to delete this cricketer?')">
										Delete </a></td>

							</tr>
						</c:forEach>

					</tbody>

				</table>
				<c:if test="${not empty msg}">
					<h1>${msg}</h1>
				</c:if>
			</c:when>

			<c:otherwise>
				<div class="no-data"> X No Cricketers Found</div>
			</c:otherwise>

		</c:choose>

		<a href="./" class="home-btn"> Home </a>

	</div>

</body>
</html>