<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<body>

	<h2>
		<spring:message code="title" />
	</h2>

	<p>
		<spring:message code="student" />
		: ${studentName}
	</p>

	<p>
		<spring:message code="course" />
		: ${course}
	</p>

	<h3>
		<spring:message code="thank" />
	</h3>

</body>
</html>