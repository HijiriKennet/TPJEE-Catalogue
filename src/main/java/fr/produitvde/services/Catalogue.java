package fr.produitvde.services;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import fr.produitvde.dao.ProduitsDao;
import fr.produitvde.models.Produit;


public class Catalogue extends Produit{
	static Connection connex = ProduitsDao.getConnection();
	static Statement stmt = null;
    static ResultSet resu = null;

    
    public static boolean ajouter (String nom, String description, double PU,int qteStock) {
		boolean ajouter = false;
    	if (connex!=null) {
 
	         try {
	             stmt = connex.createStatement();
	             String insertSQL = "INSERT INTO Produits (nom, description, PU, qteStock) " +
                         "VALUES ('"+nom+"', '"+description+"', '"+PU+"', '"+qteStock+"')";
	             stmt.executeUpdate(insertSQL);
	             System.out.println("Nouveau produit inséré avec succès. Nombre de produits enregistrés : "+(++nbrProduits)+".");
	             ajouter = true;
	         } catch (SQLException e) {
	                System.err.println("Erreur SQL :");
	                e.printStackTrace();
	            } finally {
	                try {
	                    if (resu != null) resu.close();
	                    if (stmt != null) stmt.close();
	                } catch (SQLException e) {
	                    e.printStackTrace();
	                }
	            }
	        } else {
	            System.err.println("Échec de connexion à la base de données.");
	        }
    	return ajouter;
	}
    
    public static void afficher0() {
    	 if (connex!=null) {
	         try {
	             stmt = connex.createStatement();
	             String selectSQL = "SELECT id, nom, description, PU, qteStock FROM Produits";
	             resu = stmt.executeQuery(selectSQL);
	             System.out.println("\nProduits :");
	             while (resu.next()) {
	                    int id = resu.getInt("id");
	                    String nom = resu.getString("nom");
	                    String description = resu.getString("description");
	                    double PU = resu.getDouble("PU");
	                    int qteStock = resu.getInt("qteStock");

	                    System.out.println("N°" + id + " | " + nom + " : " + description + " | " + PU + " € | " + qteStock);
	             }
	         } 
	         catch (SQLException e) {
	                System.err.println("Erreur SQL :");
	                e.printStackTrace();
	         } 
	         finally {
	                try {
	                    if (resu != null) resu.close();
	                    if (stmt != null) stmt.close();
	                } catch (SQLException e) {
	                    e.printStackTrace();
	                }
	         }
	    } else {
	            System.err.println("Échec de connexion à la base de données.");
	      }
	}
    
    public static List<Produit> afficher() {
   	 if (connex!=null) {
	         try {
	             stmt = connex.createStatement();
	             List<Produit> produits = new ArrayList<Produit>();
	             String selectSQL = "SELECT id, nom, description, PU, qteStock FROM Produits";
	             resu = stmt.executeQuery(selectSQL);
	             System.out.println("\nProduits :");
	             while (resu.next()) {
	                    int id = resu.getInt("id");
	                    String nom = resu.getString("nom");
	                    String description = resu.getString("description");
	                    double PU = resu.getDouble("PU");
	                    int qteStock = resu.getInt("qteStock");
	                    produits.add(new Produit(id,nom,description,PU,qteStock));
	                    System.out.println("N°" + id + " | " + nom + " : " + description + " | " + PU + " € | " + qteStock);
	             }
	             if(produits.isEmpty()) {
            		 System.out.println("Produit NON trouvé.");
            		 return null;
            	 } else {
	            	 System.out.println("Produit trouvé.");
	            	 return produits;
            	 }
	         } 
	         catch (SQLException e) {
	                System.err.println("Erreur SQL :");
	                e.printStackTrace();
	         } 
	         finally {
	                try {
	                    if (resu != null) resu.close();
	                    if (stmt != null) stmt.close();
	                } catch (SQLException e) {
	                    e.printStackTrace();
	                }
	         }
	    } else {
	            System.err.println("Échec de connexion à la base de données.");
	      }
   	 return null;
	}
    
