package com.evelynvalles.bookclub.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.evelynvalles.bookclub.models.Book;
import com.evelynvalles.bookclub.services.BookService;
import com.evelynvalles.bookclub.services.UserService;

@Controller
public class BookController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	BookService bookService;
	
	@GetMapping("/books/new")
	public String newBook(@ModelAttribute("newBook") Book newBook) {
		return "newBook.jsp";
	}
	
	@PostMapping("/books/new")
	public String createBook(
			@Valid @ModelAttribute("newBook") Book newBook, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "newBook.jsp";
		}
		else {
			bookService.createBook(newBook);
			return "redirect:/books";
		}
	}
	
	@GetMapping("/books/{id}")
	public String oneBook(@PathVariable("id") Long id, Model model) {
		model.addAttribute("book", bookService.findBook(id));
		return "oneBook.jsp";
	}
	
	
	@DeleteMapping("/books/delete/{id}")
	public String deleteBook(@PathVariable("id") Long id) {
		bookService.deleteBook(id);
		return "redirect:/books";
	}
	
	@GetMapping("/books/{id}/edit")
	public String editForm(@PathVariable("id") Long id, Model model) {
		Book book = bookService.findBook(id);
		model.addAttribute("editBook", book);
		return "editBook.jsp";
	}
	
	@PutMapping("/books/{id}/edit")
	public String updateBook(@Valid @ModelAttribute("editBook") Book editBook, BindingResult result) {
		if (result.hasErrors()) {
			return "editBook.jsp";
		}
		else {
			bookService.updateBook(editBook);
			return "redirect:/books";
		}
	}
}
