package com.navin.resource;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.navin.dto.RouteDTO;
import com.navin.service.RouteService;


@Path("route")
public class RouteResource {

    @Path("location/{id}")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes({MediaType.APPLICATION_JSON})
    public List<RouteDTO> findRoutes(@PathParam("id") Long locationId){
        return RouteService.instace().findRoutesByLocation(locationId);
    }
    
    @Path("{id}")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes({MediaType.APPLICATION_JSON})
    public RouteDTO findBeacons(@PathParam("id") Long routeId){
        return RouteService.instace().findRouteById(routeId);
    }

}