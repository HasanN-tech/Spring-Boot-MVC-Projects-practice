package com.hasan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class StudentController {
	
	@GetMapping("/")
	public String home() {
		return "student";
	}
	
	@PostMapping("/student")
	public String save(@RequestParam String studentName,
			@RequestParam String course, Model m) {
		m.addAttribute("studentName", studentName);
		m.addAttribute("course", course);
		return "result";
	}
}
