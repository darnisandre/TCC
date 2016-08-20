package com.navin.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

import com.navin.entity.Location;
import static com.navin.util.Constantes.MAX_LOCATION_DISTANCE;

public class LocationDAO extends AbstractDAO {
	private static final double R = 6371; // earth radius in km

	public List<Location> findLocationByLatLong(Double lat, Double lon) {
		double radius = MAX_LOCATION_DISTANCE;
		double x1 = lon - Math.toDegrees(radius / R / Math.cos(Math.toRadians(lat)));
		double x2 = lon + Math.toDegrees(radius / R / Math.cos(Math.toRadians(lat)));
		double y1 = lat - Math.toDegrees(radius / R);
		double y2 = lat + Math.toDegrees(radius / R);
		System.out.println(x1 + " " + y1 + " " + x2 + " " + y2);

		Criteria criteria = createCriteria(Location.class, "l");
		criteria.add(Restrictions.between("latitude", y1, y2));
		criteria.add(Restrictions.between("longitude", x1, x2));
		return criteria.list();
	}

	public Location findById(Long locationId) {
		Criteria criteria = createCriteria(Location.class, "l");
		criteria.add(Restrictions.eq("id", locationId));
		return (Location) criteria.uniqueResult();
	}
}
