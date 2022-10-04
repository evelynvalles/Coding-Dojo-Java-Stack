package com.evelynvalles.safetravels.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.evelynvalles.safetravels.models.Expense;
import com.evelynvalles.safetravels.services.ExpenseService;

@Controller
public class ExpenseController {
	
	@Autowired
	ExpenseService expenseService;

	@GetMapping("/expenses")
	public String index( Model model) {
		List<Expense> expenses = expenseService.allExpenses();
		model.addAttribute("expenses", expenses);
		model.addAttribute("newExpense", new Expense());
		return "index.jsp";
	}
	
	@PostMapping("/expenses/process")
	public String processForm(
			@Valid @ModelAttribute("newExpense") Expense newExpense, 
			BindingResult result, 
			Model model ) {
		if (result.hasErrors()) {
			return "index.jsp";
		} else {
			expenseService.createExpense(newExpense);
			return "redirect:/expenses";
		}
	}
}
