<%@ page isELIgnored="false" %>

<html>
<body>

<h2>Login Page</h2>

<form action="login" method="post">

Username :
<input type="text" name="username">
<br><br>

Password :
<input type="password" name="password">
<br><br>

<input type="submit" value="Login">

</form>

<h3>${msg}</h3>

</body>
</html>