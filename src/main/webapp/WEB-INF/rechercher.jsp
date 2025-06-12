<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="fr.produitvde.services.Catalogue" %>
<%@ page import="fr.produitvde.models.Produit" %>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.5">
    <title>Starter Template · Bootstrap</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    
    <!-- navbar inclusion -->
    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/navbar-static/">
	<script src="/docs/5.3/assets/js/color-modes.js"></script>
	<link href="/docs/5.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT">
	<link href="navbar-static.css" rel="stylesheet">
    
    <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/starter-template/">
	<script src="/docs/5.3/assets/js/color-modes.js"></script>
	<link href="/docs/5.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT">
	<link rel="apple-touch-icon" href="/docs/5.3/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
	<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
	<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
	<link rel="manifest" href="/docs/5.3/assets/img/favicons/manifest.json">
	<link rel="mask-icon" href="/docs/5.3/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
	<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon.ico">
	<meta name="theme-color" content="#712cf9">
	<link href="modals.css" rel="stylesheet">
	
    <!-- Bootstrap core CSS -->
<link href="/docs/4.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


    <style>
    
      /* Contenu de la modale */
		.modal-content {
		  background-color: #fff;
		  margin: 15% auto; 
		  padding: 20px;
		  border: 1px solid #888;
		  width: 60%; 
		  box-shadow: 0 4px 8px rgba(0,0,0,0.2);
		}
      
      /* Masquer la modale par défaut */
		.modal {
		  display: none; 
		  position: fixed; 
		  z-index: 1000; 
		  left: 0;
		  top: 0;
		  width: 100%; 
		  height: 100%; 
		  overflow: auto; 
		  background-color: rgba(0, 0, 0, 0.4);
		}
		
		/* Bouton de fermeture */
		.close {
		  color: #aaa;
		  float: right;
		  font-size: 28px;
		  font-weight: bold;
		}
		.close:hover,
		.close:focus {
		  color: black;
		  cursor: pointer;
		}
    
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
      
		
		.b-example-divider {
			width: 100%;
			height: 3rem;
			background-color: #0000001a;
			border: solid rgba(0, 0, 0, .15);
			border-width: 1px 0;
			box-shadow: inset 0 .5em 1.5em #0000001a, inset 0 .125em .5em #00000026
		}
		
		.b-example-vr {
			flex-shrink: 0;
			width: 1.5rem;
			height: 100vh
		}
		
		.bi {
			vertical-align: -.125em;
			fill: currentColor
		}
		
		.nav-scroller {
			position: relative;
			z-index: 2;
			height: 2.75rem;
			overflow-y: hidden
		}
		
		.nav-scroller .nav {
			display: flex;
			flex-wrap: nowrap;
			padding-bottom: 1rem;
			margin-top: -1px;
			overflow-x: auto;
			text-align: center;
			white-space: nowrap;
			-webkit-overflow-scrolling: touch
		}
		
		
		.btn-bd-primary {
			--bd-violet-bg: #712cf9;
			--bd-violet-rgb: 112.520718, 44.062154, 249.437846;
			--bs-btn-font-weight: 600;
			--bs-btn-color: var(--bs-white);
			--bs-btn-bg: var(--bd-violet-bg);
			--bs-btn-border-color: var(--bd-violet-bg);
			--bs-btn-hover-color: var(--bs-white);
			--bs-btn-hover-bg: #6528e0;
			--bs-btn-hover-border-color: #6528e0;
			--bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
			--bs-btn-active-color: var(--bs-btn-hover-color);
			--bs-btn-active-bg: #5a23c8;
			--bs-btn-active-border-color: #5a23c8
		}
		
		.bd-mode-toggle {
			z-index: 1500
		}
		
		.bd-mode-toggle .bi {
			width: 1em;
			height: 1em
		}
		
		.bd-mode-toggle .dropdown-menu .active .bi {
			display: block !important
		}
		
    </style>
    <!-- Custom styles for this template -->
    <link href="starter-template.css" rel="stylesheet">
  </head>
  <body>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
  <a class="navbar-brand" href="#">Catalogue</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarsExampleDefault">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Accueil <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Afficher</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Ajouter</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Rechercher pour</a>
        <div class="dropdown-menu" aria-labelledby="dropdown01">
          <a class="dropdown-item" href="#">Afficher</a>
          <a class="dropdown-item" href="#">Modifier</a>
          <a class="dropdown-item" href="#">Supprimer</a>
        </div>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0" method="post">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item">
				<input class="form-control mr-sm-2" type="text" placeholder="Chercher un produit" name="trouver" aria-label="Produit recherché">
			</li>
			<li class="nav-item">
				<button class="btn btn-secondary my-2 my-sm-0" type="submit">Recherche</button>
			</li>
		</ul>
	</form>
  </div>
</nav>

<main role="main" class="container">

  <div class="starter-template">
    <h1>Bienvenue dans le Catalogue CRUD</h1>
  </div>

  <canvas class="my-4 w-100" id="myChart" width="200" height="60"></canvas>

  <h2>Résultats recherche</h2>
  <!-- ajoutons un if pour afficher aucun résultat si y'en a pas -->
  <% 
  if (request.getAttribute("produitsTrouves")!=null) { 
  %>
		<div class="table-responsive">
			<table class="table table-striped table-sm">
				<thead>
					<tr>
						<th>ID</th>
						<th>Nom</th>
						<th>Description</th>
						<th>Prix Unitaire</th>
						<th>Quantité en Stock</th>
						<th>Options</th>
					</tr>
				</thead>
				<tbody>
					<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
					<c:forEach var="produit" items="${produitsTrouves}">
						<tr>
							<td id="produitID" name="produitID">${produit.ID}</td>
							<td>${produit.nom}</td>
							<td>${produit.description}</td>
							<td>${produit.PU}</td>
							<td>${produit.qteStock}</td>
							<td>
									<!-- bouton fenetre modale -->
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
															<input type="text" class="form-control rounded-3" id="produitDesc" name="produitDesc" value="${produit.description}"> 
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
								
									<!-- bouton fenetre modale pour supprimer -->								
									<button class="btn btn-secondary my-2 my-sm-0" data-bs-toggle="modal" data-bs-target="#modalSheet" name="supprimer">Supprimer</button>
									<!-- fenetre modale pour supprimer -->
									<div class="modal modal-sheet p-4 py-md-5" data-bs-backdrop="false" tabindex="-1" role="dialog" id="modalSheet" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content rounded-4 shadow">
												<div class="modal-header border-bottom-0">
													<h1 class="modal-title fs-5">Supprimer</h1>
													<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
												</div>
												<div class="modal-body py-0">
													<p>Voulez-vous vraiment supprimer cette ligne ?</p>
												</div>
												<div class="modal-footer flex-column align-items-stretch w-100 gap-2 pb-3 border-top-0" method="post" action="/supprimer">
													<button type="button" class="btn btn-lg btn-primary" type="submit">Supprimer</button>
													<button type="button" class="btn btn-lg btn-secondary" data-bs-dismiss="modal">Annuler</button>
												</div>
											</div>
										</div>
									</div>
							</td>

						</tr>
					</c:forEach>

				</tbody>
			</table>
		</div>
  <%} else { %>
		<b>Aucun résultat</b>
  <%} %>
</main><!-- /.container -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="/docs/4.3/assets/js/vendor/jquery-slim.min.js"><\/script>')</script><script src="/docs/4.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/feather-icons@4.9.0/dist/feather.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.7.3/dist/Chart.min.js"></script>
<script src="dashboard.js"></script>
</body>
</html>
