<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Submit a Fault</title>
</head>
<body>
<p><a href ="Logout.jsp">   Logout</a></p>
<form name= "formFaultSubmit" action ="AddFault" method = "get">
<label>Summary
</label>
<p>
</p>
<input type ="text" id="Summary" name= "Summary" />
<p>
<label>Description </label>
<p>
</p>
<textarea id="description" name = "description" rows = "10" cols ="60"></textarea><br></br>
<p>


<p>
<label>Author ID </label>
<input type ="text" id="Summary" name= "id" />

</p>




<p>
<label>
<input type = "submit" name = "submit" value = "Submit"  />
</label>
</p>

</form>

</body>
</html>