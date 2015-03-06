package com.livre.controller;

import java.util.List;

import com.livre.model.Livre;
import com.livre.util.HibernateUtil;

import org.hibernate.HibernateException;
import org.hibernate.classic.Session;

public class LivreManager extends HibernateUtil {
	
	public Livre add(Livre livre) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(livre);
		session.getTransaction().commit();
		return livre;
	}
	
	public Livre delete(Long id) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Livre livre = (Livre) session.load(Livre.class, id);
		if(null != livre) {
			session.delete(livre);
		}
		session.getTransaction().commit();
		return livre;
	}
	
	public List<Livre> list() {		
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		List<Livre> livres = null;
		try {			
			livres = (List<Livre>)session.createQuery("from Livre").list();			
		} catch (HibernateException e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		session.getTransaction().commit();
		return livres;
	}
	
	public Livre emprunter(Long id, String nomU, String prenomU) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Livre livre = (Livre) session.load(Livre.class, id);
		livre.setLoaned('1');
		livre.setNomU(nomU);
		livre.setPrenomU(prenomU);
		if(null != livre) {
			session.saveOrUpdate(livre);	
		}
		session.getTransaction().commit();
		return livre;		
	}
	
	public Livre rendreLivre(Long id) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Livre livre = (Livre) session.load(Livre.class, id);
		livre.setLoaned('0');
		livre.setNomU("");
		livre.setPrenomU("");
		if(null != livre) {
			session.saveOrUpdate(livre);	
		}
		session.getTransaction().commit();
		return livre;
	}
}