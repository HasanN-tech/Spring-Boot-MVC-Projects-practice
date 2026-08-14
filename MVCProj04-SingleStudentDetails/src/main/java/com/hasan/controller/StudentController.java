package com.hasan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hasan.entity.Student;

@Controller
public class StudentController {
	
	@RequestMapping("/details")
	public String getDetails(Model model) {
		Student s1=new Student("Hasan", "Java Full Stack", "Hyderabad");
		model.addAttribute("name", s1.getName());
		model.addAttribute("course", s1.getCourse());
		model.addAttribute("city", s1.getCity());
		return "details";		
	}
}
