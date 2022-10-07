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
<body class="container my-4">
	<div class="d-flex align-items-center justify-content-between">
		<h1 class="mt-4">Change Your Entry</h1>
		<a href="/books">back to the shelves</a>
	</div>
	<form:form method="POST" action="/books/${editBook.id}/edit" modelAttribute="editBook">
		<input type="hidden" name="_method" value="put" />
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
		<form:hidden path="user" />
		<input type="submit" class="btn btn-primary mt-3" value="Submit" />
	</form:form>
</body>
</html>