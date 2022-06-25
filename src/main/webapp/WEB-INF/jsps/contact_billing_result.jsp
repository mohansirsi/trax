<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Billings</title>
</head>
<body style="background-color:yellow;">

	<h2>Search Result...</h2>
	<table border="2" class="center">
		<tr>
			<th>ID</th>
			<th>First name</th>
			<th>Last name</th>
			<th>Email</th>
			<th>Mobile</th>
			<th>Product Name</th>
			<th>Amount</th>
		</tr>
		
		 <c:forEach items="${billings}" var="billing">
		 <tr>
		 	<td>${billing.id}</td>
		 	<td>${billing.firstName}</td>
		 	<td>${billing.lastName}</td>
		 	<td>${billing.email}</td>
		 	<td>${billing.mobile}</td>
		 	<td>${billing.product}</td>
		 	<td>${billing.amount}</td>
		 </tr>
         </c:forEach>
		
	</table>
	
</body>
</html>