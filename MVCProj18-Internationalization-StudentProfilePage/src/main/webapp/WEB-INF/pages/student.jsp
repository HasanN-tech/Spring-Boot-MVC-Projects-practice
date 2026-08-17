<%@ taglib prefix="spring"
uri="http://www.springframework.org/tags" %>

<html>
<head>
<title>
<spring:message code="title"/>
</title>
</head>

<body>

<h2>
<spring:message code="title"/>
</h2>

<a href="?lang=en">English</a> |
<a href="?lang=hi">Hindi</a>   |
<a href="?lang=fr">French</a> |
<a href="?lang=od">Odia</a>

<br><br>

<form action="student" method="post">

<label>
<spring:message code="student"/>
</label>

<input type="text"
       name="studentName">

<br><br>

<label>
<spring:message code="course"/>
</label>

<input type="text"
       name="course">

<br><br>

<input type="submit"
       name="Submit">

</form>

</body>
</html>