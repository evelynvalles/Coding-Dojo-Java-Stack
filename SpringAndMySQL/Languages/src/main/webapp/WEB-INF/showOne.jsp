<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title><c:out value="${language.name}" /></title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body class="container mt-4">
	<div class="d-flex justify-content-between align-items-center">
		<h1>Details Page</h1>
		<a href="/languages" class="btn btn-secondary">Dashboard</a>
	</div>
	<div class="mt-4">
		<p>Language Name: <c:out value="${language.name}" /></p>
		<p>Creator: <c:out value="${language.creator}" /></p>
		<p>Version: <c:out value="${language.version}" /></p>
	</div>
	<a href="/languages/${language.id}/edit">Edit</a>
	<form action="/languages/${language.id}" method="POST" class="mt-4">
		<input type="hidden" name="_method" value="delete">
	    <input type="submit" value="Delete" class="btn btn-danger">
	</form>
</body>
</html>