<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Omikuji</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
</head>
<body class="container mt-4">
	<h1 class="text-center">Send an Omikuji</h1>
	<div class="d-flex justify-content-center mt-5">
		<form class="w-50 border border-dark p-4" action="/omikuji/submit" method="POST">
			<label class="form-label">Pick any number from 5 to 25</label>
			<input type="number" class="form-control" name="number"/>
			<label class="form-label">Enter the name of any city</label>
			<input type="text" class="form-control" name="city"/>
			<label class="form-label">Enter the name of any real person</label>
			<input type="text" class="form-control" name="person"/>
			<label class="form-label">Enter professional endeavor or hobby: </label>
			<input type="text" class="form-control" name="hobby"/>
			<label class="form-label">Enter name of any living thing</label>
			<input type="text" class="form-control" name="living"/>
			<label class="form-label">Say something nice to someone: </label>
			<textarea class="form-control" name="nice"></textarea>
			<p class="mt-3">Send and show a friend</p>
			<input type="submit" class="btn btn-primary" />
		</form>
	</div>
</body>
</html>