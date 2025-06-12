<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="fr.produitvde.services.Catalogue" %>
<%@ page import="fr.produitvde.models.Produit" %>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Starter Template · Bootstrap</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    
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


<main role="main" class="container" method="post">

  <h1>Bienvenue dans le Catalogue CRUD</h1>
  
  <canvas class="my-4 w-100" id="myChart" width="200" height="60"></canvas>

  <h2>Voici la liste actuelle des produits</h2>
  <!-- ajoutons un if pour afficher aucun résultat si y'en a pas -->
  <% 
  if (request.getAttribute("produitsListe")!=null) { 
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
					<c:forEach var="produit" items="${produitsListe}">
						<tr>
							<td>${produit.ID}</td>
							<td>${produit.nom}</td>
							<td>${produit.description}</td>
							<td>${produit.PU}</td>
							<td>${produit.qteStock}</td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
		</div>
  <%} else { %>
		<b>Aucun produit...</b>
  <%} %>
  
</main><!-- /.container -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="/docs/4.3/assets/js/vendor/jquery-slim.min.js"><\/script>')</script><script src="/docs/4.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/feather-icons@4.9.0/dist/feather.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.7.3/dist/Chart.min.js"></script>
<script src="dashboard.js"></script>
</body>
</html>
