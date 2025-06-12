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
	

	<button class="btn btn-secondary my-2 my-sm-0" data-bs-toggle="modal" data-bs-target="#modalSignin" name="modifier">Modifier</button>
	<!-- Fenetre modale -->
	<div class="modal fade modal-sheet p-4 py-md-5" data-bs-backdrop="false" tabindex="-1" role="dialog" id="modalSignin" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content rounded-4 shadow">
				<div class="modal-header p-5 pb-4 border-bottom-0">
					<h1 class="fw-bold mb-0 fs-2">Modifier cette valeur</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Fermer"></button>
				</div>
				<div class="modal-body p-5 pt-0">
					<form class="form-inline my-2 my-lg-0" action="/modifier" method="post">
						<div class="form-floating mb-3">
							<input type="text" id="produitNom" class="form-control" name="produitNom" value="${produit.nom}" required autofocus> 
							<label for="produitNom" class="sr-only">Nom</label> 
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control rounded-3" id="produitDesc" value="${produit.description}"> 
							<label for="produitDesc">Description</label>
						</div>
						<div class="form-floating mb-3"> 
							<input type="text" id="produitPU" class="form-control" name="produitPU" value="${produit.PU}" required autofocus>
							<label for="produitPU">Prix Unitaire</label>
						</div>
						<div class="form-floating mb-3">
							<input type="number" id="produitQteStock" class="form-control" name="produitQteStock" value="${produit.qteStock}" required autofocus>
							<label for="produitQteStock">Quantité en Stock</label>
						</div>

						<button class="w-100 mb-2 btn btn-lg rounded-3 btn-primary" type="submit">Modifier</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>

</html>