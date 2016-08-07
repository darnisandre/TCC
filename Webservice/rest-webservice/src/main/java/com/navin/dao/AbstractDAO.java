package com.navin.dao;

import org.hibernate.Criteria;
import org.hibernate.Session;

import com.navin.util.HibernateConnector;

public class AbstractDAO {
	protected <K> Criteria createCriteria(Class<K> c,String alias){
		Session session = HibernateConnector.getInstance().getSession();
        return session.createCriteria(c,alias);
	}
}
