<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body class="bg-dark text-white">
	<form method="post" action="login">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<div class="mb-3">
			<label for="username" class="form-label">Login :</label> 
			<input type="text" class="form-control" id="username" name="username">
		</div>
		<div class="mb-3">
			<label for="password" class="form-label">Password :</label> 
			<input type="password" class="form-control" id="password" name="password">
		</div>
		<button type="submit" class="btn btn-primary">Envoyer</button>
		<button type="reset" class="btn btn-outline-primary">Annuler</button>

		<!-- Register buttons -->
		<div class="text-center">
			<p>
				Not a member? <a href="/register_utilisateur_form">Register</a>
			</p>
		</div>
	</form>
</body>
</html>