<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register employee</title>
</head>
<body>
	<frm:form action="register">
 Employee Name:
        <input type="text" name="employeeName" required>
		<br>
		<br>
		
		 Skill Name:
        <input type="text" name="skillName" required>
		<br>
		<br>
        
         Experience:
        <input type="text" name="experience" required>
		<br>
		<br>
        
         Project Name:
        <input type="text" name="projectName" required>
		<br>
		<br>
		<input type="submit" value="register">
		<input type="reset" value="Reset">
	</frm:form>
</body>
</html>