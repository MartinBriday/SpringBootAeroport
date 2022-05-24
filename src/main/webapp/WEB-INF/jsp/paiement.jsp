<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Paiement de votre réservation</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/style_Paiement.css">
</head>
<body>

	<h1>Paiement de la réservation</h1>

	<div class="container d-flex justify-content-center mt-5 mb-5">
		<div class="row g-3">
			<div class="col-md-6">
				<span>Sélectionnez votre mode de paiement</span>
	

				<div class="card">
					<div class="accordion" id="accordionExample">
						<div class="card">
							<div class="card-header p-0" id="headingTwo">
								<h2 class="mb-0">
									<button class="btn btn-light btn-block text-left collapsed p-3 rounded-0 border-bottom-custom" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
										<div class="d-flex align-items-center justify-content-between">
											<span>PayPal</span>
											<img src="https://pouruneautreeconomie.fr/wp-content/uploads/2017/05/paypal-avis.png" width="30">
										</div>
									</button>
								</h2>
							</div>
							
							<div id="collapseTwo" class="collapse"
								aria-labelledby="headingTwo" data-parent="#accordionExample">
								<div class="card-body">
									<input type="text" class="form-control" placeholder="Paypal email">
								</div>
							</div>
						</div>

						<div class="card">
							<div class="card-header p-0">
								<h2 class="mb-0">
									<button class="btn btn-light btn-block text-left p-3 rounded-0"
										data-toggle="collapse" data-target="#collapseOne"
										aria-expanded="true" aria-controls="collapseOne">
										<div class="d-flex align-items-center justify-content-between">
											<span>Carte de crédit</span>
											<div class="icons">
												<img
													src="https://www.prestasoo.com/images/logo-cb.jpg"
													width="30"> <img
													src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/MasterCard_Logo.svg/2560px-MasterCard_Logo.svg.png"
													width="30"> <img
													src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Old_Visa_Logo.svg/545px-Old_Visa_Logo.svg.png" width="30">
										</div>
									</button>
								</h2>
							</div>

							<div id="collapseOne" class="collapse show"
								aria-labelledby="headingOne" data-parent="#accordionExample">
								<div class="card-body payment-card-body">
									<span class="font-weight-normal card-text">Numéro de carte</span>
									<div class="input">
										<i class="fa fa-credit-card"></i> <input type="text"
											class="form-control" placeholder="0000 0000 0000 0000">
									</div>

									<div class="row mt-3 mb-3">
										<div class="col-md-6">
											<span class="font-weight-normal card-text">Date d'expiration</span>
											<div class="input">
												<i class="fa fa-calendar"></i> <input type="text"
													class="form-control" placeholder="MM/AAAA">
											</div>
										</div>

										<div class="col-md-6">
											<span class="font-weight-normal card-text">CVC/CVV</span>
											<div class="input">
												<i class="fa fa-lock"></i> <input type="text"
													class="form-control" placeholder="000">
											</div>
										</div>
									</div>

									<span class="text-muted certificate-text"><i
										class="fa fa-lock"></i> Votre transaction est sécurisée avec notre site internet</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-6">
				<span>Résumé de votre commande</span>
				<div class="card">
					<div class="d-flex justify-content-between p-3">
						<div class="d-flex flex-column">
							<span>Vol aller <i class="fa fa-caret-down"></i></span>
						</div>
						<div class="mt-1">
							 Mettre toutes les infos du vol
						</div>
					</div>

					<hr class="mt-0 line">

					<div class="p-3">

						<div class="d-flex justify-content-between mb-2">
							Vol retour
						</div>

						<div class="d-flex justify-content-between">
							Mettre toutes les infos du vol
						</div>
					</div>

					<hr class="mt-0 line">

					<div class="p-3 d-flex justify-content-between">
						<div class="d-flex flex-column">
							Total à payer
						</div>
						<span>0€</span>
					</div>

					<div class="p-3">
						<button>Valider le paiement</button>
					</div>
			</div>
			</div>
		</div>
	</div>


</body>
</html>