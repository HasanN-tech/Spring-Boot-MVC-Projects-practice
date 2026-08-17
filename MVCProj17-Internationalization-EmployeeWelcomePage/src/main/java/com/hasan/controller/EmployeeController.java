package com.hasan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EmployeeController {
	
	@GetMapping("/emp")
	public String addData(Model m) {
		m.addAttribute("name","Rahul");
		m.addAttribute("department","IT");
		return "show";
	}
}
