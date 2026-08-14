package com.hasan.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hasan.entity.Employees;
import com.hasan.service.EmployeesService;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeesService service;

	@GetMapping("/")
	public String home() {
		return "home";
	}

	@GetMapping("/register")
	public String register() {
		return "register";
	}

	@PostMapping("/register")
	public String saveData(@ModelAttribute Employees emp) {
		service.saveEmployee(emp);
		return "redirect:result";
	}

	@GetMapping("/result")
	public String getAll(Model m) {
		m.addAttribute("employees", service.getAllData());
		return "/result";
	}

	@GetMapping("/edit")
	public String edition(@RequestParam int no, Model m) {
		Employees emp = service.getById(no);
		m.addAttribute("employee", emp);
		return "edit";
	}

	@GetMapping("/delete")
	public String deletion(@RequestParam int no, RedirectAttributes ra) {
		String s = service.deleteEmp(no);
		ra.addFlashAttribute("msg", "Id: "+s);
		return "redirect:result";
	}

	@PostMapping("/update")
	public String update(@ModelAttribute Employees emp, RedirectAttributes ra) {

		service.saveEmployee(emp);

		ra.addFlashAttribute("msg", "Id: "+emp.getEmployeeId()+" records updated successfully");

		return "redirect:result";
	}

}
