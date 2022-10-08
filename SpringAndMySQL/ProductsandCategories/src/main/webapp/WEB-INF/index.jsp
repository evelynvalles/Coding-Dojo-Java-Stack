<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/style.css"/>
</head>
<body class="container mt-4">
	<h1 class="text-center">Home Page</h1>
	<div class="my-4">
		<a href="/products/new">New Product</a>
	</div>
	<div class="mb-5">
		<a href="/categories/new">New Category</a>
	</div>
	<div class="d-flex justify-content-between align-items-start">
		<div class="col-1 flex-fill me-5 border border-dark p-3">
			<h2 class="text-center bb pb-3">Products</h2>
			<c:forEach var="product" items="${products}">
				<p class="p-2 ms-3"><a href="/products/${product.id}"><c:out value="${product.name}" /></a></p>
			</c:forEach>
		</div>
		<div class="col-1 flex-fill me-5 border border-dark p-3">
			<h2 class="text-center bb pb-3">Categories</h2>
			<c:forEach var="category" items="${categories}">
				<p class="p-2 ms-3"><a href="/categories/${category.id}"><c:out value="${category.name}" /></a></p>
			</c:forEach>
		</div>
	</div>
</body>
</html>