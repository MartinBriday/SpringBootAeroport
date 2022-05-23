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
<title>Formulaire ajouter utilisateur</title>
</head>

<body class="bg-dark text-white">
<h1>Enregistrer un nouvel utilisateur</h1>
	<form action="register_utilisateur" method="POST" modelAttribute="utilisateur">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		<div class="mb-3">
			<label for="nom" class="form-label">Nom :</label> 
			<input type="text" class="form-control" id="nom" name="nom" required>
		</div>
		<div class="mb-3">
			<label for="prenom" class="form-label">Prenom :</label> 
			<input type="text" class="form-control" id="prenom" name="prenom" required>
		</div>
		<div class="mb-3">
			<label for="dateNaiss" class="form-label">Date de naissance :</label> 
			<input type="date" class="form-control" id="dateNaissance" name="dateNaissance">
		</div>
		<div class="mb-3">
			<label for="adresse" class="form-label">Adresse :</label> 
			<input type="text" class="form-control" id="adresse" name="adresse">
		</div>
		<div class="mb-3">
			<label for="numTel" class="form-label">Téléphone :</label> 
			<input type="text" class="form-control" id="numTel" name="numTel" maxlength="10">
		</div>
		<div class="mb-3">
			<label for="email" class="form-label">Email :</label> 
			<input type="email" class="form-control" id="email" name="email" required>
		</div>
		<div class="mb-3">
			<label for="pwd" class="form-label">Mot de passe :</label> 
			<input type="password" class="form-control" id="pwd" name="password" required>
		</div>

		<button type="submit" class="btn btn-primary">Valider</button>
		<button type="reset" class="btn btn-outline-secondary">Annuler</button>
		<a class="btn btn-secondary" href="/accueil">Retour Accueil</a>
	</form>

</body>
</html>