<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="/TvShows/src/main/resources/static/css/style.css" rel="stylesheet" type="text/css">

<title>Insert title here</title>
</head>
<body>

<div class="container">

	<h1>Create a New Tv Show</h1>

	<a href="/home">Back to Dashboard</a>

	<div class="container">
		<form:form action="/tvs" modelAttribute="tv" class="form" method="post">
		
			<div class="form-row">
			 	<form:errors path="Title" class="error"/>
				<form:label for="title" path="title">Title:</form:label>
				<form:input type="text" path="title" class="form-control"/>
			</div>
			
			
			<div class="form-row">
				<form:errors path="network" class="error"/>
				<form:label for="network" path="network">Network:</form:label>
				<form:input type="text" path="network" class="form-control"/>
				<form:input type="hidden" path="user" value="${user.id}" class="form-control"/>
			</div>
			
			<div class="form-row">
			 	<form:errors path="description" class="error"/>
				<form:label for="description" path="description"> Description:</form:label>
				<form:input type="text" path="description" class="form-control"/>
			</div>
			
			<div class="form-row">
				<input type="submit" value="Submit" class="btn-primary"/>
			</div>
			
		</form:form>
	</div>

</div>

</body>
</html>