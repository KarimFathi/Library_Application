package com.livre.model;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="livres")
public class Livre implements Serializable {
	
	private Long id;
	private String auteur;
	private String titre;
	private String editeur;
	private String emailID;	
	private String website;
	private Date created;
	private String nomU = "";
	private String prenomU = "";
	private char loaned = '0'; //emprunter
		
	@Id
	@GeneratedValue
	@Column(name="id")
	public Long getId() {
		return id;
	}	
	@Column(name="auteur")
	public String getAuteur() {
		return auteur;
	}	
	@Column(name="titre")
	public String getTitre() {
		return titre;
	}	
	@Column(name="editeur")
	public String getEditeur() {
		return editeur;
	}
	@Column(name="email_id")
	public String getEmailID() {
		return emailID;
	}
	@Column(name="siteweb")
	public String getWebsite() {
		return website;
	}
	@Column(name="date_id")
	public Date getCreated() {
		return created;
	}
	@Column(name="nomU")
	public String getNomU() {
		return nomU;
	}
	@Column(name="prenomU")
	public String getPrenomU() {
		return prenomU;
	}
	@Column(name="bool")
	public char getLoaned() {
		return loaned;
	}
			
	public void setId(Long id) {
		this.id = id;
	}
	public void setAuteur(String auteur) {
		this.auteur = auteur;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	public void setEditeur(String editeur) {
		this.editeur = editeur;
	}
	public void setEmailID(String emailID) {
		this.emailID = emailID;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public void setCreated(Date created) {
		this.created = created;
	}
	public void setNomU(String nomU) {
		this.nomU = nomU;
	}
	public void setPrenomU(String prenomU) {
		this.prenomU = prenomU;
	}
	public void setLoaned(char loaned) {
		this.loaned = loaned;
	}
}
