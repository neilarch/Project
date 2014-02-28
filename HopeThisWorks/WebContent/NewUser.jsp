<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name = "NewUser" action = "NewUser" method ="get">

<label> Username :
<input type ="text" name= "NewUsername" />
</label>


<p>
 <label>Permissions:</label>
<select id = "severity" name = "priv">
  <option value="Developer">Developer</option>
  <option value="Admin">Admin</option>
</select>
</p>
<p>
<label>Create a Password  :
<input type = "password" name = "passwrd" />
</label>
</p>

<p>
<label>
<input type = "submit" name = "submit" value = "Create" />
</label>
</p>

</form>
</body>
</html>