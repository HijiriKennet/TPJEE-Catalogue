package fr.produitvde.models;

public class Produit {
	String ID="000000";
	protected static int nbrProduits = 0;
	String nom;
	String description;
	double PU=0;
	int qteStock=1;
	int qteCmd=0;
	boolean enRupture=false; 
	
	
	public Produit() {
		ID= ID.substring(0, String.valueOf(nbrProduits).length()) + nbrProduits++;
	}
	public Produit(int ID, String nom, String description, double PU, int qteStock) {
		this.ID = String.valueOf(ID) ;
		this.nom = nom;
		this.description = description;
		this.PU = PU;
		this.qteStock = qteStock;
	}
	public String getID() {
		return ID;
	}
	public String getNom() {
		return nom;
	}
	public String getDescription() {
		return description;
	}
	public double getPU() {
		return PU;
	}
	public int getQteStock() {
		return qteStock;
	}
	
}
