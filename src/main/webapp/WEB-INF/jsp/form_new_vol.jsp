<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Avion</title>
    <link rel="stylesheet" href="https://github.com/MartinBriday/TP1_ORM/blob/main/jquery-ui.css"></link>
   
    <link rel="stylesheet" type="text/css" href="https://github.com/MartinBriday/TP1_ORM/blob/main/Css_Site_Avion.css" />

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="CodeHim">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/vanillajs-datepicker@1.1.4/dist/css/datepicker.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <link rel="stylesheet" href="https://github.com/MartinBriday/TP1_ORM/blob/main/style.css">
</head>
<body>
<form method="post" style="background-color:powderblue;" id="formVol">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<h2 style="text-align:center"> <b>Saisir un nouveau vol </b></h2>
	
	
		<div class="mb-3">
			<label for="destination" class="form-label">Destination</label> <input
				type="text" class="form-control" id="destination"
				name="destination">
		</div>
		<div class="mb-3">
			<label for="Depart" class="form-label">Depart</label> <input
				type="text" class="form-control" id="Depart"
				name="Depart">
		</div>
	
	
		<div class="mb-3">
			<label for="dateDepart" class="form-label">Date de départ</label> 				
				<div class="input-group mb-4" id="dateDepart" name="dateDepart">
                <i class="bi bi-calendar-date input-group-text"></i>
                <input type="date" class="datepicker_input form-control" placeholder="Date de depart de vol"
                    required aria-label="Date input 3 (using aria-label)">
            </div>
				
		</div>
		<div class="mb-3">
			<label for="heureDepart" class="form-label">Heure de depart</label> <input
				type="time" class="form-control" id="heureDepart"
				name="heureDepart">
			
        
		</div>

		<div class="mb-3">
			<label for="dateArrivee" class="form-label">Date d'arrivée </label> 				
				  <div class="input-group mb-4" id="dateArrivee" name="dateArrivee">
                <i class="bi bi-calendar-date input-group-text"></i>
                <input type="date" class="datepicker_input form-control" placeholder="Date d'arrivée du vol"
                    required aria-label="Date input 3 (using aria-label)">
					
            </div>
		</div>
		     
		
		<div class="mb-3">
			<label for="heureArrivee" class="form-label">Heure de d'arrivee</label> <input
				type="time" class="form-control" id="heureArrivee" name="heureArrivee">
		</div>



		<button type="submit" class="btn btn-primary">Enregistrer</button>
		<button type="reset" class="btn btn-primary">Annuler</button>
	</form>
	
	
	    <!-- Bootstrap 5 JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
        crossorigin="anonymous"></script>

    <!-- Vanilla Datepicker JS -->
    <script src='https://cdn.jsdelivr.net/npm/vanillajs-datepicker@1.1.4/dist/js/datepicker-full.min.js'></script>
	<script src="https://github.com/MartinBriday/TP1_ORM/blob/main/DatePicker.js"></script>
</body>
</html>