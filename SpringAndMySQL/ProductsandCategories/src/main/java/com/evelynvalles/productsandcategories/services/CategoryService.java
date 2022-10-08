package com.evelynvalles.productsandcategories.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.evelynvalles.productsandcategories.models.Category;
import com.evelynvalles.productsandcategories.models.Product;
import com.evelynvalles.productsandcategories.repositories.CategoryRepository;

@Service
public class CategoryService {

	@Autowired
	CategoryRepository categoryRepo;
	
//	all categories
	public List<Category> allCategories() {
		return categoryRepo.findAll();
	}
	
//	find one category
	public Category oneCategory(Long id) {
		Optional<Category> optionalCategory = categoryRepo.findById(id);
		if (optionalCategory.isPresent()) {
			return optionalCategory.get();
		}
		else {
			return null;
		}
	}
	
//	create category
	public Category createCategory(Category category) {
		return categoryRepo.save(category);
	}
	
//	update
	public Category updateCategory(Category category) {
		return categoryRepo.save(category);
	}
	
//	delete
	public void deleteCategory(Long id) {
		categoryRepo.deleteById(id);
	}
	
	public List<Category> getAssignedProducts(Product product){
		return categoryRepo.findAllByProducts(product);
	}
	
	public List<Category> getUnassignedProducts(Product product){
		return categoryRepo.findByProductsNotContains(product);
	}
}
