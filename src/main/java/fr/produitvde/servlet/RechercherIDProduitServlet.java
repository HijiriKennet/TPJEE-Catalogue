package fr.produitvde.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.produitvde.models.Produit;
import fr.produitvde.services.Catalogue;
import fr.produitvde.services.RechercheParID;

/**
 * Servlet implementation class RechercherIDProduitServlet
 */
@WebServlet("/RechercherIDProduitServlet")
public class RechercherIDProduitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("RechercherIDProduitServlet - doGet");
		request.getRequestDispatcher("/WEB-INF/rechercherparid.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("RechercherIDProduitServlet - doPost");
				
		String idStr = request.getParameter("produitSID");
		String valid = request.getParameter("valid");
		//abeg faut que tu relises parce que t'as mélangé 2 fonctions pour avoir ceci
		
		int id = Integer.parseInt( idStr );
		System.out.println("id : "+ idStr + " valid = " + valid);
		if ("rechercherID".equals(valid)) {
			Produit produitTrouve = Catalogue.chercher(idStr);
			String afficherProduit = "affichez";
			request.setAttribute("affichez", afficherProduit);
			request.setAttribute("produitTrouve", produitTrouve);
			RechercheParID.getInstance().setID(idStr);
			System.out.println("attributs récupérés car valid= rechercher");
		} else {
			request.setAttribute("produitTrouve", null);
			System.out.println("Aucun produit. Null a été pris en attribut.");
		}
		request.getRequestDispatcher("/WEB-INF/rechercherparid.jsp").forward(request, response);

	}

}
