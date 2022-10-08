package com.evelynvalles.productsandcategories.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.evelynvalles.productsandcategories.models.Category;
import com.evelynvalles.productsandcategories.models.Product;

public interface CategoryRepository extends CrudRepository<Category, Long> {
	
	List<Category> findAll();
	
    List<Category> findAllByProducts(Product product);
    
    Category findByIdIs(Long id);
    
    // Retrieves a list of any categories a particular product
    // does not belong to.
    List<Category> findByProductsNotContains(Product product);
}
