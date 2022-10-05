<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page isErrorPage="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="/tvHunter-1/src/main/resources/static/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>

<div class="container">

	<h1>Welcome tv Hunter</h1>

	<h2>Register</h2>

	<div class="container">
		<form:form action="/register" modelAttribute="newUser" class="form">
		
			<div class="form-row">
			 	<form:errors path="userName"/>
				<form:label for="userName" path="userName">User Name:</form:label>
				<form:input type="text" path="userName" class="form-control"/>
			</div>
			
			<div class="form-row">
				<form:errors path="email"/>
				<form:label for="email" path="email">Email:</form:label>
				<form:input type="text" path="email" class="form-control"/>
			</div>
			
			<div class="form-row">
				<form:errors path="password"/>
				<form:label for="password" path="password">Password:</form:label>
				<form:input type="password" path="password" class="form-control"/>
			</div>
			
			<div class="form-row">
				<form:errors path="confirm"/>
				<form:label for="" path="confirm">Confirm:</form:label>
				<form:input type="password" path="confirm" class="form-control"/>
			</div>
			
			<div class="form-row">
				<input type="submit" value="Register" class="btn-primary"/>
			</div>
			
		</form:form>
	</div>

	<div class="container">
		<form:form action="/login" modelAttribute="newLogin" class="form">
			<div class="form-row">
				<form:errors path="email"/>
				<form:label for="email" path="email">Email:</form:label>
				<form:input type="text" path="email" class="form-control"/>
			</div>
			
			<div>
				<form:errors path="password"/>
				<form:label for="password" path="password">Password:</form:label>
				<form:input type="password" path="password" class="form-control"/>
			</div>
			
			<div class="form-row">
				<input type="submit" value="Log In" class="btn-primary"/>
			</div>
		
		</form:form>
	</div>

</div>

</body>
</html>