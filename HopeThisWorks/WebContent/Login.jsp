<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>

<form name = "formlogin" action="ConfirmLogin" method="get">
<label>Username :
<input type ="text" name= "Username" />
</label>
<p>
<label>Password  :
<input type = "password" name = "pword" />
</label>
</p>

<p>
<label>
<input type = "submit" name = "submit" value = "login" />
</label>
</p>
<p>
<br>
<br>
<a href="/HopeThisWorks/NewUser.jsp">Create a new account</a>
</p>
</form>
</body>
</html>