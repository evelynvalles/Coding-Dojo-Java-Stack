<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fruity Loops</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body class="container mt-3">
	<h1>Fruit Store</h1>
	
	<table class="table">
		<thead>
			<tr>
				<th>Name</th>
				<th>Price</th>
			</tr>
		</thead>
		<tbody>
				<c:forEach var="oneFruit" items="${fruitsFromMyController}">
					<tr>
        				<td><c:out value="${oneFruit.name}"></c:out></td>
        				<td><c:out value="${oneFruit.price}"></c:out></td>
        			</tr>
    			</c:forEach>
		</tbody>
	</table>
</body>
</html>