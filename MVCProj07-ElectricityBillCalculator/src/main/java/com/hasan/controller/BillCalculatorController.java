package com.hasan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BillCalculatorController {
	
	@GetMapping("/")
	public String showHome() {
	    return "home";
	}
	
	@PostMapping("/home")
	public String calculateBill(@RequestParam Double unit,Model model) {
		Double amount=unit*8.0;
		model.addAttribute("units",unit);
		model.addAttribute("billAmount", amount);
		return "bill";
	}
}
