<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page import="fr.produitvde.models.*" %>
<%@ page import="fr.produitvde.dao.*" %>
<%@ page import="fr.produitvde.services.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form class="form-inline my-2 my-lg-0" action="rechercherparid" method="post">
		<div class="form-floating mb-3">
			<input type="text" id="produitID" class="form-control" name="produitSID" placeholder="id à rechercher" required autofocus> 
			<input type="hidden" id="valid" class="form-control" name="valid" value="rechercherID" style="display: none;">
			<button class="w-100 mb-2 btn btn-lg rounded-3 btn-secondary" type="submit">Valider ID</button>
		</div>
	</form>
	<% 
		if ( "affichez".equals( request.getAttribute("affichez") ) ) {
			%>
			<p> Résultat de la recherche  : </p>
			<%
			if (request.getAttribute("produitTrouve")!=null) {
				Produit produitTrouve = (Produit) request.getAttribute("produitTrouve");	
				System.out.println("Nom " + produitTrouve.getNom());
				out.write("Succès");
			}
			else out.write("Echec");
		}
	%>
</body>
</html>