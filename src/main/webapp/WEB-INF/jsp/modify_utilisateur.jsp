<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<meta charset="UTF-8">
<title>Formulaire modifier utilisateur</title>
</head>

<body class="bg-dark text-white">
<h1>Modifier un utilisateur</h1>
	<form action="update_utilisateur" method="POST" modelAttribute="utilisateur">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		<div class="mb-3">
			<label for="id" class="form-label">Identifiant :</label> 
			<input type="text" class="form-control" id="id" name="id" value="${ utilisateur.getId() }" disabled>
		</div>
		<div class="mb-3">
			<label for="nom" class="form-label">Nom :</label> 
			<input type="text" class="form-control" id="nom" name="nom" value="${ utilisateur.getNom() }" required>
		</div>
		<div class="mb-3">
			<label for="prenom" class="form-label">Prenom :</label> 
			<input type="text" class="form-control" id="prenom" name="prenom" value="${ utilisateur.getPrenom() }" required>
		</div>
		<div class="mb-3">
			<label for="dateNaiss" class="form-label">Date de naissance :</label> 
			<input type="date" class="form-control" id="dateNaissance" name="dateNaissance" value="${ utilisateur.getDateNaissance() }">
		</div>
		<div class="mb-3">
			<label for="adresse" class="form-label">Adresse :</label> 
			<input type="text" class="form-control" id="adresse" name="adresse" value="${ utilisateur.getAdresse() }">
		</div>
		<div class="mb-3">
			<label for="numTel" class="form-label">Téléphone :</label> 
			<input type="text" class="form-control" id="numTel" name="numTel" maxlength="10" value="${ utilisateur.getNumTel() }">
		</div>
		<div class="mb-3">
			<label for="email" class="form-label">Email :</label> 
			<input type="email" class="form-control" id="email" name="email" value="${ utilisateur.getEmail() }" required>
		</div>

		<button type="submit" class="btn btn-primary">Valider</button>
		<button type="reset" class="btn btn-outline-secondary">Annuler</button>
		<a class="btn btn-secondary" href="/admin/index">Retour Index</a>
	</form>

</body>
</html>