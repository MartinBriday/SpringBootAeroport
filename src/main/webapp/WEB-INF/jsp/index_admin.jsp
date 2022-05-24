<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body class="bg-dark text-white">
	<div>
		<div class="container">
			<div class="row">
				<div class="col">
					<a class="btn btn-secondary" href="/admin/index?category=utilisateur">Lister les utilisateurs</a>
				</div>
				<div class="col">
					<a class="btn btn-secondary" href="/admin/index?category=vol">Lister les Vols</a>
				</div>
<!-- 				<div class="col"> -->
<!-- 					<a class="btn btn-secondary" href="/produit/form_produit">Ajouter un produit</a> -->
<!-- 				</div> -->
<!-- 				<div class="col"> -->
<!-- 					<a class="btn btn-secondary" href="/magasin/form_magasin">Ajouter un magasin</a> -->
<!-- 				</div> -->
			</div>
		</div>
	</div>
	<br>
	
	
	
	<c:if test="${ category != null && category == 'utilisateur'}">
		<div>
			<table class="table table-dark table-striped">
				<thead>
					<tr>
						<th scope="col">Id</th>
						<th scope="col">Nom</th>
						<th scope="col">Prénom</th>
						<th scope="col">Date de naissance</th>
						<th scope="col">Adresse</th>
						<th scope="col">Téléphone</th>
						<th scope="col">Email</th>
						<th scope="col"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="utilisateur" items="${ listeUtilisateur }">
						<tr>
							<th scope="row"><c:out value="${ produit.getId() }"></c:out></th>
							<td><c:out value="${ utilisateur.getNom() }"></c:out></td>
							<td><c:out value="${ utilisateur.getPrenom() }"></c:out></td>
							<td><c:out value="${ utilisateur.getDateNaissance() }"></c:out></td>
							<td><c:out value="${ utilisateur.getAdresse() }"></c:out></td>
							<td><c:out value="${ utilisateur.getNumTel() }"></c:out></td>
							<td><c:out value="${ utilisateur.getEmail() }"></c:out></td>
							<td>
								<a class="btn btn-danger" href="/admin/delete_utilisateur/${ utilisateur.getId() }">Supprimer</a>
								<a class="btn btn-warning" href="/admin/update_utilisateur?idUtilisateur=${ utilisateur.getId() }">Modifier</a>
<%-- 								<a href="/admin/associer_utilisateur?idProduit=${ produit.getId() }">Associer</a> --%>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div>
			<a class="btn btn-primary" href="admin/register_utilisateur_form">Ajouter un utilisateur</a>
		</div>
	</c:if>
	
	
	
	<c:if test="${ category != null && category == 'vol'}">
		<div>
			<table class="table table-dark table-striped">
				<thead>
					<tr>
						<th scope="col">Id</th>
						<th scope="col">Aéroport de départ</th>
						<th scope="col">Date de départ</th>
						<th scope="col">Heure de départ</th>
						<th scope="col">Aéroport d'arrivée</th>
						<th scope="col">Date d'arrivée</th>
						<th scope="col">Heure d'arrivée</th>
						<th scope="col">Nb d'escales</th>
						<th scope="col">Prix</th>
						<th scope="col"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="vol" items="${ listeVol }">
						<tr>
							<th scope="row"><c:out value="${ vol.getId() }"></c:out></th>
							<td><c:out value="${ vol.getAeroportDepart().getNom() }"></c:out></td>
							<td><c:out value="${ vol.getDateDepart() }"></c:out></td>
							<td><c:out value="${ vol.getHeureDepart() }"></c:out></td>
							<td><c:out value="${ vol.getAeroportArrivee().getNom() }"></c:out></td>
							<td><c:out value="${ vol.getDateArrivee() }"></c:out></td>
							<td><c:out value="${ vol.getHeureArrivee() }"></c:out></td>
							<td><c:out value="${ vol.getListeExscale().size() }"></c:out></td>
							<td><c:out value="${ vol.getPrix() }"></c:out></td>
							<td>
								<a href="/admin/delete_vol/${ vol.getId() }">Supprimer</a>
								<a href="/admin/update_vol?idVol=${ vol.getId() }">Modifier</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</c:if>
</body>
</html>