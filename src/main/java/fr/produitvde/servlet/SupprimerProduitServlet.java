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

public class SupprimerProduitServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("SupprimerProduitServlet - doGet");
		
		req.getRequestDispatcher("/WEB-INF/supprimer.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		System.out.println("SupprimerProduitServlet - doPost");
		String aidi = req.getParameter("produitID");//récup l'ID
		String valid = req.getParameter("valid");
		System.out.println("aidi : " + aidi + " valid : " + valid);
		if (valid.equals("delete")) { //pour confirmer la suppression
			System.out.println("ID en str : " + aidi);
			int id = Integer.parseInt(aidi);
			boolean supp = Catalogue.supprimer(id);
			
			if (supp) aidi="succes";
			else aidi="echec";
		} else System.out.println("petit souci dans le jsp au niveau du bouton valider supp");
		req.setAttribute("reponz", aidi);
		/*
        String etape = req.getParameter("etape");
        String valeurStr = req.getParameter("valeur");

		 if ("demandeConfirmation".equals(etape)) {
	            // Aller à la page de confirmation avec la valeur
	            req.setAttribute("valeur", valeurStr);
	            req.getRequestDispatcher("supprimer.jsp").forward(req, resp);
	        } else if ("confirmer".equals(etape)) {
	            try {
	                int id = Integer.parseInt(valeurStr);
	                boolean resultat = Catalogue.supprimer(id);

	                req.setAttribute("valeur", id);
	                req.setAttribute("resultat", resultat);
	                req.getRequestDispatcher("supprimer.jsp").forward(req, resp);
	            } catch (NumberFormatException e) {
	                req.setAttribute("erreur", "Valeur non numérique");
	                req.getRequestDispatcher("supprimer.jsp").forward(req, resp);
	            }
	        } else {
	            resp.sendRedirect("supprimer.jsp");
	        }
		 */
		req.getRequestDispatcher("/WEB-INF/supprimer.jsp").forward(req, resp);
	}
}
