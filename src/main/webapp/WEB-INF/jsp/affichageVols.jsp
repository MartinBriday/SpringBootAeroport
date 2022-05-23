<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Vols disponibles</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>

<body class="bg-dark text-white">
    <h1>Liste des vols disponibles</h1>
    <table class="table table-dark table-striped">
        <thead>
            <tr>
            	<th scope="col">Date Départ</th>
                <th scope="col">Heure Départ</th>
                <th scope="col">Date Arrivée</th>
                <th scope="col">Heure Arrivée</th>
                <th scope="col">Prix</th>
                <th scope="col"></th>
            </tr>
        </thead>
        <c:forEach var="vol" items="${ listeVol }">
            <tr>
                <form method="post">
                    <input type="hidden" id="IdVol" name="IdVol" value="${vol.getId()}">
                    <td>
                        <c:out value="${vol.getDateDepart()}"></c:out>
                    </td>
                    
                    <td>
                        <c:out value="${vol.getHeureDepart()}"></c:out>
                    </td>
                    <td>
                        <c:out value="${vol.getDateArrivee()}"></c:out>
                    </td>
                    <td>
                        <c:out value="${vol.getHeureArrivee()}"></c:out>
                    </td>

                    <td>
                        <c:out value="${vol.getPrix()}"></c:out>
                        
                    </td>
                    <td>
                    <button type="submit">Valider/Payer</button>
                    </td>
                </form>
            </tr>
            <br>
        </c:forEach>

    </table>
</body>

</html>