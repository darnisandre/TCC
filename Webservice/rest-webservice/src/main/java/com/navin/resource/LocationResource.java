package com.navin.resource;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.navin.dto.LocationDTO;
import com.navin.service.LocationService;

@Path("location")
public class LocationResource {

	@Path("{lat}/{long}")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes({ MediaType.APPLICATION_JSON })
	public List<LocationDTO> findLocations(@PathParam("lat") Double latitude, @PathParam("long") Double longitude) {
		return LocationService.instace().findLocationByLatLong(latitude, longitude);
	}

	@Path("all")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes({ MediaType.APPLICATION_JSON })
	public List<LocationDTO> getAllLocation() {
		return LocationService.instace().getAllLocations();
	}
}