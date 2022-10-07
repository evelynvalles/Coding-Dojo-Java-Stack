<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Share</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body class="container mt-4">
	<div class="d-flex align-items-center justify-content-between">
		<h1>Add a Book to Your Shelf!</h1>
		<a href="/books">Back to the Shelves</a>
	</div>
	<form:form method="POST" action="/books/new" modelAttribute="newBook" class="mt-5">
		<div>
			<form:label class="form-label" path="title">Title: </form:label>
			<form:input type="text" class="form-control" path="title"/>
			<form:errors path="title" class="text-danger"/>
		</div>
		<div>
			<form:label class="form-label" path="author">Author: </form:label>
			<form:input type="text" class="form-control" path="author"/>
			<form:errors path="author" class="text-danger"/>
		</div>
		<div>
			<form:label class="form-label" path="thoughts">My thoughts: </form:label>
			<form:textarea path="thoughts" class="form-control"></form:textarea>
			<form:errors path="thoughts" class="text-danger"/>
		</div>
		<form:hidden path="user" value="${userId}"/>
		<input type="submit" class="btn btn-primary mt-3" value="Submit" />
	</form:form>
</body>
</html>