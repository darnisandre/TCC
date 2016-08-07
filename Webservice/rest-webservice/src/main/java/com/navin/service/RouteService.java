package com.navin.service;

import java.util.List;

import com.navin.dao.BeaconDAO;
import com.navin.dao.RouteDAO;
import com.navin.entity.Beacon;
import com.navin.entity.Route;

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

	public List<Route> findRoutesByLocation(Long locationId) {
		return routeDAO.findRoutesByLocation(locationId);
	}

	public List<Beacon> findBeaconsByRoute(Long routeId) {
		return beaconDAO.findBeaconsByRoute(routeId);
	}
}
