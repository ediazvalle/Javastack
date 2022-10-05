<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<h1>Here's Your Omikuji</h1>
	
	<h3 style="width: 50%;">
		<c:out value="${result}"/>
	</h3>
	
	<a href="/omikuji">Go Back</a>

</body>
</html>