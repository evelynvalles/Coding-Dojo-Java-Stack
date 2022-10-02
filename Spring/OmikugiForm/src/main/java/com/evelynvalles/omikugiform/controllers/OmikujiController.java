package com.evelynvalles.omikugiform.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class OmikujiController {

	@GetMapping("/omikuji")
	public String index() {
		
		return "index.jsp";
	}
	
	@GetMapping("/omikuji/show")
	public String messageShow() {
		return "message.jsp";
	}
	
	@PostMapping("/omikuji/submit")
	public String omikujiForm(
	@RequestParam(value="number") Integer number,
	@RequestParam(value="city") String city,
	@RequestParam(value="person") String person,
	@RequestParam(value="hobby") String hobby,
	@RequestParam(value="living") String living,
	@RequestParam(value="nice") String nice,
	HttpSession session) {
		
		session.setAttribute("number", number);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("hobby", hobby);
		session.setAttribute("living", living);
		session.setAttribute("nice", nice);
		return "redirect:/omikuji/show";
	}
}

