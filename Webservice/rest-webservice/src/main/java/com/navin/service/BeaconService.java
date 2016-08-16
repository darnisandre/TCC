package com.navin.service;

import java.util.ArrayList;
import java.util.List;

import com.navin.dao.BeaconDAO;
import com.navin.dao.ConnectionDAO;
import com.navin.dao.GateDAO;
import com.navin.dao.LocationDAO;
import com.navin.dao.RouteDAO;
import com.navin.dto.BeaconDTO;
import com.navin.dto.BeaconMappingDTO;
import com.navin.dto.ConnectionDTO;
import com.navin.dto.GateDTO;
import com.navin.entity.Beacon;
import com.navin.entity.Connection;
import com.navin.entity.Gate;
import com.navin.util.CastToDTO;

public class BeaconService {
	private static RouteDAO routeDAO;
	private static BeaconDAO beaconDAO;
	
	private static BeaconService instace;
	private static GateDAO gateDAO;
	private static ConnectionDAO connectionDAO;
	private static LocationDAO locationDAO;

	private BeaconService() {
	}

	public static BeaconService instace() {
		if (instace == null) {
			instace = new BeaconService();
		}
		return instace;
	}

	public static BeaconDAO getBeaconDAO() {
		if(beaconDAO==null){
			beaconDAO = new BeaconDAO();
		}
		return beaconDAO;
	}
	
	public static GateDAO getGateDAO() {
		if(gateDAO==null){
			gateDAO = new GateDAO();
		}
		return gateDAO;
	}
	
	public static ConnectionDAO getConnectionDAO() {
		if(connectionDAO==null){
			connectionDAO = new ConnectionDAO();
		}
		return connectionDAO;
	}
	
	public static RouteDAO getRouteDAO() {
		if (routeDAO == null) {
			routeDAO = new RouteDAO();
		}
		return routeDAO;
	}
	
	public static LocationDAO getLocationDAO() {
		if (locationDAO == null) {
			locationDAO = new LocationDAO();
		}
		return locationDAO;
	}


	public BeaconMappingDTO findBeaconsMappingByLocation(Long locationId) {
		BeaconMappingDTO dto = new BeaconMappingDTO();
		
		List<BeaconDTO> beacons = new ArrayList<BeaconDTO>();
		for(Beacon b : getBeaconDAO().findBeaconsByLocation(locationId)){
			beacons.add(CastToDTO.toDto(b));
		}
		dto.setBeacons(beacons);
		
		List<ConnectionDTO> connections = new ArrayList<ConnectionDTO>();
		for(Connection c : getConnectionDAO().findConnectionsByLocation(locationId)){
			connections.add(CastToDTO.toDto(c));
		}
		dto.setConnections(connections);

		List<GateDTO> gates = new ArrayList<GateDTO>();
		for(Gate g : getGateDAO().findGatesByLocation(locationId)){
			gates.add(CastToDTO.toDto(g));
		}
		dto.setGates(gates);
		dto.setLocation(CastToDTO.toDto(getLocationDAO().findById(locationId)));
		
		return dto;
	}
}
