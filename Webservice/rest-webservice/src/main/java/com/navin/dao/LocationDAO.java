package com.navin.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

import com.navin.entity.Location;
import static com.navin.util.Constantes.MAX_LOCATION_DISTANCE;

public class LocationDAO extends AbstractDAO{

	public List<Location> findLocationByLatLong(Double latitude, Double longitude){
		Criteria criteria = createCriteria(Location.class,"l");
		criteria.add(Restrictions.between("latitude", latitude-MAX_LOCATION_DISTANCE,
				latitude+MAX_LOCATION_DISTANCE));
		criteria.add(Restrictions.between("longitude", longitude-MAX_LOCATION_DISTANCE,
				longitude+MAX_LOCATION_DISTANCE));
		return criteria.list();
	}
	
}
