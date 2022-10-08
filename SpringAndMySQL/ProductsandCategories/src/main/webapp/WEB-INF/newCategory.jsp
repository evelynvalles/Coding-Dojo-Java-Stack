<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Category</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/style.css"/>
</head>
<body class="container mt-4">
	<h1 class="text-center">New Category</h1>
	<a href="/">Home</a>
	
	<form:form method="POST" action="/categories/new" modelAttribute="newCategory" class="mt-5">
		<div>
			<form:label class="form-label" path="name">Name: </form:label>
			<form:input type="text" class="form-control" path="name"/>
			<form:errors path="name" class="text-danger"/>
		</div>
		<input type="submit" class="btn btn-primary mt-3" value="submit" />
	</form:form>
</body>
</html>