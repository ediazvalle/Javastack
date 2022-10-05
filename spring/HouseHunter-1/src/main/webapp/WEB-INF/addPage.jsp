<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="/tvHunter-1/src/main/resources/static/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>

<div class="container">

	<h1>Add to Your tv</h1>

	<a href="/home">Back to Dashboard</a>

	<div class="container">
		<form:form action="/tvs" modelAttribute="tv" class="form" method="post">
		
			<div class="form-row">
			 	<form:errors path="address" class="error"/>
				<form:label for="address" path="address">Address:</form:label>
				<form:input type="text" path="address" class="form-control"/>
			</div>
			
			
			<div class="form-row">
				<form:errors path="price" class="error"/>
				<form:label for="price" path="price">Price:</form:label>
				<form:input type="number" path="price" class="form-control"/>
				<form:input type="hidden" path="user" value="${user.id}" class="form-control"/>
			</div>
			
			<div class="form-row">
				<input type="submit" value="Submit" class="btn-primary"/>
			</div>
			
		</form:form>
	</div>

</div>

</body>
</html>