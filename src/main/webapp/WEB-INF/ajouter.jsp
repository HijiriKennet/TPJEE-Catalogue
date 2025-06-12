<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ page import="fr.produitvde.models.*" %>
<%@ page import="fr.produitvde.dao.*" %>
<%@ page import="fr.produitvde.services.*" %>

<%  

%>

<!DOCTYPE html>
<html>
 <head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
	<meta name="generator" content="Jekyll v3.8.5">
	<title>Ajouter</title>
	
	<link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/sign-in/">
	
	<!-- Bootstrap core CSS -->
    <link href="/docs/4.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">
</head>

<body class="text-center">
	<script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>	
	<form class="form-signin" method="post">
		<img class="mb-4" src="/docs/4.3/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
		<h1 class="h3 mb-3 font-weight-normal">Remplissez pour ajouter un fichier</h1>
		
		<label for="produitNom" class="sr-only">Nom</label> 
		<input type="text" id="produitNom" class="form-control" name="produitNom" placeholder="Nom" required autofocus> 
		
		<label for="produitDesc" class="sr-only">Description</label> 
		<input type="text" id="produitDesc" class="form-control" name="produitDesc" placeholder="Description" required autofocus> 
		
		<label for="produitPU" class="sr-only">Prix Unitaire</label> 
		<input type="text" id="produitPU" class="form-control" name="produitPU" placeholder="Prix Unitaire" required autofocus> 
		
		<label for="produitQteStock" class="sr-only">Quantité en Stock</label> 
		<input type="number" id="produitQteStock" class="form-control" name="produitQteStock" placeholder="Quantité" required autofocus> 
		

		<button class="btn btn-lg btn-primary btn-block" type="submit">Ajouter</button>
		<h5> Entrée du produit dans la base : 
			<%
				if (request.getAttribute("ajouterProduit")!=null){
					boolean add = Boolean.parseBoolean(request.getAttribute("ajouterProduit").toString());
					if (add==true) out.write("Succès");
					else out.write ("Echec");
				 }
			%>
		</h5>
		<p class="mt-5 mb-3 text-muted">&copy; HijiriK Code</p>
	</form>
</body>

</html>