package com.hasan.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.hasan.model.FestivalPass;


@Controller
public class FestivalController {
	@GetMapping("/festival")
	public String getFestivalData(Model model ) {
		model.addAttribute("festivalPass", new FestivalPass());
		return "festival-form";
	}
	
	@PostMapping("/festival-form")
	public String postFestivalData(@ModelAttribute FestivalPass fp,Map<String, Object> map) {

		map.put("fpass", fp);
		
		return "result";
	}
	
}
