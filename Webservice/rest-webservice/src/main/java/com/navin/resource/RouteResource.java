package com.navin.resource;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.navin.entity.Beacon;
import com.navin.entity.Route;
import com.navin.service.RouteService;


@Path("route")
public class RouteResource {

    @Path("location/{id}")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes({MediaType.APPLICATION_JSON})
    public List<Route> findRoutes(@PathParam("id") Long locationId){
        return RouteService.instace().findRoutesByLocation(locationId);
    }
    
    @Path("{id}")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes({MediaType.APPLICATION_JSON})
    public List<Beacon> findBeacons(@PathParam("id") Long routeId){
        return RouteService.instace().findBeaconsByRoute(routeId);
    }

}