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
	<title>Modifier</title>
	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    
    <!-- navbar inclusion -->
    <script src="/docs/5.3/assets/js/color-modes.js"></script>
	<link href="/docs/5.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT">
	<link href="navbar-static.css" rel="stylesheet">
    
    <script src="/docs/5.3/assets/js/color-modes.js"></script>
	<link href="/docs/5.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT">
	<link rel="apple-touch-icon" href="/docs/5.3/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
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
    <link href="signin.css" rel="stylesheet">
</head>

<body class="text-center">
	

	
	<!-- Fenetre modale -->
	
		<div class="modal-dialog">
			<div class="modal-content rounded-4 shadow">
				<div class="modal-header p-5 pb-4 border-bottom-0">
					<h1 class="fw-bold mb-0 fs-2">Modifier cette valeur</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Fermer"></button>
				</div>
				<div class="modal-body p-5 pt-0">
					<form class="form-inline my-2 my-lg-0" action="modifier" method="post">
						<div class="form-floating mb-3">
							<input type="text" id="produitID" class="form-control" name="produitAlterID" placeholder="id à modifier" required autofocus>
							<input type="hidden" id="valid" class="form-control" name="valid" value="rechercher" style="display: none;">
							<button class="w-100 mb-2 btn btn-lg rounded-3 btn-secondary" type="submit">Valider ID</button>
						</div>
					</form>
						<%--
							if ( "affichez".equals( request.getAttribute("affichez") ) ) {
								
								if (request.getAttribute("produitTrouve")!=null) {
								Produit produitTrouve = (Produit) request.getAttribute("produitTrouve");	
								System.out.println("Nom " + produitTrouve.getNom());
						--%>
					<form class="form-inline my-2 my-lg-0" action="modifier" method="post">
						<div class="form-floating mb-3">
							<input type="hidden" id="produitID" class="form-control" name="produitAlterID" value="${produitTrouve.getID()}">
							<input type="text" id="produitNom" class="form-control" name="produitNom" value="${produitTrouve.getNom()}"> 
							<label for="produitNom" class="sr-only">Nom</label> 
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control rounded-3" id="produitDesc" name="produitDesc" value="${produitTrouve.getDescription()}"> 
							<label for="produitDesc">Description</label>
						</div>
						<div class="form-floating mb-3"> 
							<input type="text" id="produitPU" class="form-control" name="produitPU" value="${produitTrouve.getPU()}" >
							<label for="produitPU">Prix Unitaire</label>
						</div>
						<div class="form-floating mb-3">
							<input type="number" id="produitQteStock" class="form-control" name="produitQteStock" value="${produitTrouve.getQteStock()}" >
							<label for="produitQteStock">Quantité en Stock</label>
						</div>
						<input type="hidden" id="valid" class="form-control" name="valid" value="modifier" style="display: none;">
						<button class="w-100 mb-2 btn btn-lg rounded-3 btn-primary" type="submit">Modifier</button>
					</form>
					<%-- } } --%>
				</div>
			</div>
		</div>
	
</body>

</html>