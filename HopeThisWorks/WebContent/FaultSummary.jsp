<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fault Summary</title>
</head>
<body>
<Strong>Fault</Strong>
<p><%=request.getAttribute("faultS") %></p>
<Strong>Details</Strong>
<p><%=request.getAttribute("faultD") %> </p>

</body>
</html>