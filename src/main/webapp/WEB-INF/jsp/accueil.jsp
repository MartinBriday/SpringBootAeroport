<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Avion</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<!-- <link rel="stylesheet" href="../css/style.css"> -->

<%@ include file="menu.jsp"%>

</head>

<body style="padding:  80px">




	<div class="p-3">
		<div class="side">
			<h2>Voyage</h2>

			<div></div>
			<img
				src="https://github.com/MartinBriday/TP1_ORM/blob/main/avion1.PNG"
				class="mx-auto d-block"> <br>
				<h1>Coucou de Léo</h1>
			<p>Voyagez en toute sécurité</p>
<p>coucou</p>
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


<!-- Footer -->
<footer class="text-center text-lg-start bg-light text-muted"
	style="background-color: #e0ffff;">

	<section
		class=" d-flex justify-content-center justify-content-lg-between p-4 border-bottom">

		<!-- Right -->
	</section>

	<section class="" style="background-color: #e0ffff;">
		<div class="container text-center text-md-start mt-5">
			<!-- Grid row -->
			<div class="row mt-3">
				<!-- Grid column -->
				<div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
					<!-- Content -->
					<h6 class="text-uppercase fw-bold mb-4">
						<br>Compagnie X
					</h6>
					<p>N°1 des compagnies de voyage</p>
				</div>
				<!-- Grid column -->

				<div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4"">
					<!-- Links -->
					<h6 class=" text-uppercase fw-bold mb-4">
						<br> Contact
					</h6>
					<p>
						2 rue IntiFormation <br> CompagnieX@gmail.com <br> + 01
						234 567 88 <br> + 01 234 567 89
					</p>
				</div>
				<!-- Grid column -->
			</div>
			<!-- Grid row -->
		</div>
	</section>
	<!-- Section: Links  -->

	<!-- Copyright -->
	<div class="text-center p-4" style="background-color: #e0ffff;">
		© 2021 Copyright: <a class="text-reset fw-bold"
			href="https://mdbootstrap.com/">MDBootstrap.com</a>
	</div>
	<!-- Copyright -->
</footer>

</html>