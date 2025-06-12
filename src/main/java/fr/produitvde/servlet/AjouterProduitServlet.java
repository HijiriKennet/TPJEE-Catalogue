package fr.produitvde.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.produitvde.services.Catalogue;

public class AjouterProduitServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("AjouterProduitServlet - doGet");
		/*
		PrintWriter out = resp.getWriter();//resp c'est un des paramètres de la ft°
		out.println("<html> <head>  </head> <body> <h1> Add page for dudes</h1> </body> </html>");
		*/
		req.getRequestDispatcher("/WEB-INF/ajouter.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("AjouterProduitServlet - doPost");//utilisable pour les formulaires
		
		String nom = req.getParameter("produitNom");
		String description = req.getParameter("produitDesc");
		double PU = Double.parseDouble( req.getParameter("produitPU") ); //sysout Ctrl+space permet de placer en auto un println
		int qteStock = Integer.parseInt( req.getParameter("produitQteStock") );
		System.out.println("valeurs récupérées.");
		boolean add = Catalogue.ajouter(nom, description, PU, qteStock);
		System.out.println("fonction ajouter réalisée");
		req.setAttribute("ajouterProduit", add);
		System.out.println("ajouter produit récupéré sur la JSP!");
		req.getRequestDispatcher("/WEB-INF/ajouter.jsp").forward(req, resp);
	}
}
