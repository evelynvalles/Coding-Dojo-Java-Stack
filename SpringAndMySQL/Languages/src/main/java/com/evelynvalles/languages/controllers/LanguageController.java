package com.evelynvalles.languages.controllers;

import java.util.List;

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

import com.evelynvalles.languages.models.Language;
import com.evelynvalles.languages.services.LanguageService;

@Controller
public class LanguageController {
	
	@Autowired
	LanguageService languageService;
	
	@GetMapping("/languages")
	public String index(Model model) {
		List<Language> languages = languageService.allLanguages();
		model.addAttribute("languages", languages);
		model.addAttribute("newLanguage", new Language());
		return "index.jsp";
	}
	
	@PostMapping("/languages")
	public String createLanguage(
			@Valid @ModelAttribute("newLanguage") Language newLanguage,
			BindingResult result, 
			Model model) {
		if (result.hasErrors()) {
			return "index.jsp";
		}
		else {
			languageService.createLanguage(newLanguage);
			return "redirect:/languages";
		}
	}
	
	@GetMapping("/languages/{id}/edit")
	public String edit(@PathVariable("id") Long id, Model model) {
		Language language = languageService.findLanguage(id);
		model.addAttribute("language", language);
		model.addAttribute("updateLanguage", new Language());
		return "edit.jsp";
	}
	
	@PutMapping("/languages/{id}")
	public String update(
			@Valid @ModelAttribute("updateLanguage") Language updateLanguage,
			BindingResult result) {
		if (result.hasErrors()) {
			return "edit.jsp";
		}
		else {
			languageService.createLanguage(updateLanguage);
			return "redirect:/languages";
		}
	}
	
	@DeleteMapping("/languages/{id}")
	public String destroy(@PathVariable("id") Long id) {
		languageService.deleteLanguage(id);
		return "redirect:/languages";
	}
	
	@GetMapping("/languages/{id}")
	public String getOne(
			@PathVariable("id") Long id,
			Model model) {
		Language language = languageService.findLanguage(id);
		model.addAttribute("language", language);
		return "showOne.jsp";
	}
	
}
