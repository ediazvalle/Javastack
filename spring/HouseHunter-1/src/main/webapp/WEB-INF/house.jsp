<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
		<h1>Welcome, <c:out value="${user.userName}"/></h1>
		
		<h3>tvs</h3>
		<a href="/logout">logout</a>
		<a href="/addPage">+ Add a tv</a>
		<a href="/home">Home</a>
		
		<div class="container">
			<h3><span style="color: red;"><c:out value="${tv.user.userName}"/></span>
			<span style="color: rebeccapurple;"><c:out value="${tv.address}"/></span> 
			<span style="color: darkgreen;"><c:out value="${tv.price}"/></span></h3>
		</div>
		<c:if test="${tv.user.id == user.id}"><a href="/tvs/${tv.id}/edit">edit</a></c:if> 
	</div>

</body>
</html>