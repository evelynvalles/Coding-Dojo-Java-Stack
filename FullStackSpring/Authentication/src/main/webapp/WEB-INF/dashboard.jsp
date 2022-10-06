<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login and Registration</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body class="container mt-4">
	<h1 class="text-primary my-5">Welcome, <c:out value="${user.userName}" />!</h1>
	<p>This is your dashboard, nothing to see yet.</p>
	<a href="/logout" class="btn btn-danger mt-3">Logout</a>
</body>
</html>