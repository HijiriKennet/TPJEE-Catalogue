package fr.produitvde.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.produitvde.models.Produit;
import fr.produitvde.services.Catalogue;

public class RechercherProduitServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("RechercherProduitServlet - doGet");
		req.getRequestDispatcher("/WEB-INF/rechercher.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("RechercherProduitServlet - doPost");//utilisable pour les formulaires
		
		String trouve = req.getParameter("trouver");
		List<Produit> produitsTrouves = Catalogue.rechercher(trouve);
		System.out.println("rechercher s'est fini");
		/*
		produitsTrouves.forEach( p -> {
		req.setAttribute("produitID",p.getID());
		req.setAttribute("produitNom", p.getNom());
		req.setAttribute("produitDescription", p.getDescription());
		req.setAttribute("produitPU", p.getPU());
		req.setAttribute("produitQteStock", p.getQteStock());
		}	);
		*/
		
		if (produitsTrouves != null) {
			req.setAttribute("produitsTrouves", produitsTrouves);
			System.out.println("la liste des produits a été prise en attribut.");
		} else {
			req.setAttribute("produitsTrouves", null);
			System.out.println("Zero liste de produits. Null a été pris en attribut.");
		}
		req.getRequestDispatcher("/WEB-INF/rechercher.jsp").forward(req, resp);
	}
}
