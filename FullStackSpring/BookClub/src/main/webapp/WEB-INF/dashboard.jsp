<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Read Share</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body class="container mt-4">
	<div class="d-flex align-items-center justify-content-between">
		<h1 class="text-primary">Welcome, <c:out value="${user.userName}" />!</h1>
		<a href="/logout" class="btn btn-danger">Logout</a>
	</div>
	<div class="d-flex align-items-center justify-content-between">
		<h5 class="mt-4">Books from everyones shelves: </h5>
		<a href="/books/new">+ Add to my shelf</a>
	</div>
		<table class="table table-striped table-bordered table-hover mt-4">
		<thead>
			<tr>
				<th>ID</th>
				<th>Title</th>
				<th>Author Name</th>
				<th>Posted By</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="book" items="${books}">
				<tr>
					<td><c:out value="${book.id}" /></td>
					<td><a href="/books/${book.id}"><c:out value="${book.title}" /></a></td>
					<td><c:out value="${book.author}" /></td>
					<td><c:out value="${book.user.userName}" /></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>