package com.navin.service;

import java.util.ArrayList;
import java.util.List;

import com.navin.dao.RouteDAO;
import com.navin.dto.RouteDTO;
import com.navin.entity.Route;
import com.navin.util.CastToDTO;

public class RouteService {
	private static RouteDAO routeDAO;

	private static RouteService instace;

	private RouteService() {
	}

	public static RouteService instace() {
		if (instace == null) {
			instace = new RouteService();
		}
		return instace;
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
		for (Route r : routes) {
			routesDto.add(CastToDTO.toDto(r));
		}
		return routesDto;
	}

	public RouteDTO findRouteById(Long routeId) {
		Route r = getRouteDAO().findRoutesById(routeId);
		return CastToDTO.toDto(r);
	}

}