    public static Produit chercher(String trouve) {
	   	 if (connex!=null) {
		         try {
		             stmt = connex.createStatement();
		             String selectSQL = "SELECT id,nom, description, PU, qteStock FROM Produits WHERE nom='" + trouve + "' OR id='" + trouve + "'";
		             resu = stmt.executeQuery(selectSQL);
		             if (resu!=null) {
		            	 //Ne pas utiliser resu.getXXX en dehors de while resu.next()	 
		            	 while (resu.next()) {
		            		 	int id = resu.getInt("id");
			                    String nom = resu.getString("nom");
			                    String description = resu.getString("description");
			                    double PU = resu.getDouble("PU");
			                    int qteStock = resu.getInt("qteStock");
			                    Produit produitTrouve = new Produit(id,nom,description, PU, qteStock);
			                    System.out.println("N°" + id + " | " + nom + " : " + description + " | " + PU + " € | " + qteStock);
			                    return produitTrouve;
		            	 }
		             }
		             else System.err.println("Produit introuvable...");	 
		             return null;
		         } 
		         catch (SQLException e) {
		                System.err.println("Erreur SQL :");
		                e.printStackTrace();
		         } 
		         finally {
		                try {
		                    if (resu != null) resu.close();
		                    if (stmt != null) stmt.close();
		                }
		                catch (SQLException e) {
		                    e.printStackTrace();
		                }
		         }
		 } else System.err.println("Échec de connexion à la base de données."); 
	   	 return null;
	}
    
    public static List<Produit> rechercher(String trouve) {
	   	 if (connex!=null) {
		         try {
		             stmt = connex.createStatement();
		             String selectSQL = "SELECT id,nom, description, PU, qteStock FROM Produits WHERE nom='" + trouve + "'";
		             resu = stmt.executeQuery(selectSQL);
		             List<Produit> produitsTrouves = new ArrayList<Produit>();
		             System.out.println("liste conçue");
		             if (resu!=null) {
		            	 System.out.println("resu non null");
		            	 //Ne pas utiliser resu.getXXX en dehors de while resu.next()	 
		            	 while (resu.next()) {
		            		 System.out.println("on a un resu.next");
		            		 	int id = resu.getInt("id");
			                    String nom = resu.getString("nom");
			                    String description = resu.getString("description");
			                    double PU = resu.getDouble("PU");
			                    int qteStock = resu.getInt("qteStock");
			                    produitsTrouves.add(new Produit(id, nom, description, PU, qteStock));
		            	 }
		            	 if(produitsTrouves.isEmpty()) {
		            		 System.out.println("Produit NON trouvé.");
		            		 return null;
		            	 } else {
			            	 System.out.println("Produit trouvé.");
			            	 return produitsTrouves;
		            	 }
		             }
		             else System.err.println("Produit introuvable...");	 
		             return null;
		         } 
		         catch (SQLException e) {
		                System.err.println("Erreur SQL :");
		                e.printStackTrace();
		         } 
		         finally {
		                try {
		                    if (resu != null) resu.close();
		                    if (stmt != null) stmt.close();
		                }
		                catch (SQLException e) {
		                    e.printStackTrace();
		                }
		         }
		 } else System.err.println("Échec de connexion à la base de données."); 
	   	 return null;
	}
    
    
    final static public boolean modifier0(String trouve, String nom, String description, double PU, int qteStock) {
	   	boolean modifier = false; 
    	if (connex!=null) {
		         try {
			             stmt = connex.createStatement();
			             resu= stmt.executeQuery("SELECT nom, description, PU, qteStock FROM Produits WHERE nom ='" + trouve + "'");
			             System.out.println(resu);
			             if(resu!=null) {
					             String updateSQL = "UPDATE Produits " 
					             					+ "SET nom = '" + nom 
					             					+ "', description = '" + description 
					             					+ "', PU = '"+ PU
					             					+ "', qteStock = '"+ qteStock +"'"
					             					+ " WHERE nom = '"+ trouve + "'"; 	

					             if (stmt.executeUpdate(updateSQL)>1) {
					            	 System.out.println("Produit modifié avec succès.");
					            	 modifier = true ;
					             }
					             else System.err.println("Echec de la mise à jour du produit. Cause : Probleme dans la mise à jour."); 
			             
			             }else System.err.println("Echec de la mise à jour du produit. Cause : contact non trouvé.");
			             
		         } 
		         catch (SQLException e) {
		                System.out.println("Echec de la mise à jour du produit. Cause : Erreur SQL.");
		                e.printStackTrace();
		         } 
		         finally {
		                try {
		                    if (resu != null) resu.close();
		                    if (stmt != null) stmt.close();
		                }
		                catch (SQLException e) {
		                    e.printStackTrace();
		                }
		         }
		 } else System.err.println("Échec de connexion à la base de données.");
    	return modifier;
	} 
    
