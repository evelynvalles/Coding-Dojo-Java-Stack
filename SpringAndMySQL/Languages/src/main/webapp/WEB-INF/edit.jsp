<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Language</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body class="container mt-4">
	<div class="d-flex justify-content-between align-items-center">
		<h1>Edit Expense</h1>
		<div class="d-flex align-items-center">
			<a href="/languages" class="btn btn-secondary">Dashboard</a>
			<form action="/languages/${language.id}" method="POST" class="ms-4">
				<input type="hidden" name="_method" value="delete">
		    	<input type="submit" value="Delete" class="btn btn-danger">
			</form>
		</div>
	</div>
		<form:form method="POST" action="/languages/${language.id}" modelAttribute="updateLanguage">
		<input type="hidden" name="_method" value="put">
		<div>
			<form:label class="form-label" path="name">Language Name: </form:label>
			<form:input type="text" class="form-control" path="name"/>
			<form:errors path="name" class="text-danger"/>
		</div>
		<div>
			<form:label class="form-label" path="creator">Creator: </form:label>
			<form:input type="text" class="form-control" path="creator"/>
			<form:errors path="creator" class="text-danger"/>
		</div>
		<div>
			<form:label class="form-label" path="version">Version: </form:label>
			<form:input type="double" class="form-control" path="version"/>
			<form:errors path="version" class="text-danger"/>
		</div>
		<input type="submit" value="Submit" class="btn btn-primary mt-3" />
	</form:form>
</body>
</html>