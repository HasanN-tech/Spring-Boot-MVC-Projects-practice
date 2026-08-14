package com.hasan.controller;

import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.hasan.model.Student;

@Controller
public class StudentController {
	
	@GetMapping("/home")
	public String showForm(Model m) {
		Student s=new Student();
		s.setId(new Random().nextInt(1000000));

		m.addAttribute("student", s);
		return "student";
	}
	
	
	
	@PostMapping("/register")
	public String registerStudent(@ModelAttribute("student") Student student, Model model) {
	
		
		model.addAttribute("stud",student);
	
		return "result";
	}
}
