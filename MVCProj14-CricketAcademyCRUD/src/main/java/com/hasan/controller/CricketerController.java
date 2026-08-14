package com.hasan.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hasan.model.Cricketer;
import com.hasan.service.CricketerService;

@Controller
public class CricketerController {
	
	@Autowired
	private CricketerService service;
	
	@GetMapping("/")
	public String home() {
		return "home";
	}
	
	@GetMapping("/addCricketer")
	public String addCricketer() {
		return "addCricketer";
	}
	
	@PostMapping("/save")
	public String saveCricketer(@ModelAttribute Cricketer c,Model m) {
		m.addAttribute("cric", service.saveCricketer(c));
		return "redirect:/viewCricketer";
	}
	
	@GetMapping("/viewCricketer")
	public String viewCricketer(Model m) {
		m.addAttribute("data", service.getAllCricketer());
		service.getAllCricketer().forEach(System.out::println);
		return "viewCricketer";
	}
	
	@GetMapping("/update")
	public String editData(@RequestParam Integer id,Map<String,Cricketer> m) {
		m.put("data", service.getCricketerById(id));
		return "edit";
	}
	
	@PostMapping("/edit")
	public String edit(@ModelAttribute Cricketer c,RedirectAttributes ra) {
		ra.addFlashAttribute("msg", service.updateCricketer(c));
		return "redirect:/viewCricketer";
	}
	
	@GetMapping("/delete")
	public String delete(@RequestParam Integer id,RedirectAttributes ra) {
		ra.addFlashAttribute("msg", service.deletCricketer(id));
		return "redirect:/viewCricketer";
	}
	
	@GetMapping("/deletedemo")
	public String deletedemo(@RequestParam Integer id,RedirectAttributes ra) {
		ra.addFlashAttribute("msg", service.deletCricketer(id));
		return "redirect:/viewCricketer";
	}
	
}
