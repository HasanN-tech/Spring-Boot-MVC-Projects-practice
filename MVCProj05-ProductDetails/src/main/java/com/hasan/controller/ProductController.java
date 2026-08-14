package com.hasan.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hasan.entity.Product;

@Controller
public class ProductController {

	@RequestMapping("/view")
	public String showProduct(Model m) {

		Product product = new Product(1001, "Laptop", "Dell", 65000.0);

		Map<String, Object> map = new HashMap<>();
		map.put("id", product.getId());
		map.put("name", product.getName());
		map.put("brand", product.getBrand());
		map.put("price", product.getPrice());
		m.addAllAttributes(map);
		return "view";
	}
}
