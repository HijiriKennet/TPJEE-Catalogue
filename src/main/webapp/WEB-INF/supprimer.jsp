<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>Page Supprimer</title>   
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
</head>
<body>
		<!-- 
		<button class="btn btn-secondary my-2 my-sm-0" data-bs-toggle="modal" data-bs-target="#modalSheet" name="supprimer">Supprimer</button>
		<div class="modal modal-sheet p-4 py-md-5" data-bs-backdrop="false" tabindex="-1" role="dialog" id="modalSheet" aria-hidden="true">
			 attention y'avait les  lignes du dessus qu'étaient commentées
			 -->
				<div class="modal-content rounded-4 ">
					<div class="modal-header border-bottom-0">
						<h1 class="modal-title fs-5">Supprimer</h1>
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div class="modal-body py-0">
						<p>Voulez-vous vraiment supprimer cette ligne ?</p>
					</div>
					
					<div class="modal-footer flex-column align-items-stretch w-100 gap-2 pb-3 border-top-0" >
						<form action="supprimer" method="post" >
							<input type="text" id="produitID" class="form-control" name="produitID" placeholder="id à supprimer" required autofocus>
							<input type="hidden" id="valid" class="form-control" name="valid" value="delete" style="display: none;">
							<button class="btn btn-lg btn-primary" type="submit">
								 Supprimer 
							 </button>
						</form>
						<button type="button" class="btn btn-lg btn-secondary" data-bs-dismiss="modal">Annuler</button>
						<p><% if (request.getAttribute("reponz")!=null) out.write((String)request.getAttribute("reponz")); %></p>
					</div>
				</div>
		 
 	
</body>
</html>