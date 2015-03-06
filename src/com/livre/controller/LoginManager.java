package com.livre.controller;

import com.livre.model.Contact;
import com.livre.util.HibernateUtil;
import java.util.List;

import org.hibernate.*;

public class LoginManager {
	
	@SuppressWarnings("unchecked")
	public boolean find(String lastName, String firstName) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		//	session.beginTransaction();
		String SQL_QUERY = " from Contact u where u.lastName='" + lastName + "' and u.firstName='" + firstName + "'";
		//System.out.println(SQL_QUERY);
		Query query = session.createQuery(SQL_QUERY);
		List<Contact> list = query.list();
		if (list.size() > 0) {
			session.close();
			return true;
		}
		session.close();
		return false;
	}

}
