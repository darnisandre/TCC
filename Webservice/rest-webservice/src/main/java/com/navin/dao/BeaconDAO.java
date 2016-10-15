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

	public List<Beacon> findBeaconsByLocation(Long locationId) {
		Criteria criteria = createCriteria(Beacon.class, "b");
		criteria.createAlias("b.configuration", "c");
		criteria.createAlias("c.location", "l");
		criteria.add(Restrictions.eqProperty("l.activeConfiguration.id", "c.id"));
		criteria.add(Restrictions.eq("l.id", locationId));
		return criteria.list();
	}
	public List<Beacon> findBeaconsByLocationAndCategory(Long locationId, Long category) {
		Criteria criteria = createCriteria(Beacon.class, "b");
		criteria.createAlias("b.configuration", "c");
		criteria.createAlias("b.categories", "cat");
		criteria.createAlias("c.location", "l");
		criteria.add(Restrictions.eqProperty("l.activeConfiguration.id", "c.id"));
		criteria.add(Restrictions.eq("cat.id", category));
		criteria.add(Restrictions.eq("l.id", locationId));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		return criteria.list();
	}

}
