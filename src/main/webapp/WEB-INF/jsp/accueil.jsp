<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
<meta name="viewport" content="width=device-width" />

<title>Avion</title>

   <link href="/css/bootstrap.css" rel="stylesheet" />
   <link href="/css/coming-sssoon.css" rel="stylesheet" />  
   <link href="http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.css" rel="stylesheet">
   <link href='http://fonts.googleapis.com/css?family=Grand+Hotel' rel='stylesheet' type='text/css'>

<%@ include file="menu.jsp"%>

</head>

<body>


	<div class="p-3">
		<div class="side">
			<h2>Voyage</h2>

			<div></div>
			<img
				src="https://github.com/MartinBriday/TP1_ORM/blob/main/avion1.PNG"
				class="mx-auto d-block"> <br>
				
			<p>Voyagez en toute sécurité</p>
		
		</div>
		<h2>Où souhaitez-vous voyager ?</h2>
		<br>
		<form method="post">
			<div class="mb-3">
				<label for="choixDepart">Départ :</label> <select
					class="form-select form-select-lg mb-3"
					aria-label=".form-select-lg example" name="choixDepart"
					id="choixDepart" size="1">

					<option value="" disabled selected>Aéroport de départ</option>
					<option value="1">Paris</option>
					<option value="2">Lyon</option>
					<option value="3">New-York</option>
					<option value="4">Londre</option>
					<option value="5">Tokyo</option>
					<option value="6">Berlin</option>

				</select> <br> <br> <label for="choixDestination">Destination
					:</label> <select class="form-select form-select-lg mb-3"
					aria-label=".form-select-lg example" name="choixDestination"
					id="choixDestination" size="1">

					<option value="" disabled selected>Choisissez votre
						destination</option>
					<option value="1">Paris</option>
					<option value="2">Lyon</option>
					<option value="3">New-York</option>
					<option value="4">Londre</option>
					<option value="5">Tokyo</option>
					<option value="6">Berlin</option>

				</select>
			</div>
		</form>
		<br>

		<h2>Quand souhaitez-vous voyager ?</h2>

		<div class="input-group mb-4" id="'dateDepart" name="dateDepart"
			method="post">
			<input type="date" class="datepicker_input form-control"
				placeholder="Choisissez votre date de depart" required>
		</div>

		<div class="input-group mb-4" id="dateArrivee" name="dateArrivee"
			method="post">
			<input type="date" class="datepicker_input form-control"
				placeholder="Choisissez votre date de retour" required>
		</div>
		<div class="d-grid gap-2 col-6 mx-auto">
			<button type="button" class="btn btn-primary btn-sm">Rechercher
				un vol</button>
		</div>

	</div>
</body>
</html>