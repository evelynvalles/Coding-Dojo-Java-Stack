<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reading Books</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body class="container mt-4">
	<h1><c:out value="${book.title}" /></h1>
	<div class="mt-4">
		<p>Description: <c:out value="${book.description}" /></p>
		<p>Language: <c:out value="${book.language}" /></p>
		<p>Number of Pages: <c:out value="${book.numberOfPages}" /></p>
	</div>
</body>
</html>