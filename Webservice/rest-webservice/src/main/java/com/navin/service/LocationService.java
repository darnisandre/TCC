package com.navin.service;

import java.util.List;

import com.navin.dao.LocationDAO;
import com.navin.entity.Location;

public class LocationService {
	private static LocationDAO locationDAO;
	private static LocationService instace;

	private LocationService() {
	}

	public static LocationService instace() {
		if (instace == null) {
			instace = new LocationService();
		}
		return instace;
	}

	public List<Location> findLocationByLatLong(Double latitude, Double Longitude) {
		return getLocationDAO().findLocationByLatLong(latitude, Longitude);
	}

	public static LocationDAO getLocationDAO() {
		if (locationDAO == null) {
			locationDAO = new LocationDAO();
		}
		return locationDAO;
	}
}
