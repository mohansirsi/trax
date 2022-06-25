<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All leads</title>
</head>
<body style="background-color:lightgreen;">
	<h2>Search Result...</h2>
	<table border="2">
		
		
		<tr>
			<th>First name</th>
			<th>Last name</th>
			<th>Lead Source</th>
			<th>Email</th>
			<th>Mobile</th>
			<th>Delete</th>
		</tr>
		
		 <c:forEach items="${leads}" var="lead">
		 <tr>
		 	<td><a href="leadInfo?id=${lead.id}" style="color: red">${lead.firstName}</a></td>
		 	<td>${lead.lastName}</td>
		 	<td>${lead.leadSource}</td>
		 	<td>${lead.email}</td>
		 	<td>${lead.mobile}</td>
		 	<td><a href="delete?id=${lead.id}" style="color: red">delete</a></td>
		 </tr>
         </c:forEach>
		
	</table>
	<br>
	<br>
	<h2><a href="viewCreateLead">create new lead</a></h2>
</body>
</html>