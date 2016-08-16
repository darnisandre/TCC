package com.navin.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

import com.navin.entity.Connection;
import com.navin.entity.Gate;

public class GateDAO extends AbstractDAO {
	public List<Gate> findGatesByRoute(Long routeId) {
		Criteria criteria = createCriteria(Gate.class, "g");
		criteria.createAlias("g.beaconA", "b");
		criteria.createAlias("b.routes", "r");
		criteria.add(Restrictions.eq("r.id", routeId));
		return criteria.list();
	}

	public List<Gate> findGatesByLocation(Long locationId) {
		Criteria criteria = createCriteria(Gate.class, "g");
		criteria.createAlias("g.beaconA", "b");
		criteria.createAlias("b.configuration", "conf");
		criteria.createAlias("conf.location", "l");
		criteria.add(Restrictions.eq("l.id", locationId));
		return criteria.list();
	}

}
