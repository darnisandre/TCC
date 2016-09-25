package com.navin.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

import com.navin.entity.Connection;

public class ConnectionDAO extends AbstractDAO {
	public List<Connection> findConnectionsByRoute(Long routeId) {
		Criteria criteria = createCriteria(Connection.class, "c");
		criteria.createAlias("c.beaconA", "b");
		criteria.createAlias("b.routes", "r");
		criteria.add(Restrictions.eq("r.id", routeId));
		return criteria.list();
	}

	public List<Connection> findConnectionsByLocation(Long locationId) {
		Criteria criteria = createCriteria(Connection.class, "c");
		criteria.createAlias("c.beaconA", "b");
		criteria.createAlias("b.configuration", "conf");
		criteria.createAlias("conf.location", "l");
		criteria.add(Restrictions.eqProperty("l.activeConfiguration.id", "conf.id"));
		criteria.add(Restrictions.eq("l.id", locationId));
		return criteria.list();
	}

}
