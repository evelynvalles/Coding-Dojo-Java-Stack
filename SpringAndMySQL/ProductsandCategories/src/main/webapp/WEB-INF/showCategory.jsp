<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Category Page</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/style.css"/>
</head>
<body class="container mt-4">
	<h1 class="text-center"><c:out value="${category.name}" /></h1>
	<a href="/">Home</a>
	<h3 class="mt-5">Add Product</h3>
	<h3 class="mt-5">Products: </h3>
	<ul>
	<c:forEach var="product" items="${assignedProducts}">
		<li><c:out value="${product.name}"></c:out></li>
	</c:forEach>
	</ul>
	<h3 class="mt-5">Add Product</h3>
		<form method="POST" action="/categories/${category.id}">
		<select class="form-select" name="productId">
			<c:forEach var="product" items="${unassignedProducts}">
				<option value="${product.id}"><c:out value="${product.name}" /></option>
			</c:forEach>
		</select>
		<input type="submit" value="Submit" class="btn btn-primary mt-3" />
	</form>
</body>
</html>