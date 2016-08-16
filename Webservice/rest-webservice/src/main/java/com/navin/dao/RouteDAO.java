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
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		return criteria.list();
	}

	public Route findRoutesById(Long routeId) {
		Criteria criteria = createCriteria(Route.class,"r");
		criteria.add(Restrictions.eq("r.id",routeId));
		return (Route) criteria.uniqueResult();
	}
	
}
