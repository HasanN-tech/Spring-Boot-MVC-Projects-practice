package com.hasan.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.hasan.entity.EmployeeSkill;
import com.hasan.service.EmployeeSkillService;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeSkillService service;
	
	@GetMapping("/home")
	public String home() {
		return "register";
	}
	
	@PostMapping("/register")
	public String saveData(@ModelAttribute EmployeeSkill emp) {
		service.saveEmployee(emp);
		return "redirect:result";
	}
	
	@GetMapping("/result")
	public String getAll(Model m) {
		m.addAttribute("employees", service.getAllData());
		return "/result";
	}
}
