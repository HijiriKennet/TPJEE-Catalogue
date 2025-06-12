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

/**
 * Servlet implementation class AfficherProduitServlet
 */
//@WebServlet({  "/afficher" })
public class AfficherProduitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("AfficherProduitServlet - doGet");
		doPost(request, response);
		request.getRequestDispatcher("/WEB-INF/afficher.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("AfficherProduitServlet - doPost");

		List<Produit> produitsListe = Catalogue.afficher();
		System.out.println("afficher s'est fini");
		
		if (produitsListe != null) {
			request.setAttribute("produitsListe", produitsListe);
			System.out.println("la liste des produits a été prise en attribut.");
		} else {
			request.setAttribute("produitsListe", null);
			System.out.println("Zero liste de produits. Null a été pris en attribut.");
		}
		request.getRequestDispatcher("/WEB-INF/afficher.jsp");
	}

}
