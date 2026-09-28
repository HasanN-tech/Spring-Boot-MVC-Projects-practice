package com.hasan.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hasan.model.Product;

@Controller
public class ProductController {
	
	List<Product> products = new ArrayList<>();

	public ProductController() {
		products.add(new Product(101, "Laptop", "Electronics", 55000.0));
		products.add(new Product(102, "Mobile", "Electronics", 25000.0));
		products.add(new Product(103, "Shirt", "Clothing", 1200.0));
		products.add(new Product(104, "Shoes", "Footwear", 2500.0));
	}	
	
	@GetMapping("/")
	public String register() {
		return "register";
	}
	
	@PostMapping("/register")
	public String show(@RequestParam String data,Model m) {
		for(Product p: products) {
			if(p.getProductName().equalsIgnoreCase(data) || p.getCategory().equalsIgnoreCase(data)) {
				m.addAttribute("data", p);
			}
		}
//		m.addAttribute("data", data);
		return "result";
	}
	
}
