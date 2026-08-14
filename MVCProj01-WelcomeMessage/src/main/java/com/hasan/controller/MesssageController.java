package com.hasan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MesssageController {
	
	@GetMapping("/home")
	public String showMessage() {
		return "welcome";
	}
}
