<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@ page import="com.abc.neil.stores.*" %>
<%@ page import="java.util.*" %>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Faults List</title>
</head>
<body>
<h1>Faults</h1>
<%
System.out.println("In render");
List<FaultsStore> lFaults = (List<FaultsStore>)request.getAttribute("Faults");
if (lFaults==null){
 %>
	<p>No faults found</p>
	<% 
}else{
%>


<% 
Iterator<FaultsStore> iterator;


iterator = lFaults.iterator();     
while (iterator.hasNext()){
	FaultsStore md = (FaultsStore)iterator.next();

	%>
<a href="Summary?faultId=<%=md.getFaultid() %>" > <%=md.getFaultSummary() %></a><br/><%
}
}
%>
<br>
</br>
<a href="/HopeThisWorks/AddFault.jsp">Add New Fault</a>

<br>
<br/>
<a href="/HopeThisWorks/Logout.jsp">Logout</a>

</body>
</html>