package com.evelynvalles.productsandcategories.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.evelynvalles.productsandcategories.models.Category;
import com.evelynvalles.productsandcategories.models.Product;
import com.evelynvalles.productsandcategories.services.CategoryService;
import com.evelynvalles.productsandcategories.services.ProductService;

@Controller
public class HomeController {
	
	@Autowired
	ProductService productService;
	
	@Autowired
	CategoryService categoryService;
	
	@GetMapping("/")
	public String index(Model model) {
		List<Product> products = productService.allProducts();
		List<Category> categories = categoryService.allCategories();
		
		model.addAttribute("products", products);
		model.addAttribute("categories", categories);
		return "index.jsp";
	}
	
	@GetMapping("/products/new")
	public String newProduct(@ModelAttribute("newProduct") Product newProduct) {
		return "newProduct.jsp";
	}
	
	@PostMapping("/products/new")
	public String createProduct(@Valid @ModelAttribute("newProduct") Product newProduct, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "newProduct.jsp";
		}
		else {
			productService.createProduct(newProduct);
			return "redirect:/";
		}
	}
	
	@GetMapping("/categories/new")
	public String newCategory(@ModelAttribute("newCategory") Category newCategory) {
		return "newCategory.jsp";
	}
	
	@PostMapping("/categories/new")
	public String newCategory(@Valid @ModelAttribute("newCategory") Category newCategory, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "newCategory.jsp";
		}
		else {
			categoryService.createCategory(newCategory);
			return "redirect:/";
		}
	}
	
	@GetMapping("/products/{id}")
	public String oneProduct(@PathVariable("id") Long id, Model model) {
		Product product = productService.oneProduct(id);
		model.addAttribute("product", product);
		model.addAttribute("assignedCategories", categoryService.getAssignedProducts(product));
		model.addAttribute("unassignedCategories", categoryService.getUnassignedProducts(product));
		return "showProduct.jsp";
	}
	
	@PostMapping("/products/{id}")
	public String editProduct(@PathVariable("id") Long id,
			@RequestParam(value="categoryId") Long categoryId, Model model) {
		
		Product product = productService.oneProduct(id);
		Category category = categoryService.oneCategory(categoryId);
		product.getCategories().add(category);
		productService.updateProduct(product);
		model.addAttribute("assignedCategories", categoryService.getAssignedProducts(product));
		model.addAttribute("unassignedCategories", categoryService.getUnassignedProducts(product));
		return "redirect:/products/" + id;
	}
	
	
	@GetMapping("/categories/{id}")
	public String oneCategory(@PathVariable("id") Long id, Model model) {
		Category category = categoryService.oneCategory(id);
		model.addAttribute("category", category);
		model.addAttribute("assignedProducts", productService.getAssignedCategories(category));
		model.addAttribute("unassignedProducts", productService.getUnassignedCategories(category));
		return "showCategory.jsp";
	}
	
	@PostMapping("/categories/{id}")
	public String oneCategory(@PathVariable("id") Long id,
			@RequestParam(value="productId") Long productId, Model model) {
		Category category = categoryService.oneCategory(id);
		Product product = productService.oneProduct(productId);
		category.getProducts().add(product);
		categoryService.updateCategory(category);
		model.addAttribute("assignedProducts", productService.getAssignedCategories(category));
		model.addAttribute("unassignedProducts", productService.getUnassignedCategories(category));
		return "redirect:/categories/" + id;
	}
}
