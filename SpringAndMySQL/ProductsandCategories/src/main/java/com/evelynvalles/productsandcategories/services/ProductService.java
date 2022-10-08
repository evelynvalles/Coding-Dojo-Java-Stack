package com.evelynvalles.productsandcategories.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.evelynvalles.productsandcategories.models.Category;
import com.evelynvalles.productsandcategories.models.Product;
import com.evelynvalles.productsandcategories.repositories.ProductRepository;

@Service
public class ProductService {

	@Autowired
	ProductRepository productRepo;
	
//	all products
	public List<Product> allProducts() {
		return productRepo.findAll();
	}
	
//	find one product
	public Product oneProduct(Long id) {
		Optional<Product> optionalProduct = productRepo.findById(id);
		if (optionalProduct.isPresent()) {
			return optionalProduct.get();
		}
		else {
			return null;
		}
	}
	
//	create product
	public Product createProduct(Product product) {
		return productRepo.save(product);
	}
	
//	update product
	public Product updateProduct(Product product) {
		return productRepo.save(product);
	}
	
//	delete product
	public void deleteProduct(Long id) {
		productRepo.deleteById(id);
	}
	
	public List<Product> getAssignedCategories(Category category){
		return productRepo.findAllByCategories(category);
	}
	
	public List<Product> getUnassignedCategories(Category category){
		return productRepo.findByCategoriesNotContains(category);
	}
	
}
