<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Okimuji</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="/style.css">
</head>
<body class="container mt-4">
	<h1 class="text-center">Here's Your Okimuji</h1>
	<div class="d-flex justify-content-center align-items-center mt-4">
		<p class="border border-dark p-4 message">In <c:out value="${number}" /> years, 
		you will live in <c:out value="${city}" /> with <c:out value="${person}" /> 
		as your roommate, <c:out value="${hobby}" /> for a living. The next time you 
		see a <c:out value="${living}" />, you will have good luck. Also, <c:out value="${nice}" />.
		</p>
	</div>
	<a href="/omikuji" class="d-flex justify-content-center">Go Back</a>
</body>
</html>