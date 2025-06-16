package fr.produitvde.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.produitvde.models.Produit;
import fr.produitvde.services.Catalogue;
import fr.produitvde.services.RechercheParID;

public class ModifierProduitServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("ModifierProduitServlet - doGet");
		
		req.getRequestDispatcher("/WEB-INF/modifier.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("ModifierProduitServlet - doPost");
		String idStr = req.getParameter("produitAlterID");
		String valid = req.getParameter("valid");
		System.out.println("id : "+ idStr + " valid = " + valid);
		int id = Integer.parseInt( idStr );
		if ("rechercher".equals(valid)) {
			Produit produitTrouve = Catalogue.chercher(idStr);
			String afficherProduit = "affichez";
			req.setAttribute("affichez", afficherProduit);
			req.setAttribute("produitTrouve", produitTrouve);
			System.out.println("attributs récupérés car valid= rechercher");
		} else if ("modifier".equals(valid)) {

			String nom = req.getParameter("produitNom");
			String description = req.getParameter("produitDesc");
			double PU = Double.parseDouble( req.getParameter("produitPU") ); //sysout Ctrl+space permet de placer en auto un println
			int qteStock = Integer.parseInt( req.getParameter("produitAlterID") );
			System.out.println("valeurs modif récupérées.");
			boolean update = Catalogue.modifier(id, nom, description, PU, qteStock);
			System.out.println("fonction modifier réalisée");
			req.setAttribute("modifierProduit", update);
			System.out.println("modifier produit récupéré sur la JSP!");
			
		}
		
		req.getRequestDispatcher("/WEB-INF/modifier.jsp").forward(req, resp);
	}
}
