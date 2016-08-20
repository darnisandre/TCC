package com.navin.util;

import java.util.ArrayList;
import java.util.List;

import com.navin.dto.BeaconDTO;
import com.navin.dto.ConfigurationDTO;
import com.navin.dto.ConnectionDTO;
import com.navin.dto.GateDTO;
import com.navin.dto.LocationDTO;
import com.navin.dto.RouteDTO;
import com.navin.entity.Beacon;
import com.navin.entity.Configuration;
import com.navin.entity.Connection;
import com.navin.entity.Gate;
import com.navin.entity.Location;
import com.navin.entity.Route;

public class CastToDTO {
	public static LocationDTO toDto(Location l) {
		LocationDTO location = new LocationDTO();
		Configuration activeConfiguration = l.getActiveConfiguration();
		if (activeConfiguration != null) {
			ConfigurationDTO conf = new ConfigurationDTO();
			conf.setDescription(activeConfiguration.getDescription());
			conf.setId(activeConfiguration.getId());
			location.setActiveConfiguration(conf);
		}
		location.setLastUpdated(l.getLastUpdated());
		location.setDescription(l.getDescription());
		location.setId(l.getId());
		location.setLatitude(l.getLatitude());
		location.setLongitude(l.getLongitude());
		return location;
	}

	public static RouteDTO toDto(Route r) {
		RouteDTO route = new RouteDTO();

		route.setDescription(r.getDescription());
		route.setId(r.getId());
		route.setName(r.getName());
		List<BeaconDTO> beacons = new ArrayList<BeaconDTO>();
		for (Beacon b : r.getBeacons()) {
			beacons.add(toDto(b));
		}
		route.setBeacons(beacons);
		return route;
	}

	public static BeaconDTO toDto(Beacon b) {
		BeaconDTO beaconDto = new BeaconDTO();
		beaconDto.setDescription(b.getDescription());
		beaconDto.setId(b.getId());
		beaconDto.setMajor(b.getMajor());
		beaconDto.setMinor(b.getMinor());
		beaconDto.setUuid(b.getUuid());
		return beaconDto;
	}

	public static ConnectionDTO toDto(Connection c) {
		ConnectionDTO dto = new ConnectionDTO();
		dto.setDirection(c.getDirection());
		dto.setDistance(c.getDistance());
		dto.setId(c.getId());
		BeaconDTO beaconA = new BeaconDTO();
		beaconA.setId(c.getBeaconA().getId());
		dto.setBeaconA(beaconA);
		BeaconDTO beaconB = new BeaconDTO();
		beaconA.setId(c.getBeaconB().getId());
		dto.setBeaconB(beaconB);

		return dto;
	}

	public static GateDTO toDto(Gate g) {
		GateDTO dto = new GateDTO();
		dto.setDescription(g.getDescription());
		dto.setId(g.getId());
		BeaconDTO beaconA = new BeaconDTO();
		beaconA.setId(g.getBeaconA().getId());
		dto.setBeaconA(beaconA);
		BeaconDTO beaconB = new BeaconDTO();
		beaconA.setId(g.getBeaconB().getId());
		dto.setBeaconB(beaconB);

		return dto;
	}
}
