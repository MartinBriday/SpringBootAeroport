<!doctype html>
<html lang="fr">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    
    <title>IntiAir</title>
    
    <link href="css/bootstrap.css" rel="stylesheet" />
	<link href="css/coming-sssoon.css" rel="stylesheet" />    
    
    <!--     Fonts     -->
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Grand+Hotel' rel='stylesheet' type='text/css'>

</head>

<body>

 <%@ include file="menu.jsp"%>
 
<div class="main" style="background-image: url('images/airportpic.jpg')">

<!--    Change the image source '/images/default.jpg' with your favourite image.     -->
    
    <div class="cover black" data-color="black"></div>
     
<!--   You can change the black color for the filter with those colors: blue, green, red, orange       -->

    <div class="container">
        <h1 class="logo cursive">
            IntiAirline
        </h1>
<!--  H1 can have 2 designs: "logo" and "logo cursive"           -->
        
        <div class="content">
            <h4 class="motto">Les billets d'avion les moins ch�res, pour vos plus belles destinations !</h4>
            <div class="subscribe">
                <h5 class="info-text">
                    Quand souhaitez-vous voyager ?
                </h5>
                <div class="row">
                    <div class="col-md-4 col-md-offset-4 col-sm6-6 col-sm-offset-3 ">
                        <form class="form-inline" role="form">
                          <div class="input-group">
                            <label class="sr-only">Date de d�part</label>
                            <input type="date" class="form-control transparent" placeholder="Choisissez votre date de depart..." required>
                          </div>
                          
                          <div class="input-group">
                            <label class="sr-only">Date d'arriv�e</label>
                            <input type="date" class="form-control transparent" placeholder="Choisissez votre date de retour..." required>
                          </div>
                          <div class="info-text">
                          <button type="submit" class="btn btn-danger btn-fill">Rechercher</button>
                          </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer">
      <div class="container">
           Inti Airline. Tous droits r�serv�s
      </div>
    </div>
 </div>
 </body>
   <script src="js/jquery-1.10.2.js" type="text/javascript"></script>
   <script src="js/bootstrap.min.js" type="text/javascript"></script>

</html>