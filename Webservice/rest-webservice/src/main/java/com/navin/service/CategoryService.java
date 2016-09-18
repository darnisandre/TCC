package com.navin.service;

import java.util.ArrayList;
import java.util.List;

import com.navin.dao.CategoryDAO;
import com.navin.dto.CategoryDTO;
import com.navin.entity.Category;
import com.navin.util.CastToDTO;

public class CategoryService {
	private static CategoryService instace;
	private static CategoryDAO categoryDAO;

	private CategoryService() {
	}

	public static CategoryService instace() {
		if (instace == null) {
			instace = new CategoryService();
		}
		return instace;
	}
	public static CategoryDAO getCategoryDAO() {
		if (categoryDAO == null) {
			categoryDAO = new CategoryDAO();
		}
		return categoryDAO;
	}


	public List<CategoryDTO> findCategoriesByLocation(Long locationId) {
		List<Category> categories = getCategoryDAO().findCategoriesByLocation(locationId);
		List<CategoryDTO> categoriesDto = new ArrayList<CategoryDTO>();
		for(Category l : categories){
			categoriesDto.add(CastToDTO.toDto(l));
		}
		return categoriesDto;
	}
}
