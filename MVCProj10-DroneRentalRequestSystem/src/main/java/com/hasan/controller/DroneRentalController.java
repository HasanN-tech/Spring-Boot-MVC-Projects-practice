package com.hasan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.hasan.model.DroneRentalRequest;

@Controller
public class DroneRentalController {
	@GetMapping("/home")
	public String getDroneObject(Model m) {
		m.addAttribute("drone",new DroneRentalRequest());
		return "drone-form";
	}
	
	@PostMapping("drone-form")
	public String result(@ModelAttribute DroneRentalRequest dr,Model m) {
		m.addAttribute("drone", dr);
		return "result";
	}
}
