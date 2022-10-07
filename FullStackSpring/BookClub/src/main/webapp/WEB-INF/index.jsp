<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login and Registration</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/style.css"/>
<body class="container mt-4">
	<h1 class="text-primary">Book Club</h1>
	<h6 class="my-4">A place for friends to share their thoughts on books</h6>
	<div class="d-flex justify-content-between align-items-start">
		<div class="col-1 flex-fill me-5">
			<h2>Register</h2>
			<form:form method="POST" action="/register" modelAttribute="newUser" class="w-100">
				<div>
					<form:label class="form-label" path="userName">Name: </form:label>
					<form:input type="text" class="form-control" path="userName"/>
					<form:errors path="userName" class="text-danger"/>
				</div>
				<div>
					<form:label class="form-label" path="email">Email: </form:label>
					<form:input type="text" class="form-control" path="email"/>
					<form:errors path="email" class="text-danger"/>
				</div>
				<div>
					<form:label class="form-label" path="password">Password: </form:label>
					<form:input type="password" class="form-control" path="password"/>
					<form:errors path="password" class="text-danger"/>
				</div>
				<div>
					<form:label class="form-label" path="confirm">Confirm Password: </form:label>
					<form:input type="password" class="form-control" path="confirm"/>
					<form:errors path="confirm" class="text-danger"/>
				</div>
				<input type="submit" class="btn btn-primary mt-3" value="Submit" />
 			</form:form>
		</div>
		<div class="col-1 flex-fill me-5">
			<h2>Login</h2>
			<form:form method="POST" action="/login" modelAttribute="newLogin">
				<div>
					<form:label class="form-label" path="email">Email: </form:label>
					<form:input type="text" class="form-control" path="email"/>
					<form:errors path="email" class="text-danger"/>
				</div>
				<div>
					<form:label class="form-label" path="password">Password: </form:label>
					<form:input type="password" class="form-control" path="password"/>
					<form:errors path="password" class="text-danger"/>
				</div>
				<input type="submit" class="btn btn-primary mt-3" value="Submit" />
			</form:form>
		</div>
	</div>
</body>
</html>