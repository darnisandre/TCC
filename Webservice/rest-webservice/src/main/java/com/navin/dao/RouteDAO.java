package com.navin.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

import com.navin.entity.Route;

public class RouteDAO extends AbstractDAO{


	public List<Route> findRoutesByLocation(Long locationId) {
		Criteria criteria = createCriteria(Route.class,"r");
		criteria.createAlias("r.beacons", "b");
		criteria.createAlias("b.configuration", "c");
		criteria.createAlias("c.location", "l");
		criteria.add(Restrictions.eq("l.id",locationId));
		return criteria.list();
	}
	
}
