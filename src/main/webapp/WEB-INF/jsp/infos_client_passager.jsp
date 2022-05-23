<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>IntiAir test</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>

<body class="bg-dark text-white">
	<form method="post">
		<section class="h-100 h-custom gradient-custom-2">
			<div class="container py-5 h-100">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col-12">
						<div class="card card-registration card-registration-2"
							style="border-radius: 15px;">
							<div class="card-body p-0">
								<div class="row g-0">
<!-- 									<h2>Passager 1</h2> -->
									<div class="col-lg-6 text-black">
										<div class="p-5">
											<h3 class="fw-normal mb-5" style="color: #4835d4;">Informations
												générales</h3>

											<div class="row">
												<div class="col-md-6 mb-4 pb-2">

													<div class="form-outline">
														<label class="form-label" for="form3Examplev2">Nom*</label>
														<input type="text" id="form3Examplev2" name="nom"
															class="form-control form-control-lg"
															value="${ utilisateur.getNom() }" disabled />
													</div>

												</div>
												<div class="col-md-6 mb-4 pb-2">

													<div class="form-outline">
														<label class="form-label" for="form3Examplev3">Prénom*</label>
														<input type="text" id="form3Examplev3"
															name="prenom"
															class="form-control form-control-lg"
															value="${ utilisateur.getPrenom() }" disabled />

													</div>

												</div>
											</div>

											<div class="mb-4 pb-2">
												<div class="form-outline">
													<label class="form-label" for="form3Examplev4">Email*</label>
													<input type="text" id="form3Examplev4"
														name="email" class="form-control form-control-lg"
														value="${ utilisateur.getEmail() }" disabled />
												</div>
											</div>



											<div class="mb-4 pb-2">
												<label class="form-label" for="form3Examplev5">Nombre
													de bagages en soute*</label> <br> <select class="select"
													name="listeBagage">
													<option value="0" selected>Aucun</option>
													<option value="1">1 bagage</option>
													<option value="2">2 bagages</option>
													<option value="3">3 bagages</option>
													<option value="4">4 bagages</option>
												</select>

											</div>


											<div class="mb-4 pb-2">
												<div class="form-outline">
													<h5 id="form3Examplev4" style="margin-top: 30px;"></h5>
													<label class="form-label" for="form3Examplev4">(*)
														: Champs requis</label>
												</div>
											</div>


										</div>
									</div>
									<div class="col-lg-6 bg-primary text-white">
										<div class="p-5">
											<h3 class="fw-normal mb-5">Détails supplémentaires</h3>

											<div class="mb-4 pb-2">
												<div class="form-outline form-white">
													<label class="form-label" for="form3Examplea2">Adresse</label>
													<input type="text" id="form3Examplea2" name="adresse"
														class="form-control form-control-lg"
														value="${ utilisateur.getAdresse() }" />

												</div>
											</div>

											<div class="mb-4 pb-2">
												<div class="form-outline form-white">
													<label class="form-label" for="form3Examplea3">Date
														de Naissance </label> <input type="date" id="form3Examplea3"
														name="dateNaissance" class="form-control form-control-lg"
														value="${ utilisateur.getDateNaissance() }" />
												</div>
											</div>

											<div class="mb-4 pb-2">
												<div class="form-outline form-white">
													<label class="form-label" for="form3Examplea6">Numéro
														de téléphone</label> <input type="text" id="form3Examplea6"
														name="numTel" class="form-control form-control-lg"
														value="${ utilisateur.getNumTel() }" />
												</div>
											</div>

											<div
												class="form-check d-flex justify-content-start mb-4 pb-3">
												<input class="form-check-input me-3" type="checkbox"
													value="" id="form2Example3c" name="form2Example3c" /> <label
													class="form-check-label text-white" for="form2Example3c">
													J'accepte les <a href="#!" class="text-white"><u>Termes
															et Conditions</u></a> du site.
												</label>
											</div>
											<button type="submit" class="btn btn-light btn-lg"
												data-mdb-ripple-color="dark">Passer au paiement</button>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<p>
			<a class="btn btn-primary" data-bs-toggle="collapse"
				href="#collapseExample" role="button" aria-expanded="false"
				aria-controls="collapseExample"> Ajouter un passager </a>
		</p>
	</form>

</body>

</html>