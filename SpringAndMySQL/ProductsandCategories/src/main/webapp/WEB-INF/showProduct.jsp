<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Page</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/style.css"/>
</head>
<body class="container mt-4">
	<h1 class="text-center"><c:out value="${product.name}" /></h1>
	<a href="/">Home</a>
	<h3 class="mt-5">Categories: </h3>
	<ul>
	<c:forEach var="category" items="${assignedCategories}">
		<li><c:out value="${category.name}"></c:out></li>
	</c:forEach>
	</ul>
	<h3 class="mt-5">Add Category</h3>
	<form method="POST" action="/products/${product.id}">
		<select class="form-select" name="categoryId">
			<c:forEach var="category" items="${unassignedCategories}">
				<option value="${category.id}"><c:out value="${category.name}" /></option>
			</c:forEach>
		</select>
		<input type="submit" value="Submit" class="btn btn-primary mt-3" />
	</form>
</body>
</html>