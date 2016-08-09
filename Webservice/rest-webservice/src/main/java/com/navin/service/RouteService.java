package com.navin.service;

import java.util.ArrayList;
import java.util.List;

import com.navin.dao.BeaconDAO;
import com.navin.dao.RouteDAO;
import com.navin.dto.LocationDTO;
import com.navin.dto.RouteDTO;
import com.navin.entity.Beacon;
import com.navin.entity.Location;
import com.navin.entity.Route;
import com.navin.util.CastToDTO;

public class RouteService {
	private static RouteDAO routeDAO;
	private static BeaconDAO beaconDAO;
	
	private static RouteService instace;

	private RouteService() {
	}

	public static RouteService instace() {
		if (instace == null) {
			instace = new RouteService();
		}
		return instace;
	}

	public static BeaconDAO getBeaconDAO() {
		if(beaconDAO==null){
			beaconDAO = new BeaconDAO();
		}
		return beaconDAO;
	}
	
	public static RouteDAO getRouteDAO() {
		if (routeDAO == null) {
			routeDAO = new RouteDAO();
		}
		return routeDAO;
	}

	public List<RouteDTO> findRoutesByLocation(Long locationId) {
		List<Route> routes = getRouteDAO().findRoutesByLocation(locationId);
		List<RouteDTO> routesDto = new ArrayList<RouteDTO>();
		for(Route r : routes){
			routesDto.add(CastToDTO.toDto(r));
		}
		return routesDto;
	}

	public List<Beacon> findBeaconsByRoute(Long routeId) {
		return getBeaconDAO().findBeaconsByRoute(routeId);
	}
}
