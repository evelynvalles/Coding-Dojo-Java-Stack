<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Languages</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body class="container mt-4">
	<h1>Languages</h1>
	<table class="table table-striped table-hover table-bordered mt-5">
		<thead>
			<tr>
				<th>Name</th>
				<th>Creator</th>
				<th>Verson</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="language" items="${languages}">
				<tr>
					<td><a href="/languages/${language.id}"><c:out value="${language.name}"></c:out></a></td>
					<td><c:out value="${language.creator}"></c:out></td>
					<td><c:out value="${language.version}"></c:out></td>
					<td>
					<div class="d-flex justify-content-center align-items-center">
						<a href="/languages/${language.id}/edit">Edit</a>
						<form action="/languages/${language.id}" method="POST" class="ms-4">
						<input type="hidden" name="_method" value="delete">
	    				<input type="submit" value="Delete" class="btn btn-danger">
						</form>
					</div>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<h1>Create New Language</h1>
	<form:form method="POST" action="/languages" modelAttribute="newLanguage">
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