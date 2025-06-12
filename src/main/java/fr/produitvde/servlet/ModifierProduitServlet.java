package fr.produitvde.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.produitvde.services.Catalogue;

public class ModifierProduitServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("ModifierProduitServlet - doGet");
		
		req.getRequestDispatcher("/WEB-INF/modifier.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("ModifierProduitServlet - doPost");
		
		String nom = req.getParameter("produitNom");
		String description = req.getParameter("produitDesc");
		double PU = Double.parseDouble( req.getParameter("produitPU") ); //sysout Ctrl+space permet de placer en auto un println
		int id = Integer.parseInt( req.getParameter("produitAlterID") );
		int qteStock = Integer.parseInt( req.getParameter("produitAlterID") );
		System.out.println("valeurs modif récupérées.");
		boolean update = Catalogue.modifier(id, nom, description, PU, qteStock);
		System.out.println("fonction modifier réalisée");
		req.setAttribute("modifierProduit", update);
		System.out.println("modifier produit récupéré sur la JSP!");
		
	}
}
