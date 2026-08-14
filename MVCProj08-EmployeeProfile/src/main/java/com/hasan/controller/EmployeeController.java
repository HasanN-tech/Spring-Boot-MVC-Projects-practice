package com.hasan.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class EmployeeController {
	
	@GetMapping("/employee/{id}")
	public String showEmployee(@PathVariable Integer id, Map<String, Object> map) {
		map.put("id",id);
		map.put("name","Hasan");
		map.put("department","Java Development");
		map.put("salary",50000.0);
		return "employee";
	}
}
