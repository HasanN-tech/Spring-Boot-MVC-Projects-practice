<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

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

<p>
    <b><spring:message code="name"/> :</b>
    ${name}
</p>

<p>
    <b><spring:message code="department"/> :</b>
    ${department}
</p>

<h3>
    <spring:message code="welcome"/>
</h3>

</body>
</html>