<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file = "menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lead | create</title>
</head>
<body>
	<h2>Lead | create</h2>
	
	<div>
		${emailError}
	</div>
	
	<form action="saveLead" method="post">
		<pre>
			First Name <input type = "text" name="firstName"/>
			Last Name  <input type = "text" name="lastName"/>
			Lead Source: <select name="leadSource">
			  	   <option value="radio">Radio channel</option>
			     	<option value="newspaper">News Paper</option>
			  	  <option value="tv">TV</option>
			  	    <option value="online">online</option>
			     	</select>
			Email 	  <input type = "text" name="email"/>
			Mobile 	  <input type = "text" name="mobile"/>
			<input type = "submit" value="save"/>
		</pre>
	</form>

</body>
</html>