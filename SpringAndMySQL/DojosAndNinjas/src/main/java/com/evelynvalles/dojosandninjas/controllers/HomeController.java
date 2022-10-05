package com.evelynvalles.dojosandninjas.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.evelynvalles.dojosandninjas.models.Dojo;
import com.evelynvalles.dojosandninjas.models.Ninja;
import com.evelynvalles.dojosandninjas.services.DojoService;
import com.evelynvalles.dojosandninjas.services.NinjaService;

@Controller
public class HomeController {
	
	@Autowired
	DojoService dojoService;
	
	@Autowired
	NinjaService ninjaService;
	
	@GetMapping("/dojos/new")
	public String dojosForm(@ModelAttribute("newDojo") Dojo newDojo, Model model) {
		model.addAttribute("dojos", dojoService.allDojos());
		return "dojosForm.jsp";
	}
	
	@PostMapping("/dojos/new")
	public String dojosNew(@Valid @ModelAttribute("newDojo") Dojo newDojo, BindingResult result) {
		if (result.hasErrors()) {
			return "dojosForm.jsp";
		}
		else {
			dojoService.createDojo(newDojo);
			return "redirect:/dojos/new";
		}
	}
	
	@GetMapping("/ninjas/new")
	public String ninjasForm(@ModelAttribute("newNinja") Ninja newNinja, Model model) {
		model.addAttribute("dojos", dojoService.allDojos());
		return "ninjasForm.jsp";
	}
	
	@PostMapping("/ninjas/new")
	public String ninjasNew(@Valid @ModelAttribute("newNinja") Ninja newNinja, BindingResult result) {
		if (result.hasErrors()) {
			return "ninjasForm.jsp";
		}
		else {
			ninjaService.createNinja(newNinja);
			return "redirect:/dojos/new";
		}
	}
	
	@GetMapping("/dojos/{id}")
	public String oneDojo(@PathVariable("id") Long id, Model model) {
		model.addAttribute("dojo", dojoService.findDojo(id));
		return "viewOneDojo.jsp";
	}
	
}
