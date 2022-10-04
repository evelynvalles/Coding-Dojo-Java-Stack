<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Read Share</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body class="container mt-4">
	<div class="d-flex justify-content-between align-items-center">
	<h1>Expense Details</h1>
	<a href="/expenses" class="btn btn-secondary">Go Back</a>
	</div>
	<div class="mt-4">
		<p>Expense Name: <c:out value="${expense.name}" /></p>
		<p>Expense Description: <c:out value="${expense.description}" /></p>
		<p>Vendor Name: <c:out value="${expense.vendor}" /></p>
		<p>Amount Spent: $<c:out value="${expense.amount}" /></p>
	</div>
</body>
</html>