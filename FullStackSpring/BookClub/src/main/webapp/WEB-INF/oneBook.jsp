<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Read Share</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body class="container mt-4">
	<div class="d-flex align-items-center justify-content-between">
		<h1 class="mt-4 fst-italic"><c:out value="${book.title}" /></h1>
		<a href="/books">back to the shelves</a>
	</div>
	<h5 class="mt-5"><span class="text-primary"><c:out value="${book.user.userName}"/></span> read 
	<span class="text-warning"><c:out value="${book.title}" /></span>
	by <span class="text-success"><c:out value="${book.author}" /></span></h5>
	<h6 class="mt-5">Here are <c:out value="${book.user.userName}" /> thoughts: </h6>
	<p class="p-3 mt-2 border border-dark fst-italic"><c:out value="${book.thoughts}"/></p>
	<c:choose>
		<c:when test="${userId == book.user.id}">
			<div class="d-flex align-items-center justify-content-center">
				<a href="/books/${book.id}/edit" class="btn btn-warning me-3">Edit</a>
				<form method="POST" action="/books/delete/${book.id}">
					<input type="hidden" name="_method" value="delete">
	    			<input type="submit" value="Delete" class="btn btn-danger">
				</form>
			</div>
		</c:when>
		<c:otherwise>
			<div></div>
		</c:otherwise>
	</c:choose>
</body>
</html>