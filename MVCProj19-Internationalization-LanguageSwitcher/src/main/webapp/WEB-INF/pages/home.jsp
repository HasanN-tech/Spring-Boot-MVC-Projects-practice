<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Internationalization Demo</title>
</head>
<body>
<a href="?lang=en">English</a> |
<a href="?lang=hi">Hindi</a> |

<h3><spring:message code="welcome"/></h3>
<h3><spring:message code="morning"/></h3>
<h3><spring:message code="thank"/></h3>
</body>
</html>