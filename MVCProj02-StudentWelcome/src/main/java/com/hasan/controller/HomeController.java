package com.hasan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/student")
	public String showHome() {
		return "welcome";
	}
}
