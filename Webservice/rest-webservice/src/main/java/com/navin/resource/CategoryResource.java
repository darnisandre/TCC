package com.navin.resource;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.navin.dto.CategoryDTO;
import com.navin.service.CategoryService;


@Path("category")
public class CategoryResource {

    @Path("location/{id}")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes({MediaType.APPLICATION_JSON})
    public List<CategoryDTO> findCategories(@PathParam("id") Long locationId){
        return CategoryService.instace().findCategoriesByLocation(locationId);
    }
    
}