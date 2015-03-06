package com.livre.view;

import java.util.List;

import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;
import com.livre.controller.LivreManager;
import com.livre.model.Livre;
import com.opensymphony.xwork2.ActionSupport;

public class LivreAction extends ActionSupport implements SessionAware {
	
	private Livre livre;
	private List<Livre> livreList;	
	private Long id;
	private LivreManager linkController;	
	private Map<String, Object> session;
	private String nomU;
	private String prenomU;
		
	public LivreAction() {
		linkController = new LivreManager();
	}

	public String execute() {
		this.livreList = linkController.list();
		return SUCCESS;
	}

	public String add() {
		try {
			linkController.add(getLivre());
		} catch (Exception e) {
			e.printStackTrace();
		}
		this.livreList = linkController.list();
		return SUCCESS;
	}

	public String delete() {
		linkController.delete(getId());
		return SUCCESS;
	}
	
	public String emprunter() {
		nomU = (String)session.get("nom");
		prenomU = (String)session.get("prenom");
		System.out.println(nomU + prenomU);
		try {
			linkController.emprunter(getId(), nomU, prenomU);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	public String rendreLivre() {
		try {
			linkController.rendreLivre(getId());
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return SUCCESS;
	}
	
	
	public Livre getLivre() {
		return livre;
	}

	public void setLivre(Livre livre) {
		this.livre = livre;
	}
		
	public List<Livre> getLivreList() {
		return livreList;
	}
	
	public void setLivreList(List<Livre> livresList) {
		this.livreList = livresList;
	}
	
	public Long getId() {
		return id;
	}
	
	public void setId(Long id) {
		this.id = id;
	}
	
	public void setSession(Map<String, Object> map) { 
		this.session=map; 
	}
}
