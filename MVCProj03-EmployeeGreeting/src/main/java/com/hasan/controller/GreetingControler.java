package com.hasan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hasan.entity.Employee;

@Controller
public class GreetingControler {
	
	@RequestMapping("/greet")
	public String greetEmployee(Model model) {
		Employee emp=new Employee("Hasan", "Development", 20000.0);
		model.addAttribute("name", emp.getName());
		model.addAttribute("department",emp.getDepartment());
		model.addAttribute("salary",emp.getSalary());
		return "greeting";
	}
}
