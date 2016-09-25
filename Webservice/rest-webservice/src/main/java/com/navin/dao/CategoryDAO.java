package com.navin.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

import com.navin.entity.Category;

public class CategoryDAO extends AbstractDAO {

	public List<Category> findCategoriesByLocation(Long locationId) {
		Criteria criteria = createCriteria(Category.class, "c");
		criteria.createAlias("c.beacons", "b");
		criteria.createAlias("b.configuration", "conf");
		criteria.createAlias("conf.location", "l");
		criteria.add(Restrictions.eq("l.id", locationId));
		criteria.add(Restrictions.eqProperty("l.activeConfiguration.id", "conf.id"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		return criteria.list();
	}

}
