<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Read Share</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body class="container mt-4">
	<h1>Safe Travels</h1>
	<table class="table table-striped table-hover table-bordered mt-5">
		<thead>
			<tr>
				<th>Expense</th>
				<th>Vendor</th>
				<th>Amount</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="expense" items="${expenses}">
				<tr>
				<td><c:out value="${expense.name}"></c:out></td>
				<td><c:out value="${expense.vendor}"></c:out></td>
				<td>$<c:out value="${expense.amount}"></c:out></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<h1 class="mt-4">Add an Expense</h1>
	<form:form action="/expenses/process" method="POST" modelAttribute="newExpense">
		<div>
			<form:label class="form-label" path="name">Expense Name: </form:label>
			<form:input type="text" class="form-control" path="name"/>
			<form:errors path="name" class="text-danger"/>
		</div>
		<div>
			<form:label class="form-label" path="vendor">Vendor: </form:label>
			<form:input type="text" class="form-control" path="vendor"/>
			<form:errors path="vendor" class="text-danger"/>
		</div>
		<div>
			<form:label class="form-label" path="amount">Amount: </form:label>
			<form:input type="number" class="form-control" path="amount"/>
			<form:errors path="amount" class="text-danger"/>
		</div>
		<div>
			<form:label class="form-label" path="description">Description: </form:label>
			<form:textarea class="form-control" path="description"></form:textarea>
			<form:errors path="description" class="text-danger"/>
		</div>
		<input type="submit" value="Submit" class="btn btn-primary mt-3" />
	</form:form>
</body>
</html>