    final static public boolean modifier(int id, String nom, String description, double PU, int qteStock) {
	   	boolean modifier = false; 
    	if (connex!=null) {
		         try {
			             stmt = connex.createStatement();
			             resu= stmt.executeQuery("SELECT nom, description, PU, qteStock FROM Produits WHERE id ='" + id + "'");
			             System.out.println(resu);
			             if(resu!=null) {
					             String updateSQL = "UPDATE Produits " 
					             					+ "SET nom = '" + nom 
					             					+ "', description = '" + description 
					             					+ "', PU = '"+ PU
					             					+ "', qteStock = '"+ qteStock +"'"
					             					+ " WHERE id = '"+ id + "'"; 	

					             if (stmt.executeUpdate(updateSQL)>1) {
					            	 System.out.println("Produit modifié avec succès.");
					            	 modifier = true ;
					             }
					             else System.err.println("Echec de la mise à jour du produit. Cause : Probleme dans la mise à jour."); 
			             
			             }else System.err.println("Echec de la mise à jour du produit. Cause : contact non trouvé.");
			             
		         } 
		         catch (SQLException e) {
		                System.out.println("Echec de la mise à jour du produit. Cause : Erreur SQL.");
		                e.printStackTrace();
		         } 
		         finally {
		                try {
		                    if (resu != null) resu.close();
		                    if (stmt != null) stmt.close();
		                }
		                catch (SQLException e) {
		                    e.printStackTrace();
		                }
		         }
		 } else System.err.println("Échec de connexion à la base de données.");
    	return modifier;
	} 
    
    public static boolean supprimer(int idDel) {
    	boolean retour= false;
	   	 if (connex!=null) {
		         try {
		        	 stmt = connex.createStatement();
		             resu= stmt.executeQuery("SELECT nom, description, PU, qteStock FROM Produits WHERE id ='" + idDel + "'");
		             System.out.println(resu);
		             if(resu!=null) {
				     
					             String deleteSQL = "DELETE FROM Produits WHERE id ="+idDel; 
					             stmt = connex.createStatement();
					             stmt.executeUpdate(deleteSQL); 
				            	 System.out.println("Produit supprimé."); 
				            	 nbrProduits--;
				            	 retour= true;
			             }else {
			            	 System.out.println("Echec de la suppression du produit."); retour= false;
			             }
		         } 
		         catch (SQLException e) {
		                System.err.println("Erreur SQL :");
		                e.printStackTrace();
		         } 
		         finally {
		                try {
		                    if (resu != null) resu.close();
		                    if (stmt != null) stmt.close();
		                }
		                catch (SQLException e) {
		                    e.printStackTrace();
		                }
		         }
		 } else {
			 System.err.println("Échec de connexion à la base de données."); retour= false;
		 }
	   	 return retour;
	}
	
	

}
