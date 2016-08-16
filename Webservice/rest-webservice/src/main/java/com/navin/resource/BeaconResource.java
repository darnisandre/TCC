package com.navin.resource;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.navin.dto.BeaconMappingDTO;
import com.navin.service.BeaconService;


@Path("beacon")
public class BeaconResource {

    @Path("location/{id}")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes({MediaType.APPLICATION_JSON})
    public BeaconMappingDTO findBeacons(@PathParam("id") Long locationId){
        return BeaconService.instace().findBeaconsMappingByLocation(locationId);
    }

}