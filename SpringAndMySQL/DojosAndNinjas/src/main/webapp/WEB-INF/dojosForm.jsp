<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Dojo</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body class="container mt-4">
	<div class="d-flex justify-content-between align-items-center">
	<h1>New Dojo</h1>
	<a href="/ninjas/new" class="btn btn-secondary">Create a Ninja</a>
	</div>
	<form:form method="POST" action="/dojos/new" modelAttribute="newDojo" class="w-25 my-5">
		<div>
			<form:label class="form-label" path="name">Dojo Name: </form:label>
			<form:input type="text" class="form-control" path="name"/>
			<form:errors path="name" class="text-danger"/>
		</div>
		<input type="submit" value="Create" class="btn btn-primary mt-3"/>
	</form:form>
	<h3>Current Dojos</h3>
	<c:forEach var="dojo" items="${dojos}">
		<div class="my-3">
			<a href="/dojos/${dojo.id}"><c:out value="${dojo.name}" /></a>
		</div>
	</c:forEach>
</body>
</html>