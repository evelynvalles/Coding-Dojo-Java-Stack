package com.evelynvalles.booksapi.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.evelynvalles.booksapi.models.Book;
import com.evelynvalles.booksapi.services.BookService;

@Controller
public class BookController {
	
	@Autowired
	BookService bookService;
	
	@GetMapping("/books/{bookId}")
	public String bookDetails(
			@PathVariable("bookId") Long bookId,
			Model model) {
		Book book = bookService.findBook(bookId);
		model.addAttribute("book", book);
		return "index.jsp";
	}
	
    @GetMapping("/books")
    public String index(Model model) {
        List<Book> books = bookService.allBooks();
        model.addAttribute("books", books);
        return "showAll.jsp";
    }
}
