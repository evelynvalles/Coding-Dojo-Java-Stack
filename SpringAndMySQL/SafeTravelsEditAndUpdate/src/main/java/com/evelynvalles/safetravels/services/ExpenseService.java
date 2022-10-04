package com.evelynvalles.safetravels.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.evelynvalles.safetravels.models.Expense;
import com.evelynvalles.safetravels.repositories.ExpenseRepository;

@Service
public class ExpenseService {
	private final ExpenseRepository expenseRepository;

	public ExpenseService(ExpenseRepository expenseRepository) {
		this.expenseRepository = expenseRepository;
	}
	
//	List all
	public List<Expense> allExpenses() {
		return expenseRepository.findAll();
	}
	
//	create
	public Expense createExpense(Expense expense) {
		return expenseRepository.save(expense);
	}
	
//	find one
	public Expense findExpense(Long id) {
		Optional<Expense> optionalExpense = expenseRepository.findById(id);
		if (optionalExpense.isPresent()) {
			return optionalExpense.get();
		}
		else {
			return null;
		}
	}
	
//	update
	public Expense updateExpense(Expense expense) {
		return expenseRepository.save(expense);
	}

//	delete
	public void deleteExpense(Long id) {
		Optional<Expense> optionalExpense = expenseRepository.findById(id);
		if(optionalExpense.isPresent()) {
			expenseRepository.deleteById(id);
		}
	}
}
