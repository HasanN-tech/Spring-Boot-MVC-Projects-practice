package com.hasan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.hasan.model.Student;

@Controller
public class StudentController {
	
	@GetMapping("/")
	public String register() {
		return "register";
	}
	
	@PostMapping("/register")
	public String show(@ModelAttribute Student stud,Model m) {
		m.addAttribute("stud", stud);
		return "result";
	}
	
}
