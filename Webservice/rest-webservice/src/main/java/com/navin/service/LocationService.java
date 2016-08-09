package com.navin.service;

import java.util.ArrayList;
import java.util.List;

import com.navin.dao.LocationDAO;
import com.navin.dto.LocationDTO;
import com.navin.entity.Location;
import com.navin.util.CastToDTO;

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

	public List<LocationDTO> findLocationByLatLong(Double latitude, Double Longitude) {
		List<Location> locations = getLocationDAO().findLocationByLatLong(latitude, Longitude);
		List<LocationDTO> locationsDto = new ArrayList<LocationDTO>();
		for(Location l : locations){
			locationsDto.add(CastToDTO.toDto(l));
		}
		return locationsDto;
	}

	public static LocationDAO getLocationDAO() {
		if (locationDAO == null) {
			locationDAO = new LocationDAO();
		}
		return locationDAO;
	}
}
