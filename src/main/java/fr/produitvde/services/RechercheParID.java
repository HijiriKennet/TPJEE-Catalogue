package fr.produitvde.services;

public class RechercheParID {
	//private static final instance fait que la classe ne peut instancier QU'UN SEUL OBJET
	private static final RechercheParID instance = new RechercheParID();
	private String ID ;
	
	// oui... Je suis en train de faire un constructeur PRIVE VIDE
	private RechercheParID() { }
	
	public static RechercheParID getInstance() {
		return instance;
	}
	
	public String getID() {
		return ID;
	}
	
	public void setID(String iD) {
		this.ID = iD;
	}
	
}
