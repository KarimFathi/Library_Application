package com.livre.view;

import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;
import com.livre.controller.LoginManager;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport  implements SessionAware {
	private static final long serialVersionUID = 1L;
    private String lastName;
    private String firstName;
	private LoginManager linkController = new LoginManager();
	
	// notre variable de session (dictionnaire)
	private Map<String, Object> session; 
	
	public String execute() {
		return SUCCESS;
	}
		
	public String connect() {
		// validateurs de la saisie
		if(lastName.length()==(0))
            this.addFieldError("lastName", "Veuillez saisir votre nom");
		if(firstName.length()==(0))
            this.addFieldError("firstName", "Veuillez saisir votre prénom");
        		
		if(linkController.find(getLastName(), getFirstName())){
			// on met le nom et le prénom dans la session via la méthode setSession()
			session.put("nom", lastName);
			session.put("prenom", firstName);
            return SUCCESS;
		}else {
            this.addActionError("Nom et/ou Prénom invalide ...");
            return ERROR;
		}
    }
	
	// La méthode setSession de l'interface SessionAware
	public void setSession(Map<String, Object> session) { 
		this.session=session; 
	}
	
	public String getLastName() {
		return lastName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
}
