package com.navin.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

import com.navin.entity.Beacon;

public class BeaconDAO extends AbstractDAO {
	public List<Beacon> findBeaconsByRoute(Long routeId) {
		Criteria criteria = createCriteria(Beacon.class, "b");
		criteria.createAlias("b.routes", "r");
		criteria.add(Restrictions.eq("r.id", routeId));
		return criteria.list();
	}

}
