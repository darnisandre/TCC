package com.navin.util;

import java.util.ArrayList;
import java.util.List;

import com.navin.dto.BeaconDTO;
import com.navin.dto.ConfigurationDTO;
import com.navin.dto.LocationDTO;
import com.navin.dto.RouteDTO;
import com.navin.entity.Beacon;
import com.navin.entity.Configuration;
import com.navin.entity.Location;
import com.navin.entity.Route;

public class CastToDTO {
	public static LocationDTO toDto(Location l) {
		LocationDTO location = new LocationDTO();
		Configuration activeConfiguration = l.getActiveConfiguration();
		if(activeConfiguration!=null){
			ConfigurationDTO conf = new ConfigurationDTO();
			conf.setDescription(activeConfiguration.getDescription());
			conf.setId(activeConfiguration.getId());
			location.setActiveConfiguration(conf);
		}
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
		for( Beacon b : r.getBeacons()){
			BeaconDTO beaconDto = new BeaconDTO();
			beaconDto.setDescription(b.getDescription());
			beaconDto.setId(b.getId());
			beaconDto.setMajor(b.getMajor());
			beaconDto.setMinor(b.getMinor());
			beaconDto.setUuid(b.getUuid());
			beacons.add(beaconDto);
		}
		route.setBeacons(beacons );
		return route;
	}
}
