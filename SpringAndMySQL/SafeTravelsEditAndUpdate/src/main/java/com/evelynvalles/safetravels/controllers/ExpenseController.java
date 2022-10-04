package com.evelynvalles.safetravels.controllers;

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
import org.springframework.web.bind.annotation.PutMapping;

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
	
    @GetMapping("/expenses/edit/{id}")
    public String edit(@PathVariable("id") Long id, Model model) {
        Expense expense = expenseService.findExpense(id);
        model.addAttribute("expense", expense);
        model.addAttribute("updateExpense", new Expense());
        return "edit.jsp";
    }
    
    @PutMapping("/expenses/update/{id}")
    public String update(
    		@Valid @ModelAttribute("updateExpense") Expense updateExpense,
    		BindingResult result) {
    	if (result.hasErrors()) {
    		return "edit.jsp";
    	}
    	else {
    		expenseService.updateExpense(updateExpense);
    		return "redirect:/expenses";
    	}
    }
    
}
