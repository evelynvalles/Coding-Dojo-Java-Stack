<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Ninja</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body class="container mt-4">
	<div class="d-flex justify-content-between align-items-center">
		<h1>New Ninja</h1>
		<a href="/dojos/new" class="btn btn-secondary">Create a Dojo</a>
	</div>
	
	<form:form method="POST" action="/ninjas/new" modelAttribute="newNinja" class="w-50">
		<div>
			<form:label class="form-label" path="firstName">Dojo Location: </form:label>
			<form:select path="dojo" class="form-select">
				<form:option value="hidden">Please select a location</form:option>
				<c:forEach var="dojo" items="${dojos}">
					<option value="${dojo.id}">${dojo.name}</option>
				</c:forEach>
			</form:select>
		</div>
		<div>
			<form:label class="form-label" path="firstName">First Name: </form:label>
			<form:input type="text" class="form-control" path="firstName"/>
			<form:errors path="firstName" class="text-danger"/>
		</div>
		<div>
			<form:label class="form-label" path="lastName">Last Name: </form:label>
			<form:input type="text" class="form-control" path="lastName"/>
			<form:errors path="lastName" class="text-danger"/>
		</div>
		<div>
			<form:label class="form-label" path="age">Age: </form:label>
			<form:input type="text" class="form-control" path="age"/>
			<form:errors path="age" class="text-danger"/>
		</div>
		<input type="submit" value="Create" class="btn btn-primary mt-3"/>
	</form:form>
</body>
</html>