package com.ashspell.test.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ashspell.test.lesson04.bo.RealtorBO;
import com.ashspell.test.lesson04.model.Realtor;

@Controller
@RequestMapping("/lesson04")
public class RealtorController {
	
	@Autowired
	private RealtorBO realtorBO;
	
	@GetMapping("/test02/input")
	public 	String RealtorInput() {
		return "lesson04/RealtorInput";
	}
	
	@GetMapping("/test02/add_realtor")
	public String addRealtor(@ModelAttribute Realtor realtor, Model model) {
		
		int count = realtorBO.addRealtor(realtor);
		model.addAttribute("realtor", realtor);
		
		return "lesson04/realtorInfo";
	}
	
	
}
