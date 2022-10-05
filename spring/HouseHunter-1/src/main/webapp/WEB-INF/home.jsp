<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
    
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
		
		<table class="table">
		
			<tr>
				<th>Address</th>
				<th>Posted on</th>
				<th>Price</th>
				<th>Posted By</th>
			</tr>
			<c:forEach var="tv" items="${tvs}">
			
				<tr>
					<td><a href="tvs/${tv.id}"><c:out value="${tv.address}"/></a></td>
					<td><fmt:formatDate type = "date" value = "${tv.createdAt}" /></td>
					<td><c:out value="${tv.price}"/></td>
					<td><c:out value="${tv.user.userName}"/></td>
				</tr>
			</c:forEach>
		
		</table>
	</div>

</body>
</html>