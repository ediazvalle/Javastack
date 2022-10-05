<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="/TvShows/src/main/resources/static/css/style.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<h1>Welcome, <c:out value="${user.name}"/></h1>
		
		<a href="/logout">logout</a>
		<a href="/addPage">+ Add a Tv show</a>
		
		<table class="table">
		
			<tr>
				<th>Title</th>
				<th>Network</th>
			</tr>
			<c:forEach var="tv" items="${tvs}">
			
				<tr>
					<td><a href="tvs/${tv.id}"><c:out value="${tv.title}"/></a></td>
					<td><c:out value="${tv.network}"/></td>
				</tr>
			</c:forEach>
		
		</table>
	</div>

</body>
</html>